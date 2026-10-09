# Independent review of the repaired actual incoming bridge

The earlier vacuity finding is resolved. No new correctness findings in the
frozen `Basic.lean` and `Nonvacuity.lean`. Current source/log hashes match two
successful direct compiles and 14 standard-only axiom reports. The independent
review changes no Lean source and runs no global build. Current object hashes
are recorded in `independent-review.json`.

The original `Unit` plus dependent source sum had distinct zero encodings.
Applying the page4 route's faithful map into a singleton quotient made its
Conditions impossible. The replacement source is a function on the proof of
`r <= target.filtration`. At a legal source degree, proof irrelevance makes
evaluation an equivalence with the entire actual source group. Above the
filtration, the proof domain is empty, so there is exactly one function and no
extra zero tag. Thus faithful page4 coordinates and surjective page7 routes
can now apply to actual zero sources without a cardinality contradiction.

`differential_image` proves equality with the complete actual `PageBoundary`
predicate. Every legal source is the specified degree by injectivity of the
Adams target formula; no incoming source is discarded. Zero is included even
above the filtration. `tail_zero` follows from source absence. The page split
retains only 6/12, while every other page at least 2 is covered by explicit
conditions or the proved tail. Nonzeroness is required for the queried target.

The nonvacuity module constructs a constant algebraic page family with F2 at
(14,139), zero groups elsewhere, and zero differentials. Its target is the
proved nonzero element 1. It explicitly constructs the full page4 route,
page7 route, and `conditions`; existence is not assumed. It additionally
constructs `CertifiedAdamsPages` from the genuine cycle/boundary quotients and
proves zero compatibility. Thus proposition-valued metadata is not being used
as a substitute for homology semantics in the example. The classification
theorem itself only needs actual graded differential data and its Conditions.

The independent replay checks 82,533 degree cases, 689 full linear map models,
5,054 complete image-membership comparisons, and the distinction between one
actual zero and two old tagged zeros. It checks the entire finite page partition,
987 tail pages, and 1,002 pages of the nonzero-target model. These finite checks
support the review; the general results and constructed nonvacuity are Lean
proofs.

No actual sphere, Ext realization, named paper-class identification, existence
of a hit on page6/12, or outgoing permanence is asserted. Page2/3 no-hit,
page4/7 route, and remaining finite map-zero assumptions still need proofs for
the intended mathematical object. The historical vacuity counterproof and
artifacts target the archived old source; they must not be mistaken for current
build evidence. No admitted proof, custom axiom, native evaluator, or implicit
C++ trust is introduced.

```sh
python3 program/ActualAdamsIncomingBridge/independent-review.py
```
