# KIP126

## Dependencies

KIP126 is developed with the following projects and tools:

- [Lean](https://leanprover.github.io/) `4.32.2`, selected by
  [`lean-toolchain`](lean-toolchain);
- [Lake](https://github.com/leanprover/lake), the Lean package manager and
  build tool, configured in [`lakefile.lean`](lakefile.lean);
- [Mathlib](https://github.com/leanprover-community/mathlib4/) `v4.32.2`,
  pinned in [`lakefile.lean`](lakefile.lean);
- [Lean Blueprint](https://github.com/PatrickMassot/leanblueprint), exposed by
  the `leanblueprint` command for the natural-language formalization graph and
  its PDF, web, and declaration-check outputs;
- Python 3 for repository audits and regression checks under `scripts/`;
- a LaTeX toolchain with `latexmk` for Blueprint PDF generation.

The Lean and Mathlib versions must remain aligned.  Blueprint's generated
directories (`blueprint/print`, `blueprint/web`, and `blueprint/lean_decls`) are
build outputs and should not be edited by hand.

Lean 4.32.2 project and source-grounded Blueprint for the KIP126
formalization.

## Project documents and workflow

The repository separates the goal, scope, plan, and formalization sketch:

- [`docs/ROADMAP.md`](docs/ROADMAP.md) is the implementation plan.  It briefly
  states what to do and the dependency order in which the Lean modules should
  be developed.
- [`aimpaper/`](aimpaper/) contains the target paper and its source material.
  It is the mathematical document to be formalized; its claims are not, by
  themselves, Lean proofs or project theorems.
- [`PROJECT_BOUNDARY.md`](PROJECT_BOUNDARY.md) defines what this project does
  and does not formalize, together with its source, trust, and acceptance
  boundaries.
- [`blueprint/src/content.tex`](blueprint/src/content.tex) and the chapters
  under [`blueprint/src/chapters`](blueprint/src/chapters) form the
  natural-language formalization sketch.  The Blueprint follows the paper's
  definitions and the roadmap's order, and refines each step into nodes whose
  mathematical statement, dependencies, sources, and intended Lean object can
  be checked together.  In the usual layout, one chapter corresponds to one
  Lean file; temporary shared facades are allowed during migration, but the
  final implementation should expose chapter-level Lean entry points.

The intended workflow is therefore:

1. use `aimpaper/` to identify the mathematical target;
2. use `PROJECT_BOUNDARY.md` to decide which claims and inputs are in scope;
3. use `docs/ROADMAP.md` to choose the next implementation slice;
4. record its node-level natural-language statement and Lean correspondence
   in the matching Blueprint chapter; and
5. implement and verify the corresponding Lean declarations with Lake and the
   pinned Mathlib dependency.

The executable Lean implementation is still at the first shared-Core
milestone.  That Core is deliberately small: it imports Mathlib's
`CategoryTheory.SpectralSequence` directly, without a competing wrapper or
synonym, and adds only the category-level filtration data that Mathlib does not
provide: decreasing filtrations of graded objects, associated graded quotients,
filtered morphisms, and filtered chain complexes with their induced
associated-graded differential.  It now also includes the generic
homological-image bridge and the filtered-complex triangulated/abelian
spectral-object adapter; endpoint and convergence data remain explicit
Blueprint interfaces.  The toolchain and Mathlib dependency are pinned to
matching `4.32.2` releases.

The Blueprint is substantially ahead of the Lean implementation.  Its entry
point is [blueprint/src/content.tex](blueprint/src/content.tex), with the
paper-specific chapters under [blueprint/src/chapters](blueprint/src/chapters).
It covers the paper's Sections 1--7, all 401 nonempty appendix rows and nine
zero bands, the stable/spectral-sequence/Steenrod/synthetic background absent
from Mathlib, explicit literature and computation provenance, and the full
dependency cone from the compiled Core to the conditional Kervaire endpoints.
All unimplemented nodes are conservatively marked `notready`; the Blueprint
does not claim that the main theorem is already formalized.  Implemented APIs
and dependencies are authoritative in the Lean source; planned mathematical
interfaces, semantic constraints, dependencies, sources, and status live in the
Blueprint.  [PROJECT_BOUNDARY.md](PROJECT_BOUNDARY.md) records scope and trust
policy, while [docs/ROADMAP.md](docs/ROADMAP.md) records the staged Lean
implementation order.

## Build

```sh
lake build
```

The Blueprint PDF, web output, declaration checks, structural doctor, and DAG
checks are maintained separately under `blueprint/` and `.agents/skills/`.

## Provenance and source inventory

`KIP126.External.Provenance` defines the explicit `SourceId`, `SourceRef`,
`ExternalResult`, and `ExternalEvidence` records.  The typed Lean projection
of the finite catalogue is in `KIP126.External.SourceInventory`, and the
claim-level root/owner/dependency ledger is in `KIP126.External.Claims`.
Citation metadata, acquisition state, artifact paths, and SHA-256 digests are kept in
[`reference/source-inventory.json`](reference/source-inventory.json).  Check
the filesystem ledger and its regression tests with:

```sh
python3 scripts/check_source_inventory.py
python3 -m unittest discover -s scripts -p 'test_check_source_inventory.py'  # unit tests
python3 -m unittest discover -s scripts -p 'test_source_inventory_projection.py'  # Lean integration tests
python3 -m unittest discover -s scripts -p 'test_*.py'  # all tests
lake build KIP126.External.ProvenanceRegression \
  KIP126.External.SourceInventoryRegression \
  KIP126.External.ClaimsRegression
```

On a slow or cold checkout, increase the two Lean subprocess timeouts with
`python3 scripts/check_source_inventory.py --lean-timeout 900`.

The checker validates provenance metadata and reproducibility bookkeeping; it
also rebuilds and executes the Lean exporter, compares all 18 source rows,
checks acquisition-status grammar and canonical artifact kinds, checks all 55
claim rows, and requires every nonempty canonical locator
artifact path to name a listed, `required=true`, existing regular file.  Lean's
`InventoryValid` predicates reject unsafe
paths and paths that fail the syntactic source-directory prefix check, while
`CataloguedExternalResult` and
`CataloguedExternalEvidence` bind an actual wrapper value to one canonical
claim root and compatible trust class; a catalogued evidence artifact must use
the claim locator's canonical path.  The checker compares the checked-in file
with the JSON digest; it does not automatically compare an arbitrary wrapper's
digest field with that value.  None of these checks turns an external record
into an unconditional theorem.  The root, locator, and trust-class
checks are metadata checks: they do not establish that the wrapper proposition
is definitionally the proposition named by a future owner declaration.  The
canonical ledger is closed over 55 explicitly declared, family-level roots;
coverage is relative to that enum rather than a claim that every Blueprint
label has a one-to-one row.

## Repository-private Blueprint skills

The reusable Blueprint workflow lives under
`.agents/skills/` and is intentionally independent of the KIP126 mathematics:

- [leanblueprint-author](.agents/skills/leanblueprint-author/SKILL.md) — write
  source-grounded mathematical chapters;
- [leanblueprint-dag](.agents/skills/leanblueprint-dag/SKILL.md) — inspect and
  repair dependency cones and formalization frontiers;
- [leanblueprint-audit](.agents/skills/leanblueprint-audit/SKILL.md) — audit
  structure, provenance, and Lean/Blueprint drift;
- [leanblueprint-maintain](.agents/skills/leanblueprint-maintain/SKILL.md) —
  build artifacts and safely synchronize proof-status markers.

They complement the global `leanblueprint` environment skill. The maintenance
tools are read-only by default; marker changes require an explicit `--write`.
