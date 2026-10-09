# Independent quotient-coordinate review

No correctness finding. The two final source leaves have observed direct
exit zero and fourteen printed reports with only standard Lean axioms.
The frozen source and original direct evidence match. This review performs
no new Lean compilation and does not alter registered sources or objects.

The minimal `Meaning` has no next-page coordinate, quotient-coordinate
formula, endpoint or nonzero conclusion. It starts with a zero-preserving,
additive equivalence for the entire current carrier. Faithful outgoing
coordinates reflect zero and interpret the whole outgoing map. Surjective
incoming coordinates represent all finite incoming vectors and interpret
the entire actual incoming source. Incoming injectivity and outgoing
surjectivity are unnecessary, and neither is silently used.

`cycle_iff` uses outgoing injectivity precisely for the reverse implication.
`boundary_iff` uses incoming surjectivity precisely to lift arbitrary finite
preimages. `related_iff` uses current addition preservation to identify the
actual boundary relation with the finite relation. The checked comparison
then makes projection well-defined and injective on the actual quotient.
The checked inclusion gives a cycle representative for every coordinate,
proving surjectivity. Thus the next-page dimension and coordinate function
are derived from a complete comparison, not supplied as assumptions.

The existing certified page identification is only a type equivalence.
The local zero law is explicitly required when packaging zero-preserving
next coordinates; the local addition law is explicitly required to derive
next-coordinate additivity for iteration. `WholeCoordinates.stepMeaning`
correctly retains stronger neighboring carrier equivalences because the
old interface demands them, and derives its quotient projection formula.

The independent oracle checks 189 distinct whole complexes from the
1257-entry supplied family. It gives incoming coordinates an extra kernel
bit in all 189 cases, and outgoing coordinates have proper image in 140
cases. Random invertible current coordinate changes exercise the complete
carrier rather than a fixed representative. It checks 1256 cycle/boundary
elements, 821 quotient representatives, 7731 relation pairs and 581 next
type equivalences. Of these, 191 fail the local zero law, and sixteen
preserve zero but fail addition. The constructed coordinates fail the
corresponding conclusion exactly in these cases. With the required laws,
1467 nonzero equivalences and 2744 additivity pairs pass.

The oracle is a finite consistency check supplementing the general Lean
proof. Actual current coordinates, full differential meanings and the
actual certified page equivalence remain mathematical inputs. This result
does not construct them for the sphere or prove a Kervaire survival claim.
The machine-readable evidence is in `independent-review.json`.
