# Independent Review: Constrained Whole Stem 125 E5

Reviewer: `/root/map_search_next`; implementation by
`/root/certificate_pipeline_next`. The frozen `Basic`, `Whole`, and
`Constraints` leaves have no identified soundness findings.

The new choice space has exactly 48 elements. The embedding preserves the
filtration9, 14 and 15 choices and maps the Boolean to the existing
filtration25 index 8 or 18. Independent enumeration checks all 480 original
choices and all 320 candidate/filtration25 branch pairs: the two obstruction
conditions and raw cycle condition allow branches 8/9/18/19, while the named
cycle condition leaves exactly 8/18. Without that named cycle, the outgoing
`[false,true,true]` counterexamples at 9/19 remain. The Lean selection theorem
proves equality to the **same original** `Product.Choice`, not merely equality
of dimensions or existence of some unrelated smaller-dimensional branch.

The independent script checks 42 full comparisons, covering the thirteen
fixed centers and all four variable branch families, with 846 cycle-pair
quotient identities. It separately confirms the retained branch matrices
equal the previously imported Fact7.6(4) certificates. The fixed centers
contribute dimension2 and each retained filtration25 branch contributes1.
The total dimensions 3/4/5/6 occur respectively 4/16/20/8 times.

The 17 explicit centers and 28 zero-current centers partition the exact 45
original centers with no repetitions or omissions. The review checks the
actual Lean original-index maps against the original coverage JSON. It also
enumerates all 1,440 full quotient coordinate tuples across the 48 choices,
checking their representative inclusion/projection and flattened coordinate
coverage. Zero-current centers have arbitrary incoming/outgoing neighbor
dimensions; their quotient uniqueness comes from the zero current space,
not a fabricated zero-neighbor assumption.

`Whole` reuses a complete finite quotient equivalence, so its cardinality,
addition preservation, all-class representation and equality reflection are
meaningful statements about those full finite products. They do not assert
that all 48 local choices have a jointly realized actual Adams sequence.
The local coherence theorem covers the named filtration25 family; its
existence is not promoted to global coherence of every independent choice.

`aggregate_from_product` uses the earlier `Fact764CycleFromProduct.Meaning`
to derive the named-cycle input. That meaning requires a common actual
characteristic-two ring and differential with ordinary same-page Leibniz,
full differential-coordinate interpretation, target faithfulness, a named
product equality, and an actual zero-target tower. It is the earlier ungraded
conditional route, not an implicit instantiation of the newer typed graded
bridge. Product/map obstruction interpretations, both incoming columns and
the complex law remain explicit premises. No theorem here identifies all
these independently provided meanings with one actual spectrum.

All three successful direct build records match the frozen sources and
logs; sixteen printed dependency reports contain only standard Lean axioms.
The narrower finite dimension range neither proves the separate target101
exclusion nor yields later permanence or stable-homotopy convergence.

Run `python3 program/Stem125ConstrainedE5/independent-review.py` from the
repository root.
