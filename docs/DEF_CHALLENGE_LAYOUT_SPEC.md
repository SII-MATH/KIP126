> Historical layout record. The current layout is documented in [STAGE_LAYOUT.md](STAGE_LAYOUT.md); module ownership is Def / Interface / Main.

# Def / Challenge / Solution layout specification

Status: layout contract for the migration branch; implementation is incomplete.
This does not claim that the migration has landed on main or passed acceptance.
The original proposal's branch name and frozen base are historical Git metadata,
not a requirement to work from an old checkout.

Use README.md's **Project documents and workflow** section to locate the
authoritative mathematical, scope, implementation, and provenance sources.
AGENTS.md supplies the repository's source rules and validation procedure.
This document describes the layout contract; DEF_CHALLENGE_LAYOUT_STATUS.md
records current ownership and remaining migration work.

## Data, predicates, axioms, and proofs

Organize each component under KIP126/Def/ into the layers it actually needs:

| File | Responsibility | Dependencies |
| --- | --- | --- |
| Data.lean | Objects, structures, maps, operations, and constructions | Mathlib and earlier components, including their proved construction laws |
| Predicates.lean | Definitions of conditions and relations | Relevant data layers; not its own proof layer |
| Axiom.lean | Deliberately declared, individually audited project axioms during development | Relevant data and predicates; never a substitute for an unfinished theorem |
| Proofs.lean | Lemmas and theorems about data and predicates | Data, predicates where needed, and earlier proofs |

Data files contain no named lemmas/theorems or hidden sorry in data definitions.
Required structure fields may use lower-layer property results. Predicate files
state conditions rather than prove them. Proof files must not become the home
of new mathematical objects or constructions. An unfinished property theorem
may temporarily use `by sorry` in `Proofs.lean`, but is not completed evidence.
An explicit project `axiom` belongs only in the same component's `Axiom.lean`,
with its source, intended meaning, and reason for being assumed documented.
It and its dependency cone are audited separately from `sorryAx`; all project
axioms must be eliminated for final acceptance.
Do not create empty layers simply to match the table.

When a construction requires a preservation or well-definedness theorem,
prove it in the earlier component's Proofs.lean, then put the construction in
a subsequent component's Data.lean. Continue the split for its predicates and
proofs. Do not create cycles or replace a provable law with a new input
hypothesis to avoid this separation.

Multi-module public entries may re-export components using imports only.
Import concrete modules directly instead of keeping redundant one-import
wrappers; required Lake roots such as KIPBase.lean are retained. Preserve public
declaration names unless the task requires an API change. A reusable implication
is a direct theorem, not a parallel `def statement : Prop` alias.
The current three-stage policy supersedes the original mirrored layout:
internal stage statements and proofs live only in the respective Solution; reusable
mathematical lemmas still belong to Def when independent of Main inputs.

## Current Challenge / Solution contract

Each stage has exactly one paired declaration:

- `Def/Challenge/Challenge1.lean` and `Def/Solution/Challenge1.lean` state
  `Nonempty KIP126.Challenge1`.
- `Interface/Challenge/Challenge2.lean` and `Interface/Solution/Challenge2.lean`
  state `Nonempty KIP126.Challenge2`.
- `Main/Challenge/h6_sq_permanent.lean` and the matching Solution file
  state the single standard final theorem.

Each pair has identical complete types, including universe parameters,
variables, typeclass assumptions and hypotheses. Internal statements and
proofs live only in the corresponding Solution; do not create matching
Challenge files for them. The literature/computation projections remain only
in Interface/Solution. Root Challenge1/Challenge2 witness types and generic
Def component organization are unchanged.

Within these required pairs, Challenge theorems always have `:= by sorry`;
they remain statement placeholders after the Solution proof is complete.
An unfinished proof belongs in Solution with explicit `by sorry`.
Solution must not use Challenge placeholders, directly or indirectly.

Changes to a required paired statement update both declarations in the same
change. Internal stage changes update their Solution declarations and
checks directly. Validate the three stage-total/final pairs and Solution dependency
closure; do not require matching intermediate trees. Compiling a placeholder
is never proof-completion evidence and cannot justify a Blueprint completion
marker. The current final Solution is connected to Propositions 7.8 and 7.9,
whose proofs remain `sorry`.

## Source ownership

Paths are relative to KIP126/ and describe the current migration tree.
They do not require empty directories for planned mathematics.

