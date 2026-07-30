#!/usr/bin/env python3
"""Deterministic structural lint for classic Lean Blueprint projects."""

from __future__ import annotations

import argparse
import fnmatch
import json
import os
import re
import sys
from dataclasses import asdict, dataclass
from pathlib import Path


ENTRY_CANDIDATES = (
    "blueprint/src/web.tex",
    "blueprint/src/print.tex",
    "blueprint/src/content.tex",
)
THEOREM_ENVS = ("definition", "theorem", "lemma", "proposition", "corollary")
INPUT_RE = re.compile(r"\\(?:input|include)\s*\{\s*([^{}]*?)\s*\}")
LABEL_RE = re.compile(r"\\label\s*\{\s*([^{}]*?)\s*\}")
LEAN_RE = re.compile(r"\\lean\s*\{\s*([^{}]*?)\s*\}")
ANNOTATIONS = {
    "label": LABEL_RE,
    "lean": LEAN_RE,
    "ref": re.compile(r"\\ref\s*\{\s*([^{}]*?)\s*\}"),
    "eqref": re.compile(r"\\eqref\s*\{\s*([^{}]*?)\s*\}"),
    "cref": re.compile(r"\\cref\s*\{\s*([^{}]*?)\s*\}"),
    "Cref": re.compile(r"\\Cref\s*\{\s*([^{}]*?)\s*\}"),
    "autoref": re.compile(r"\\autoref\s*\{\s*([^{}]*?)\s*\}"),
    "uses": re.compile(r"\\uses\s*\{\s*([^{}]*?)\s*\}"),
    "proves": re.compile(r"\\proves\s*\{\s*([^{}]*?)\s*\}"),
}
REFERENCE_KINDS = {"ref", "eqref", "cref", "Cref", "autoref", "uses", "proves"}
LIST_KINDS = {"uses", "proves"}
ENV_RE = re.compile(
    r"\\begin\s*\{(?P<env>"
    + "|".join(THEOREM_ENVS)
    + r")\s*\}(?P<body>.*?)\\end\s*\{(?P=env)\s*\}",
    re.DOTALL,
)
LITERAL_REF_RE = re.compile(
    r"(?<![A-Za-z\\{:_])(?:Definition[~\s]+|Lemma[~\s]+|Theorem[~\s]+)?"
    r"REF(?![A-Za-z}_:])"
)
BARE_LABEL_RE = re.compile(
    r"(?<![\\{:\w])(?:thm?|lemma|lem|cor|defn?|prop|sec|chap|eqn?|rem|rmk)"
    r":[A-Za-z][A-Za-z0-9_-]+"
)
BRACE_ARG_RE = re.compile(r"\{[^{}]*\}")
MACRO_DEF_RES = (
    re.compile(r"\\(?:re)?newcommand\*?\s*\{?\\([A-Za-z@]+)\}?"),
    re.compile(r"\\providecommand\*?\s*\{?\\([A-Za-z@]+)\}?"),
    re.compile(r"\\DeclareMathOperator\*?\s*\{\\([A-Za-z@]+)\}"),
    re.compile(r"\\def\s*\\([A-Za-z@]+)"),
)
USED_CMD_RE = re.compile(r"\\([A-Za-z@]+)")
AXIOM_RE = re.compile(
    r"^\s*(?:@\[[^\]]*\]\s*)*"
    r"(?:private\s+|protected\s+|noncomputable\s+)*"
    r"axiom\s+([^\s:={}\[\](),|;]+)",
    re.MULTILINE,
)
SKIP_DIRS = {
    ".git",
    ".lake",
    ".leandag",
    ".agents",
    ".codex",
    "lake-packages",
    "build",
    "_target",
}

