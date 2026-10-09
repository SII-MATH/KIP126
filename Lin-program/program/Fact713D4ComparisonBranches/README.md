# Complete finite families after row-2684 d4 zero

`Fact713D4SourceSearch.Assembly.actual_d4_zero` supplies the conditional
whole d4 zero equation at `(12,134)`. The branch reconstruction cites that
theorem and its constructed actual-coordinate bridge while retaining the
raw `[2684,"0",null,9000]` provenance. It adds seven comparisons to the
previous 1283-entry zero branch and eight to the previous 1284-entry residual
branch. Both old families and all of their matrices are preserved exactly.

The resulting families contain 1290 and 1292 entries respectively. Of the
requested graph blocks, 1287/1289 are present and 133/131 remain unresolved.
The eight distinct additional wires are imported by `Data.lean`. Separate
`Zero*` and `Residual*` modules prove complete validity, key uniqueness,
adjacent differential agreement and consecutive-page dimension agreement
for each enlarged family. The branches retain their different row-2994 d3
values; they are not merged into one family.

`Branches.lean` proves preservation of both previous families, whole-family
coherence, coverage of the six named d2-through-d7 keys, the common finite E8
trajectory, the new row-2684 d4 block and its whole zero matrix. It also proves
that row-3247 d3 and the named d8 key are absent. Reconstructing after the new
d4 zero theorem exposes the next common obstruction: raw row 3247 at
`(18,141)` has an unknown d3 with one-dimensional target. No E9 trajectory is
asserted. Later roots also retain row-2622 d4 and row-2431 d3 unknowns.

Independent numerical audits verify every full-vector comparison and every
pair of cycle representatives in both complete families: 2575/2578 vectors,
9525/9527 cycle pairs, 983/985 adjacent differential pairs and 790/792
consecutive-page pairs. The complete ordered-pair scans contain
1,664,100/1,669,264 pairs. Hashes track reproduction, not mathematical truth.

The branch witnesses remain finite conditional data. Their connection to
actual Adams spectral sequences requires the complete actual meanings and
transition laws in the cited theorems. No SQL NULL or later-prefix level is
silently turned into a proved zero, and no custom axiom or native proof
evaluator is used. The inherited actual E8 construction is separate from
these finite-family checks.

```sh
python3 program/Fact713D4ComparisonBranches/generate.py
python3 program/Fact713D4ComparisonBranches/package.py
python3 program/Fact713D4ComparisonBranches/audit_branches.py
python3 program/Fact713D4ComparisonBranches/audit_families.py
python3 program/Fact713D4ComparisonBranches/compile.py
```

`compile.py` checks only these new leaves and runs serially. The observed
compiler results, source hashes and wire hashes are in `*-compile.json`;
historical failed logs are kept separately. `FILES.txt` records every file.
