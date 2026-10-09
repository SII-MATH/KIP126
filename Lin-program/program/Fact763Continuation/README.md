# Fact 7.6(3): same-input nonzero E6

This package extends the earlier `Fact763PageCertificates` d2 quotient to
a nonzero actual E6 representative of the same original named E2 input,
under explicit complete coordinate, differential, product and quotient
meanings. It does not prove permanence.

The class is `h0^2 x124,8`, raw sphere basis2694/local4 at `(10,134)`.
The corresponding staircase record is2693/base4; raw basis2693 is a
different vector. The d5 zero on this named class comes from the proved
`Row2693D5Search.Actual.Input.named_d5_zero`, using the h1 product with
the main Fact7.13 class and the correction annihilator. It is not supplied
as a new hypothesis here.

## Exact original input and quotient bridge

The old Fact763 contraction and the Row2693 contraction use the same
complete d2 complex but different E3 quotient bases. `Bridge.same_complex`
checks both complete matrices. `Bridge.oldMeaning` interprets the old
complex in the very same initial E2 chart used by the product calculation.
`Bridge.actual_change3` proves the entire actual quotient-coordinate
conversion, with column bitmasks `[9,6,4,8]`; it is an invertible
four-dimensional map, not an equality inferred from dimension alone.
`named_old_page3` binds the same actual endpoint to the old named quotient
coordinate, and `same_raw` checks the exact E2 vector.

The E2 polynomial meaning remains the existing
`Fact763PageCertificates.named_expression_evaluation`: arbitrary
characteristic-two evaluations satisfying the imported relations give
the intended expression. Actual Ext basis interpretations remain premises.

## Complete d5 and E6 construction

The source E5 is two-dimensional. Its full d5 has columns `[0,1]` in the
complete one-dimensional target chart. The first zero column is derived
from the product theorem. Only the independently stored nonzero other
column, staircase2694/base3/d5 raw target1, is supplied as a differential
interpretation. Source additivity determines the full map, including the
sum of the two basis vectors. No target additivity premise is needed:
the first actual differential is zero, so the sum has the second image.

The complete incoming d5 source is `(5,130)`. It has one E2 basis element
with nonzero d2; its full E3 quotient is zero. `Actual.Incoming` constructs
the E3 chart and propagates whole-space emptiness to E5 using actual
quotient identifications and explicit zero laws. It does not assume a
selected list of absent incoming differentials.

`Input.whole` assembles all outgoing and incoming coordinates, and
`Input.page6` constructs the actual full homology quotient. `coordinate6`
and `nonzero6` prove the named endpoint is nonzero. `same_input_E6` uses
the exact original E2 binding and the inherited trace, so there is no
independent later-name or nonboundary assumption.

## Use and diagnostics

```lean
import Fact763Continuation.Tactic
open Fact763Continuation

example (D : Actual.Input S pages product)
    (input : (S.element 2 Actual.degree).carrier)
    (binding : D.calculation.stage2.product.equivalence input =
      Fact763PageCertificates.target) : ResultValid D input 6 := by
  fact763_cert using D named binding
```

`ResultValid` includes the exact input name, a same-input trace and a
nonzero endpoint. The tactic checks the predicate shape and Lean checks
the requested page and binding. Examples reject zero input and a request
for page7. A corrupted incoming matrix is rejected by `checkWire`.
The new `wire/incoming2.json` and `wire/source5.json` are version-1 full
comparison certificates imported with `page_comparison%`; parser and
checker diagnostics use the existing complete-comparison infrastructure.

## Reproduction and trust

```sh
python3 program/Fact763Continuation/generate.py
python3 program/Fact763Continuation/audit.py
python3 program/Fact763Continuation/reproduce.py
python3 program/Fact763Continuation/compile.py
python3 program/Fact763Continuation/freeze.py
```

The independent audit checks ten complete comparisons (including repeated
checks where used by different bridges), 3,685 cycle pairs, all 16
coordinate-equivalence values, all 32 original-vector quotient bridges,
four same-input transitions, four possible complete d5 matrices, 96
relabelled E5/E6 models and 384 request bindings. It checks the complete
incoming d2 matrix against read-only SQLite and replays the known last
column through all three target quotients.

Every observed compile attempt is retained, including an initially
missing import and two coordinate/type proof failures. The final four
modules compile successfully; only accepted stable-input records enter
the freeze manifest. Reproduction and hashes establish consistency, not
mathematical correctness. No proof holes, custom axioms, native evaluator
or implicit C++ trust is used. Only `propext`, `Classical.choice` and
`Quot.sound` are allowed by the axiom audit. Actual realization from the
original topological objects and E-infinity permanence remain unproved.
