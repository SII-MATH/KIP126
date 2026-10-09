# Two Ctheta4 continuations

The degree-correct Ctheta4 top-cell transport proves the whole row2994 d4
zero at sphere degree `(17,138)`, under its explicit finite source and
naturality meanings. Adding this rule to each retained row2907 r=0
candidate produces four complete comparisons:

- `(17,138), d4`: complete incoming and outgoing zero maps, one-dimensional homology;
- `(29,147), d2` and `(26,145), d3`: newly reached neighboring comparisons;
- `(22,142), d4`: the other newly reached complete neighbor.

Both full families contain 1369 comparisons, preserving all 1365 prior
entries exactly. Their named finite E2-to-E10 trajectory remains unchanged
and bound to exact object/page/degree keys. The named d10 comparison is
still missing: the next unresolved row is row2684 d5 at `(12,134)` with
one-dimensional target. This package does not claim E11 or E12.

## Actual meanings

`Selection.ResidualInput` combines complete Ctheta4 source d3 meanings,
whole map naturality, and the full actual incoming matrix parameter r.
Its source d3 cycle is derived from the existing finite source comparison.
`Selection.residual_zero` proves r=false. Combined with the separate
actual target-product theorem excluding a=true, `only_two_families`
leaves the two b candidates; b is not chosen.

`Incoming.Input` packages the existing row2773 E3 products, complete source
homology and naming, eta-cycle derivation and actual product quotient
transitions. `Incoming.whole_d4_zero` extends the previously proved named
d4 zero to the whole one-dimensional E4 source. No desired incoming d4
matrix is an input field.

`Actual.Input` takes the Ctheta4 transport certificate and those incoming
rule premises on the same sphere S and same target pages. It also takes
full outgoing-target coordinates and the local source quotient addition
and zero laws. `whole_incoming` and `whole_outgoing` derive both complete
matrix equations. `Input.whole` assembles the full actual d4 comparison;
`Input.page5` constructs E5 coordinates directly from its quotient.

`same_input_E5` proves that the exact requested E2 sphere input, named by
`[true,true,true,false]`, traces to a nonzero E5 element. The E3/E4 source
is the Ctheta4 image of its original E2 element; the E5 endpoint is its
actual quotient. Its nonzero value follows from the full incoming zero
and identity projection, not merely from an outgoing cycle equation.

The Ctheta4 source's named d4 zero remains explicit in the imported
transport certificate. Its degree shift is 31; the database metadata's
30 is rejected by the earlier degree checks. Whole row2773 product
meanings, full homology interpretations, naturality and quotient laws
remain mathematical inputs, not consequences of raw NULL records.

## Requests and tactics

```lean
import Fact713Ctheta4Continuation.Request
open Fact713Ctheta4Continuation
open Fact713Row3143Continuation.Constructed

example (b : Bool) (prefix : Prefix10 S pages) :
    RequestedValid b prefix ActualTraceRequestsE10.e10 := by
  fact713_ctheta4_cert using prefix

example (D : Actual.Input C S product) (input : (S.element 2 Actual.degree).carrier)
    (binding : D.ctheta.transport.stage.previous.target.equivalence input =
      Fact713Ctheta4Transport.Comparison.sphere2) : SourceValid D input := by
  fact713_ctheta4_source_cert using D
```

The E10 interface supports single imported requests and batches using
version 1, claim `fact-7.13:E10`, source `[true,true]`, output `[true]`.
It still requires the same-S, same-pages complete `Prefix10`; finite
family coherence does not establish all actual neighboring meanings.
Use `ActualTraceRequests.diagnose` or `diagnoseBatch` with
`ActualTraceRequestsE10.spec` for request field/record locations, and
`IndexedFamilyCertificates.diagnoseFamily` for malformed full families.
Negative examples reject wrong source and output vectors. Generic closed
check tactics are not advertised for a free actual prefix.

## Reproduction and scope

```sh
python3 program/Fact713Ctheta4Continuation/generate.py
python3 program/Fact713Ctheta4Continuation/package.py
python3 program/Fact713Ctheta4Continuation/audit.py
python3 program/Fact713Ctheta4Continuation/reproduce.py
python3 program/Fact713Ctheta4Continuation/compile.py
python3 program/Fact713Ctheta4Continuation/freeze.py
```

Stable version-1 wire JSON imports full comparisons and is rechecked in
Lean. Canonical complete indexed family JSON supports batch checking.
The branch reports retain every previous record, raw NULL and theorem
provenance. Generation recomputes the entire dependency graph; it makes
no implicit unknown-to-zero conversion. The independent audit checks
all matrices, chain homotopies, cycle-pair quotient criteria, adjacent
and consecutive degrees/pages, and all family pairs. Small relabelled
actual carrier tests verify the nonzero same-input E4/E5 endpoint and
reject wrong E2 bindings. The universal proof is Lean's kernel proof.

All observed compile attempts and input hashes are retained, including
parent-object unavailability during root registration builds. Successful
stable-input attempts alone are accepted. Byte reproduction and hashes
establish reproducibility, never mathematical truth. This is a conditional
finite certificate and actual transport layer; it does not build the
Adams sequence from topology or prove the unconditional Kervaire result.
Proofs use no proof holes, custom axioms, native evaluator or implicit C++
trust; only standard `propext`, `Classical.choice` and `Quot.sound` are
permitted in the final axiom audit.
