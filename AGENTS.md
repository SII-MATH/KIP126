# KIP126 agent guidance

## Worker authoring modes

Each implementation issue must use exactly one authoring mode. Do not combine the
two source boundaries in one worker task or diff.

- Lean mode may edit only `KIP126.lean` and `.lean` files under `KIP126/`.
- Blueprint mode may edit only files under `blueprint/src/`.
- Files generated from Blueprint source, including `blueprint/lean_decls`, are
  validation outputs and must not be included in the delivered diff.

If an issue does not select exactly one mode, or requires a path outside its mode,
stop before editing and request that the issue be split or clarified.

### Blueprint authoring tasks

Rewrite or complete the requested Blueprint mathematics and submit a Blueprint-only
pull request. Do not include Lean source changes. Follow the marker and validation
policies below.

### Lean implementation tasks

Use the relevant Blueprint nodes as the mathematical specification. Implement their
statements and proof obligations in Lean, but keep the pull request entirely inside
the Lean-mode boundary. Helper definitions and lemmas need not already have Blueprint
nodes when they are implementation details needed for a sound proof.

Every Lean pull request description must list the affected Blueprint labels and give
an exact, per-node recommendation for declaration mappings and status markers: what
to add, remove, or retain, together with the compiled declaration, axiom evidence,
and semantic-correspondence justification. These are review inputs only; the Lean
pull request must not edit Blueprint source.

## Reviewed Blueprint status synchronization

After a Lean pull request passes semantic review at its exact current head and that
head is integrated into the current default branch, the reviewer may apply verified
declaration-mapping and status recommendations in a fresh, separate Blueprint-only
pull request containing one commit and based on that default branch. Never append
the status commit to the Lean pull request, modify Lean source in the synchronization
pull request, merge either pull request, or reuse approval after the reviewed head
changes.

Use `.agents/skills/leanblueprint-maintain/scripts/sync_leanok.py` in dry-run mode
before `--write`. A positive `\leanok` transition requires a successful build, an
exact resolving declaration, no `sorryAx` or disallowed transitive axiom, and
independent semantic confirmation that the Lean type implements the Blueprint
statement. The synchronizer does not override `\notready`; change or remove
`\notready` only when the approved review explicitly confirms that the mathematical
statement and Lean interface are stable. Treat `\mathlibok` as a separate
source-verification claim, never as a consequence of project Lean compilation.

Validate the resulting Blueprint-only diff using the applicable checks below. Do not
commit generated output, including `blueprint/lean_decls`.

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
