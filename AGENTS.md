# KIP126 agent guidance

## Agent roles and scope

Agents running in this repository operate in one of two roles:

1. **General-purpose agents** have broad repository access appropriate to their
   assigned task. They are not restricted by the worker-only source boundaries
   below, but remain governed by their task, higher-priority instructions, review
   and merge authorization, and all other repository policies in this file.
2. **Workers** receive one concrete implementation task: either rewrite or complete
   Lean Blueprint source, or implement Lean code. The worker-only contract below
   applies whenever an agent is assigned in that role.

If the task does not explicitly establish that the agent is a worker, do not infer
worker status solely because the task touches Lean or Blueprint files.

## Worker source boundaries

The bound worker skills define the generic authoring, review, and pull-request
workflow. This repository supplies only the mode-specific editable directories:

- Blueprint-only work may edit only files under `blueprint/src/`.
- Lean-only work may edit only `KIP126.lean` and `.lean` files under `KIP126/`.

If a worker task does not select exactly one mode, or requires a path outside the
selected boundary, stop before editing and request that the task be split or
clarified.

## Repository architecture

The canonical mathematical source is divided into three top-level layers:

- `KIP126/Def/` is the common mathematical base and the first production stage.
  It owns objects, predicates, constructions, reusable theorems, and the
  Challenge/Solution pair which constructs `Challenge1`. It must not declare
  project axioms.
- `KIP126/Interface/` owns the first proof stage: statements and proofs which
  turn the common base into the stable mathematical and computation interfaces
  consumed by the main argument. Its `Axiom/` contains stage-zero outputs admitted as inputs to stage one,
  while their upstream constructions and proofs remain separate.
  Its `Challenge/` and `Solution/` trees are parallel tracks for stage-one outputs.
- `KIP126/Main/` owns the second proof stage. `Axiom/` contains documented,
  development-only assumptions that let this stage proceed in parallel;
  `Challenge/` and `Solution/` contain the paper's main deductions and endpoint.

`KIP126/Challenge1.lean` and `KIP126/Challenge2.lean` are the two shared,
reviewable witness types crossing stage boundaries. They contain definitions
only. Their producer theorems and consumer axioms stay in the adjacent stage
trees. Other mathematical planning symbols used outside the repository are not
source directory names or Lean declaration prefixes. Preserve `KIP126/Mathlib/` as the optional
adapter layer and `KIP126/Checks/` as the regression/audit layer. Do not create
empty directories or placeholder modules merely to display the architecture.

This layout is a target as well as an ownership rule. During the authorized
migration, move existing declarations without silently changing their
statements or proofs. Existing cross-layer imports are migration debt, not
evidence that the final dependency isolation is already implemented. Record
such debt and remove it in later semantic changes. Both sides of a boundary
state `Nonempty Challenge1` or `Nonempty Challenge2` directly, so there is no
duplicated long signature or separate alignment table to synchronize.

For the current milestone split, the former Challenge/Solution `Tools`
modules for generalized Leibniz, generalized Mahowald, and page-extension
stretching belong to `Interface`. The former `Near126` and `Final` modules
belong to `Main`. This initial classification does not populate every planned
field of Challenge 2 or prove either producer theorem.

## Challenge, Solution, and stage-axiom synchronization

- Every theorem under `KIP126/Def/Challenge/`, `KIP126/Interface/Challenge/`,
  or `KIP126/Main/Challenge/` must have a corresponding theorem under the same
  relative path in that layer's `Solution/` tree. Preserve public declaration
  names during directory-only migration; a file move alone does not authorize a
  namespace or API change.
- Keep each Challenge/Solution pair synchronized: declaration name, universe
  parameters, variables, typeclass assumptions, explicit and implicit
  hypotheses, and conclusion must agree, apart from an intentional Challenge/
  Solution namespace difference. Update both files in the same change whenever
  a statement changes.
- Challenge declarations are always `theorem ... := by sorry`. Never replace
  them with `def ... : Prop`, fill in their proofs, or remove their statements
  merely because Solution exists.
- Write proofs of Challenge statements only in the matching Solution tree.
  Until a solution proof is implemented, its matching theorem also uses
  `by sorry`; an import or explanatory comment alone is not a corresponding
  Solution theorem.
- Solution proofs must not discharge their goals by invoking Challenge
  placeholders, directly or indirectly. Import shared definitions and genuine
  proof dependencies instead. Audit Solution and its proof dependencies
  separately from the intentionally unproved Challenge statements; a Challenge
  placeholder is never evidence of proof completion.
