#!/usr/bin/env python3
"""Check the external provenance manifest and its mathematical interface coverage.

This validates metadata, field coverage, local artifacts and declared review
status. It cannot verify that a cited source proves the mathematical statement.
After `lake build KIP126`, use --lean-check FILE and `lake env lean FILE`
to check the actual declarations, defining modules, and structure fields.
"""
from __future__ import annotations

import argparse
import csv
import json
import re
from pathlib import Path

from check_source_inventory import strip_unescaped_percent_comments, validate_inventory


ROUTE_STATUSES = {
    "source-result": {"external-statement-unproved"},
    "model-comparison": {"comparison-obligation"},
    "internal-application": {"internal-application-obligation"},
    "internal-adapter": {"implemented-adapter", "proof-placeholder"},
}
FIELD_STATUSES = {
    "literature": "external-statement-unproved",
    "computation": "certification-obligation",
    "internal-application": "internal-application-obligation",
}
REQUIRED_STRUCTURES = {
    "KIP126.Challenge2.LiteratureResults",
    "KIP126.Challenge2.ComputationResults",
}


def require(condition, message):
    if not condition:
        raise ValueError(message)


def module_name(root, value):
    path = Path(value)
    require(not path.is_absolute() and ".." not in path.parts, f"unsafe module: {value}")
    require(path.suffix == ".lean" and (root / path).is_file(), f"missing module: {value}")
    require((root / path).resolve().is_relative_to(root.resolve()), f"module escapes checkout: {value}")
    return path.with_suffix("").as_posix().replace("/", ".")


def declaration_name(name):
    require(isinstance(name, str) and re.fullmatch(r"KIP126(?:\.[^\s`(),;\[\]{}\"]+)+", name),
            f"invalid declaration name: {name!r}")


def without_comments(text):
    """Remove nested Lean block/line comments without joining source lines."""
    result, index, depth, string = [], 0, 0, False
    while index < len(text):
        pair = text[index:index + 2]
        char = text[index]
        if depth:
            if pair == "/-":
                depth += 1
                index += 2
                continue
            if pair == "-/":
                depth -= 1
                index += 2
                continue
            result.append("\n" if char == "\n" else " ")
        elif string:
            result.append(char)
            if char == "\\" and index + 1 < len(text):
                index += 1
                result.append(text[index])
            elif char == '"':
                string = False
        elif pair == "/-":
            depth = 1
            index += 2
            continue
        elif pair == "--":
            end = text.find("\n", index)
            index = len(text) if end < 0 else end
            continue
        else:
            string = char == '"'
            result.append(char)
        index += 1
    require(depth == 0, "unclosed Lean comment")
    return "".join(result)


def structure_fields(text, name):
    """Fast source check; --lean-check also checks kernel environment metadata."""
    clean = without_comments(text)
    short = name.rsplit(".", 1)[-1]
    matches = list(re.finditer(r"^structure " + re.escape(short) + r"\b", clean, re.M))
    require(len(matches) == 1, f"expected one structure declaration for {name}, found {len(matches)}")
    remaining = clean[matches[0].end():]
    header = re.search(r"\bwhere[ \t]*\n", remaining)
    require(header is not None, f"missing structure body for {name}")
    body = remaining[header.end():]
    boundary = re.search(r"^\S", body, re.M)
    if boundary:
        body = body[:boundary.start()]
    fields = re.findall(r"^  ([^\s:(){}]+)(?=\s*(?:[:({]))", body, re.M)
    require(len(fields) == len(set(fields)) and fields, f"invalid fields for {name}")
    return set(fields)


