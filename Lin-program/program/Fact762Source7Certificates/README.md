# Fact 7.6(2), page7: full-source conditional prefix argument

This directory supplies a conditional all-vector page7 argument for the
source `(s,t)=(7,133)`. The full source can contain a nonzero class: the
conclusion is that its outgoing d7 is zero, not that the source space is zero.

Staircase row2632 is `[2632,7,133,"0",NULL,9982]`. The named source is E2
local coordinate0, basis ID2631, monomial `1,1,69,1,76,1`. Level9982 records
an external d18-prefix claim. Its mathematical meaning (zero differentials
before page18 and compatible named representatives) is not proved by
reading the number. In particular, the actual cycle, representative, and
d7-zero assertions used below are explicit hypotheses.

## Full finite and semantic argument

1. Three complete raw d2 matrices are exported by the existing C++ producer
   and imported/checkable with `page_comparison%` and `lin_cert using ()`.
   They concern `(7,133)`, `(2,129)`, `(1,128)` and have complete E3 quotient
   dimensions1,0,0 respectively. Both incoming and outgoing matrices are
   reconstructed from every basis row. No NULL is interpreted as zero.
2. `Finite.source_all_classes` proves that every full source E3 quotient
   class is zero or the named class, and `source_named_nonzero` distinguishes
   those classes. `Semantics.span_of_full_E3_realization` transports this
   statement through an explicitly surjective full E3 realization.
3. `Propagation.span_through_seven` uses actual page transitions: every
   next-page class comes from a current cycle; zero goes to zero; and the
   named class is a cycle and has the stated next-page representative on
   pages3..6. It proves the full E7 page is still spanned by zero and the
   named element. It does not assume that selected staircase rows exhaust
   the actual page, or that the named class stays nonzero.
4. `Semantics.page7_incoming_vanishes` combines that full E7 span with the
   explicit row2632 d7-zero prefix, full E7 source realization and zero
   preservation. Its conclusion is precisely
   `VanishesAt (sys.differential 7) (sys.zeroTarget 7)`, the page7 obligation
   used by `Fact762IncomingCertificates.only_six_or_twelve`.

The direct all-source proof does not need the unknown target dimensions or
an arbitrary value for row2574. This is possible because propagation of an
at-most-one-dimensional span needs only actual cycle-to-page surjectivity.

## Complete E6/E7 quotient coordinates

The d5 incoming source is `(2,129)`; the d6 incoming source is `(1,128)`.
Their full raw E3 quotients are zero. Theorems
`incoming5_source_zero_at_five` and `incoming6_source_zero_at_six` transport
these finite zeros through explicit faithful coordinates and actual page
transitions to the required pages.

`identityComparison_complete k` proves a complete kernel/image comparison
for the full matrices `zeroMatrix k 1` and `zeroMatrix 1 0`, for arbitrary
target dimension `k`. Inclusion and projection are identities, and both
homotopies are zero. `comparison_from_named_prefix` accepts any full
`Matrix k 1` whose named value is zero and derives the same complete
comparison: one column is every column. `E6_equivalence` and
`E7_equivalence` expose both inverse maps between these entire finite
homology quotients and Vec1.

Applying those E6/E7 models to actual pages requires full coordinate
interpretations: a one-dimensional current source, the proved zero
incoming source, the actual complete outgoing target dimension, and the
row2632 d5/d6-zero prefix. No actual E5/E6 target basis or guessed dimension
is supplied here. The universal comparison theorem can be used once such
coordinates are supplied; the independent full-source d7 theorem above
does not require those target coordinates.

## Files and checks

- `Finite.lean`: full source E3 span/nonzero, full incoming-source zero
  quotients, arbitrary-dimension complete comparisons.
- `Propagation.lean`: full-page span propagation and all-vector d7 proof.
- `Semantics.lean`: actual source realization/transition hypotheses,
  IncomingSystem bridge and complete E6/E7 coordinate equivalences.
- `Inputs.lean`: imported C++ certificates, kernel-checked tactic proofs,
  full matrix matches to the finite semantic inputs.
- `prepare.py`, `source.json`, `source-d2.json`, `incoming5.json`,
  `incoming6.json`: raw provenance and deterministic C++ output.
- `review.py`, `review.json`: separate raw-column and full-comparison replay;
  33 finite target-dimension checks supplement the Lean universal theorem.
- `compile.py`, `compile-audit.json`, module logs, `assert_current.py`:
  sequential build evidence and current source/log/olean consistency.

From the repository root:

```sh
python3 program/Fact762Source7Certificates/prepare.py
python3 program/Fact762Source7Certificates/review.py
python3 program/Fact762Source7Certificates/compile.py
python3 program/Fact762Source7Certificates/assert_current.py
```

All four Lean4.32.2 modules compile. The 15 printed axiom reports use only
standard `propext`, `Classical.choice`, `Quot.sound`, or no axioms.
No `sorry`, `native_decide`, custom axiom or trust in C++ output is used.
Hashes record consistency, not mathematical correctness. The accepted
95-event snapshot and prior modules are unchanged.

This supplies a precise conditional page7 route. It does not prove the
external row2632 prefix, instantiate the actual topological pages, settle
page4, establish high-page target nonzeroness, or finish Fact7.6(2).
