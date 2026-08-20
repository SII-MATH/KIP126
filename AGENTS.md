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

## Validation policy

Use the cheapest evidence that answers the task. Do not start with a full build.

1. Inspect the requested change, the relevant diff, and existing validation evidence.
2. For post-merge reviews and read-only questions, check the merged PR checks and the
   successful `main` CI run for the exact merge SHA. If they cover the question, cite
   that evidence and do not repeat `lake build` or `leanblueprint all` locally.
3. Run a focused check only when existing evidence does not answer the question.
4. Run the full relevant gate once, after making code changes or when the user
   explicitly requests fresh full validation.

A fresh checkout has no local Lake packages or build outputs. Never run `lake build`
directly in that state: it clones dependencies and then cold-builds them. If local Lean
validation is actually needed, run `lake exe cache get` first to restore Mathlib's
published artifacts, then run the narrowest relevant target. Do not run `lake update`
unless the task is specifically changing dependency pins.

GitHub Actions' `kip126-main-build-v1-*` cache contains trusted `.lake/build` output for
an exact `main` SHA. The repository's PR workflow restores it automatically; a Multica
local checkout does not. Do not claim that cache was reused locally unless it was
explicitly restored. Prefer the exact-SHA CI result as evidence for read-only analysis.

## Check selection

- Lean source change: after `lake exe cache get`, check the changed module or smallest
  relevant target first; run `lake build` once before delivery when the change warrants it.
- Blueprint prose or graph change: run `leanblueprint web`.
- Changed `\lean` annotations or declaration names: regenerate
  `blueprint/lean_decls` with `leanblueprint web` and build the affected Lean target
  (these may run in parallel); after both succeed, run
  `lake exe checkdecls blueprint/lean_decls`.
- Print-only Blueprint change: run `leanblueprint pdf`.
- Run `leanblueprint all` only when a task explicitly requires every Blueprint artifact
  or when changes span all of the checks above.
- Non-code/read-only investigation: do not compile solely as a generic preflight.

Before launching an expensive command, state which unresolved question it answers. If
the same commit already has a successful check covering that question, reuse it.
