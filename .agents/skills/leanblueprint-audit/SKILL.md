---
name: leanblueprint-audit
description: Audit a classic Lean Blueprint for structural defects, mathematical incompleteness, source/provenance problems, dependency errors, marker misuse, and drift between LaTeX statements and Lean declarations. Use for Blueprint review, readiness gates, whole-project consistency checks, per-file Lean-to-Blueprint comparison, broken builds, suspicious \leanok or \mathlibok claims, or reports that must be read-only and evidence-backed.
---

# Lean Blueprint Audit

Review before fixing. By default, do not modify the Blueprint or Lean source;
write an evidence-backed report. If the user also requests fixes, complete the
audit first, then apply the appropriate authoring or maintenance workflow.

## Choose the audit mode

- **Structural**: TeX inclusion, labels, references, macros, marker conflicts,
  and forbidden axioms.
- **Whole Blueprint**: mathematical completeness, correctness, provenance,
  dependency integrity, and coverage of project goals.
- **Blueprint → Lean**: resolve every `\lean`, compare the complete Lean type
  with the informal statement, and verify status markers.
- **Lean → Blueprint**: identify substantive public Lean declarations that
  lack mathematical nodes.
- **Paired file/chapter**: compare one Lean module with the chapter or chapters
  that specify it.

Use multiple modes when the request is broad. Read
[references/audit-rubric.md](references/audit-rubric.md) before semantic or
bidirectional review.

## Run deterministic checks first

```sh
python3 .agents/skills/leanblueprint-audit/scripts/blueprint_doctor.py .
python3 .agents/skills/leanblueprint-audit/scripts/blueprint_doctor.py . \
  --format json
```

For projects with an explicit axiom boundary:

```sh
python3 .agents/skills/leanblueprint-audit/scripts/blueprint_doctor.py . \
  --allow-axiom-glob 'Project/External/**' \
  --allow-axiom-glob 'Project/Assumptions.lean'
```

Run `$leanblueprint-dag` for dependency cones, cycles, isolated nodes, and
frontier analysis. Run `leanblueprint checkdecls` when available. A successful
build does not replace semantic comparison.

## Structural review

Triage every deterministic finding:

- orphan chapter;
- unresolved or empty `\input`;
- duplicate or empty label;
- broken `\ref`, `\cref`, `\uses`, or `\proves`;
- empty list item such as `\uses{a,,b}`;
- duplicate Lean mapping;
- missing `\lean`/`\notready` status;
- conflicting markers;
- undefined project macro;
- malformed math delimiters;
- literal `REF` or bare label in prose;
- axiom outside the configured trust boundary.

Do not dismiss parser findings merely because PDF generation happens to pass.

## Semantic and Lean review

For each substantive node:

1. quote the Blueprint statement or summarize it precisely;
2. locate and quote the actual Lean declaration type;
3. compare hypotheses, quantifiers, conclusion, generality, and meaning;
4. distinguish harmless notation differences from real drift;
5. compare the proof term's mathematical route with the Blueprint proof;
6. verify the declared direct dependencies;
7. verify source and trust classification;
8. verify markers independently of prose claims.

Check both directions. A compiling Lean theorem may formalize the wrong
statement; a correct Lean theorem may expose that the Blueprint was too vague to
guide its construction.

Treat `\mathlibok` as a high-confidence claim: inspect the exact declaration in
the pinned Mathlib revision. Treat external inputs according to the project's
documented boundary, not as Mathlib facts or project proofs.

## Coverage policy

Require Blueprint coverage for public and mathematically substantive Lean
declarations. Allow private or syntactic helpers to remain unblueprinted when
they introduce no mathematical interface or scheduling-relevant dependency.

Flag an uncovered declaration when any of these hold:

- it appears in a public API;
- another Blueprint node depends on it mathematically;
- it resolves a nontrivial proof step;
- its definition determines the meaning of later results;
- omitting it would make the dependency graph misleading.

## Report

Start from [assets/audit-report-template.md](assets/audit-report-template.md).
Group findings by severity and node. Include actual file paths, labels,
declaration names, and line numbers.

Severity:

- **critical**: false/mismatched statement, fabricated source or Mathlib claim,
  forbidden axiom, proof-complete marker on an unaccepted proof;
- **major**: broken dependency, missing substantive node, inadequate proof
  route, unresolved Lean target, trust-boundary ambiguity;
- **minor**: notation drift, weak locator, nonblocking rendering or style issue;
- **info**: explicitly allowed boundary item or deliberate independent node.

Report clean checks as positive evidence: number of chapters, nodes, Lean
targets, and dependencies checked.

## Handoff

- Use `$leanblueprint-author` for mathematical/prose/dependency fixes.
- Use `$leanblueprint-maintain` for builds and marker synchronization.
- Re-run the same audit modes after changes.
- Do not clear a readiness gate on a green build alone.
