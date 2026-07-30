#!/usr/bin/env python3
"""Inspect the dependency graph of a classic Lean Blueprint.

This dependency-only fallback requires no third-party packages. Prefer leandag
when a project already pins it. The parser intentionally handles the common
Lean Blueprint subset rather than attempting to implement TeX.
"""

from __future__ import annotations

import argparse
import json
import re
import sys
from dataclasses import asdict, dataclass, field
from pathlib import Path
from typing import Iterable


ENTRY_CANDIDATES = (
    "blueprint/src/web.tex",
    "blueprint/src/print.tex",
    "blueprint/src/content.tex",
)
THEOREM_ENVS = {
    "definition",
    "theorem",
    "lemma",
    "proposition",
    "corollary",
    "example",
    "remark",
}
PROOF_REQUIRED_ENVS = {
    "theorem",
    "lemma",
    "proposition",
    "corollary",
}

INPUT_RE = re.compile(r"\\(?:input|include)\s*\{\s*([^{}]+?)\s*\}")
ENV_RE = re.compile(
    r"\\begin\s*\{(?P<env>"
    + "|".join(sorted(THEOREM_ENVS))
    + r")\s*\}(?P<body>.*?)\\end\s*\{(?P=env)\s*\}",
    re.DOTALL,
)
PROOF_RE = re.compile(
    r"\\begin\s*\{proof\s*\}(?P<body>.*?)\\end\s*\{proof\s*\}",
    re.DOTALL,
)
LABEL_RE = re.compile(r"\\label\s*\{\s*([^{}]*?)\s*\}")
LEAN_RE = re.compile(r"\\lean\s*\{\s*([^{}]*?)\s*\}")
USES_RE = re.compile(r"\\uses\s*\{\s*([^{}]*?)\s*\}")


@dataclass
class Node:
    label: str
    kind: str
    file: str
    line: int
    lean: list[str] = field(default_factory=list)
    uses: list[str] = field(default_factory=list)
    statement_ok: bool = False
    proof_ok: bool = False
    mathlib_ok: bool = False
    not_ready: bool = False
    has_proof: bool = False
    proof_words: int = 0

    @property
    def done(self) -> bool:
        if self.mathlib_ok:
            return True
        if self.kind == "definition":
            return self.statement_ok
        return self.statement_ok and self.proof_ok

    @property
    def finite_route(self) -> bool:
        if self.done or self.mathlib_ok:
            return True
        if self.kind not in PROOF_REQUIRED_ENVS:
            return True
        return self.has_proof and self.proof_words > 0


@dataclass
class GraphReport:
    entry: str
    files: list[str]
    nodes: list[Node]
    duplicate_labels: dict[str, list[str]]
    duplicate_lean: dict[str, list[str]]
    missing_labels: list[str]
    unknown_uses: list[tuple[str, str]]
    cycles: list[list[str]]
    isolated: list[str]
    roots: list[str]
    leaves: list[str]
    ready: list[str]
    missing_proof_routes: list[str]
    warnings: list[str]

    @property
    def has_errors(self) -> bool:
        return bool(
            self.duplicate_labels
            or self.duplicate_lean
            or self.missing_labels
            or self.unknown_uses
            or self.cycles
        )

    def to_dict(self) -> dict:
        data = asdict(self)
        data["nodes"] = [
            {**asdict(node), "done": node.done, "finite_route": node.finite_route}
            for node in self.nodes
        ]
        data["unknown_uses"] = [
            {"node": node, "dependency": dep} for node, dep in self.unknown_uses
        ]
        data["has_errors"] = self.has_errors
        return data


def strip_comments(text: str) -> str:
    """Replace unescaped TeX comments with spaces while preserving offsets."""
    chars = list(text)
    escaped = False
    in_comment = False
    for index, char in enumerate(chars):
        if in_comment:
            if char == "\n":
                in_comment = False
            else:
                chars[index] = " "
            continue
        if char == "\\":
            escaped = not escaped
            continue
        if char == "%" and not escaped:
            chars[index] = " "
            in_comment = True
        escaped = False
    return "".join(chars)


