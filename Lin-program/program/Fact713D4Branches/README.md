# Common finite E8 under both row-2994 candidates

The actual row-2773 d4 theorem resolves the former zero-branch gap. Both
remaining row-2994 d3 candidates now yield the same named finite E8 trajectory,
without choosing or proving an unconditional value of row 2994.

The zero branch adds eleven comparisons to the unchanged 1272-block baseline:
1283 total, including 1280 requested graph blocks and three outside the graph;
140 graph blocks remain unresolved. The residual branch has twelve additions:
1284 total, 1281 requested graph blocks and three outside; 139 remain unresolved.
Its wires agree exactly with the earlier residual family, so that family's
already checked complete coherence is reused. The two families remain separate
because their row-2994 source homology differs.

For both candidates, every named d2-through-d7 comparison wire is identical.
The final d7 wire has dimensions `(k,m,n,h)=(1,1,0,1)`, zero outgoing matrix and
identity inclusion/projection. The named class remains nonzero with coordinate
`(1)`. `Branches.both_finite_E8` checks this for either Boolean case;
`Branches.stages_common` proves the complete named trajectories agree.
`Branches.family_coherent` and `Branches.named_prefix_covered` apply to each
whole family. The d8 key is still missing in both cases, first blocked by
row 2684 d4 at `(12,134)` with target dimension one.

The row-2773 zero rule cites `Row2773D4Leibniz.Actual.actual_row2773_d4_zero` and
its complete actual-coordinate bridge. Its raw NULL stays in provenance.
The residual branch's source-selection adjustment reflects the genuinely zero
homology after its nonzero d3; the proposed target-row-3135 adjustment is unused
by every newly completed block. No absent target d3 is inferred. Actual E8 is a
separate mathematical transport obligation, not the conclusion of these finite
family theorems.

## Files and validation

- `ZeroData.lean`, `wire/*.json`: eleven zero-branch comparisons and finite E8.
- `ZeroExtra.lean`, `ZeroCross.lean`, `ZeroCoherence.lean`: complete zero-family
  validity, coherence and preservation of every baseline entry.
- `Branches.lean`: both-case coherence, complete named-key coverage, common
  trajectory and explicit missing d8 key.
- `branches/*.json`, `zero-family.json`, `residual-family.json`,
  `zero-extra.json`: separate, reproducible numerical snapshots.
- `generate.py`, `package.py`: branch reconstruction and canonical packaging.
- `audit_branches.py`, `audit_families.py`: full-vector quotient replay and
  all-pairs coherence audits of both complete families.
- `compile.py`, logs, `*-compile.json`: direct serial Lean compiler evidence.

The independent vector audits check 2566/2567 vectors and 9512/9510 cycle pairs
for the zero/residual cases. Full-family audits examine 1,646,089/1,648,656
ordered pairs. No custom axiom, `sorry`, native proof evaluator or implicit C++
trust is used. Hashes record byte identity, not mathematical correctness.

```sh
python3 program/Fact713D4Branches/generate.py
python3 program/Fact713D4Branches/package.py
python3 program/Fact713D4Branches/audit_branches.py
python3 program/Fact713D4Branches/audit_families.py
python3 program/Fact713D4Branches/compile.py
```
