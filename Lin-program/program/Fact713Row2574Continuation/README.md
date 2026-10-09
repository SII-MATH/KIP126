# Exhaustive row2574 boundary branches

The four finite families combine the two prior row2693 branches with the
two actual possibilities for row2574's d3 column. Each extends its exact
1431-entry parent by three complete comparisons, for 1434 entries total.
The additions are (3,130) d2, (6,132) d3 and (9,134) d3. Every higher-page
comparison retains all three preceding comparisons and matching dimensions.

The column is `[c,true,false]` in the complete target E3 basis ordered by
raw coordinates 2, 3, 1. The h2 product forces its second component, while
d3 squared zero and the target's full outgoing map force its third component.
`Row2574D3Search.Actual.Input.branch` is the actual remaining first component.
The interface binds to that value; it does not select a convenient unknown
column. Both values are represented in the finite family collection.

The complete target d3 comparison has one-dimensional homology. Raw E3
coordinate 3 equals c times raw coordinate 2 modulo the incoming boundary;
the surviving E4 representative is raw coordinate 2 in both cases. The
generator explicitly changes the quotient basis, and records the old
staircase rows and the new relation. It does not retain the obsolete
two-dimensional E4 staircase selection or assign its later unknown row zero.

`Actual.exhaustive_binding` matches each actual certificate to its finite
family branch, and `Actual.same_input_nonzero_E4` preserves the original
(9,134) E2 input. The existing main (9,132) input remains nonzero on E11.
Its d11 comparison is still blocked by `S0:9,134:d4:row2695`, with a
one-dimensional possible target. No main E12 or row2695 d4 value is asserted.

`Closure` uses one balanced metadata/path tree shared by all four cases.
The original order and every dimension are bound to the full Lean families.
Paths have maximum length 11, and the checker covers all 2781 predecessor
queries. Existing full-family coherence supplies key uniqueness.

`fact713_row2574_cert using P` handles the existing strict E11 single and
batch imported requests, with complete actual `Prefix11` meanings. The
result now also includes full predecessor closure of the selected extended
family. `fact713_row2574_branch_cert using D named binding` proves the
actual branch result and same-original-input E4 statement. Invalid source
bindings are rejected. The shared `ActualTraceRequests` diagnostics report
field and batch record errors.

Run from `program/`:

```sh
python3 Fact713Row2574Continuation/generate.py
python3 Fact713Row2574Continuation/package_data.py
python3 Fact713Row2574Continuation/generate_tree.py
python3 Fact713Row2574Continuation/audit.py
python3 Fact713Row2574Continuation/reproduce.py
python3 Fact713Row2574Continuation/compile.py
```

Per branch the independent finite audit checks 9882 ordered quotient-cycle
pairs, 1097 adjacent matrix matches, 927 consecutive page matches and 2781
mandatory predecessor dimensions. Its source/target/incoming comparisons
match the previously frozen Row2574D3Search wires exactly. Actual E2 algebra,
known event, product and quotient meanings remain explicit hypotheses.
The exported data and hashes are not trusted mathematical conclusions.
