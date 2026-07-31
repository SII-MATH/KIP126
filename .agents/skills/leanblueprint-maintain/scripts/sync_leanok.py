#!/usr/bin/env python3
"""Safely synchronize statement/proof ``\\leanok`` markers.

The command is a dry run unless ``--write`` is provided. Positive proof status
requires a successful Lake build and a ``#print axioms`` result containing no
``sorryAx`` or disallowed axiom.
"""

from __future__ import annotations

import argparse
import json
import os
import re
import subprocess
import sys
from dataclasses import asdict, dataclass
from pathlib import Path


STATEMENT_ENVS = (
    "definition",
    "theorem",
    "lemma",
    "proposition",
    "corollary",
    "example",
)
BEGIN_RE = re.compile(
    r"\\begin\s*\{(?P<env>" + "|".join(STATEMENT_ENVS) + r")\s*\}"
)
END_RE = {
    env: re.compile(r"\\end\s*\{" + re.escape(env) + r"\s*\}")
    for env in STATEMENT_ENVS
}
PROOF_BEGIN_RE = re.compile(r"\\begin\s*\{proof\s*\}")
PROOF_END_RE = re.compile(r"\\end\s*\{proof\s*\}")
LEAN_RE = re.compile(r"\\lean\s*\{\s*([^{}]*?)\s*\}")
LEANOK_RE = re.compile(r"\\leanok\b")
MATHLIBOK_RE = re.compile(r"\\mathlibok\b")
NOTREADY_RE = re.compile(r"\\notready\b")
LEANOK_LINE_RE = re.compile(r"^[ \t]*\\leanok[ \t]*$\n?", re.MULTILINE)
DECL_RE = re.compile(
    r"^\s*(?:@\[[^\]]*\]\s*)*"
    r"(?P<mods>(?:(?:private|protected|noncomputable|partial|nonrec|unsafe|"
    r"opaque)\s+)*)"
    r"(?P<kind>theorem|lemma|def|abbrev|instance|example|class|structure|"
    r"inductive|axiom)\s+"
    r"(?P<name>[^\s:={}()\[\],|;]+)",
    re.MULTILINE,
)
SCOPE_RE = re.compile(r"^\s*(?P<kind>namespace|section)\b(?:\s+(?P<name>\S+))?")
END_SCOPE_RE = re.compile(r"^\s*end\b(?:\s+(?P<name>\S+))?")
PRINT_AXIOMS_RE = re.compile(
    r"^'(?P<name>.+)' (?:(?:does not depend on any axioms)|"
    r"(?:depends on axioms: \[(?P<axioms>.*)\]))$"
)
PRINT_AXIOMS_START_RE = re.compile(r"^'(?P<name>.+)' (?P<rest>.*)$")
SKIP_DIRS = {
    ".git",
    ".lake",
    ".leandag",
    ".agents",
    ".codex",
    "blueprint",
    "lake-packages",
    "build",
    "_target",
}
DEFAULT_ALLOWED_AXIOMS = {"propext", "Classical.choice", "Quot.sound"}


@dataclass(frozen=True)
class Declaration:
    name: str
    kind: str
    file: Path
    module: str
    private: bool


@dataclass(frozen=True)
class Block:
    start: int
    end: int
    kind: str
    lean_names: tuple[str, ...]
    has_leanok: bool
    skipped: bool


@dataclass(frozen=True)
class Change:
    chapter: str
    block_kind: str
    lean_names: tuple[str, ...]
    action: str
    reason: str


