# Independent Review: Generalized Leibniz Scope and Representative Square

Reviewer: `/root/map_search_next`; implementation and source audit by
`/root/source_rules_next`. No soundness findings in the frozen
`RepresentativeSquare.lean` or in the stated distinction between its
algebraic result and the paper's unformalized Theorem6.1.

## Source and semantic mapping

The review independently streams 25 selected HTML subtrees from the pinned
v2 source, replacing MathML by original TeX alttext without using the
producer's DOM, and matches every selected text exactly. The additional
proof excerpt preserves the six comparison references and lambda exponents
used by Theorem6.1. The version and original HTML hash match the preserved
source; no new version or external theorem is substituted.

Notation3.10 defines `Z_r` in the initial E2 group by vanishing outgoing
d2 through dr, with `BInfinity` contained in `ZInfinity`. In particular,
Theorem6.1's `xInfinity` is itself the target of a differential and may be
an incoming boundary. Neither it nor `yInfinity` is assumed to be a nonzero
permanent class. Classical differential values are boundary cosets, not
literal equality of raw basis representatives.

Definition2.7 concerns other map-ESS extensions from higher source
filtration with nonzero target in a specified filtration interval.
Definition4.14 concerns essential Adams differentials with both `a` and `b`
restrictions; applying it on E_n replaces its parameter `n` by `n-1`, giving
`0<a<=n-2` and `0<=b<=r-n`. Definition5.9 additionally changes the extension
page and requires its target in an exact Z subset outside an exact B subset.
These conditions are not interchangeable with each other or with
`Reference/FilteredExtensions`' two-summand leading-term cancellation.

The implementation map in the README accurately distinguishes ordinary
same-page Leibniz, multiplicative page transitions, affine exclusions,
short-exact-sequence connecting maps, and the actual synthetic extension
spectral-sequence machinery. The latter, including the no-crossing
comparison theorems, is not supplied by the earlier similarly named types.

## New algebraic result

`SameLeading` is equality modulo an additive subgroup. `Extension` is an
existential representative in one specified source coset with image in one
specified target coset. It has no built-in Adams filtration, essentiality,
extension length, synthetic weight, or differential page.

`HigherMapsInto` quantifies over every source correction in the subgroup.
Given an actual extension witness, `representative_stability_iff` proves
this structural map condition equivalent to stability of every representative
of that source coset. The reverse direction compares the chosen witness with
its translate by each higher correction; it does not assume the desired
global map property.

`square_transfer` constructs the fourth witness. When `f` is stable it uses
the representative from the `p` extension; when `p` is stable it uses the
representative from the `f` extension. The commuting square and final-map
stability then connect this choice to the third witness. The conclusion is
not hidden in an input field. The explicit counterexample correctly shows
that removing final-map stability can invalidate the transfer.

This is a sufficient representative-level algebraic component of the
unbounded no-crossing pattern in Corollary2.15. It is not the range-sensitive
Theorem2.12 and does not identify `HigherMapsInto` with Definitions2.7 or5.9.
Nor does it prove the synthetic/classical translations needed for Theorem6.1.

## Independent verification and remaining work

The independent regression uses Z/4 so subtraction and signs are exercised
beyond the implementation author's F2 examples. It checks 1,824,768 complete
commuting-square/coset cases, including 370,304 valid transfers and 51,264
counterexamples when final stability is absent. Both alternatives of the
first stability disjunction occur independently, and the script checks
`representative_stability_iff` for every witnessed coset pair. It also
verifies the generalized-rule index and crossing-page arithmetic.

The successful direct source/log record matches the frozen Lean leaf;
three printed dependency reports contain only standard Lean axioms.
Paper citations and matching text are source evidence, not Lean proofs.

The missing work remains an actual filtered homotopy/map-ESS construction,
essentiality and representative detection, synthetic lambda truncations and
their connecting square, the stated classical/synthetic Z/B double quotients,
and exact crossing/differential comparison theorems. Example6.8 is preserved
as the paper's own evidence that its final no-crossing condition is necessary;
the ZMod2 counterexample is explicitly a separate algebraic model.

Run `python3 program/GeneralizedLeibnizAudit/independent-review.py` from the
repository root.