# Generous core LaTeX/amsmath/cleveref/Lean-Blueprint whitelist. Project
# commands still need a definition in macros/*.tex or a --known-macro flag.
KNOWN_COMMANDS = frozenset(
    """
begin end input include documentclass usepackage RequirePackage
newcommand renewcommand providecommand DeclareMathOperator newtheorem
theoremstyle def
label ref eqref cref Cref autoref uses proves lean leanok mathlibok notready
chapter section subsection subsubsection paragraph subparagraph
title author date maketitle tableofcontents appendix
text textit textbf textrm textsf texttt emph underline verb
item itemize enumerate description center flushleft flushright
caption footnote marginpar cite citep citet href url
alpha beta gamma delta epsilon varepsilon zeta eta theta vartheta iota kappa
lambda mu nu xi pi varpi rho varrho sigma varsigma tau upsilon phi varphi
chi psi omega Gamma Delta Theta Lambda Xi Pi Sigma Upsilon Phi Psi Omega
mathbb mathbf mathcal mathfrak mathrm mathsf mathtt mathit operatorname
frac dfrac tfrac sqrt binom sum prod coprod int oint lim colim sup inf min max
sin cos tan log ln exp det dim gcd ker hom
hat widehat bar overline tilde widetilde vec dot ddot breve check
to mapsto rightarrow leftarrow Rightarrow Leftarrow leftrightarrow
Leftrightarrow longrightarrow longleftarrow hookrightarrow hookleftarrow
le leq ge geq ne neq sim simeq cong equiv approx propto
subset supset subseteq supseteq in ni notin mid parallel perp
pm mp times div cdot ast star circ bullet cap cup sqcap sqcup vee wedge
oplus otimes bigoplus bigotimes bigcup bigcap setminus wr
forall exists nexists neg top bot emptyset varnothing infty aleph
langle rangle lvert rvert lVert rVert left right middle
bigl bigr Bigl Bigr biggl biggr Biggl Biggr
ldots cdots vdots ddots dots quad qquad hspace vspace smallskip medskip bigskip
newline linebreak pagebreak noindent
begin end ensuremath xspace
proof qed qedhere
home github dochome discussion
""".split()
)


@dataclass(frozen=True)
class Finding:
    severity: str
    code: str
    file: str
    line: int
    message: str


def strip_tex_comments(text: str) -> str:
    chars = list(text)
    escaped = False
    commenting = False
    for index, char in enumerate(chars):
        if commenting:
            if char == "\n":
                commenting = False
            else:
                chars[index] = " "
            continue
        if char == "\\":
            escaped = not escaped
            continue
        if char == "%" and not escaped:
            chars[index] = " "
            commenting = True
        escaped = False
    return "".join(chars)


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
                index += 2
                continue
            if char == "-" and nxt == "/":
                depth -= 1
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


def line_of(text: str, offset: int) -> int:
    return text.count("\n", 0, offset) + 1


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
    raise FileNotFoundError("No Blueprint entry file found")


def resolve_input(raw: str, current: Path, src_dir: Path) -> Path | None:
    value = raw.strip()
    if not value:
        return None
    for candidate in (current.parent / value, src_dir / value):
        if candidate.suffix != ".tex":
            candidate = candidate.with_suffix(".tex")
        if candidate.is_file():
            return candidate.resolve()
    return None


def collect_inputs(
    entry: Path, src_dir: Path, root: Path
) -> tuple[set[Path], list[Finding]]:
    visited: set[Path] = set()
    stack = [entry]
    findings: list[Finding] = []
    while stack:
        current = stack.pop().resolve()
        if current in visited:
            continue
        visited.add(current)
        raw = current.read_text(encoding="utf-8", errors="replace")
        text = strip_tex_comments(raw)
        for match in INPUT_RE.finditer(text):
            target = resolve_input(match.group(1), current, src_dir)
            if target is None:
                findings.append(
                    Finding(
                        "error",
                        "unresolved-input",
                        str(current.relative_to(root)),
                        line_of(text, match.start()),
                        f"cannot resolve input {match.group(1)!r}",
                    )
                )
            elif target not in visited:
                stack.append(target)
    return visited, findings


def scan_math_delimiters(text: str) -> list[tuple[int, str]]:
    findings: list[tuple[int, str]] = []
    mode: str | None = None
    line = 1
    index = 0
    while index < len(text):
        char = text[index]
        if char == "\n":
            line += 1
            index += 1
            continue
        if char == "\\":
            nxt = text[index + 1 : index + 2]
            if nxt == "(":
                if mode is not None:
                    findings.append((line, f"\\\\( opened inside {mode} math"))
                else:
                    mode = "paren"
                index += 2
                continue
            if nxt == ")":
                if mode == "paren":
                    mode = None
                else:
                    findings.append((line, "\\\\) without matching \\\\("))
                index += 2
                continue
            index += 2
            continue
        if char == "$":
            token = "$$" if text[index : index + 2] == "$$" else "$"
            if mode is None:
                mode = token
            elif mode == token:
                mode = None
            else:
                findings.append((line, f"{token} interleaves with {mode} math"))
            index += len(token)
            continue
        index += 1
    if mode is not None:
        findings.append((line, f"unclosed {mode} math"))
    return findings