- The first boundary is exactly `Nonempty KIP126.Challenge1`: Def Challenge and
  Solution state it as a theorem, while `Interface/Axiom` may temporarily state
  it as an axiom. The second boundary is exactly
  `Nonempty KIP126.Challenge2`: Interface Challenge and Solution state it as a
  theorem, while `Main/Axiom` may temporarily state it as an axiom. Data and
  property fields stay correlated inside one witness at each boundary.
- Consumer code selects one witness with `Classical.choice` and projects every
  compatibility name from it. Do not replace a Challenge package with
  independent data axioms or allow dependent fields to choose different base
  objects. Producer Solution proofs must not depend on the matching consumer
  axiom.
- A Solution proof that is meant to eliminate a stage axiom must not import or
  otherwise depend on that axiom. It may consume the pinned raw data, generated
  records, deterministic interpretation, explicit external-result parameters,
  and proved lower layers needed to establish the statement.

## Data, predicates, assumptions, and proofs

For spectral sequences, use KIP126's `SSData`/`PreSS` nested-subobject model
for internal cycle, boundary, representative, and crossing arguments. Put
bridges to Mathlib's `CategoryTheory.SpectralSequence` under `KIP126/Mathlib/`;
that layer may import proved `Def` modules, but internal `SSData` reasoning
must not import it back. Using Mathlib's categorical foundations does not by
itself make a module an adapter. The retained Mathlib-facing code is an
optional/historical adapter layer; this architecture creates no obligation to
prove that the internal spectral-sequence object is identical or equivalent to
Mathlib's spectral sequence. Preserve existing public adapter declarations
during layout-only migration, and do not treat a file move as a proof of any
semantic comparison.

`KIP126/Def/SpectralSequence/` is the internal spectral-sequence tree, not a
container that needs another `SSData/` level for general results. Its
`Convergence/` component owns convergence of the nested-subobject sequence.
Endpoint/spectral-object constructions and claims stated directly for
Mathlib's spectral sequence belong under `KIP126/Mathlib/SpectralSequence/`.

- Organize each mathematical component under `KIP126/Def/` into separate
  `Data.lean`, `Predicates.lean`, and `Proofs.lean` modules as applicable. Do
  not mix these responsibilities in one implementation file or create empty
  layers solely to satisfy the naming convention. `Def/` must not contain an
  `Axiom.lean` layer or a project `axiom` declaration.
- `Data.lean` owns concrete mathematical objects, structures, and operations.
  It must not contain named lemmas/theorems or unfinished property proofs, and
  must not hide `sorry` in data definitions. Required proof fields in a
  construction may use lower-layer property declarations.
- `Predicates.lean` owns the definitions of mathematical conditions and
  relations on those objects. It states predicates, not proofs of them.
- `Proofs.lean` owns lemmas and theorems about the data and predicates,
  including theorem statements whose proofs temporarily use `by sorry` during
  development. It must not serve as the hidden home of new mathematical data
  definitions or explicit `axiom` declarations.
- Follow the dependency order `Data → Predicates → Proofs` where those
  layers are present. Each later module imports only the earlier layers it
  needs. When a further construction needs preservation or well-definedness
  theorems, put it in a subsequent component's `Data.lean` importing the lower
  component's `Proofs.lean`, then separate its predicates and proofs in turn.
  Do not create cyclic imports or turn provable properties into new input
  hypotheses to avoid the split.
- A public entry module may re-export these layers using imports only.
  Preserve public declaration names when reorganizing files unless the task
  requires an API change.

Development-stage project assumptions are owned by `KIP126/Interface/Axiom/`
for stage-zero outputs admitted by stage one, and `KIP126/Main/Axiom/` for stage-one outputs admitted by
the main argument. Classify the former by whether their full types use the
internal spectral-sequence object, not by difficulty or proof status.
Every actual `axiom` declaration must be named, documented,
and separately auditable; it is an admitted interface for parallel work, never
proof-completion evidence. Do not turn an arbitrary unfinished theorem into an
axiom merely to remove `sorryAx`.

The user-authorized interface refinement packages each boundary as a shared
Lean witness structure. The only development axiom at each boundary is the
existence proposition `Nonempty ChallengeN`; old public interfaces are
definitions projected from the one selected witness. Keep every data choice
and property visible in the witness structures, preserve dependent choices,
types, ranges, and conditions, and do not treat packaging as proof progress.

