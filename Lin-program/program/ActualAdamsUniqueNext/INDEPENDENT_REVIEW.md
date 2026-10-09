# Independent Review: Next-Page Unique Nonzero Class

Reviewer: `/root/map_search_next`; implementation by `/root`.
The frozen `Basic` and `Fact764` leaves have no identified soundness findings.

`IsOnlyNonzero` refers to the actual next-page carrier: its distinguished
element differs from `S.zero`, and every actual page element is either that
zero or the distinguished element. `next_unique` first uses the cycle
condition from `ActualAdamsUniqueBridge.IsUnique`, so the arbitrary noncycle
branch of `advance` is irrelevant. The actual quotient-zero equivalence and
the named element's nonboundary proof establish its nonzeroness after
advancing. Every next-page element enters the dichotomy through `fromNext`
and the genuine right-inverse equation.

The additional `ZeroMeaning` premise is necessary. A bare Type bijection can
swap the two quotient classes while preserving cardinality2, sending the
named nonboundary class to actual zero. The existing cardinality result is
valid without this premise, while the new unique-nonzero result correctly
requires it. No equality between an arbitrary output and actual zero is
deduced merely from the number of classes.

The certificate reuses the previous complete actual-coordinate certificate,
including full incoming-source coverage, incoming-coordinate surjectivity,
faithful current/outgoing coordinates and all differential equations. It
adds a mathematical `ZeroMeaning` proof. Its executable part is the original
finite uniqueness checker, and the tactic applies the proved soundness
theorem with kernel-checked reduction. The Fact7.6(4) corollary supports both
allowed incoming branches; its tactic example uses the exact false-branch
wire after the supplied equality is eliminated.

The independent replay enumerates all F2 complexes with middle dimension3
and incoming/outgoing dimensions2, considers every full quotient having two
classes and every actual nonboundary representative, and checks all next
elements under a zero-preserving identification. For every such named case,
it also verifies that a zero-swapping bijection preserves cardinality while
invalidating the named nonzero conclusion. Two successful direct build
records match their frozen sources/logs, with four standard-only axiom
reports.

This result identifies the E5 representative of an already justified actual
E4 class. Linking that class to an intended E2 name still uses the separate
trace/product assembly. The supplied page/coordinate realizations and zero
compatibility remain mathematical obligations. No later permanence or
stable-homotopy convergence is asserted.

Run `python3 program/ActualAdamsUniqueNext/independent-review.py` from the
repository root.