def split_list(value: str) -> list[str]:
    return [item.strip() for item in value.split(",") if item.strip()]


def resolve_entry(root: Path, requested: str | None) -> Path:
    if requested:
        entry = (root / requested).resolve()
        if not entry.is_file():
            raise FileNotFoundError(f"Blueprint entry does not exist: {entry}")
        return entry
    for candidate in ENTRY_CANDIDATES:
        entry = root / candidate
        if entry.is_file():
            return entry.resolve()
    raise FileNotFoundError(
        "No Blueprint entry found; expected web.tex, print.tex, or content.tex"
    )


def resolve_input(raw: str, current: Path, src_dir: Path) -> Path | None:
    value = raw.strip()
    if not value:
        return None
    candidates = [current.parent / value, src_dir / value]
    for candidate in candidates:
        if candidate.suffix != ".tex":
            candidate = candidate.with_suffix(".tex")
        if candidate.is_file():
            return candidate.resolve()
    return None


def collect_inputs(entry: Path, src_dir: Path) -> tuple[list[Path], list[str]]:
    visited: set[Path] = set()
    stack = [entry]
    warnings: list[str] = []
    while stack:
        current = stack.pop()
        current = current.resolve()
        if current in visited:
            continue
        visited.add(current)
        text = strip_comments(current.read_text(encoding="utf-8", errors="replace"))
        for match in INPUT_RE.finditer(text):
            target = resolve_input(match.group(1), current, src_dir)
            if target is None:
                warnings.append(
                    f"{current}: unresolved input {match.group(1)!r}"
                )
            elif target not in visited:
                stack.append(target)
    return sorted(visited), warnings


def line_number(text: str, offset: int) -> int:
    return text.count("\n", 0, offset) + 1


def parse_nodes(files: Iterable[Path], root: Path) -> tuple[list[Node], list[str]]:
    nodes: list[Node] = []
    warnings: list[str] = []
    for path in files:
        raw = path.read_text(encoding="utf-8", errors="replace")
        text = strip_comments(raw)
        statements = list(ENV_RE.finditer(text))
        proofs = list(PROOF_RE.finditer(text))
        for index, match in enumerate(statements):
            body = match.group("body")
            labels = [value.strip() for value in LABEL_RE.findall(body) if value.strip()]
            location = f"{path.relative_to(root)}:{line_number(text, match.start())}"
            if not labels:
                warnings.append(f"{location}: {match.group('env')} has no label")
                continue
            if len(labels) > 1:
                warnings.append(
                    f"{location}: multiple labels in one declaration: {labels}"
                )
            label = labels[0]
            lean: list[str] = []
            for value in LEAN_RE.findall(body):
                lean.extend(split_list(value))
            uses: list[str] = []
            for value in USES_RE.findall(body):
                uses.extend(split_list(value))

            next_start = statements[index + 1].start() if index + 1 < len(statements) else len(text)
            proof_match = next(
                (
                    proof
                    for proof in proofs
                    if match.end() <= proof.start() < next_start
                ),
                None,
            )
            proof_body = proof_match.group("body") if proof_match else ""
            for value in USES_RE.findall(proof_body):
                uses.extend(split_list(value))
            visible_proof = re.sub(r"\\[A-Za-z@]+(?:\s*\{[^{}]*\})?", " ", proof_body)
            proof_words = len(re.findall(r"\w+", visible_proof, flags=re.UNICODE))

            nodes.append(
                Node(
                    label=label,
                    kind=match.group("env"),
                    file=str(path.relative_to(root)),
                    line=line_number(text, match.start()),
                    lean=list(dict.fromkeys(lean)),
                    uses=list(dict.fromkeys(uses)),
                    statement_ok=bool(re.search(r"\\leanok\b", body)),
                    proof_ok=bool(re.search(r"\\leanok\b", proof_body)),
                    mathlib_ok=bool(re.search(r"\\mathlibok\b", body)),
                    not_ready=bool(re.search(r"\\notready\b", body)),
                    has_proof=proof_match is not None,
                    proof_words=proof_words,
                )
            )
    return nodes, warnings


