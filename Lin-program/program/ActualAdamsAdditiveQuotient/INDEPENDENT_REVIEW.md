# Independent Review: Literal Additive Quotient

Reviewer: `/root/map_search_next`; implementation by `/root`.
The frozen `Basic.lean` has no identified soundness findings.

`boundaries` is the comap of the actual additive subgroup `B` along the
subgroup inclusion `Z -> E2`. It is therefore a subgroup of `Z`, exactly the
ambient type needed by the literal quotient `Z / boundaries`. The earlier
proof `B_le_Z` explains why this comap represents all of `B`, not an
unrelated subgroup. `boundaries_eq_kernel` identifies it extensionally with
the kernel of the previously constructed additive representative map.

`equivalence` first uses equality of these subgroups to identify the two
literal quotient types, then applies the additive first isomorphism theorem.
Its supplied `image_surjective` proof reaches every actual element on Adams
page `n+2`, so the codomain is the full page rather than just an image
subgroup. That surjectivity comes from the actual homology identifications,
as reviewed in `ActualAdamsFiltration`, not from a finite list of classes.

`equivalence_mk` reduces to the representative map on the actual quotient
constructor. `equivalence_add` is the additive equivalence's proved addition
law. This closes the earlier gap between an abstract boundary setoid with
transported addition and the ordinary additive subgroup quotient notation.

The independent script enumerates every nested pair of additive subgroups
inside F2^3, checking all quotient fibers, representative values and quotient
addition pairs. The successful direct build record matches the source and
log; all four printed reports use standard Lean axioms only.

The construction still requires the intended actual sequence, its full
homology identifications, and `AddMeaning`. These are stronger mathematical
inputs than a bare Type equivalence. It does not identify this canonical
filtration with separately constructed paper objects, interpret named Ext
classes from topology, or prove convergence.

Run `python3 program/ActualAdamsAdditiveQuotient/independent-review.py` from
the repository root.
