# KIP126

Minimal Lean 4.32.2 project scaffold for the KIP126 formalization.

The project currently contains no mathematical content. The toolchain and
mathlib dependency are pinned to matching `4.32.2` releases.

The Lean Blueprint source is [blueprint/src/content.tex](blueprint/src/content.tex).
The broader migration and theorem specification is
[docs/FORMALIZATION_SPEC.md](docs/FORMALIZATION_SPEC.md).

## Build

```sh
lake build
```

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
