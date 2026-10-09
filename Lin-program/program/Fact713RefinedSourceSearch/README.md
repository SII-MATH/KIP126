# Conditional refinement at staircase row 3476

This directory preserves the previous Fact713 snapshots and records one new
conditional deduction. The scan checks all 36 previously unresolved row/page
values. Only the complete successor of row 3476 has zero kernel among the
successors reconstructed by this scan. Blocked successor reconstructions remain
blocked; the scan does not claim that no other mathematical argument exists.

The original row is
`[3476, 24, 144, "0", null, 9000]`. Its `null` differential remains unknown in
the raw data and in `Data.unknownRow`. The known successor row is
`[3728, 28, 147, "2", "0,2", 9996]`, recording a page-4 event. The full
successor matrix, after both earlier quotient projections, is the 1 by 1
identity. Row 3476 refers to a staircase row: its raw representative is local
E2 support `{0}`, not the E2 basis vector having database id 3476. That support
projects to `(0,1)` in the two-dimensional page-4 source.

## Mathematical statement

`Basic.SuccessorMeaning S` explicitly assumes an interpretation of the entire
stored successor map as the actual page-4 map at bidegree `(28,147)` and faithful
middle coordinates. The next coordinates need not be injective. The theorem
`actual_source_d4_zero` then proves the actual page-4 differential is zero on
every element at `(24,144)`, using injectivity of the successor and the actual
spectral sequence's `differentialSq`. There is no assumed value for the incoming
map and no assumption of its finite dimension. Zero preservation follows from
the actual differential being a linear map.

`Data.row3476_actual_value` binds that theorem to the strictly imported outgoing
matrix of `b_S0_28_147_d4`. The full successor interpretation remains an explicit
mathematical caller obligation; the database alone does not establish it.
Earlier coordinate projections likewise require their mathematical
interpretations when used with an actual Adams sequence. The five valid finite
comparison certificates do not discharge those obligations.

## Snapshot and files

- `successors.py`, `successors.json`: exhaustive scan of the 36 unresolved
  row/page values in the saved successor snapshot. Extra exploratory comparisons
  include cached blocks outside the E12 graph; they are not additional accepted
  E12 conclusions.
- `refine.py`, `refined.json`: separate conditional reconstruction with only the
  new row-3476 inference enabled. Every prior comparison is preserved exactly.
- `generate.py`, `manifest.json`, `wires/*.json`, `Data.lean`: five new canonical
  wire certificates, five references to already checked entries in
  `Fact713ComparisonBatches`, exact page/degree keys, raw support decoding,
  projection equalities and the actual conditional theorem.
- `Basic.lean`: generic finite-kernel and typed actual-Adams proofs.
- `audit.py`, `audit.json`: independent SQLite, finite algebra and preservation
  checks; the script never imports the search builder.
- `compile.py`, `Basic.log`, `Data.log`, `*-compile.json`: serial direct compiler
  invocations and source/input/log/object hashes. Historical failed logs
  are retained as `*.failed-*.log`; they are not successful proof artifacts.

The old E12 snapshot has 1234 available comparisons and 186 unresolved ones.
The new snapshot has 1236 available and 184 unresolved. Its two new E12 blocks
are `S0:24,144:d4` and `S0:19,140:d5`. The complete successor closure has 13
blocks and adds three more blocks outside that E12 graph:
`S0:28,147:d4`, `S0:32,150:d3`, `S0:35,152:d2`. Thus the union contains 1239
distinct finite comparisons, not 1239 established E12 results.

## Verification

Run from the repository root:

```sh
python3 program/Fact713RefinedSourceSearch/successors.py
python3 program/Fact713RefinedSourceSearch/refine.py
python3 program/Fact713RefinedSourceSearch/generate.py
python3 program/Fact713RefinedSourceSearch/audit.py
python3 program/Fact713RefinedSourceSearch/compile.py
```

The direct compiler uses Lean 4.32.2 and `-j1`, and expects the registered
dependency modules to have been built by the parent build. The independent
audit passes 1239 complete finite comparisons, 2496 input vectors, 9375 cycle
pairs, 937 matching adjacent differentials and 2217 predecessor-dimension
checks. It checks both raw rows against the read-only SQLite database and
preserves the unknown marker.

Both Lean leaves compile successfully. Their successful printed axiom reports
contain only Lean's standard `propext` and `Quot.sound`. There is no `sorry`,
custom axiom, native evaluator proof, or trust in the C++ output. Hashes record
artifact identity only. This directory does not complete the outstanding E12
graph or the actual topological interpretation of the stored matrices.
