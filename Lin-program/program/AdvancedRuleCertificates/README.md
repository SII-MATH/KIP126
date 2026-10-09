# Connecting and affine certificates

Connecting.lean proves the algebraic connecting construction from a short exact
sequence of differential additive groups. Exactness, injectivity/surjectivity,
chain equations and d squared zero are structural hypotheses with Lean proofs.
The connecting rule is proved, not assumed. Witnesses provide a lift and value;
checking cycle/lift/image equations implies a cycle value. Lift independence,
source-homology independence and naturality are proved. TacticExample exercises
`connecting_cert using lift` with a nonzero integer value.

Affine.lean checks a base vector plus the entire image of an uncertainty matrix.
A separator proves any chosen forbidden target is absent for ALL coefficient
vectors. Remark77 binds the actual named scalar coordinates (dimension5,
base local3, optional local2) and proves all allowed candidates nonzero.
This does not establish that the candidate set is the actual Adams differential;
that requires the missing propagation source theorem.

paper-audit.md and exact-statements.txt record the paper's actual generalized
Leibniz/Mahowald statements and the manual-differential references. Theorems6.1
and6.12 are not the ordinary Leibniz/connecting rule: synthetic lifting,
no-crossing and triangulated-category arguments remain necessary. Neither a
numeric degree check nor a citation is accepted as a proof of those hypotheses.

AffineHomology.lean checks that the entire affine candidate set consists of
cycles outside the boundary image. A single separator must annihilate both
boundaries and uncertainty. The checker also verifies d squared zero and all
uncertainty columns are cycles. `lin_cert using separator` proves the universal
claim; the actual candidate-set source theorem remains separate.
