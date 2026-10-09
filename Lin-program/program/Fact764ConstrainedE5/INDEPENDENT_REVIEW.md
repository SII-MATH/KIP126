# Independent review of the constrained E5 quotient

No correctness findings in `Coordinates`, `Conclusion`, `Obstructions`,
or `Imported`.

The raw SQL E2 basis and staircase rows are separately checked. Every
source vector projects to `(x1,x0)`; every target vector projects to
`(x3,x2,x1)`. The target cycle condition is exactly `x0=x1`, and the older
quotient-coordinate permutation is valid on all such cycles. Basis3994
is the named raw monomial, whereas staircase3994 represents local0+local1.
The source E4 comparison retains the conditional row3564 input.

Independent enumeration of all 16 candidates leaves exactly `(1,1,1,b)`.
All 512 outgoing/incoming matrix pairs give exactly the recorded 20
complexes once the first incoming column is fixed. The two obstructions
leave indices 8/9/18/19. Only an additional actual named-cycle or full
outgoing-zero premise selects 8/18; indices9/19 are valid complexes in
which the named vector is not a cycle. Both selected branches satisfy
uniqueness for the entire cycle quotient.

`ProductMeaning.compatible` uses actual differential, factor-cycle,
known-product differential and Leibniz equations plus all four checked
product-column interpretations. `MapMeaning.compatible` uses actual map
columns, naturality, mapped-source zero and differential-zero equations.
Both require explicit reflection of actual zero into the finite boundary
image. These assumptions cannot be created by a log reason, sentinel,
generator name or hash. They also do not by themselves identify the
algebraic contexts as a common graded Adams realization.

The independent replay verifies full homotopy identities for four source
comparisons, all 20 branch comparisons and both exported comparisons,
including 1088 cycle-pair boundary equivalences. Two individual C++ runs
and a batch run reproduce the saved bytes exactly. Current direct build
evidence has four exit codes zero and 18 standard-only axiom reports.
The existing import regression also records two valid certificates and
eight rejected mutations with precise diagnostics.

Actual Adams realization, coordinate completeness, the differential
premises and later permanence remain obligations. This local result does
not claim a unique survivor across the full stem125 E5 family.
