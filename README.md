# KIP126

Lean 4.32.2 project and source-grounded Blueprint for the KIP126
formalization.

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

The published Blueprint and API documentation are assembled by
`.github/workflows/pages.yml` and served at
<https://surenny.github.io/KIP126/>. The workflow prunes work by changed path,
restores only caches written by successful `main` builds, and falls back to a
full component rebuild when a reusable artifact is unavailable. `checkdecls`
is pinned in `lakefile.lean`; the nested `docbuild/` project pins doc-gen4 to
the Lean 4.32.2-compatible commit `1d0643dd819f8ca71b1dd82cba6e3e3050f0a255`.

The Pages workflow uses the following change matrix:

| Changed paths | Blueprint render | Lean/checkdecls | API docs |
| --- | --- | --- | --- |
| `blueprint/src/**` | rebuild | run | reuse artifact |
| `KIP126.lean`, `KIP126/**/*.lean` | reuse artifact | run | rebuild incrementally |
| Lake/toolchain, `docbuild/**`, docs workflow/helpers | rebuild | run | rebuild |
| other paths | workflow skipped | workflow skipped | workflow skipped |

Successful `main` runs are the only writers of the GitHub caches. PRs restore
the trusted Lean baseline and the single doc-gen dependency baseline, but do
not upload `.lake` state. Mathlib files always come from `lake exe cache get`.
The large doc-gen cache has one immutable key per toolchain/manifest graph,
rather than one key per commit. Blueprint and API docs are separate workflow
artifacts; the deploy job assembles them as `_site/blueprint/` and
`_site/docs/`, then uses the Actions Pages artifact flow without a `gh-pages`
branch. A missing component artifact causes a safe rebuild. Weekly and manual
runs skip GitHub caches and record cold plus immediate warm command timings;
normal runs report both elapsed times and cache-hit outcomes in the job summary.

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
