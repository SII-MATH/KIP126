# Complete row2907 d4 candidates

This package derives all possible columns of the actual d4 from the entire
one-dimensional source at `(16,137)` to the two-dimensional target at
`(20,140)` in the `r=false, a=false` branch. The columns are exactly
`[true,false]` and `[true,true]` in canonical target coordinates.
The existing residual branch `r=true, a=false` has the unique column `[true]`.

`Actual.whole_E4_action` derives the full target product by lifting arbitrary
actual E4 inputs to E3 cycles and applying the complete multiplicative
quotient square. `product_d4_factorization` uses Leibniz and the previously
derived zero factor differential. The known nonzero product differential
then forces the first target coordinate to be one. Zero preservation and
the complete one-dimensional source determine the whole linear map.
The second target coefficient remains unselected.

The actual inputs are exactly `Row2907TargetProduct.Actual.TargetMeaning`
and its witness, with complete incoming/outgoing E3 meanings, product
meanings, the same named inputs, local quotient laws, and the distinct
known actual product differential. No desired d4 column is an input.

```lean
import Row2907D4Candidates.Tactic
open Row2907D4Candidates.Request

example (W : Row2907PDeltaDetection.Branches.Witness S pages P)
    (T : Row2907TargetProduct.Actual.TargetMeaning W false false) :
    RequestedValid W T [true,false] [[true,false],[true,true]] := by
  row2907_candidates_cert using W with T
```

The caller input is the canonical E3 vector, decoded through the original
source chart to the same actual E3 class before its E4 quotient. The result
asserts actual differential membership in both possible outputs; it does
not prove either output alone. Single requests, batches and field diagnostics
are available. Wrong inputs, missing candidates and length aliases are
rejected by four kernel negative examples.

The historical staircase target chart reverses the canonical two-dimensional
chart. A family exporter must therefore use `[b,true]`, not `[true,b]`,
after proving the full quotient coordinate bridge. This package does not
identify the charts just because they have equal dimensions.

All work here is conditional actual algebra. Original topology-to-Adams
identifications, known differential source proofs and the remaining branch
selection are not supplied by SQL, C++, hashes or this certificate.

Run `python3 program/Row2907D4Candidates/compile.py` for serial direct builds.
Failed development attempts remain in `evidence/`; only exit-zero stable
compiles with standard axiom reports are accepted. The complete root build
and exhaustive declaration audit are recorded separately.