def blueprint_nodes(root):
    """Read active Blueprint inputs and their mathematical declaration links."""
    directory = (root / "blueprint/src").resolve()
    visited, active = set(), []
    environments = r"theorem|proposition|lemma|corollary|definition"
    input_pattern = re.compile(r"\\input\b\s*\{([^}]+)\}")

    def source_text(path):
        text = strip_unescaped_percent_comments(path.read_text())
        require(not re.search(
            r"\\(?:verb|lstinline|mintinline)\b|"
            r"\\begin\s*\{(?:verbatim\*?|comment|lstlisting|minted)\}", text),
            f"unsupported Blueprint verbatim construct: {path}")

        # external_results.tex has a node-free fallback preamble for its
        # standalone editor build. No mathematical coverage can depend on it.
        def standalone_preamble(match):
            body = match[1]
            require(not re.search(
                r"\\(?:label|input|include)\b|\\lean\s*\{|"
                r"\\begin\s*\{(?:" + environments + r")\}|\\if[A-Za-z@]*\b", body),
                f"unsupported Blueprint conditional coverage: {path}")
            return "\n" * match[0].count("\n")

        text = re.sub(r"\\ifdefined\s*\\chapter\b(.*?)\\fi\b",
                      standalone_preamble, text, flags=re.S)
        require(not re.search(r"\\(?:if[A-Za-z@]*|else|fi)\b", text),
                f"unsupported Blueprint conditional: {path}")
        require(not re.search(r"\\include\b", text),
                f"unsupported Blueprint include; use braced input: {path}")
        require(len(re.findall(r"\\input\b", text)) == len(input_pattern.findall(text)),
                f"unsupported Blueprint input; use braced input: {path}")
        return text

    def expand(path):
        path = path.resolve()
        require(path.is_relative_to(directory), f"Blueprint input escapes source tree: {path}")
        require(path.is_file(), f"missing Blueprint input: {path}")
        require(path not in active, f"cyclic Blueprint input: {path}")
        require(path not in visited, f"repeated Blueprint input: {path}")
        visited.add(path)
        active.append(path)
        try:
            text = source_text(path)

            def input_text(match):
                name = match[1]
                relative = Path(name)
                require(not relative.is_absolute() and ".." not in relative.parts,
                        f"unsafe Blueprint input: {name}")
                if not relative.suffix:
                    relative = relative.with_suffix(".tex")
                return "\n" + expand(directory / relative) + "\n"

            return input_pattern.sub(input_text, text)
        finally:
            active.pop()

    text = expand(directory / "content.tex")
    labels, nodes, stack = set(), {}, []
    tokens = re.compile(
        r"\\(?:(begin|end)\s*\{(" + environments + r")\}|"
        r"label\s*\{([^}]+)\}|lean\s*\{([^}]+)\})")
    for match in tokens.finditer(text):
        command, environment, label, declarations = match.groups()
        if command == "begin":
            stack.append({"environment": environment, "labels": [], "declarations": set()})
        elif command == "end":
            require(stack and stack[-1]["environment"] == environment,
                    f"unbalanced Blueprint mathematical environment: {environment}")
            node = stack.pop()
            for alias in node["labels"]:
                nodes[alias] = node["declarations"]
        elif label is not None:
            require(label not in labels, f"duplicate active Blueprint label: {label}")
            labels.add(label)
            if stack:
                stack[-1]["labels"].append(label)
        elif stack:
            stack[-1]["declarations"].update(
                name.strip() for name in declarations.split(",") if name.strip())
    require(not stack, "unclosed Blueprint mathematical environment")
    return labels, nodes


