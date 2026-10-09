# Initial-page cycle filtration

This directory constructs the cycle filtration from the actual page system,
instead of taking a full quotient realization as a further premise.

For a fixed initial element `x`, `Cycles s n x` means that the differentials
at indices `k < n` vanish on its successive representatives. System index
`k` denotes Adams page `k+2`; thus `n=0` imposes no condition and `n=1`
imposes the d2-cycle condition. These are the paper's `Z_(n+1)` subsets.
Two such representatives are equivalent when their images on page `n+2`
coincide. `boundary_iff_zero` identifies the zero equivalence class with
the vanishing of that actual image.

`CycleSurjective` requires that every next-page element is represented by
a current cycle. `representative` proves this inductively for every page
using an initial E2 representative; `realization` then constructs the
entire quotient equivalence. It is not assumed. Differential zero and
incoming-cycle laws also give the cumulative boundary results imported
from `OutgoingCycleFiltrationCertificates`.

`Actual.lean` derives `CycleSurjective` from `CertifiedAdamsPages` and
constructs actual quotient traces from the partial cycle condition.
`cycles_iff_endpoint` proves the converse as well. `actual_permanent_iff`
identifies strong all-page nonboundary survival with `ZInfinity` membership
and exclusion from `BInfinity`. The outgoing-only intersection condition
still permits an incoming boundary.

The explicit inputs remain an actual graded Adams differential, actual
next-page homology identifications, and their zero compatibility. This
does not construct those data from the 49 spectra, identify a caller's
named element with a paper class, or prove convergence. The historical
uninterpreted `e2IsExt` and `nextPageIsHomology` fields are not used.

`Examples.lean` covers a stable nonzero class, a real quotient with incoming
death, and a counterexample showing that `System.homology_zero` alone
does not imply whole-page surjectivity. No JSON can supply the mathematical
inputs as proofs. Existing outgoing/permanence certificate tactics apply
after these constructions; this directory adds no new wire schema.

Validation: `python3 program/ActualAdamsFiltration/compile.py` compiles the
three new leaves with one Lean worker. Successful logs and hashes are
stored separately from the failed development logs. The three leaves
print 14 standard-axiom reports; the root build and exhaustive audit are
recorded independently in `program/tests/`.