- `Main/Axiom/Literature/` owns the literature source catalogue, precise claim
  locators, the existing provenance-carrying wrappers, and any staged
  assumptions needed by Main. Retain `ExternalResult`, `ExternalEvidence`,
  `CataloguedExternalResult`, and `CataloguedExternalEvidence`; do not replace
  explicit external hypotheses wholesale with untracked global axioms. Each
  cited claim must identify its paper and a stable theorem, proposition,
  equation, table, section, page, or line locator, together with its catalogued
  artifact where available.
- `Main/Axiom/LinProgram/` owns the pinned program-input pipeline. Separate
  `Raw/`, `Translate/`, `Generated/`, and `Interpretation/` responsibilities:
  raw artifacts and schemas; deterministic conversion code; generated typed
  records and manifests; and their mathematical meaning in the internal model.
  Generated records and successful hash checks do not by themselves prove the
  interpreted mathematical propositions. Existing computation axioms remain
  disclosed stage debt until their Interface proofs replay or verify them.
- Existing project axioms under `Def/`, `Mathlib/`, or the former `External/`
  computation tree move to the appropriate stage's `Axiom/`. Moving them records
  their proper ownership; it does not prove them, remove their dependency
  cones, or authorize a statement change.

## Mandatory GitHub synchronization at task start

Before investigating, planning, editing, or validating any task, synchronize the
agent's own checkout with the canonical GitHub repository. The remote default
branch, `origin/main`, is the source of truth; a previously fetched local
`origin/main` ref is not sufficient.

1. Run `git fetch --prune origin`, then inspect `git status` and compare `HEAD`
   and local `main` with `origin/main` (for example with `git rev-list
   --left-right --count ...`).
2. If local `main` is behind and has no local-only commits, fast-forward it with
   `git pull --ff-only origin main` before beginning new code. A feature branch
   must likewise be rebased or merged onto the current `origin/main` before new
   implementation starts, when that is safe and within the task's authorization.
3. If the checkout is dirty, ahead, diverged, cannot fast-forward, or the fetch
   fails, do not reset, overwrite, or silently work from a stale base. Preserve
   the existing work and report the condition or request the needed direction.

This procedure applies to whichever checkout the agent uses for the task,
including `/inspire/hdd/global_user/czxs25250150/KIP126`. Do not discard
local work or switch branches over uncommitted changes.

## Readiness and trust boundary

Use the `Project documents and workflow` section of `README.md` as the single map
of which project source answers each kind of question; do not duplicate that map
here. Before editing, base the work on the exact current default-branch head and
check the relevant Blueprint node, its status and dependencies against the actual
Lean declarations and import graph. Also check current issue, pull-request, CI,
and review evidence when they affect readiness. If those sources are missing,
stale, or contradictory, stop and report the conflict instead of guessing.

An unfinished Solution or definition-property proof may temporarily use `sorry`
while it is being developed; the latter remains in its component's `Proofs.lean`.
Challenge proofs remain `sorry` by the rule above. A deliberately introduced
stage `axiom` belongs under `KIP126/Interface/Axiom/` or `KIP126/Main/Axiom/`
according to the consuming stage, never under `Def/` or an
adapter. Do not mark an unproved or axiom-dependent declaration or its Blueprint
node as complete.
Development CI checks compilation, configuration, and repository mechanics. It
does not run proof-completion audits, publish proof-debt reports, or require
human approval specifically for `sorryAx` or project-axiom debt. Such debt does
not turn a successful compilation into a failed required `build` check.
This does not waive Blueprint declaration or other mechanical checks, and does
not satisfy the final proof-completion criteria in `PROJECT_BOUNDARY.md`.
Run the strict compiled axiom audit only when explicitly checking proof
completion; it inventories named axioms and their downstream dependencies and
continues to reject incomplete proofs.
External hypotheses are managed under `KIP126/Main/Axiom/Literature/` as
provenance-carrying `ExternalResult` or `ExternalEvidence` inputs, and
conclusions that use accepted external results must remain conditional
statements taking those inputs explicitly. A temporary Main stage axiom may
mirror a frozen Interface goal, but it must not erase the provenance of any
literature or program material used to formulate that goal.

## Validation policy

Use the cheapest evidence that answers the task. Do not start with a full build.

