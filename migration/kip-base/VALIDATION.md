# Migration validation — 2026-09-17 (historical record)

This report applies only to the migration identified below. Its counts, build
results and review policy are not the current KIPBase status or workflow.
See [the archive guide](README.md) for its scope and current entry points.

Base: KIP126 main `da017f6483e0a4cc22fac0ad5ab2c01a8ff0814b`.
Source: KIP-base `bff9a8d1f96a7e450bca3b850020687560449e6d`, including the
working-tree changes recorded in `source-manifest.json`.

Lean toolchain: `leanprover/lean4:v4.32.2`. Mathlib: `v4.32.2`, commit
`905b95818eb32af7874a58b427f50c1711a5e96c`. No dependency pins were changed.

| Check | Result |
| --- | --- |
| Default `lake build` | Passed, 1,928 jobs; both libraries and all globbed modules |
| `lake build KIP126 --iofail` | Passed, canonical strict warning policy retained |
| Canonical compiled axiom audit | 3,015 declarations; only `propext`, `Classical.choice`, `Quot.sound` |
| `lake build KIPBase` | Passed, all 21 original modules plus dependency and compatibility modules |
| Historical compiled dependency report | 1,501 declarations, including generated declarations; 1,329 without inherited axiom/placeholder dependencies |
| Compatibility module audit | All 47 declarations, including generated helpers, free of historical assumptions |
| Original proof debt | Exactly 94 declared axioms and 12 source `sorry` occurrences, fully inventoried |
| Preservation check | All 73 tracked files and all 389 named original declarations retained |
| Complete local backup | All 1,475 archived files verified against SHA-256 inventory |
| `bash scripts/euler-ci.sh` | Passed, including builds, both audits, preservation and Python regression checks |
| Import-boundary negative test | A temporary `KIP126.MigrationBoundaryProbe` importing `KIPBase.Mathlib` was rejected with exit 1 and the expected boundary message; probe removed |
| Compiled report cross-check | The iterative dependency report agrees with Lean's `collectAxioms` for every one of the 1,501 declarations |
| Whitespace and shell checks | Passed; byte-identical historical documents and patch context retain their original whitespace |

Local build logs, the full compiled JSON report, its compiler cross-check, and
the complete backup are under the ignored `local/` directory. These logs describe that historical run; they are not evidence for the current
source tree. Archive integrity can be checked as described in [README.md](README.md).

Compilation is compatibility evidence. The historical library's unproved and
axiomatized statements remain historical obligations, not completed MainPaper
results. No canonical Blueprint completion flag was advanced by this migration.
The migration PR also changed package layout and validation machinery. Its
review requirements were specific to that task, not standing instructions for later work.
