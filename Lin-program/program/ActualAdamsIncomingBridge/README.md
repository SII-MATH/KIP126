# Actual Adams incoming-page bridge

`Basic.lean` builds the full incoming-source interface directly from actual
graded F2-linear Adams page data. It proves that `HitAt` is exactly
`PageBoundary`, derives the vanishing tail from the actual target filtration,
and assembles the conditional Fact 7.6(2) restriction to pages 6 or 12.

For page `r` and target `(s,t)`, `sourceDegree` is `(s-r,t-r+1)`. The source
carrier is the function type
`(r <= s) -> (S.element r (sourceDegree r d)).carrier`.
When `r <= s`, `sourceEquiv` identifies this type with the whole actual source
carrier. When `s < r`, the proof domain is empty and the source is a singleton.
Proof irrelevance ensures that no duplicated element tags occur. Every
nonnegative source degree mapping to `(s,t)` equals `sourceDegree`; the
`differential_image` proof uses that uniqueness in both directions. Zero is
always a boundary, including the case where no source degree exists.

The target degree for Fact 7.6(2) is `(14,139)`. `Conditions` retains actual
page2/page3 non-hit proofs, the full page4 complete-kernel route, the full page7
cycle/prefix route, and whole-map zero proofs at pages 5,8,9,10,11,13,14.
For all `r > 14`, source absence and map vanishing are derived from the actual
degree; no external tail assumption or empty database query is used.
The named target need only be nonzero at the queried page. Neither existence
of a page6/page12 hit nor outgoing permanence is concluded.

## Constructible semantic model

`Nonvacuity.lean` constructs `conditions : Conditions model target`.
The model has the genuine one-dimensional F2 group at `(14,139)` on every
page and actual zero F2 groups elsewhere, with all differential maps zero.
The named target is `1`, proved nonzero for every page; thus page2/page3
non-hit conditions hold. The page4 kernel/faithful-coordinate route and the
page7 two-stage surjective route are explicitly constructed on the actual
zero sources. In particular they are no longer impossible because of an
additional zero tag.

The example also constructs `CertifiedAdamsPages model` from its actual
cycle/boundary quotients and proves the zero-class compatibility law.
`realized_nonvacuity` packages the page identification, inhabited Conditions,
and nonzero target. This is an algebraic model of the interfaces; no
topological spectrum or Ext realization is asserted. The proposition-valued
metadata fields are not used as substitutes for its constructed homology
identification. The bridge theorem itself does not require those metadata
fields or assume local values automatically proved.

## Historical correction

The original tagged `Unit + Sigma` incoming type is suitable for an image
theorem, but applying a faithful map from that type to a zero quotient makes
the page4 route impossible. The original source, log, compiler record, and
compiled object are preserved under `history/tagged-vacuous-*`; their exact
fingerprints are retained. `ActualAdamsIncomingBridgeReview/Vacuity.lean`
and its direct records prove that the original Conditions was uninhabitable.
That counterproof belongs to the historical source and must not be rebuilt
against this corrected API. The earlier failed `.txt` prototype and failed
logs are also preserved as historical failures, not successful evidence.

## Verification and trust

Run serially from the repository root:

```sh
python3 program/ActualAdamsIncomingBridge/compile.py
python3 program/ActualAdamsIncomingBridge/review.py
```

Both current Lean leaves compile successfully; their 14 reported axiom
dependencies are limited to the standard `propext`, `Classical.choice`, and
`Quot.sound`. No admitted proof, custom axiom or native-decision oracle is
used. Source, log and object hashes identify build artifacts and do not prove
mathematical facts. The local Conditions still need mathematical proofs for
the intended Adams system before this theorem proves the paper's result.