def strongly_connected(adjacency: dict[str, list[str]]) -> list[list[str]]:
    """Return dependency cycles using Tarjan's algorithm."""
    index = 0
    stack: list[str] = []
    on_stack: set[str] = set()
    indices: dict[str, int] = {}
    lowlinks: dict[str, int] = {}
    components: list[list[str]] = []

    def visit(node: str) -> None:
        nonlocal index
        indices[node] = index
        lowlinks[node] = index
        index += 1
        stack.append(node)
        on_stack.add(node)
        for dep in adjacency.get(node, []):
            if dep not in adjacency:
                continue
            if dep not in indices:
                visit(dep)
                lowlinks[node] = min(lowlinks[node], lowlinks[dep])
            elif dep in on_stack:
                lowlinks[node] = min(lowlinks[node], indices[dep])
        if lowlinks[node] == indices[node]:
            component: list[str] = []
            while True:
                member = stack.pop()
                on_stack.remove(member)
                component.append(member)
                if member == node:
                    break
            if len(component) > 1 or node in adjacency.get(node, []):
                components.append(sorted(component))

    for node in adjacency:
        if node not in indices:
            visit(node)
    return sorted(components)


def build_report(root: Path, entry_arg: str | None) -> GraphReport:
    entry = resolve_entry(root, entry_arg)
    src_dir = root / "blueprint" / "src"
    files, warnings = collect_inputs(entry, src_dir)
    nodes, parse_warnings = parse_nodes(files, root)
    warnings.extend(parse_warnings)

    by_label: dict[str, list[Node]] = {}
    by_lean: dict[str, list[Node]] = {}
    for node in nodes:
        by_label.setdefault(node.label, []).append(node)
        for lean_name in node.lean:
            by_lean.setdefault(lean_name, []).append(node)

    duplicate_labels = {
        label: [f"{node.file}:{node.line}" for node in values]
        for label, values in by_label.items()
        if len(values) > 1
    }
    duplicate_lean = {
        name: [node.label for node in values]
        for name, values in by_lean.items()
        if len({node.label for node in values}) > 1
    }
    missing_labels = sorted(
        warning for warning in warnings if " has no label" in warning
    )

    canonical = {label: values[0] for label, values in by_label.items()}
    unknown_uses = sorted(
        (node.label, dep)
        for node in nodes
        for dep in node.uses
        if dep not in canonical
    )
    adjacency = {
        label: [dep for dep in node.uses if dep in canonical]
        for label, node in canonical.items()
    }
    reverse: dict[str, list[str]] = {label: [] for label in canonical}
    for label, deps in adjacency.items():
        for dep in deps:
            reverse[dep].append(label)

    isolated = sorted(
        label
        for label in canonical
        if not adjacency[label] and not reverse[label]
    )
    roots = sorted(label for label in canonical if not adjacency[label])
    leaves = sorted(label for label in canonical if not reverse[label])
    missing_proof_routes = sorted(
        node.label for node in canonical.values() if not node.finite_route
    )
    ready = sorted(
        node.label
        for node in canonical.values()
        if not node.done
        and not node.not_ready
        and bool(node.lean)
        and node.finite_route
        and all(canonical[dep].done for dep in adjacency[node.label])
    )

    return GraphReport(
        entry=str(entry.relative_to(root)),
        files=[str(path.relative_to(root)) for path in files],
        nodes=nodes,
        duplicate_labels=duplicate_labels,
        duplicate_lean=duplicate_lean,
        missing_labels=missing_labels,
        unknown_uses=unknown_uses,
        cycles=strongly_connected(adjacency),
        isolated=isolated,
        roots=roots,
        leaves=leaves,
        ready=ready,
        missing_proof_routes=missing_proof_routes,
        warnings=sorted(set(warnings)),
    )