def scan_tex(
    included: set[Path], src_dir: Path, root: Path, known_extra: set[str]
) -> list[Finding]:
    findings: list[Finding] = []
    labels: dict[str, list[tuple[Path, int]]] = {}
    lean_names: dict[str, list[tuple[Path, int]]] = {}
    refs: list[tuple[Path, int, str, str]] = []
    defined_macros: set[str] = set()

    definition_sources = list(src_dir.rglob("*.tex")) if src_dir.is_dir() else []
    for path in definition_sources:
        text = strip_tex_comments(
            path.read_text(encoding="utf-8", errors="replace")
        )
        for pattern in MACRO_DEF_RES:
            defined_macros.update(match.group(1) for match in pattern.finditer(text))

    for path in sorted(included):
        raw = path.read_text(encoding="utf-8", errors="replace")
        text = strip_tex_comments(raw)
        relative = str(path.relative_to(root))

        for line, message in scan_math_delimiters(text):
            findings.append(Finding("error", "math-delimiter", relative, line, message))
        for match in LITERAL_REF_RE.finditer(BRACE_ARG_RE.sub(" ", text)):
            findings.append(
                Finding(
                    "error",
                    "literal-ref",
                    relative,
                    line_of(text, match.start()),
                    f"literal placeholder {match.group(0)!r}",
                )
            )
        for match in BARE_LABEL_RE.finditer(BRACE_ARG_RE.sub(" ", text)):
            findings.append(
                Finding(
                    "warning",
                    "bare-label",
                    relative,
                    line_of(text, match.start()),
                    f"bare label {match.group(0)!r}; use a reference macro",
                )
            )

        for kind, pattern in ANNOTATIONS.items():
            for match in pattern.finditer(text):
                value = match.group(1).strip()
                line = line_of(text, match.start())
                if not value:
                    findings.append(
                        Finding(
                            "error",
                            "empty-annotation",
                            relative,
                            line,
                            f"empty \\\\{kind} argument",
                        )
                    )
                    continue
                pieces = [value]
                if kind in LIST_KINDS:
                    pieces = [piece.strip() for piece in value.split(",")]
                    if any(not piece for piece in pieces):
                        findings.append(
                            Finding(
                                "error",
                                "empty-list-item",
                                relative,
                                line,
                                f"empty item in \\\\{kind}{{{value}}}",
                            )
                        )
                for piece in pieces:
                    if not piece:
                        continue
                    if kind == "label":
                        labels.setdefault(piece, []).append((path, line))
                    elif kind == "lean":
                        for lean_name in (
                            item.strip() for item in piece.split(",") if item.strip()
                        ):
                            lean_names.setdefault(lean_name, []).append((path, line))
                    elif kind in REFERENCE_KINDS:
                        refs.append((path, line, kind, piece))

        for match in ENV_RE.finditer(text):
            body = match.group("body")
            line = line_of(text, match.start())
            label_values = [value.strip() for value in LABEL_RE.findall(body) if value.strip()]
            lean_values = [value.strip() for value in LEAN_RE.findall(body) if value.strip()]
            has_notready = bool(re.search(r"\\notready\b", body))
            has_mathlibok = bool(re.search(r"\\mathlibok\b", body))
            has_leanok = bool(re.search(r"\\leanok\b", body))
            if not label_values:
                findings.append(
                    Finding(
                        "error",
                        "missing-label",
                        relative,
                        line,
                        f"{match.group('env')} has no label",
                    )
                )
            if not lean_values and not has_notready and not has_mathlibok:
                findings.append(
                    Finding(
                        "warning",
                        "missing-lean-status",
                        relative,
                        line,
                        f"{match.group('env')} has no \\\\lean, \\\\notready, or \\\\mathlibok",
                    )
                )
            markers = sum((has_notready, has_mathlibok, has_leanok))
            if markers > 1 and has_notready:
                findings.append(
                    Finding(
                        "error",
                        "marker-conflict",
                        relative,
                        line,
                        "\\notready conflicts with a completion marker",
                    )
                )

        known = KNOWN_COMMANDS | defined_macros | known_extra
        seen_unknown: set[str] = set()
        for match in USED_CMD_RE.finditer(text):
            command = match.group(1)
            if command in known or command in seen_unknown:
                continue
            seen_unknown.add(command)
            findings.append(
                Finding(
                    "warning",
                    "undefined-macro",
                    relative,
                    line_of(text, match.start()),
                    f"\\\\{command} is not defined in blueprint/src/**/*.tex",
                )
            )

    for label, locations in labels.items():
        if len(locations) > 1:
            rendered = ", ".join(
                f"{path.relative_to(root)}:{line}" for path, line in locations
            )
            findings.append(
                Finding("error", "duplicate-label", rendered, 0, f"duplicate label {label}")
            )
    for name, locations in lean_names.items():
        unique = {(path, line) for path, line in locations}
        if len(unique) > 1:
            rendered = ", ".join(
                f"{path.relative_to(root)}:{line}" for path, line in sorted(unique)
            )
            findings.append(
                Finding(
                    "error",
                    "duplicate-lean-mapping",
                    rendered,
                    0,
                    f"Lean declaration {name} is mapped by multiple nodes",
                )
            )
    for path, line, kind, label in refs:
        if label not in labels:
            findings.append(
                Finding(
                    "error",
                    "broken-reference",
                    str(path.relative_to(root)),
                    line,
                    f"\\\\{kind} targets unknown label {label}",
                )
            )
    return findings


