# Milnor cobar cohomology

`Complex/Data.lean` defines the kernel of the existing normalized Milnor differential and its incoming image, with zero incoming boundary in cohomological degree 0. `Complex/Proofs.lean` proves boundary inclusion using `milnor_differential_squared H M`, transported from the actual first Adams page through the same cooperation comparison.

`Data.lean` constructs the F₂-module quotient of these cycles by these boundaries. The `hi` and `hiSquare` classes are the images of the existing specified cocycles. `Proofs.lean` identifies zero and equal classes with actual boundaries and applies the existing polynomial detector to show the sixth square class is nonzero.

This defines genuine normalized cobar cohomology. It does not yet identify it with the internal Adams E₂ page or with Ext, construct the full cup product on cohomology, or prove all standard classes nonzero. The construction retains the explicit H𝔽₂/Milnor cooperation inputs used in the square-zero proof.