def validate_document(root, document):
    require(document["schema_version"] == 3, "unsupported external manifest schema")
    sources = {s["id"]: s for s in document["sources"]}
    require(len(sources) == len(document["sources"]), "duplicate source ID")
    artifacts = {a["path"] for s in sources.values() for a in s["artifacts"]}
    for source in sources.values():
        require(set(source.get("members", [])) <= sources.keys(), f"unknown source-group member: {source['id']}")
        require(set(source.get("route_review", {}).get("artifact_paths", [])) <= artifacts,
                f"unregistered review artifact: {source['id']}")

    def reference(row, where):
        require(row.get("sources") and set(row["sources"]) <= sources.keys(), f"unknown/missing source: {where}")
        require(isinstance(row.get("locator"), str) and row["locator"].strip(), f"missing locator: {where}")

    route = document["route"]
    claims = route["claims"]
    data = (root / "KIP126/Interface/Challenge/Challenge2.lean").read_text()
    require(structure_fields(data, "KIP126.Challenge2") == {"literature", "computation"},
            "Challenge2 root field drift")
    for path, name in (
        ("KIP126/Interface/Challenge/Literature/Delivery.lean", "KIP126.Challenge2.LiteratureInterface"),
        ("KIP126/Interface/Challenge/Computation/Delivery.lean", "KIP126.Challenge2.ComputationInterface"),
    ):
        require(structure_fields((root / path).read_text(), name) == {"bindings", "results"},
                f"delivery field drift: {name}")
    consumer_fields = structure_fields(
        (root / "KIP126/Interface/Solution/Literature/Applications.lean").read_text(),
        "KIP126.Literature.Route.Inputs")
    require({c["input_field"] for c in claims} == consumer_fields, "route consumer field coverage drift")
    paper_labels = set(re.findall(r"\\label\{([^}]+)\}", strip_unescaped_percent_comments(
        (root / "MainPaper/main.tex").read_text())))
    for claim in claims:
        reference(claim, claim["id"])
        require("aim_paper" not in claim["sources"], "MainPaper consumption is not a proof of an external result")
        require(claim["kind"] and claim["lwx_consumers"], f"missing consumer locator: {claim['id']}")
        require(set(claim["lwx_consumers"]) <= paper_labels, f"unknown paper label: {claim['id']}")
    entries = sum((route[k] for k in ("claims", "model_bindings", "delivery_packages",
                  "internal_adapters", "source_producers")), [])
    require(len({e["id"] for e in entries}) == len(entries), "duplicate route audit ID")
    declarations = set()
    for entry in entries:
        require(entry["proof_status"] in ROUTE_STATUSES.get(entry["role"], set()), f"role/status mismatch: {entry['id']}")
        if "sources" in entry:
            require(set(entry["sources"]) <= sources.keys(), f"unknown source: {entry['id']}")
        module = module_name(root, entry["module"])
        require(entry["declarations"], f"empty declaration group: {entry['id']}")
        modules = entry.get("declaration_modules", {})
        require(set(modules) <= set(entry["declarations"]), f"unknown declaration owner: {entry['id']}")
        for name in entry["declarations"]:
            declaration_name(name)
            owner = module_name(root, modules[name]) if name in modules else module
            declarations.add((name, owner))
    require(all(e["role"] == "model-comparison" for e in route["model_bindings"]), "model role drift")
    require(all(e["role"] == "internal-adapter" for e in route["internal_adapters"]), "adapter role drift")
    for evidence in route["csv_evidence"]:
        source = sources[evidence["source"]]
        require(evidence["path"] in {a["path"] for a in source["artifacts"]}, "unregistered CSV artifact")
        with (root / evidence["path"]).open(newline="") as handle:
            selected = [{"line": line, "row": row} for line, row in enumerate(csv.DictReader(handle), 2)
                        if all(row[key] == value for key, value in evidence["selector"].items())]
        require(selected == evidence["expected"], f"primary CSV evidence changed: {evidence['id']}")
    blueprint_labels, nodes = blueprint_nodes(root)
    literature_nodes = set()
    coverage = document["interface_coverage"]
    require({c["structure"] for c in coverage} == REQUIRED_STRUCTURES, "interface coverage structure set drift")
    require(len(coverage) == len(REQUIRED_STRUCTURES), "duplicate interface coverage structure")
    for item in coverage:
        name = item["structure"]
        expected_role = {
            "KIP126.Challenge2.ComputationResults": "computation",
        }.get(name, "literature")
        require(item["role"] == expected_role, f"structure role mismatch: {name}")
        declaration_name(name)
        module = module_name(root, item["module"])
        actual = structure_fields((root / item["module"]).read_text(), name)
        require(set(item["fields"]) == actual,
                f"field coverage drift: {name}: missing={actual-set(item['fields'])}, extra={set(item['fields'])-actual}")
        declarations.add((name, module))
        for field, row in item["fields"].items():
            reference(row, f"{name}.{field}")
            require(row["proof_status"] == FIELD_STATUSES[item["role"]], f"field role/status mismatch: {name}.{field}")
            require(set(row["blueprint_labels"]) <= blueprint_labels, f"unknown Blueprint label: {name}.{field}")
            if item["role"] == "literature":
                require(len(row["blueprint_labels"]) == 1,
                        f"expected one individual Blueprint node: {name}.{field}")
                label = row["blueprint_labels"][0]
                require(label not in literature_nodes, f"Blueprint literature node reused: {label}")
                literature_nodes.add(label)
                require(label in nodes, f"Blueprint coverage is not a mathematical node: {label}")
                require(name + "." + field in nodes[label],
                        f"missing direct Blueprint field link: {name}.{field} at {label}")
                field_links = {n for n in nodes[label] if n.startswith(name + ".")}
                require(field_links == {name + "." + field},
                        f"Blueprint node combines literature fields: {label}")
            declarations.add((name + "." + field, module))
    for row in document["declaration_sources"]:
        reference(row, row["declaration"])
        require(row["status"] == "statement-or-data-only", f"invalid declaration review status: {row['declaration']}")
        declaration_name(row["declaration"])
        declarations.add((row["declaration"], module_name(root, row["module"])))
    return declarations


