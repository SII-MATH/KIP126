---
name: leanblueprint-maintain
description: Maintain and validate a classic Lean Blueprint project after content exists. Use for PDF/web/checkdecls builds, chapter inclusion and generated-artifact hygiene, safe synchronization or removal of \leanok markers, Lean declaration and axiom-status checks, CI preparation, or diagnosing stale Blueprint completion status without rewriting mathematical prose.
---

# Lean Blueprint Maintain

Own mechanical project health and completion status. Do not make mathematical
or source-provenance decisions in this skill.

## Inspect before acting

Check:

- `blueprint/src/content.tex`, included chapters, macros, and entry files;
- `lakefile.lean` or `lakefile.toml`, manifest, and toolchain;
- the installed `leanblueprint` version;
- whether generated directories are ignored;
- the project's allowed-axiom and external-input policy;
- current worktree changes.

Do not run an interactive initializer over an existing Blueprint. Do not assume
an initialization prompt sequence from an older `leanblueprint` release.

Read [references/marker-policy.md](references/marker-policy.md) before changing
status markers.

## Build workflow

Run from the project root:

```sh
leanblueprint pdf
leanblueprint web
lake build
leanblueprint checkdecls
```

Use `leanblueprint all` when the project defines the standard combined build.
Treat the four checks as distinct evidence:

- PDF verifies print LaTeX;
- web verifies PlasTeX and graph rendering;
- Lake verifies Lean compilation;
- checkdecls verifies that Blueprint Lean names resolve.

Never hand-edit `blueprint/print`, `blueprint/web`, or
`blueprint/lean_decls`.

## Synchronize completion markers safely

The bundled synchronizer is read-only by default:

```sh
python3 .agents/skills/leanblueprint-maintain/scripts/sync_leanok.py .
```

It:

- builds the Lean project unless `--skip-build` is given;
- resolves project declarations named by `\lean`;
- uses `#print axioms` to detect transitive `sorryAx` and non-allowed axioms;
- distinguishes statement and proof `\leanok`;
- skips `\mathlibok` and `\notready` blocks;
- reports proposed additions/removals without writing.

Inspect the proposed changes, then explicitly apply:

```sh
python3 .agents/skills/leanblueprint-maintain/scripts/sync_leanok.py . --write
```

If the project permits explicit axioms:

```sh
python3 .agents/skills/leanblueprint-maintain/scripts/sync_leanok.py . \
  --allow-axiom Project.acceptedInput --write
```

The standard logical axioms `propext`, `Classical.choice`, and `Quot.sound` are
allowed by default. Project policy may be stricter; pass `--no-default-axioms`
when required.

Do not use `--skip-build` to justify adding markers. In that mode, the script
refuses positive status changes.

## Interpret markers

- Statement `\leanok`: exact Lean declaration exists and the project build
  supporting the check succeeded.
- Proof `\leanok`: the declaration is accepted and its transitive axiom set
  contains no `sorryAx` or disallowed project axiom.
- `\mathlibok`: separately verified Mathlib dependency; never set by the
  synchronizer.
- `\notready`: interface or mathematics is intentionally unstable; never
  overridden by the synchronizer.

Marker synchronization cannot establish semantic equivalence between LaTeX and
Lean. Run `$leanblueprint-audit` before treating a synchronized chapter as
correct.

## Structural maintenance

When splitting `content.tex`:

- organize chapters by coherent mathematics rather than blindly mirroring files;
- preserve all existing content;
- keep a small explicit `\input` dispatcher;
- keep shared macros in `blueprint/src/macros`;
- verify every chapter is included with `$leanblueprint-audit`.

Do not rename labels as a cleanup operation. Label migration requires updating
all references and should be reviewed as an API change.

## Failure handling

- Build failure: report the failing layer and first actionable error; do not
  add completion markers.
- `checkdecls` failure: distinguish missing, renamed, private, or unavailable
  imported declarations.
- Axiom-query failure: fail closed for proof markers.
- Temporary tool absence: report it; do not emulate success.
- Semantic drift: hand off to `$leanblueprint-audit` and
  `$leanblueprint-author`.
