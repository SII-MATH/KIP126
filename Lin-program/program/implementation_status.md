# Verification scope

The code now proves algebraic statements, not merely record membership:

- A separator annihilates every column, hence every vector in the image.
- A preimage proves membership even when the target is a sum of columns.
- Basis-entry identities prove d squared zero and commuting maps for arbitrary vectors.
- A contraction proves exactness for every cycle.
- A rank-one contraction plus separator proves the entire homology is spanned by one class.
- Milnor coproduct pairing verifies every coefficient in a declared finite degree/rank window.
- Differential DAG replay is sound under explicit model laws and proved external inputs.
- Scoped propositional branches discharge assumptions rather than leaking hypothetical facts.
- Verified comparison matrices identify the actual cycle/boundary quotient with coordinates.
- Two checked adjacent squares induce a map on that quotient, compatible with coordinates.
- Named scalar relation certificates preserve evaluation in every characteristic-two ring satisfying the relations.
- Staircase bases and bounded filtration inclusions are checked for arbitrary vectors.
- Matrix naturality checks its square instead of assuming an abstract naturality law.

Current additions are tracked in Step4Progress.md and ClaimCoverage.json: all-degree/stable Milnor products, finite-support convolution ring, actual bounded free complex and finite-ring Hom cohomology are now proved. The180 direct maps have bounded finite algebra coverage. New derived-map and Fact713 dependency files remain under validation.

The missing steps are mathematical comparisons and complete rule translations:

1. Identify the finite Steenrod-module resolution with cohomology of each specified CW spectrum.
2. Identify its Hom complex/homology with the requested Adams E2 and actual d2 from secondary operations.
3. Reconstruct all later differentials from the source staircase data and identify the checked finite quotients with actual Adams pages.
4. Implement and prove the actual generalized Leibniz, synthetic maps, Mahowald and extension rules.
5. Reconstruct scoped search branches and exhaustive candidate sets from 2,672,275 proof events.
6. Provide three explicit Lean source theorems for manually imported differentials.
7. Extend the 14 checked scalar expression bindings to all paper objects and prove that their imported algebraic presentations model the topology.
8. Prove range/convergence hypotheses that permit finite evidence to imply permanent cycles.

The source data are now present; these are not resolved merely by obtaining more
CSV rows. The current Reference files contain abstract assumptions and some
placeholder Prop fields, so importing them cannot discharge these obligations.
In particular the S3->S2 Hopf map in Reference is eta, despite a nu label; it is
not used by this implementation as a proof of a nu-related statement.

All 17 CSV dependencies and all additional doc_data locations are tracked, but
this status is intentionally different from claiming every paper theorem proved.