def scan_orphans(
    src_dir: Path, included: set[Path], root: Path
) -> list[Finding]:
    chapters = src_dir / "chapters"
    if not chapters.is_dir():
        return []
    return [
        Finding(
            "error",
            "orphan-chapter",
            str(path.relative_to(root)),
            1,
            "chapter is not reachable from the Blueprint entry",
        )
        for path in sorted(chapters.rglob("*.tex"))
        if path.resolve() not in included and not path.name.startswith("_")
    ]


def scan_axioms(
    root: Path, allowed_globs: list[str]
) -> list[Finding]:
    findings: list[Finding] = []
    for walk_root, dirs, files in os.walk(root):
        dirs[:] = [directory for directory in dirs if directory not in SKIP_DIRS]
        for filename in files:
            if not filename.endswith(".lean"):
                continue
            path = Path(walk_root) / filename
            relative = path.relative_to(root).as_posix()
            text = strip_lean_comments_and_strings(
                path.read_text(encoding="utf-8", errors="replace")
            )
            for match in AXIOM_RE.finditer(text):
                allowed = any(
                    fnmatch.fnmatch(relative, pattern) for pattern in allowed_globs
                )
                findings.append(
                    Finding(
                        "info" if allowed else "error",
                        "allowed-axiom" if allowed else "axiom-outside-boundary",
                        relative,
                        line_of(text, match.start()),
                        f"axiom {match.group(1)}",
                    )
                )
    return findings


def render_text(findings: list[Finding]) -> str:
    counts = {
        severity: sum(finding.severity == severity for finding in findings)
        for severity in ("error", "warning", "info")
    }
    lines = [
        "Lean Blueprint doctor",
        f"errors={counts['error']} warnings={counts['warning']} info={counts['info']}",
    ]
    for finding in sorted(
        findings, key=lambda item: (item.severity, item.file, item.line, item.code)
    ):
        location = finding.file
        if finding.line:
            location += f":{finding.line}"
        lines.append(
            f"- [{finding.severity}] {finding.code} {location}: {finding.message}"
        )
    return "\n".join(lines)


def parse_args(argv: list[str] | None = None) -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("project", nargs="?", default=".")
    parser.add_argument("--entry", help="Blueprint entry relative to project root")
    parser.add_argument("--format", choices=("text", "json"), default="text")
    parser.add_argument(
        "--allow-axiom-glob",
        action="append",
        default=[],
        help="Project-relative glob where explicit axioms are permitted",
    )
    parser.add_argument(
        "--known-macro",
        action="append",
        default=[],
        help="Additional command name without a leading backslash",
    )
    parser.add_argument(
        "--strict",
        action="store_true",
        help="Exit nonzero when errors are found",
    )
    return parser.parse_args(argv)


def main(argv: list[str] | None = None) -> int:
    args = parse_args(argv)
    root = Path(args.project).resolve()
    try:
        entry = resolve_entry(root, args.entry)
        src_dir = root / "blueprint" / "src"
        included, findings = collect_inputs(entry, src_dir, root)
        findings.extend(scan_orphans(src_dir, included, root))
        findings.extend(scan_tex(included, src_dir, root, set(args.known_macro)))
        findings.extend(scan_axioms(root, args.allow_axiom_glob))
    except (FileNotFoundError, OSError) as error:
        print(f"blueprint_doctor: {error}", file=sys.stderr)
        return 2

    if args.format == "json":
        counts = {
            severity: sum(finding.severity == severity for finding in findings)
            for severity in ("error", "warning", "info")
        }
        print(
            json.dumps(
                {
                    "entry": str(entry.relative_to(root)),
                    "included_files": [
                        str(path.relative_to(root)) for path in sorted(included)
                    ],
                    "counts": counts,
                    "findings": [asdict(finding) for finding in findings],
                },
                indent=2,
                ensure_ascii=False,
            )
        )
    else:
        print(render_text(findings))
    errors = any(finding.severity == "error" for finding in findings)
    return 1 if args.strict and errors else 0


if __name__ == "__main__":
    sys.exit(main())
