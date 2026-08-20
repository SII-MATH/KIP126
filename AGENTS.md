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

## Readiness and trust boundary

Use the `Project documents and workflow` section of `README.md` as the single map
of which project source answers each kind of question; do not duplicate that map
here. Before editing, base the work on the exact current default-branch head and
check the relevant Blueprint node, its status and dependencies against the actual
Lean declarations and import graph. Also check current issue, pull-request, CI,
and review evidence when they affect readiness. If those sources are missing,
stale, or contradictory, stop and report the conflict instead of guessing.

An unfinished proof may temporarily use `sorry` while it is being developed, but
do not mark the declaration or its Blueprint node as complete. A pull request is
not mergeable while the required axiom audit still reports `sorryAx`. Never add a
project-defined `axiom`. External hypotheses belong under `KIP126/External/` as
provenance-carrying `ExternalResult` or `ExternalEvidence` inputs, and conclusions
that use them must remain conditional statements taking those inputs explicitly.

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
validation is actually needed, run `lake exe cache get` first to restore Mathlib's
published artifacts, then run the narrowest relevant target. Do not run `lake update`
unless the task is specifically changing dependency pins.

GitHub Actions' `kip126-main-build-v2-*` cache contains trusted `.lake/build` output
keyed by OS, architecture, and the committed Lean/build-input digest. Documentation-only
`main` commits therefore reuse their parent's outputs, while Lean source, Lake config or
pins, and toolchain changes get a new key. The repository's workflows restore it
automatically; a Multica local checkout does not. Do not claim that cache was reused
locally unless it was explicitly restored. Prefer exact-SHA CI results as evidence for
read-only analysis.

## Check selection

- Lean source change: after `lake exe cache get`, check the changed module or smallest
  relevant target first. Run a full local `lake build` only when the task explicitly
  requests it or an unresolved question requires it.
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