def closure(report: GraphReport, focus: str) -> tuple[list[str], list[str]]:
    nodes = {node.label: node for node in report.nodes}
    if focus not in nodes:
        raise KeyError(f"Unknown Blueprint label: {focus}")
    adjacency = {
        label: [dep for dep in node.uses if dep in nodes]
        for label, node in nodes.items()
    }
    reverse: dict[str, list[str]] = {label: [] for label in nodes}
    for label, deps in adjacency.items():
        for dep in deps:
            reverse[dep].append(label)

    def walk(start: str, edges: dict[str, list[str]]) -> list[str]:
        seen: set[str] = set()
        stack = list(edges[start])
        while stack:
            node = stack.pop()
            if node in seen:
                continue
            seen.add(node)
            stack.extend(edges[node])
        return sorted(seen)

    return walk(focus, adjacency), walk(focus, reverse)


def render_text(report: GraphReport, focus: str | None) -> str:
    lines = [
        f"Blueprint entry: {report.entry}",
        f"Included TeX files: {len(report.files)}",
        f"Nodes: {len(report.nodes)}",
        f"Ready for proof: {len(report.ready)}",
        f"Missing proof routes: {len(report.missing_proof_routes)}",
        f"Unknown uses: {len(report.unknown_uses)}",
        f"Cycles: {len(report.cycles)}",
        f"Isolated nodes: {len(report.isolated)}",
    ]
    sections: list[tuple[str, Iterable[str]]] = [
        ("Ready", report.ready),
        ("Missing proof routes", report.missing_proof_routes),
        (
            "Unknown uses",
            (f"{node} -> {dep}" for node, dep in report.unknown_uses),
        ),
        ("Cycles", (" -> ".join(cycle) for cycle in report.cycles)),
        ("Isolated", report.isolated),
        ("Warnings", report.warnings),
    ]
    if focus:
        ancestors, descendants = closure(report, focus)
        sections.insert(0, (f"Dependencies of {focus}", ancestors))
        sections.insert(1, (f"Dependents of {focus}", descendants))
    for title, values in sections:
        values = list(values)
        if not values:
            continue
        lines.extend(["", f"{title}:"])
        lines.extend(f"- {value}" for value in values)
    return "\n".join(lines)


def render_dot(report: GraphReport) -> str:
    nodes = {node.label: node for node in report.nodes}

    def quote(value: str) -> str:
        return '"' + value.replace("\\", "\\\\").replace('"', '\\"') + '"'

    lines = ["digraph Blueprint {"]
    for label, node in sorted(nodes.items()):
        attrs = []
        if node.done:
            attrs.append('style="filled"')
            attrs.append('fillcolor="#b7e4c7"')
        elif node.not_ready:
            attrs.append('style="filled"')
            attrs.append('fillcolor="#ffe8a1"')
        suffix = " [" + ", ".join(attrs) + "]" if attrs else ""
        lines.append(f"  {quote(label)}{suffix};")
    for label, node in sorted(nodes.items()):
        for dep in node.uses:
            if dep in nodes:
                lines.append(f"  {quote(label)} -> {quote(dep)};")
    lines.append("}")
    return "\n".join(lines)


def parse_args(argv: list[str] | None = None) -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("project", nargs="?", default=".")
    parser.add_argument("--entry", help="Blueprint entry path relative to project")
    parser.add_argument("--format", choices=("text", "json", "dot"), default="text")
    parser.add_argument("--focus", help="Show dependency and dependent closure")
    parser.add_argument(
        "--strict",
        action="store_true",
        help="Exit nonzero for duplicate labels/Lean names, unknown uses, or cycles",
    )
    return parser.parse_args(argv)


def main(argv: list[str] | None = None) -> int:
    args = parse_args(argv)
    root = Path(args.project).resolve()
    try:
        report = build_report(root, args.entry)
        if args.focus:
            closure(report, args.focus)
    except (FileNotFoundError, OSError, KeyError) as error:
        print(f"blueprint_graph: {error}", file=sys.stderr)
        return 2

    if args.format == "json":
        payload = report.to_dict()
        if args.focus:
            ancestors, descendants = closure(report, args.focus)
            payload["focus"] = {
                "label": args.focus,
                "dependencies": ancestors,
                "dependents": descendants,
            }
        print(json.dumps(payload, indent=2, ensure_ascii=False))
    elif args.format == "dot":
        print(render_dot(report))
    else:
        print(render_text(report, args.focus))
    return 1 if args.strict and report.has_errors else 0


if __name__ == "__main__":
    sys.exit(main())
