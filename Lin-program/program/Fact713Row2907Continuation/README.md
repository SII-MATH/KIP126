# Three whole-row2907 d4 continuations

The actual target-product theorem excludes `a=true`. The remaining
row2994 parameter `r` is not chosen. Under the same actual product and
known-differential premises, row2907 has these exhaustive full d4 columns:

| Branch | r | Canonical target column | Inherited staircase column | New comparisons | Full family |
| --- | ---: | --- | --- | ---: | ---: |
| zero_b0 | 0 | [1,0] | [0,1] | 7 | 1365 |
| zero_b1 | 0 | [1,1] | [1,1] | 7 | 1365 |
| residual | 1 | [1] | [1] | 19 | 1386 |

The two coordinates in the r=0 target are swapped in the inherited
family. `CoordinateBridge.whole_projection` proves the full quotient
coordinate equation for every E3 input. `Actual.current_binding`,
`quotient_all`, and `whole_column_in_staircase` use that equation and the
same actual quotient to bind all actual d4 inputs, rather than comparing
dimensions or just naming the nonzero element. `Actual.complete` also
constructs the entire staircase d3 meaning from the canonical meaning,
and `constructed_coordinates_all` proves its newly constructed E4 quotient
coordinates agree with the transported chart for every actual element.

Every full-family entry from the corresponding `Fact713Row2916Continuation`
a=0 branch is preserved exactly, including provenance and raw NULL fields.
The generator records `[2907,"1",null,9996]` as its raw input; its nonzero
value is supplied by an explicit conditional theorem, never inferred from
that raw schedule. The b parameter is the actual second canonical output
coordinate. The family interface ignores b when r=true, where only one
candidate exists.

The three named finite trajectories still carry `[true,true]` on E2 to
`[true]` on E10. Their exact family bindings are checked. The d10 block at
`(9,132)` remains missing. The next obstruction for zero_b0/zero_b1 is
row2994 d4 at `(17,138)` with target dimension 2; for residual it is
row3147 d3 at `(16,140)` with target dimension 2.

## Actual conclusions and premises

The actual interface takes `Row2907TargetProduct.Actual.TargetMeaning W r false`.
Its witness W retains complete actual factor, source, product and known-target
d3 meanings, named E3 factors and product, the known nonzero actual product
d4, local zero laws and product quotient compatibility. The target meaning
adds complete target d3 homology and all-element product coordinates with
the same witness. No desired row2907 differential is an input field.

`Binding.selected_family` derives the coherent finite family and complete
actual source column, with canonical-to-staircase target transport made
explicit. It does not assert actual realizations of all other family entries.
`Binding.source_cycles_zero` proves that every actual E4 cycle at `(16,137)`
is zero, since every allowed full d4 column is injective.
`Binding.source_E5_zero` then uses actual quotient surjectivity and the local
E4/E5 zero law to prove that every actual E5 source element is zero.
`Binding.whole_row2622_d5_zero` derives the entire actual d5 at `(11,133)`
from this zero target. These last two statements require no extra incoming
value, future coordinates or future vanishing assumption.

## Imported certificates and tactics

`wire/` contains stable version-1 complete page comparisons, imported by
`page_comparison%` and checked with `lin_cert`. It contains 33 labelled
records across the three cases; repeated shared records are independently
validated. `*-family.json` exports stable complete indexed families.
`branches/` records exact theorem provenance and unresolved dependencies.

```lean
import Fact713Row2907Continuation.Request
open Fact713Row2907Continuation
open Fact713Row3143Continuation.Constructed

example (r b : Bool) (prefix : Prefix10 S pages) :
    RequestedValid r b prefix ActualTraceRequestsE10.e10 := by
  fact713_row2907_cert using prefix

example (T : Row2907TargetProduct.Actual.TargetMeaning W r false)
    (hz : ActualAdamsHomologyCoordinates.Meaning.LocalZeroMeaning pages 4
      Row2907PDeltaDetection.Descent.sourceDegree) : SourceZero T hz := by
  fact713_row2907_source_cert using T via hz
```

The E10 tactic supports single imported requests and batches. Request
fields use the existing strict schema: version 1, claim `fact-7.13:E10`,
source `[true,true]`, output `[true]`. The supplied actual `Prefix10`
contains complete same-sequence, same-pages neighboring interpretations;
finite family coherence cannot replace that premise. Incorrect source or
output vectors fail in the regression examples. Use
`ActualTraceRequests.diagnose` / `diagnoseBatch` with
`ActualTraceRequestsE10.spec`, or `IndexedFamilyCertificates.diagnoseFamily`,
for field and record locations. Generic closed-evaluator tactics are not
advertised for free actual prefixes.

## Reproduction

```sh
python3 program/Fact713Row2907Continuation/generate.py
python3 program/Fact713Row2907Continuation/package.py
python3 program/Fact713Row2907Continuation/audit.py
python3 program/Fact713Row2907Continuation/reproduce.py
python3 program/Fact713Row2907Continuation/compile.py
python3 program/Fact713Row2907Continuation/freeze.py
```

Generation recomputes the entire dependency graph with exact frozen
parent rules and explicit d4 candidates. The audit checks every finite
matrix, full chain homotopy, all cycle-pair quotient fibers, complete
adjacent matrices, predecessor dimensions, all family pairs, and exact
old/new provenance. Small independently permuted carrier models exercise
all source values and the complete quotient basis change; the universal
actual result is the Lean theorem. Reproduction compares all generated
bytes. Serial direct compilation retains every observed attempt, including
failures from temporarily unavailable parent objects during root builds.
Only successful stable-input records are accepted by the freeze audit.

These results are conditional finite checks and actual transport
statements, not an unconditional construction from original topology.
They do not choose r or the remaining b, supply all prior actual meanings,
or prove the paper's eventual Kervaire conclusion. C++ output is rechecked;
hashes only record versions. Accepted proofs contain no proof holes, custom
axioms or native evaluator. The audit permits only standard `propext`,
`Classical.choice` and `Quot.sound`.
