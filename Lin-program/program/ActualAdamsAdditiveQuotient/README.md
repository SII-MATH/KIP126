# Actual additive quotient Z/B

`Basic.lean` identifies the literal additive subgroup quotient
`Z n / B n` with the complete actual Adams page `n+2` by an `AddEquiv`.
Here B is pulled back along the inclusion of Z into the initial E2 group.
`boundaries_eq_kernel` proves this is exactly the kernel of the actual
surjective additive image map from `ActualAdamsAdditiveFiltration`.
Mathlib's first isomorphism theorem then gives the equivalence; both its
representative formula and addition law are proved.

Inputs remain the actual graded spectral data, certified homology
identifications, and their local additive compatibility. No new global
quotient equivalence is assumed. This result neither supplies actual
topological Adams input nor proves the convergence identification with a
stable homotopy group. There is no new certificate format or C++ trust.

Direct compilation: `python3 program/ActualAdamsAdditiveQuotient/compile.py`.
The successful single leaf prints four standard-axiom reports; separate
root-build and exhaustive-audit evidence lives in `program/tests/`.
