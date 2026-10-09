# Fact 7.21 second class: same-input E6 and E8

This package connects `Fact721ConstructedActual.Second.Prefix5` to the
proved Row2684 whole d5 square argument and the existing
`Fact713SquareContinuation` quotient construction. It proves a nonzero
actual E6 representative of exactly the supplied E2 class. Additional
complete earlier target calculations extend that same trace to nonzero
E7 and E8. No permanence theorem is asserted.

## Exact chart and input bridge

The specified class is `h5 * x91,11` in degree (12,134), E2 basis 2682,
staircase 2684 with base0. `Bridge.source2_exact`, `source3_exact` and
`source4_exact` check that the old Fact7.21 comparisons are exactly the
ones used by the square proof. `squareSource` reuses the caller's same
initial chart and every old whole-map meaning.

`raw_exact`, `page3_exact`, `page4_exact`, `page5_exact` and
`endpoint5_exact` are proved by definitional equality. No unrelated later
chart, dimension-based identification or second initial-name assumption
is introduced. `SquareInput` supplies only the factor and actual product
data required by the existing square argument. Its whole d5 zero theorem
is derived rather than accepted as a field.

`Input.continuation` constructs the existing square-continuation input
from that bridge. Its incoming d5 source (7,130) is confirmed empty on
E2; quotient zero laws construct its empty E5 chart. `Input.same_input`
then proves a nonzero actual E6 representative of the exact caller input.

## Further complete target calculations

The d6 target (18,139) has complete E2 dimension3 and E3 dimension2.
At d3, the incoming source (15,137) has dimension1 and its recorded
staircase2909 differential maps onto e0. The other target generator
supports the recorded staircase3068 d3 into e2 of the complete
three-dimensional E3 at (21,141). Thus the complete E4 at (18,139) is zero.
`Targets.Stage2` constructs all three E3 charts from full E2 neighborhoods;
`Stage3` interprets those complete recorded d3 maps. Their complete
homology comparison constructs the zero target, which stays zero to E6.

The d7 target (19,140) has one E2 basis element whose d2 is nonzero.
Its complete E3 is zero, hence so is E7. The actual d6 and d7 from the
main class therefore vanish. Their incoming sources (6,129) and (5,128)
are empty already on E2. `LaterInput` uses these whole incoming and
outgoing facts and actual quotient laws to construct the same-input
nonzero E7 and E8 representatives. No named d6/d7 cycle premise is used.

## Use

```lean
example (i : Input previous product)
    (binding : initial.coordinates.equivalence input = Fact721PageCertificates.Second.target) :
    ResultValid S pages initial input 6 := by
  fact721_second_e6_cert using i named binding

example (later : LaterInput previous i)
    (binding : initial.coordinates.equivalence input = Fact721PageCertificates.Second.target) :
    ResultValid S pages initial input 8 := by
  fact721_second_e8_cert using later named binding
```

Both tactics check the requested page and exact input binding. Tests reject
zero inputs, using an E6 certificate for E8, and a corrupted incoming matrix
that would falsely make the d6 target zero. The raw named E2 vector differs
from the square representative by an earlier boundary; tests check equality
only after the complete quotient, as required by the square proof.

## Trust and reproduction

`generate.py` writes five complete earlier-target comparison certificates
and retains raw database rows and d3 provenance. Its C++ exporter is
untrusted; Lean imports and checks every comparison. Actual E2 coordinates,
recorded differential interpretations, factor/product meanings and actual
quotient zero/addition laws remain mathematical premises. Unknown later
events are not interpreted as zero. SHA256 is used for consistency only.

```text
python3 program/Fact721SecondE6/generate.py
python3 program/Fact721SecondE6/compile.py
python3 program/Fact721SecondE6/review.py
```

Seven modules compile serially. Every attempt is retained in `evidence/`,
and only the latest successful records are acceptance evidence. The
independent review replays the full earlier complexes, every pair of cycle
representatives, exact recorded d3 columns, source input trajectory and
empty incoming degrees. No admitted proof, custom axiom, native proof
evaluator or implicit C++ trust is used. The only permitted standard
axioms are `propext`, `Classical.choice` and `Quot.sound`.

The accepted run has seven warning-free modules, 42 standard-axiom reports
and five reports with no axioms. The finite replay checks five complete
comparisons, 25 cycle vectors, 281 quotient pairs, 19 d2 columns, three d3
columns, four main trace steps, three exact source comparisons, and three
empty incoming E2 degrees. `frozen-source.json` records the files submitted
for independent parent integration; historical failed attempts are retained
and are not acceptance evidence.