| Area | Current owner |
| --- | --- |
| Algebra | Def/Algebra/ |
| Filtered complexes, quotient pages, finite-page assembly, convergence interfaces | Def/SpectralSequence/ |
| Mathlib spectral-sequence imports and checked `SSData`/Mathlib adapters | Mathlib/, Mathlib.lean |
| Mathlib-page differential, essentiality, crossing, and no-crossing adapters | Mathlib/SpectralSequence/PageDifferential/ |
| Stable homotopy and cohomology | Def/StableHomotopy/ |
| Classical Adams constructions and sphere classes | Def/ClassicalAdams/ |
| Synthetic contexts, spheres, and Adams data | Def/Synthetic/ |
| Classical eta ESS interfaces | Def/ClassicalESS/Eta/ |
| Classical/synthetic comparison | Def/Comparison/ |
| Kervaire setup, sphere Adams interface, theta-five choices | Def/Kervaire/ |
| Literature inputs | External/Literature/ |
| Paper-specific appendix schema, encoded rows, computation inputs | External/Computation/ |
| Source and claim bookkeeping | External/Provenance.lean, External/SourceInventory.lean, External/Claims.lean |
| Stage-total statements and proofs | Each stage has one Challenge/Solution pair; internal targets live only in Solution |
| Compilation and statement-shape regressions | Checks/ |

The appendix schema and catalogue are exported by KIP126.Main.Axiom, not
KIP126.Def; public names in KIP126.Computation are preserved. Encoded rows and
metadata checks do not establish mathematical truth.

Synthetic ESS, full paper-specific page extensions, and geometric endpoints
remain planned mathematics where no implementation exists. The generic
page-differential API is not a completed synthetic page-extension model.

## Historical milestone modules

This table records the original paired paths, not the current Challenge tree.
Internal milestones now live only in the relevant Solution; see STAGE_LAYOUT.md
for current ownership. The Blueprint remains the mathematical statement and
dependency index; this historical locator does not claim proof completion.

| Target | Relative module |
| --- | --- |
| Generalized Leibniz rule | Tools/generalized_leibniz.lean |
| Generalized Mahowald trick | Tools/generalized_mahowald.lean |
| Page-extension stretching | Tools/page_extension_stretch.lean |
| BJM/BX choice transport | Near126/any_choice_criterion.lean |
| Candidate differential reduction | Near126/only_d12_differential_reduction.lean |
| Exclusive dichotomy and three-condition equivalence | Near126/d12_dichotomy_and_condition_equivalence.lean |
| C4/C5 choice transport | Near126/c4_c5_choice_equivalence.lean |
| C3/C5 incompatibility and final exclusion | Near126/c3_excludes_c5.lean |
| Permanent h6-square endpoint | Final/h6_sq_permanent.lean |

The sourced BJM/BX input belongs to External/Literature/Kervaire.lean;
its project-level choice transport remains a separate proof obligation.
Geometry statements are deferred until the permanent-cycle chain is ready,
without removing those targets from the project boundary.

## Import and trust boundaries

- Keep imports acyclic. Def must not import Challenge; Solution and its proof
  dependencies must not rely on Challenge placeholders.
- Production mathematics must not import Checks. Canonical KIP126 modules
  must not import KIPBase. Historical reuse requires a port with checked
  statements and recursive axiom dependencies.
- Internal `SSData` reasoning must not depend on `KIP126/Mathlib/` adapters;
  adapters may import proved internal definitions, with no reverse import.
- External facts enter as explicit, provenance-bearing ExternalResult or
  ExternalEvidence inputs about the same objects used by their consumers.
  Do not move internal proof obligations into External or introduce external
  facts as project axioms.
- Imports express compilation dependencies; Blueprint dependency edges
  express mathematical dependencies. They need not be identical.
- Audit Solution and its actual dependencies separately from intentional
  Challenge placeholders. Completion requires no sorryAx or project-defined
  axiom in the claimed proof. The current recursive audit and CI behavior do
  not establish that this separation is already enforced.

## Remaining migration and acceptance

Top-level relocation does not finish migration. Complete the outstanding
Data/Predicates/Proofs separation recorded in the status document, preserve
public APIs, and synchronize module locators and README commands.
Do not waive a source rule because an existing file still violates it.

Use the focused checks required by AGENTS.md. For documentation-only path
corrections, inspect source existence and the diff; do not run Lean or
Blueprint builds as a generic preflight. Lean or Blueprint source changes
require their corresponding checks. Exact-head PR checks remain the mechanical
merge gate; this document does not waive failures. Mathematical completion
and merge readiness are separate from directory migration.

Deliver changes through pull requests. This document neither changes the
project's mathematical scope nor certifies unproved declarations or nodes.