def lean_check(document, declarations):
    modules = sorted({module for _, module in declarations})
    pairs = ",\n    ".join(f"(`{name}, `{module})" for name, module in sorted(declarations))
    checks = "".join(f"import {module}\n" for module in modules)
    checks += "import Lean.Elab.Command\nimport Lean.Meta.Basic\nopen Lean Elab Command in\nrun_cmd do\n  let env ← getEnv\n"
    checks += f"  for (n, expected) in [{pairs}] do\n"
    checks += '    unless env.contains n do throwError "missing provenance declaration: {n}"\n'
    checks += '    let some idx := env.getModuleIdxFor? n | throwError "no defining module: {n}"\n'
    checks += '    unless env.header.moduleNames[idx.toNat]! == expected do\n'
    checks += '      throwError "wrong provenance module for {n}: expected {expected}, got {env.header.moduleNames[idx.toNat]!}"\n'
    for item in document["interface_coverage"]:
        expected = ", ".join("`" + field for field in sorted(item["fields"]))
        checks += f"  let actual := getStructureFields env `{item['structure']}\n"
        checks += f"  let expected : Array Name := #[{expected}]\n"
        checks += '  unless actual.size == expected.size && actual.all (expected.contains ·) do\n'
        checks += f'    throwError "structure field coverage drift: {item["structure"]}: {{actual}}"\n'
        if item["role"] == "literature":
            checks += f"  for field in getStructureFields env `{item['structure']} do\n"
            checks += f"    let name := `{item['structure']} ++ field\n"
            checks += '    let some info := env.find? name | throwError "missing literature field: {name}"\n'
            checks += '    unless ← liftTermElabM (Lean.Meta.isProp info.type) do\n'
            checks += '      throwError "literature results field is data rather than a proposition: {name}"\n'
    return checks


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--lean-check", type=Path, help="emit declaration/module/field checks for lake env lean")
    args = parser.parse_args()
    root = Path(__file__).resolve().parents[1]
    errors = validate_inventory(root)
    require(not errors, "\n".join(errors))
    document = json.loads((root / "docs/external-inputs.json").read_text())
    declarations = validate_document(root, document)
    if args.lean_check:
        args.lean_check.write_text(lean_check(document, declarations))
    fields = sum(len(c["fields"]) for c in document["interface_coverage"])
    print(f"External inputs: {len(document['sources'])} sources, {fields} interface fields, "
          f"{len(document['route']['claims'])} route audit groups, {len(declarations)} declaration/module pairs.")
    print("Sources, artifacts, locators, field coverage and declared statuses checked; mathematical truth and source fidelity remain review obligations.")


if __name__ == "__main__":
    main()