def strip_lean_comments_and_strings(text: str) -> str:
    out: list[str] = []
    index = 0
    depth = 0
    in_string = False
    while index < len(text):
        char = text[index]
        nxt = text[index + 1] if index + 1 < len(text) else ""
        if depth:
            if char == "/" and nxt == "-":
                depth += 1
                out.extend((" ", " "))
                index += 2
                continue
            if char == "-" and nxt == "/":
                depth -= 1
                out.extend((" ", " "))
                index += 2
                continue
            out.append("\n" if char == "\n" else " ")
            index += 1
            continue
        if in_string:
            if char == "\\" and nxt:
                out.extend((" ", " "))
                index += 2
                continue
            if char == '"':
                in_string = False
            out.append("\n" if char == "\n" else " ")
            index += 1
            continue
        if char == '"':
            in_string = True
            out.append(" ")
            index += 1
            continue
        if char == "-" and nxt == "-":
            while index < len(text) and text[index] != "\n":
                out.append(" ")
                index += 1
            continue
        if char == "/" and nxt == "-":
            depth = 1
            out.extend((" ", " "))
            index += 2
            continue
        out.append(char)
        index += 1
    return "".join(out)


def split_names(value: str) -> tuple[str, ...]:
    return tuple(item.strip() for item in value.split(",") if item.strip())


def parse_axiom_output(output: str) -> dict[str, set[str]]:
    """Parse ``#print axioms`` output, including pretty-printer continuations.

    Lean may wrap a long axiom list over several physical lines.  Keep one
    result pending until the normalized text matches ``PRINT_AXIOMS_RE``;
    incomplete or unrelated output is deliberately discarded so callers keep
    their fail-closed behavior.
    """

    parsed: dict[str, set[str]] = {}
    pending_name: str | None = None
    pending_parts: list[str] = []

    def finish_pending() -> None:
        nonlocal pending_name, pending_parts
        if pending_name is None:
            return
        candidate = f"'{pending_name}' {' '.join(pending_parts)}"
        match = PRINT_AXIOMS_RE.fullmatch(candidate)
        if match:
            parsed[match.group("name")] = {
                item.strip()
                for item in (match.group("axioms") or "").split(",")
                if item.strip()
            }
        pending_name = None
        pending_parts = []

    for raw_line in output.splitlines():
        line = raw_line.strip()
        if not line:
            continue
        start = PRINT_AXIOMS_START_RE.match(line)
        if start:
            finish_pending()
            pending_name = start.group("name")
            pending_parts = [start.group("rest")]
        elif pending_name is not None:
            pending_parts.append(line)
        else:
            continue

        if pending_name is not None:
            candidate = f"'{pending_name}' {' '.join(pending_parts)}"
            if PRINT_AXIOMS_RE.fullmatch(candidate):
                finish_pending()

    finish_pending()
    return parsed


def parse_blocks(text: str) -> list[Block]:
    blocks: list[Block] = []
    cursor = 0
    previous_names: tuple[str, ...] = ()
    while cursor < len(text):
        statement = BEGIN_RE.search(text, cursor)
        proof = PROOF_BEGIN_RE.search(text, cursor)
        if statement is None and proof is None:
            break
        if statement is not None and (
            proof is None or statement.start() < proof.start()
        ):
            kind = statement.group("env")
            begin = statement
            end = END_RE[kind].search(text, begin.end())
        else:
            kind = "proof"
            begin = proof
            end = PROOF_END_RE.search(text, begin.end()) if begin else None
        if begin is None or end is None:
            break
        body = text[begin.end() : end.start()]
        if kind == "proof":
            lean_names = previous_names
        else:
            names: list[str] = []
            for value in LEAN_RE.findall(body):
                names.extend(split_names(value))
            lean_names = tuple(dict.fromkeys(names))
            previous_names = lean_names
        blocks.append(
            Block(
                start=begin.start(),
                end=end.end(),
                kind=kind,
                lean_names=lean_names,
                has_leanok=bool(LEANOK_RE.search(body)),
                skipped=bool(MATHLIBOK_RE.search(body) or NOTREADY_RE.search(body)),
            )
        )
        cursor = end.end()
    return blocks


def module_name(root: Path, lean_file: Path) -> str:
    relative = lean_file.relative_to(root).with_suffix("")
    return ".".join(relative.parts)


