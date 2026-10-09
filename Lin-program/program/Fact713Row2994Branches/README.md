# Separate row-2994 candidate branches

The preceding complete detector leaves two possible staircase d3 columns for
row 2994: zero or `(1,0)`. This directory keeps their finite consequences
separate. It proves no unconditional d3 value or actual E8 survival.

The residual branch kills source row 2994 on E4. Twelve new complete
comparisons extend the unchanged 1272-entry family to 1284 entries. The E12
dependency graph has 1281 available and 139 missing blocks, with three
additional blocks outside that graph. The named finite trajectory survives
d7 with final coordinate `(1)`, so `Data.residual_finite_E8` is kernel checked.
`Cross.lean` and `Coherence.lean` prove the complete appended family is coherent
and retains every old entry. `Coverage.lean` proves the named d2-through-d7
keys are present and the d8 key is absent.

The zero branch supplies a different complete source d3 comparison, with
one-dimensional E4 homology, and retains `Data.zero_finite_E7`. Its next gap is
row 2773 d4, whose target has dimension one in this branch. The residual source
comparison has zero-dimensional E4 homology, which removes that gap by an
empty target. `Data.source_d3_alternatives` keeps both source matrices visible.
Neither branch is silently substituted for the other.

The original raw row `[2994,17,138,"0,1,2",null,9000]` is preserved in both
snapshots. Keeping this raw unknown as a next-page basis element would conflict
with the residual branch's zero-dimensional homology; that selection mismatch
is not a mathematical contradiction or evidence for d3 zero. The residual
snapshot adjusts its source selection only within that case. A prospective
target-row-3135 removal appears in its numerical screen, but none of these
twelve added blocks uses that later target selection. No complete comparison
for the still-unknown target `(20,140):d3` is exported.

## Artifacts and checks

- `Data.lean`, `wire/*.json`: twelve residual comparison certificates, the
  separate zero source certificate, and finite trajectory theorems.
- `Extra.lean`, `Cross.lean`, `Coherence.lean`, `Coverage.lean`: exact 12-entry
  append, whole-family coherence and named-key coverage.
- `family.json`, `extra.json`, `residual-snapshot.json`, `zero-snapshot.json`:
  canonical family and independent branch records.
- `audit.py`, `audit.json`: all 1,648,656 ordered family pairs, adjacency and
  consecutive-page dimension consistency, plus preserved finite-wire audits.
- `compile.py`, logs, `*-compile.json`: all five direct Lean compilations pass;
  sixteen axiom reports use only standard Lean axioms.

The earlier `Fact713Row2994Constraint/audit_branches.py` separately enumerates
all 2567 vectors and 9510 cycle pairs in the 1284-entry residual snapshot.
No `sorry`, custom axiom, native proof evaluator or implicit trust in C++ is
introduced. Actual meanings and all inherited hypotheses remain explicit.

```sh
python3 program/Fact713Row2994Branches/audit.py
python3 program/Fact713Row2994Branches/compile.py
```
