# KIP126

## Dependencies

**Fixed Lean toolchain: `leanprover/lean4:v4.32.2`.** Both the canonical
`KIP126` library and the migrated `KIPBase` component use this toolchain with
mathlib **`v4.32.2`**. The authoritative pin is [`lean-toolchain`](lean-toolchain);
run Lake commands from this repository so Elan selects that exact version.

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

The Lean and Mathlib versions must remain aligned. Blueprint's generated
directories (`blueprint/print` and `blueprint/web`) are ignored build outputs.
`blueprint/lean_decls` is likewise generated and ignored rather than hand-edited;
commands that consume it must run `leanblueprint web` first. CI preserves the
generated declaration list in the Blueprint artifact when it is needed later.

Lean 4.32.2 project and source-grounded Blueprint for the KIP126
formalization.

The complete historical KIP-base library is retained as the separately compiled
`KIPBase` component on the same Lean/mathlib 4.32.2 pins. Its original assumptions
are isolated from `KIP126` and do not count as completed paper proofs. See the
[component build and reuse guide](KIPBase/README.md) and
[original migration archive](docs/migration/kip-base/README.md).

## Project documents and workflow

Documentation is kept at the project, stage, or component boundary where it
adds context beyond the Lean source. A Lean directory does not need its own
README: the source files and their imports are the current API, while historical
migration snapshots remain available in Git history. Do not infer proof status
from a directory listing or a past migration count. Archived plans and check
records are kept in [docs/archive/](docs/archive/) for historical reference.

- [GitHub task and path review workflow](docs/ISSUE_WORKFLOW.md): issue forms, PR review responsibilities and generated Blueprint frontier.
- [Stage-0 mathematical interfaces](docs/STAGE0_INTERFACES.md): M / C(M) / A(M) / T(M), object and source bindings, exact ranges and proof responsibilities.
- [Input review panel](docs/challenge-input-inventory.html): literature, computation, Main's internal applications, and remaining review obligations. Fixed-sphere applicability is stated in Def.

The repository assigns different questions to different authoritative sources;
this is a responsibility map rather than one document overriding every other
document:

- [`MainPaper/`](MainPaper/) contains the target paper and its source material.
  It is the mathematical document to be formalized; its claims are not, by
  themselves, Lean proofs or project theorems.
- [`PROJECT_BOUNDARY.md`](PROJECT_BOUNDARY.md) defines what this project does
  and does not formalize, together with its source, trust, and acceptance
  boundaries.
- [`blueprint/src/content.tex`](blueprint/src/content.tex) and the chapters
  under [`blueprint/src/chapters`](blueprint/src/chapters) form the
  natural-language formalization sketch.  The Blueprint follows the paper's
  definitions and mathematical dependencies, and refines each step into nodes whose
  mathematical statement, dependencies, sources, and intended Lean object can
  be checked together.  A chapter indexes several small Lean modules under
  `KIP126/Def/`, `KIP126/Interface/`, and `KIP126/Main/`;
  `KIP126/Def.lean` and `KIP126/Main/Solution.lean` are multi-module package
  entry points. Import the final target directly from
  `KIP126.Main.Challenge.h6_sq_permanent`.
- [`KIP126.lean`](KIP126.lean) and the modules under [`KIP126/`](KIP126/) are
  authoritative for the implemented interfaces, proofs and dependency graph.
  `Def/` owns the mathematical objects, fixed route and shared background; it never
  imports LinProgram, Interface, or Main. Generic mathematical
  interfaces stay in Def and are grouped by subject under `Comparison/` or the
  relevant mathematical object. `Interface/Challenge` defines `Challenge2` and
  `Interface/Solution` constructs it. Its only fields are literature and
  computation. Each delivery has its own bindings and results, with computation
  depending on the same literature sources; the fixed presentation belongs to
  computation bindings in `Interface/Challenge/Computation/Presentation.lean`.
  Main derives internal applications after the stage
  axiom. Fixed-sphere applicability has a Def-owned theorem with an explicit
  unfinished proof. The final
  target in `Main/Challenge/h6_sq_permanent.lean` imports only Def; its proof
  may consume Challenge2 through Main/Axiom. Stage-0 interface acceptance does
  not mean certification or the final mathematical proof is complete.
  `Def/AdamsE2/` contains the generic table, page algebra, presentation and input
  language. The [Lin program layout](KIP126/LinProgram/README.md) describes the
  fixed-data modules and their separate mathematical certification obligations.
  `LinProgram/` retains the independent fixed-data pipeline, including its
  data models, computations, interpretations, and certificates.
  `LinProgram/SourceMetadata/` holds the typed appendix-table transcription and its
  locators; recorded statuses are not mathematical conclusions. `Checks/Examples/`
  contains the finite-table demonstrations. Original source artifacts live in
  `Source/`; they are evidence, not Lean proof assumptions.
  Import concrete modules directly instead of adding redundant wrappers that
  only import one module. Multi-module aggregators and required Lake roots,
  including `KIPBase.lean`, remain.
  The [E₂ table example](KIP126/Checks/Examples/LinProgram/AdamsE2LowDegrees.lean)
  demonstrates imported dimensions, multiplication and the explicit
  representation evidence required to use them on a spectral-sequence page.