def scan_declarations(root: Path) -> dict[str, Declaration]:
    declarations: dict[str, Declaration] = {}
    for walk_root, dirs, files in os.walk(root):
        dirs[:] = [directory for directory in dirs if directory not in SKIP_DIRS]
        for filename in files:
            if not filename.endswith(".lean"):
                continue
            path = Path(walk_root) / filename
            cleaned = strip_lean_comments_and_strings(
                path.read_text(encoding="utf-8", errors="replace")
            )
            scopes: list[tuple[str, str]] = []
            offset = 0
            for line in cleaned.splitlines(keepends=True):
                scope_match = SCOPE_RE.match(line)
                end_match = END_SCOPE_RE.match(line)
                if scope_match:
                    scopes.append(
                        (scope_match.group("kind"), scope_match.group("name") or "")
                    )
                elif end_match:
                    if scopes:
                        scopes.pop()
                else:
                    match = DECL_RE.match(line)
                    if match:
                        bare = match.group("name")
                        namespaces = [
                            name
                            for kind, name in scopes
                            if kind == "namespace" and name
                        ]
                        qualified = ".".join((*namespaces, bare)) if namespaces else bare
                        declaration = Declaration(
                            name=qualified,
                            kind=match.group("kind"),
                            file=path,
                            module=module_name(root, path),
                            private="private" in match.group("mods").split(),
                        )
                        declarations.setdefault(qualified, declaration)
                        declarations.setdefault(bare, declaration)
                offset += len(line)
    return declarations


def run_lake_build(root: Path, timeout: int) -> tuple[bool, str]:
    try:
        result = subprocess.run(
            ["lake", "build"],
            cwd=root,
            capture_output=True,
            text=True,
            timeout=timeout,
        )
    except (OSError, subprocess.SubprocessError) as error:
        return False, str(error)
    detail = (result.stderr or result.stdout or "").strip()
    return result.returncode == 0, detail[-1000:]


def query_axioms(
    root: Path,
    declarations: dict[str, Declaration],
    names: set[str],
    timeout: int,
) -> tuple[dict[str, set[str] | None], list[str]]:
    by_module: dict[str, list[str]] = {}
    result: dict[str, set[str] | None] = {}
    warnings: list[str] = []
    aliases: dict[str, str] = {}
    for name in sorted(names):
        declaration = declarations.get(name)
        if declaration is None or declaration.private:
            result[name] = None
            continue
        aliases[name] = declaration.name
        by_module.setdefault(declaration.module, []).append(declaration.name)

    for module, module_names in sorted(by_module.items()):
        module_names = list(dict.fromkeys(module_names))
        source = [f"import {module}"]
        source.extend(f"#print axioms {name}" for name in module_names)
        try:
            completed = subprocess.run(
                ["lake", "env", "lean", "--stdin"],
                cwd=root,
                input="\n".join(source) + "\n",
                capture_output=True,
                text=True,
                timeout=timeout,
            )
        except (OSError, subprocess.SubprocessError) as error:
            warnings.append(f"{module}: axiom query failed: {error}")
            for name in module_names:
                result[name] = None
            continue
        if completed.returncode != 0:
            detail = (completed.stderr or completed.stdout or "").strip()
            warnings.append(f"{module}: axiom query failed: {detail[-500:]}")
            for name in module_names:
                result[name] = None
            continue
        parsed = parse_axiom_output(completed.stdout)
        for alias, canonical in aliases.items():
            declaration = declarations.get(alias)
            if declaration is None or declaration.module != module:
                continue
            result[alias] = parsed.get(canonical)
            if canonical not in parsed:
                warnings.append(
                    f"{module}: no #print axioms result for {canonical}"
                )
    return result, warnings


