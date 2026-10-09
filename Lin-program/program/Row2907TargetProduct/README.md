# Row2907 target-product detection

The whole E3 multiplication by the `(12,42)` factor has canonical
coordinate formula `(x,y) -> x[0] * y[0]` on the `(20,140)` target of
row2907 d4. If the row3136 d3 coefficient `a` is nonzero, every E3 cycle
at `(20,140)` has first coordinate zero. The product of every such cycle
with the factor is zero. Actual multiplicativity of the E3/E4 quotient
then makes the entire E4 product zero.

Leibniz would consequently make the known product at `(28,179)` have
zero d4. Its explicitly interpreted known nonzero d4 contradicts this.
`Actual.parameter_zero` therefore proves `a = false` from the supplied
actual meanings. Neither nonzero branch is silently removed because of a
staircase mismatch; both are ruled out by this additional product argument.

## Mathematical inputs

`Actual.TargetMeaning W r a` extends the original row2907 witness `W` with:

- The complete canonical E3 target coordinates and full incoming/outgoing d3 meaning.
- An all-element binding to the finite E2 homology quotient at `(20,140)`.
- The entire E3 factor-target product equation.
- A binding to the same factor chart and known-target chart already used by `W`.
- The actual product quotient transition and local zero law.

The witness `W` retains all original factor/source/product interpretations,
the named E3 representatives, complete d3 meanings, actual quotient laws,
and the known actual nonzero d4 at `(28,179)`. No E4 multiplication matrix,
zero E4 product, or desired row3136 parameter is an input.

`Finite.complete_quotient_action` is named
`Row2907TargetProduct.complete_quotient_action` in Lean. It computes the
entire product on both homology quotients, not only the named input.
`Actual.nonzero_branch_E4_all_zero` quantifies over every actual E4 pair.
It obtains actual E3 cycle representatives by quotient surjectivity and
uses the explicit product transition to prove its conclusion.

## Remaining branch and requests

The row2994 residual parameter `r` remains unselected. The two surviving
finite families are exactly the previous `a = false` cases. Their E4 target
dimensions are 2 for `r = false` and 1 for `r = true`. This package does not
yet select a complete d4 column in the two-dimensional target case.

For the residual branch, `Branches.residualTarget` constructs the actual
one-dimensional E4 target coordinates from the complete E3 comparison.
`Branches.residual_whole_d4` proves that the entire one-dimensional source
map has column `[true]`. Its tactic reuses the exact same-input semantics:

```lean
import Row2907TargetProduct.Tactic
open Row2907TargetProduct.Actual Row2907TargetProduct.Request
open Row2907PDeltaDetection.Branches

example (W : Witness S pages P) (T : TargetMeaning W true false) :
    RequestedValid W T [true,false] [true] := by
  row2907_target_cert using W with T
```

The input is explicitly the canonical E3 coordinate `[true,false]`, decoded
through the source swap to the same actual E3 representative used in `W`.
Its E4 representative is constructed by the actual quotient map. The
output is the actual d4 image in the constructed one-dimensional target.
This interface does not label the supplied E3 coordinate as original E2
input. Batches and four negative tactic examples are included. For exact
field diagnostics, use `Row2907PDeltaDetection.Request.diagnose`.

## Validation

All four Lean leaves compile with observed exit zero and stable source
and import hashes. Their 19 printed axiom reports permit only the standard
`propext`, `Classical.choice`, and `Quot.sound`. An earlier failed degree
rewrite attempt is retained in `evidence/` and is not accepted evidence.

```sh
python3 program/Row2907TargetProduct/compile.py
python3 program/Row2907TargetProduct/audit.py
python3 program/Row2907TargetProduct/freeze.py
```

The independent audit recomputes the full tensor product on all E2 cycle
pairs and the quotient action. It enumerates all finite branch target
cycles, actual carrier relabelings, complete quotient-product squares,
and possible d4 outputs against the explicit known nonzero product.
It also checks exact input/output rejection and ordered request batches.
The Python checks supplement the Lean proof; they are not logical axioms.

No raw NULL, source hash, C++ output, or scheduling marker is converted to
a theorem. The exclusion is conditional on actual mathematical meanings,
including the known actual product differential. The original sphere
and topological realization of those meanings remains outside this package.
