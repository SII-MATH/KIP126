# Row2907 nonzero d4 from the P-Delta product

The named sphere E3 class is raw E2 basis2907, monomial `8,1,261,1`,
staircase row2907 base1 at (16,137). Its differential is raw NULL/9996.
Multiplication by basis181, generator31 at (12,42), sends this class to
E2 basis6935, staircase row6934 base1 at (28,179). The latter has a recorded
nonzero d4 to E2 basis7281, staircase row7280 base1 at (32,182).
The actual meaning of that distinct known differential is explicit.

`Actual.row2907_d4_nonzero` derives the requested source differential is
nonzero from the known product differential, the actual Leibniz rule,
full E3 product meanings and a multiplicative quotient transition. The
source E4 element is the quotient of the same named E3 input. No desired
source differential value is a field of the certificate.

## Complete finite inputs

- Eighteen complete d2/d3 homology comparisons, including every incoming
  matrix. Four complete actual d3 meanings construct the factor, source,
  product and known-target E4 coordinate systems.
- Nine full d2 basis-reconstruction certificates cover 26 staircase columns
  beyond the raw coefficient d2 window. Their complete basis values remain
  actual mathematical inputs; levels and NULL cells supply no equations.
- Six polynomial product columns use fifteen relation reductions. Source
  multiplication is `[0,e1,0]`; target multiplication is `[e1,0,0]` in the
  corresponding raw bases. Both quotient product tensors are checked.
- Semantics proves the actual polynomial action on every vector under
  interpreted relations. D2Links proves arbitrary additive-map reconstruction
  and identifies the reconstructed full matrices with the comparisons.

The source's canonical E3 e0 becomes staircase e1 by an explicit full
coordinate swap. The source E4 coordinate is constructed from its complete
quotient. Equality of dimensions alone does not identify the charts.

## Results, requests and diagnostics

`Branches.zero_target_impossible` excludes an actual zero-dimensional d4
target. `residual_nonzero_excluded` applies only when the residual/nonzero
branch's full actual target meaning is supplied. It does not exclude the
other one-dimensional branch merely by inspecting finite dimensions.
For a complete actual one-dimensional target, `one_target_whole_column`
determines the entire d4 matrix as `[true]`.

```lean
import Row2907PDeltaDetection.Tactic
open Row2907PDeltaDetection.Request

example (W : Row2907PDeltaDetection.Branches.Witness S pages P)
    (target : Row3151ActualTransport.Coordinates S 4
      Row2907PDeltaDetection.Descent.targetDegree 1) :
    RequestedValid W target [true,false] [true] := by
  row2907_d4_cert using W with target
```

The input here is explicitly a canonical E3 vector, not an E2 input. The
result binds it to the same named actual E3 element, its constructed E4
quotient, and the requested nonzero differential output. Single and batch
requests are supported; wrong input, output or lengths fail. `Request.diagnose`
reports `source.length`, `source`, `output.length`, or `output`. Imported
matrix/polynomial files use the existing strict canonical importers and
`lin_cert` kernel proofs. Actual mathematical meanings are supplied separately.

## Reproduction and trust

Run `search.py`, `products.py`, `package_semantics.py`, `compile.py`,
`review.py`, `reproduce.py` and `freeze.py` in this directory from the root.
The source d2 helper input is reproduced by reproduce.py. All output lives
under program. The untrusted C++ producers are page-transition-export,
page-product-export and the d2-basis-export helper; every result is rechecked
by Lean. Hashes identify bytes and do not prove mathematics.

The raw review checks 261 quotient pairs, 53 cycles, six product columns,
fifteen relation reductions and all nine basis changes. Direct compiler
records retain actual exits and source/object/input hashes. Failed development
logs are retained separately; only successful logs without a proof-hole axiom
count as proof evidence. Standard foundational axioms only are allowed.

Actual E2/staircase meanings, complete incoming and outgoing d3 equations,
faithful product interpretations, quotient laws and the distinct known
nonzero product d4 remain explicit premises. This package does not construct
the sphere Adams sequence, prove all-page permanence or finish step four.
