# Independent Review: Actual Adams Filtration

Reviewer: `/root/map_search_next`; implementation by `/root`.
The three frozen leaves `Basic`, `Actual`, and `Examples` have no identified
soundness findings. The distinction between a canonical construction and an
identification with the paper's independently defined objects is essential.

## What is constructed and what is proved

`Cycles s n x` is defined using every outgoing differential before index `n`.
The boundary relation on these initial elements is equality of their actual
`System.at` representatives at index `n`. Consequently local outgoing-cycle
compatibility, commuting advance, and injectivity of the quotient map follow
from the construction. These are not independent discoveries about an
already specified paper filtration.

Surjectivity is a substantive additional statement. A general `System` only
asserts a zero-versus-boundary law and can have later elements that are not
images of any cycle. `representative` uses `CycleSurjective` at each earlier
page to construct an initial E2 ancestor satisfying **all** prior cycle
conditions. This yields surjectivity of the full canonical quotient.

For the actual bridge, `actual_cycle_surjective` obtains an actual quotient
class from `fromNext`, eliminates that quotient into a real cycle
representative, and applies `rightInverse` and `advance_on_cycle`. No finite
table completeness or selected-row assertion supplies this step. Thus the
separate global `Realization` premise is replaced by a constructed canonical
realization, and its needed local surjectivity is discharged from the full
`CertifiedAdamsPages` homology identification already supplied for the bridge.

`traceFromCycles` and `cycles_from_trace` give both directions between this
finite cycle condition and `ManualInputObligations.Endpoint`. The latter uses
the independently proved `trace_at` identity to connect each actual trace
representative with the canonical recursion. An endpoint can be zero after
an incoming boundary; no nonzeroness is added.

## Indexing and strong permanence

System index `n` is Adams page `n+2`. `Z 0` is all E2 elements. `Z n` asks for
outgoing zero on pages 2 through `n+1`, exactly the `n` steps needed for an
endpoint on page `n+2`. The canonical boundary at `n` is the prior-cycle
subset whose page-`n+2` representative is zero. Incoming image at index `n`
therefore contributes to boundary index `n+1`.

`permanent_iff` invokes the previously reviewed strong theorem. It uses the
actual homology-zero law and incoming-cycle laws to relate cumulative zero
fibers to incoming boundaries. The initial zero fiber is treated separately
by that theorem, so excluding `BInfinity` also excludes the initial zero.
The condition `ZInfinity` alone allows incoming death.

## Regression and build evidence

`Examples` gives both a stable nonzero model and a complete quotient model in
which an initially nonzero class is later a boundary. It also proves that
the older Boolean incoming-identity/constant-zero-advance model satisfies
the weak `System` law but fails `CycleSurjective` because its later `true`
element has no cycle preimage.

`independent-review.py` independently constructs all small complete linear
incoming/outgoing complexes, all zero-preserving identifications of their
full homology quotients, and arbitrary two-transition towers followed by
stable tails. It checks full E2 ancestor coverage, exact quotient fibers,
local outgoing and boundary conditions, trace existence and values, and both
directions of strong permanence. It separately replays the phantom-element
counterexample. The finite replay supplements the general Lean proofs.

The three successful direct build records match their sources and logs.
Fourteen printed reports contain only standard Lean axioms. Historical
failure logs are not success evidence, and subsequent integrated builds may
replace the direct `.olean` outputs.

## Remaining mathematical obligations

The caller still supplies the actual graded sequence, full differential
maps, certified actual homology identifications, and `ZeroMeaning`. This
construction does not obtain these data from raw topology or SQL rows. The
canonical `Z` subsets and equality-fiber relations have not been identified
with independently defined additive `Z_r` and `B_r` subgroups from the paper.
Additive compatibility, named Ext-class interpretation, spectrum realization,
and convergence remain separate. The result is a useful proved canonical
construction with fewer independent compatibility premises, not a completed
formalization of those additional identifications.

Run from the repository root:
`python3 program/ActualAdamsFiltration/independent-review.py`.
