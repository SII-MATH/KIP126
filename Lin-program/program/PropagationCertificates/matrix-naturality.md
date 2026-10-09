# Matrix naturality closes an algebraic rule gap

`MatrixNaturality.lean` connects finite linear certificates to ordinary
propagation. In contrast to `Rules.Model.naturality`, it does not require
an assumed commuting-map theorem: `checkChainMap` checks every matrix
column, and its proved linearity lemma establishes the equation for every
source vector. The event checker additionally verifies dX(x)=dx,
fSource(x)=target and fTarget(dx)=value. Its soundness theorem concludes
the actual equation dY(target)=value. Dimensions are dependent Lean types.
`lin_cert` is available through the `ValidEvent` verifier instance.

The source and target page must agree and lie between 2 and 999. This is
intentional: a raw `N` tag is not always a same-page differential equation.
In the actual release, proofs-part1.csv record 5432 is a d2 statement for
S0, but record 5433 is an N statement for tmf at page 999, with info
S0__tmf. Therefore merely associating adjacent rows and copying their reason
would wrongly turn a d2 cycle into a permanent-cycle theorem. The new checker
rejects that page mismatch. It also rejects noncommuting map squares and
incorrect target vectors, with diagnostic equation names.

Relevant source data exist at `upstream/kervaire-49/`:
`map_AdamsSS_S0_to_tmf_t261.db`, `S0_AdamsSS_t261.db`,
and `tmf_AdamsSS_t261.db`. Read-only schema inspection finds a d2 column in
the S0 basis table but no d2 column in the tmf basis table. A real release
event bridge consequently needs the staircase-to-page reconstruction and
the polynomial-image-to-local-basis map conversion; the new example does
not pretend these inputs have already been obtained from the raw map DB.

What is closed: actual finite-matrix naturality needs no abstract Model
naturality hypothesis, and the same-page conclusion is a proved vector
equation. Five compiled examples cover success through the tactic, page
mismatch, wrong target, broken square, and a located failure diagnostic.

What remains: authentic complete matrices at the requested page, precise
map-basis identity and degree shifts, permanent-cycle reasoning for
sentinels, and identification with topological Adams page maps. This module
does not translate all N rows or interpret an audit as a mathematical proof.