def add_leanok(body: str) -> str:
    if LEANOK_RE.search(body):
        return body
    lines = body.splitlines(keepends=True)
    metadata = re.compile(r"^\s*\\(?:label|lean|uses|proves)\s*\{")
    insert_at = 0
    depth = 0
    for index, line in enumerate(lines):
        if depth:
            depth += line.count("{") - line.count("}")
            insert_at = index + 1
            continue
        if not line.strip():
            insert_at = index + 1
            continue
        if metadata.match(line):
            depth = line.count("{") - line.count("}")
            insert_at = index + 1
            continue
        break
    indent = "  "
    if insert_at and lines:
        match = re.match(r"(\s*)", lines[insert_at - 1])
        if match and match.group(1):
            indent = match.group(1)
    return "".join(lines[:insert_at]) + f"{indent}\\leanok\n" + "".join(
        lines[insert_at:]
    )


def remove_leanok(body: str) -> str:
    without_line = LEANOK_LINE_RE.sub("", body)
    return LEANOK_RE.sub("", without_line)


def replace_marker(text: str, block: Block, action: str) -> str:
    chunk = text[block.start : block.end]
    if block.kind == "proof":
        begin = PROOF_BEGIN_RE.search(chunk)
        end = PROOF_END_RE.search(chunk)
    else:
        begin = BEGIN_RE.search(chunk)
        end = END_RE[block.kind].search(chunk)
    if begin is None or end is None:
        return text
    body = chunk[begin.end() : end.start()]
    new_body = add_leanok(body) if action == "add" else remove_leanok(body)
    new_chunk = chunk[: begin.end()] + new_body + chunk[end.start() :]
    return text[: block.start] + new_chunk + text[block.end :]


def choose_tex_files(root: Path, explicit: list[str]) -> list[Path]:
    if explicit:
        return [path for value in explicit for path in sorted(root.glob(value))]
    chapters = root / "blueprint" / "src" / "chapters"
    if chapters.is_dir():
        files = sorted(chapters.rglob("*.tex"))
        if files:
            return files
    content = root / "blueprint" / "src" / "content.tex"
    return [content] if content.is_file() else []


def synchronize_file(
    path: Path,
    root: Path,
    declarations: dict[str, Declaration],
    axioms: dict[str, set[str] | None],
    build_ok: bool,
    allowed_axioms: set[str],
    write: bool,
    verbose: bool,
) -> list[Change]:
    text = path.read_text(encoding="utf-8")
    blocks = parse_blocks(text)
    changes: list[Change] = []
    updated = text
    for block in reversed(blocks):
        if block.skipped or not block.lean_names:
            continue
        resolved = [declarations.get(name) for name in block.lean_names]
        all_resolved = all(
            declaration is not None
            and not declaration.private
            and declaration.kind != "axiom"
            for declaration in resolved
        )
        if block.kind == "proof":
            axiom_sets = [axioms.get(name) for name in block.lean_names]
            disallowed = sorted(
                {
                    axiom
                    for axiom_set in axiom_sets
                    if axiom_set is not None
                    for axiom in axiom_set
                    if axiom not in allowed_axioms
                }
            )
            should_have = (
                build_ok
                and all_resolved
                and all(axiom_set is not None for axiom_set in axiom_sets)
                and not disallowed
            )
            if not build_ok:
                reason = "Lake build did not succeed"
            elif not all_resolved:
                reason = "declaration missing, private, or an axiom"
            elif any(axiom_set is None for axiom_set in axiom_sets):
                reason = "axiom status undecided"
            elif disallowed:
                reason = "disallowed axioms: " + ", ".join(disallowed)
            else:
                reason = "build succeeds and transitive axiom policy passes"
        else:
            should_have = build_ok and all_resolved
            if not build_ok:
                reason = "Lake build did not succeed"
            elif not all_resolved:
                reason = "declaration missing, private, or an axiom"
            else:
                reason = "declaration exists and build succeeds"

        if should_have == block.has_leanok:
            if verbose:
                changes.append(
                    Change(
                        str(path.relative_to(root)),
                        block.kind,
                        block.lean_names,
                        "keep",
                        reason,
                    )
                )
            continue
        action = "add" if should_have else "remove"
        changes.append(
            Change(
                str(path.relative_to(root)),
                block.kind,
                block.lean_names,
                action,
                reason,
            )
        )
        if write:
            updated = replace_marker(updated, block, action)
    if write and updated != text:
        path.write_text(updated, encoding="utf-8")
    return list(reversed(changes))


