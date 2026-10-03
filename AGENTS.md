# KIP126 agent guidance

## Start here

- The Blueprint is the mathematical plan, not evidence that a proof is complete.
- A mechanical cleanup must not silently change a public declaration, a
  stage-boundary statement, source provenance, proof status, or mathematical
  strength.

## Multica agents

If you believe you are an agent from Multica, read `MULTICA_AGENTS.md` before
working in this repository. Otherwise, ignore that file.

## Repository architecture

- `KIP126/Def/` owns common mathematical objects, predicates, constructions,
  and reusable theorems. It is also the producer of `Nonempty Challenge1` and
  must not declare project axioms.
- `KIP126/Interface/` consumes Challenge1 and produces
  `Nonempty Challenge2`. It owns fixed-computation certification, comparison
  with the selected mathematical model, and the resulting delivery interface.
- `KIP126/Main/` consumes Challenge2 and proves the paper's intermediate and
  final results. Intermediate statements and proofs belong in `Main/Solution/`;
  only the final target has a Main Challenge/Solution pair.
- `KIP126/LinProgram/` owns pinned program artifacts, deterministic
  translation, generated Lean data, parameterized interpretation, and local
  certificates. These artifacts do not by themselves prove that the data model
  the selected mathematical object.
- `MainPaper/` owns the paper being formalized. `Source/` owns external
  literature artifacts, acquisition metadata, and the machine-readable source
  inventory. These are provenance inputs, not project proofs.
- `KIP126/Mathlib/` is the optional Mathlib adapter layer.
  `KIP126/Checks/` is the regression and audit layer.

`KIP126/Challenge1.lean` and `KIP126/Challenge2.lean` are compatibility
exports. The shared Challenge1 witness is defined in `KIP126/Def/Challenge1.lean`;
Challenge2 is defined in `KIP126/Interface/Challenge/Challenge2.lean`.
The user's stage-0 dependency-isolation requirement supersedes the earlier
flat-definition rule. Do not create parallel witness definitions or proof
transmission trees. Challenge2 separates literature and computation interfaces,
and all its dependent fields use the same selected Def background.

Do not create empty directories or placeholder modules merely to display the
architecture. Import a concrete module directly when a wrapper would only
re-export that one module and provide no required behavior. Multi-module
aggregators and required Lake library roots may remain.

## Proof-stage invariants

The repository has exactly three Challenge/Solution pairs:

- `Def/Challenge/Challenge1.lean` and `Def/Solution/Challenge1.lean` state
  `Nonempty KIP126.Challenge1`.
- `Interface/Challenge/Challenge2.lean` and
  `Interface/Solution/Challenge2.lean` state
  `Nonempty KIP126.Challenge2`.
- `Main/Challenge/h6_sq_permanent.lean` and
  `Main/Solution/h6_sq_permanent.lean` state the standard final theorem.

For each pair:

- The complete types must agree, including universes, variables, typeclass
  assumptions, explicit and implicit hypotheses, and conclusion.
- Update both sides in the same change whenever the statement changes.
- The Challenge declaration remains `theorem ... := by sorry`. Do not replace
  it with a proposition definition, fill its proof, or remove it because the
  Solution exists.
- The Solution proof must not invoke the Challenge placeholder, directly or
  indirectly. It must use shared definitions and genuine proof dependencies.

Internal stage obligations live only in the relevant Solution tree; do not
create intermediate Challenge mirrors or turn unfinished proof obligations into
new structure fields or axioms. Generic reusable mathematics remains in Def.

Each consumer selects one `Challenge1` or `Challenge2` witness and projects all
dependent data and compatibility facts from that same witness. Do not replace a
correlated package with independent axioms or make dependent fields choose
different base objects. Producer Solutions must not depend on the matching
consumer axiom.

## Trust boundary

The only project `axiom` declarations are the two stage-existence assumptions:

- `KIP126/Interface/Axiom/Challenge1.lean`
- `KIP126/Main/Axiom/Challenge2.lean`

Do not add project axioms under `Def/`, `Mathlib/`, `Checks/`, `LinProgram/`,
Challenge files, or Solution files. Do not convert an unfinished theorem into
an axiom to hide `sorryAx`.

External results must retain their hypotheses, scope, source locators, and
provenance. They remain explicit inputs bound to the same model through
`Challenge2.LiteratureInterface`; do not replace them with untracked global
facts. Source catalogue and evidence infrastructure belong in `Def/References/`.

Generated records, successful hash checks, file moves, interface packaging, and
successful compilation are not proof-completion evidence. A declaration that
depends on `sorry`, a Challenge placeholder, or a project axiom must not be
presented as fully proved or marked complete in the Blueprint. Final acceptance
is governed by `PROJECT_BOUNDARY.md`.

## Lean source organization

Organize mathematical components under `KIP126/Def/` into `Data.lean`,
`Predicates.lean`, and `Proofs.lean` where those layers are useful:

- `Data.lean` owns mathematical objects, structures, operations, and
  constructions. It must not hide unfinished property proofs in data
  definitions.
- `Predicates.lean` owns definitions of mathematical conditions and relations.
- `Proofs.lean` owns lemmas and theorems about the data and predicates. It must
  not become the hidden home of new data or axioms.

Follow the dependency direction `Data -> Predicates -> Proofs`; later
components may import earlier proofs when constructing genuinely new data. Do
not introduce cyclic imports or turn provable properties into input hypotheses
to avoid this separation.

Preserve public declaration names during file organization unless the task
explicitly requires an API change. A compatibility adapter does not prove its
existence obligations, and generic Def modules must not import root Challenge
packages or consumer axioms merely to remove duplication.
