# KIP126

Lean 4.32.2 project and source-grounded Blueprint for the KIP126
formalization.

The executable Lean implementation is still at the first shared-Core
milestone.  That Core is deliberately small: it imports Mathlib's
`CategoryTheory.SpectralSequence` directly, without a competing wrapper or
synonym, and adds only the category-level filtration data that Mathlib does not
provide: decreasing filtrations of graded objects, associated graded quotients,
filtered morphisms, and filtered chain complexes with their induced
associated-graded differential.  The toolchain and Mathlib dependency are
pinned to matching `4.32.2` releases.

The Blueprint is substantially ahead of the Lean implementation.  Its entry
point is [blueprint/src/content.tex](blueprint/src/content.tex), with the
paper-specific chapters under [blueprint/src/chapters](blueprint/src/chapters).
It covers the paper's Sections 1--7, all 401 nonempty appendix rows and nine
zero bands, the stable/spectral-sequence/Steenrod/synthetic background absent
from Mathlib, explicit literature and computation provenance, and the full
dependency cone from the compiled Core to the conditional Kervaire endpoints.
All unimplemented nodes are conservatively marked `notready`; the Blueprint
does not claim that the main theorem is already formalized.  The broader
migration specification is
[docs/FORMALIZATION_SPEC.md](docs/FORMALIZATION_SPEC.md), and the staged Lean
implementation order is [docs/ROADMAP.md](docs/ROADMAP.md).

## Build

```sh
lake build
```

The Blueprint PDF, web output, declaration checks, structural doctor, and DAG
checks are maintained separately under `blueprint/` and `.agents/skills/`.

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