1. Inspect the requested change, the relevant diff, and existing validation evidence.
2. For post-merge reviews and read-only questions, check the merged PR checks and the
   successful `main` CI run for the exact merge SHA. If they cover the question, cite
   that evidence and do not repeat `lake build` or `leanblueprint all` locally.
3. Run a focused check only when existing evidence does not answer the question.
4. Deliver changes through a pull request. The required checks for the pull
   request's exact current head are the final mechanical merge gate; local checks
   provide earlier feedback but do not replace or duplicate that gate.

A fresh checkout has no local Lake packages or build outputs. Never run `lake build`
directly in that state: it clones dependencies and then cold-builds them. If local Lean
validation is actually needed, run the narrowest relevant target through the repository's
cache wrapper, for example:

```bash
bash scripts/shared-main-cache.sh run lake build KIP126.SomeModule
```

The wrapper first runs `lake exe cache get` without any project-cache environment, so
Mathlib artifacts still come from Mathlib's official cache. It then overlays KIP126's
latest successful `main` artifact cache from the single daemon's persistent checkout at
`/inspire/hdd/global_user/czxs25250150/KIP126/.lake/shared-main-cache` and executes the
requested command. Do not run `lake update` unless the task is specifically changing
dependency pins.

Agents may work directly in `/inspire/hdd/global_user/czxs25250150/KIP126`,
including editing source files and running ordinary Git and Lake commands,
subject to the synchronization and review rules above. The shared cache under
`.lake/shared-main-cache/` and its daemon state under
`.lake/shared-main-cache-daemon/` remain infrastructure-owned: do not edit
them, change their permissions, retarget the `current` symlink, set that cache
as writable, or run `lake cache clean` against it. In particular, never set
`LAKE_ARTIFACT_CACHE=true` while using the shared cache. Branch-specific
builds may write to the checkout's ordinary `.lake/build/` but must not enter
the shared cache. If the wrapper reports no matching cache or a daemon
failure, report that condition instead of modifying the shared cache.

If enabled, the cache daemon polls `origin/main` and fast-forwards this
checkout only when it is clean and on `main`; it refuses to update a feature
branch or a dirty checkout. The daemon alone publishes immutable shared-cache
generations. Do not start or stop it as a side effect of ordinary feature work.

GitHub Actions' `kip126-main-build-v2-*` cache contains trusted `.lake/build` output
keyed by OS, architecture, and the committed Lean/build-input digest. Documentation-only
`main` commits therefore reuse their parent's outputs, while Lean source, Lake config or
pins, and toolchain changes get a new key. The repository's workflows restore it
automatically; a Multica local checkout does not. The local wrapper described above uses
the daemon-owned Lake artifact cache instead, not GitHub Actions Cache. Do not claim that
either cache was reused unless the relevant restore actually ran. Prefer exact-SHA CI
results as evidence for read-only analysis.

## Check selection

- Interface or Main Challenge/Solution statement change: compare both complete
  signatures and check both affected modules. Verify that Challenge still uses
  `by sorry` and that Solution does not use the Challenge placeholder as its
  proof.
- Stage-boundary change: both producer theorem and consumer axiom must state the
  same shared `Nonempty ChallengeN` type directly. Review the witness fields,
  provenance or generated data, and dependency on the preceding witness; do
  not introduce a second handwritten copy of the full signature.
- Definition-module reorganization: check the data/predicate/proof separation,
  absence of project axioms in `Def/`, import direction, and preservation of
  public declarations, then compile the smallest affected downstream target.
- Lean source change: use `scripts/shared-main-cache.sh run` to check the changed module
  or smallest relevant target first. Run a full local `lake build` only when the task
  explicitly requests it or an unresolved question requires it.
- Blueprint prose or graph change: run `leanblueprint web`.
- Changed `\lean` annotations: regenerate the ignored `blueprint/lean_decls` with
  `leanblueprint web`, then run `lake exe checkdecls blueprint/lean_decls`.
- Changed Lean declaration names referenced by the Blueprint: follow the Lean source
  check above, regenerate `blueprint/lean_decls`, and run the same declaration check.
- Print-only Blueprint change: run `leanblueprint pdf`.
- Run `leanblueprint all` only when a task explicitly requires every Blueprint artifact
  or when changes span all of the checks above.
- Non-code/read-only investigation: do not compile solely as a generic preflight.

Before launching an expensive command, state which unresolved question it answers. If
the same commit already has a successful check covering that question, reuse it.