def parse_args(argv: list[str] | None = None) -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("project", nargs="?", default=".")
    parser.add_argument(
        "--tex",
        action="append",
        default=[],
        help="Project-relative glob of TeX files to synchronize; repeatable",
    )
    parser.add_argument("--write", action="store_true", help="Apply proposed changes")
    parser.add_argument(
        "--skip-build",
        action="store_true",
        help="Do not build; positive marker changes are disabled",
    )
    parser.add_argument(
        "--allow-axiom",
        action="append",
        default=[],
        help="Additional accepted axiom name; repeatable",
    )
    parser.add_argument(
        "--no-default-axioms",
        action="store_true",
        help="Do not automatically accept propext, Classical.choice, Quot.sound",
    )
    parser.add_argument("--timeout", type=int, default=1800)
    parser.add_argument("--format", choices=("text", "json"), default="text")
    parser.add_argument("--verbose", action="store_true")
    return parser.parse_args(argv)


def main(argv: list[str] | None = None) -> int:
    args = parse_args(argv)
    root = Path(args.project).resolve()
    tex_files = choose_tex_files(root, args.tex)
    if not tex_files:
        print("sync_leanok: no Blueprint TeX files found", file=sys.stderr)
        return 2

    declarations = scan_declarations(root)
    referenced: set[str] = set()
    for path in tex_files:
        for block in parse_blocks(path.read_text(encoding="utf-8")):
            if not block.skipped:
                referenced.update(block.lean_names)

    if args.skip_build:
        build_ok, build_detail = False, "build skipped"
        axioms = {name: None for name in referenced}
        warnings = ["build skipped; positive marker changes are disabled"]
    else:
        build_ok, build_detail = run_lake_build(root, args.timeout)
        if build_ok:
            axioms, warnings = query_axioms(
                root, declarations, referenced, args.timeout
            )
        else:
            axioms = {name: None for name in referenced}
            warnings = [f"Lake build failed: {build_detail}"]

    allowed = set(args.allow_axiom)
    if not args.no_default_axioms:
        allowed.update(DEFAULT_ALLOWED_AXIOMS)

    changes: list[Change] = []
    for path in tex_files:
        changes.extend(
            synchronize_file(
                path,
                root,
                declarations,
                axioms,
                build_ok,
                allowed,
                args.write,
                args.verbose,
            )
        )

    payload = {
        "mode": "write" if args.write else "dry-run",
        "build_ok": build_ok,
        "allowed_axioms": sorted(allowed),
        "warnings": warnings,
        "changes": [asdict(change) for change in changes],
    }
    if args.format == "json":
        print(json.dumps(payload, indent=2, ensure_ascii=False))
    else:
        adds = sum(change.action == "add" for change in changes)
        removals = sum(change.action == "remove" for change in changes)
        keeps = sum(change.action == "keep" for change in changes)
        print(
            f"sync_leanok ({payload['mode']}): "
            f"+{adds} -{removals} keep={keeps} build_ok={build_ok}"
        )
        for warning in warnings:
            print(f"warning: {warning}")
        for change in changes:
            names = ",".join(change.lean_names)
            print(
                f"- {change.action:6} {change.chapter} "
                f"{change.block_kind} {names}: {change.reason}"
            )
    return 0 if build_ok or args.skip_build else 1


if __name__ == "__main__":
    sys.exit(main())