- [`docs/external-inputs.json`](docs/external-inputs.json) is the canonical
  machine-readable manifest for source artifacts, locators, interface coverage,
  and route audit items. Per-source status records under [`Source/`](Source/)
  retain acquisition evidence. Lean fields contain mathematical statements;
  the manifest connects them to citations without a second Lean metadata registry.

When two sources appear to disagree, resolve the question through the owner
above: scope, trust, and final acceptance through `PROJECT_BOUNDARY.md`;
implemented facts through Lean; planned statements, dependencies, and status
through the Blueprint; and source
artifacts through the source inventory.

The intended workflow is therefore:

1. use `MainPaper/` to identify the mathematical target;
2. use `PROJECT_BOUNDARY.md` to decide which claims and inputs are in scope;
3. use Blueprint dependencies and Lean source to choose the next implementation slice;
4. record its node-level natural-language statement and Lean correspondence
   in the matching Blueprint chapter; and
5. implement and verify the corresponding Lean declarations with Lake and the
   pinned Mathlib dependency.

The internal spectral-sequence presentation uses KIP126's `SSData`/`PreSS`
cycle and boundary towers, including quotient pages and finite-page
differentials. `KIP126/Mathlib/` hosts checked bridges to Mathlib's
`CategoryTheory.SpectralSequence`; it does not copy Mathlib definitions or
replace the internal representative language. The filtered-complex layer also
constructs homology filtrations and associated-graded differentials. The
generic homological-image and spectral-object bridges, endpoint data, and
convergence interfaces remain distinct from the internal `Z/B` presentation.
This separation is still being completed. The toolchain and Mathlib dependency are pinned to matching `4.32.2` releases.

The Blueprint remains ahead of the theorem proofs, while the source catalogue
interfaces now cover the completed migration slices.  Its entry
point is [blueprint/src/content.tex](blueprint/src/content.tex), with the
paper-specific chapters under [blueprint/src/chapters](blueprint/src/chapters).
It covers the paper's Sections 1--7, all 401 nonempty appendix rows and nine
zero bands (the rows are now typed AST input records with executable catalogue
regressions), the stable/spectral-sequence/Steenrod/synthetic background absent
from Mathlib, explicit literature and computation provenance, and the full
dependency cone to standard `h₆²` nonzero permanent survival.
All unimplemented nodes are conservatively marked `notready`; the Blueprint
does not claim that the main theorem is already formalized.  Implemented APIs
and planned nodes retain the responsibilities defined once in
`Project documents and workflow` above.

## Build

```sh
lake build
```

The Blueprint PDF, web output, and declaration checks are maintained
separately under `blueprint/`.

The published Blueprint and API documentation are assembled by
`.github/workflows/pages.yml` and served at
<https://sii-math.github.io/KIP126/>. The workflow prunes work by changed path,
waits for exact-input Lean outputs from the primary build, instead of compiling
the project again in each documentation job. `checkdecls`
is pinned in `lakefile.lean`; the nested `docbuild/` project pins doc-gen4 to
the Lean 4.32.2-compatible commit `1d0643dd819f8ca71b1dd82cba6e3e3050f0a255`.

The Pages workflow uses the following change matrix:

| Changed paths | Blueprint render | Lean/checkdecls | API docs |
| --- | --- | --- | --- |
| `blueprint/src/**` | rebuild | run | reuse artifact |
| `KIP126.lean`, `KIP126/**/*.lean` | reuse artifact | run | rebuild incrementally |
| Lake/toolchain, `docbuild/**`, docs workflow/helpers | rebuild | run | rebuild |
| other paths | workflow skipped | workflow skipped | workflow skipped |

Only ordinary successful compilation on trusted `main` publishes the
`kip126-main-build-v2-*` baseline. Development CI checks compilation and repository mechanics, without
proof-debt auditing or reports. Cached compilation does not certify proof completion. The sandboxed PR build may publish a separate
`kip126-pr-build-v1-*` cache after its checks succeed and the actual overlay
matches the candidate inputs. This namespace includes the trusted build
contract and never feeds the main baseline, including for fork candidates.

Normal declaration checks wait for one of these exact-input caches, validate
it with `lake build --no-build`, and run checkdecls. They fail explicitly if the
producer fails, the cache is missing/expired, or the restored outputs are stale;
they do not silently start a duplicate compilation. API docs then download
the same run's `docs-lean-outputs` artifact from the declaration-check job.
Keys cover the committed Lean sources, both root libraries, Lake configuration,
dependency pins, toolchain, runner OS and architecture. Prefix-matched older
outputs are only an incremental baseline for main and sandboxed PR/queue builds, never
a substitute for exact-input outputs in declaration consumers.
Mathlib files always come from `lake exe cache get`.

For measured CI/merge-queue timings, candidate automation preflight, cache
behavior, and failure recovery, see [CI operations](docs/CI_OPERATIONS.md).

The large doc-gen cache has one immutable key per toolchain/manifest graph,
rather than one key per commit. Blueprint and API docs are separate workflow
artifacts; the deploy job assembles them as `_site/blueprint/` and
`_site/docs/`, then uses the Actions Pages artifact flow without a `gh-pages`
branch. A missing rendered component artifact causes a component rebuild,
but still requires matching Lean outputs. Weekly and manual runs skip GitHub
caches, compile Lean once in the declaration-check job, share those outputs
with API docs, and record cold plus immediate warm command timings;
normal runs report both elapsed times and cache-hit outcomes in the job summary.
doc-gen equation pages are disabled because the site is used for declaration
types, source links, and search; deriving equations for the full dependency
closure dominates cold builds without improving that evidence chain.

Install the pinned Blueprint renderer, regenerate the declaration list, and
verify that every name resolves in the pinned Lean environment:

```sh
python3 -m pip install --user -r requirements-blueprint.txt
bash scripts/check-blueprint-decls.sh
```

The script regenerates the ignored `blueprint/lean_decls` with
`leanblueprint web` and then runs the pinned `checkdecls` executable configured
in `lakefile.lean`. A removed or renamed Lean declaration is reported by name;
the generated list is not committed.

## Provenance and source inventory

Citation metadata, acquisition state, artifact paths, SHA-256 digests, and
declaration-level source links are kept in
[`docs/external-inputs.json`](docs/external-inputs.json). Mathematical inputs
remain explicit Lean fields and hypotheses. No citation wrapper is needed to
use or prove them. Check the manifest and its regression tests with:

```sh
python3 scripts/check_source_inventory.py
python3 -m unittest discover -s scripts -p 'test_check_source_inventory.py'  # unit tests
python3 -m unittest discover -s scripts -p 'test_*.py'  # all tests
python3 scripts/check_external_inputs.py
```

The checks validate source acquisition records, artifact paths and hashes,
declaration coverage and source locators. They do not establish that the cited
text entails the Lean statement or certify a computation. Each Blueprint node
records its own mathematical statement, declaration mapping and proof status.

Pinned computation inputs are listed in
[Raw/manifest.json](KIP126/LinProgram/Raw/manifest.json); the
[translation tools](KIP126/LinProgram/Translate/) provide their command options
through `--help`. Their checks compare fixed inputs and generated output;
model certification remains an Interface proof obligation.

当前第0步接口、来源适用性、计算范围及后续证明责任见
[STAGE0_INTERFACES.md](docs/STAGE0_INTERFACES.md)。该文档不以声明存在或编译成功
代替数学覆盖与对象绑定的复核。
