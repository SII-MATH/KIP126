# Combined Ceta and C2 conditional zero-target recursion

The row3076 Ceta and row3143 C2 successor arguments are both available as
strict raw-signature overrides. All31 original target candidates are
retained. The outcome remains17 complete target certificates and14
unresolved chains; no paper conclusion is promoted by this count.

The generator now explores ALL predecessor branches after failures. It
constructs381 complete finite comparison blocks, including partial progress
inside unresolved chains. The larger count mostly reflects broader
exploration, not the C2 override. There are exactly two actual conditional
uses: row3076 in S0(15,139)d3 outgoing column1, and row3143 in
S0(20,142)d3 incoming column0. The latter block has zero homology. The
source-centered S0(17,140)d3 block remains blocked by row3005 incoming.

`Matches.lean` links both generated columns to the exact quotient-valued
differentials. Ceta.matched retains its local naturality premise. C2.matched
retains successor matrixMeaning, squareZero and C2-to-S0 naturality. It
returns both the semantic column match and the actual complete comparison.
Neither conditional premise is replaced by a desired-zero assumption or
forgotten by presenting the finite comparison alone as an Adams theorem.

All raw NULL9000 markers remain in source.json. `attempted_overrides` also
records local uses in comparisons that later failed, distinguished from
the two uses in completed comparisons. `dependency-status.json` records
full candidate DAGs' unknowns, conditional coverage and completed blocks.
The C2 row affects four unresolved candidate DAGs, but other dependencies
prevent closing them. The17 candidate zero theorems are the same originally
resolved finite cases, not new unconditional Adams results.

Run `python3 AllClaimC2ConditionalCertificates/review.py` from program for
full regeneration, byte-stability, branch coverage, exact override checks
and unchanged candidate statuses. Register
`AllClaimC2ConditionalCertificates.Matches`. No old family is modified.

Basic, all381 Data comparisons and Matches passed direct Lean -j1
compilation. C2.matched uses only propext and Quot.sound. No sorry,
new axiom or native_decide is introduced.
