---
name: leanblueprint-author
description: Write or revise classic Lean Blueprint LaTeX as a source-grounded, formalization-ready mathematical document. Use when turning a paper, proof plan, project boundary, or existing Lean API into blueprint/src/content.tex or chapter files; adding definitions, theorems, proof sketches, \lean annotations, \uses dependencies, statuses, or citations; or cleaning Blueprint prose before formalization.
---

# Lean Blueprint Author

Produce mathematical Blueprint source that is precise enough to guide Lean work
and readable without knowing Lean. Keep project-specific mathematics in the
Blueprint, not in this skill.

## Required inputs

Before writing, inspect:

1. the project goal, scope, trust boundary, and non-goals;
2. the authoritative mathematical sources and exact locators;
3. the current Blueprint entry file and included chapters;
4. the relevant Lean declarations, if they already exist;
5. stable label, notation, and source conventions already used by the project.

If the goal, trust boundary, or source statement is materially ambiguous, record
the ambiguity instead of silently choosing a stronger or weaker theorem.

## Authoring workflow

### 1. Establish the chapter contract

State internally what the chapter must cover, what it may assume, and what lies
outside scope. Organize chapters by coherent mathematics. Do not force one
chapter per Lean file; maintain an explicit mapping when one chapter supports
several modules.

Inventory the intended public mathematical nodes before drafting prose:

- definitions and structures;
- interface lemmas needed by later nodes;
- main theorems and corollaries;
- imported Mathlib facts that are load-bearing;
- external inputs that belong to the declared trust boundary.

Do not create Blueprint nodes for every private implementation helper. Cover all
public or mathematically substantive declarations and every helper that carries
a real dependency edge or formalization obligation.

### 2. Ground every node

Classify each node as one of:

- project theorem or definition to formalize;
- exact Mathlib dependency;
- externally supplied input;
- planned node whose Lean declaration is not stable yet.

Read [references/source-provenance.md](references/source-provenance.md) whenever
external literature, computations, datasets, or generated evidence are involved.
Never invent a locator, quote, Mathlib name, or external-input status.

### 3. Write the node

Follow [references/node-contract.md](references/node-contract.md). Start new
chapters from [assets/chapter-template.tex](assets/chapter-template.tex) when
useful.

For every substantive node:

- use one stable, unique `\label{...}`;
- state the mathematics at the intended level of generality;
- add exact `\lean{...}` names only after checking them;
- use `\notready` when the Lean name or statement is not stable;
- list every direct mathematical dependency in `\uses{...}`;
- write a mathematical proof plan with enough detail to expose hidden lemmas;
- attach provenance to non-original content.

Keep statement dependencies in the statement block and proof-only dependencies
in the proof block when the project follows that convention.

### 4. Preserve semantic separation

Write ordinary mathematics, not Lean tactics, typeclass plumbing, file-layout
notes, failed-attempt history, or iteration narration. A reader should be able to
understand the chapter as a standalone mathematical document.

Do not weaken a definition to fit existing code. Do not merge distinct objects
merely because one Lean representation is convenient. When formalization
constraints expose a genuine mathematical choice, report it as a design decision
and leave the affected node not ready until resolved.

### 5. Handle status markers conservatively

- `\leanok` on a statement means the corresponding Lean statement is present
  and accepted by the project's verification policy.
- `\leanok` in a proof means the proof is accepted by that policy.
- `\mathlibok` is only for a verified, faithful Mathlib declaration.
- `\notready` means the mathematical or Lean interface is not stable enough to
  claim readiness.

Do not add or remove `\leanok` mechanically while authoring. Delegate status
synchronization to `$leanblueprint-maintain`. Do not use `\mathlibok` for an
external paper result or a project-local assumption.

### 6. Check the result

After editing:

1. verify balanced environments and braces;
2. check that every `\uses` target exists;
3. check that no new node is unintentionally isolated;
4. run `$leanblueprint-audit`;
5. run the relevant builds through `$leanblueprint-maintain`.

Do not declare a chapter formalization-ready merely because LaTeX renders.
Its statements, dependencies, provenance, and Lean targets must also be sound.

## Non-negotiable rules

- Preserve stable labels unless the user explicitly authorizes a migration.
- Never cite from memory when a local or retrievable source is required.
- Never mark an unverified Mathlib declaration `\mathlibok`.
- Never present an external input as a project proof.
- Never use a literal placeholder such as `REF` in finished prose.
- Never hide a missing mathematical step behind “straightforward” when that
  step may require a new formalization lemma.
- Keep generated `blueprint/web`, `blueprint/print`, and `blueprint/lean_decls`
  out of hand edits.
