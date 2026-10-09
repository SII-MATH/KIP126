# Two named d3 rules and the remaining complete-matrix gaps

This package adds the conditional actual row2916 and row3135 d3-zero
rules to both frozen `Fact721FirstD4Continuation` families. The rules have
separate mathematical premises and are never used to replace other NULL
columns. Both previous families and every earlier provenance record remain
exact prefixes.

| Branch | Prior entries | Added entries | Complete family | Requested graph present | Missing |
| --- | ---: | ---: | ---: | ---: | ---: |
| Zero | 1314 | 13 | 1327 | 1324 | 96 |
| Residual, rebased | 1322 | 13 | 1335 | 1332 | 88 |

The 13 new complete comparisons are the same in both branches. The raw
row2916 d3 complex at `(13,137)` has outgoing matrix `[0,0,1]`, incoming
matrix `[1,0,0]`, and one-dimensional homology. Its new named zero is the
middle column; the other nonzero d3 column remains present. The complete
target `(16,139)` comparison then has zero homology. Whole quotient
identities and all adjoining matrices are checked in Lean.

`ActualRules.row2916_actual_column` identifies the new wire with the already
checked `Fact713Row2916Search.CoordinateBridge.conditionalD3` and supplies
the named actual column from the complete C2h5 detector theorem. This needs
the full d2 meanings, current maps, actual quotient transitions, d3
naturality and named derived E3 coordinate. The raw ss row2916 base1 names
E2 basis2915, not basis2916.

The second rule, `ActualRules.row3135_actual_named_zero`, uses the known
nonzero right-factor d3 event, h0 multiplication, full actual product and
quotient meanings, and named source/factor bindings. It only supplies the
single ss row3135 column. The other column ss row3136 at `(20,140)` is still
NULL and its target has dimension2. Consequently no complete `(20,140)`
d3 comparison or downstream first-class d5 certificate is emitted. This
distinction is checked by `audit_provenance.py` and the Lean missing-key
theorem. Attempted partial rules are recorded separately from usable full
comparisons.

The named Fact7.13 trajectory remains finite E9. Its next d9 block now
first encounters ss row3143 d4 at `(17,140)`, whose full E4 target at
`(21,143)` has dimension1. ss row3143 base0 names E2 basis3141. The d10 and
first Fact7.21 d5 paths encounter row3136 d3; the d11 path encounters
row2431 d3. `next-blockers.json` retains each exact raw neighborhood.

The older two named Cnu E3 cycle representatives and row2994 branch
premises are inherited unchanged. No actual E9, later E6 first-class
endpoint, permanence or topological realization follows merely from these
finite families. `conditional_signature.json` lists the separate new
premises and the unresolved positions.

```sh
python3 program/Fact713NextD3Continuation/generate.py
python3 program/Fact713NextD3Continuation/package.py
python3 program/Fact713NextD3Continuation/audit_branches.py
python3 program/Fact713NextD3Continuation/audit_families.py
python3 program/Fact713NextD3Continuation/audit_provenance.py
python3 program/Fact713NextD3Continuation/compile.py
```

The independent numerical audits cover every vector, every cycle pair and
all ordered family pairs. Lean proves complete family coherence, prior
inclusion and missing next keys separately. SHA-256 verifies provenance and
reproducibility only. Accepted Lean source uses no custom axioms, `sorry`
or native proof evaluator. Historical compilation failures, if any, remain
under `evidence/`.
