# The algebraic limiting quotient

`ZInfinity` is the actual additive subgroup given by the intersection of
all initial-page cycle subgroups; `BInfinity` is the union of the increasing
boundary subgroups. `BInfinity_le_ZInfinity` proves every cumulative boundary
remains an outgoing cycle. `Limit` is their literal additive subgroup quotient.

For a member x of `ZInfinity`, `permanent_iff_nonzero_limit` proves that x
remains a nonboundary cycle at all pages exactly when its class in `Limit`
is nonzero. This does not identify the limit with any topological homotopy
group or assume convergence. All actual differential, homology, and local
additive compatibility inputs remain explicit.

`Certificate.lean` reuses the existing strict finite prefix certificates
and actual whole-map tail hypotheses. `adams_intersection_cert using c`
proves membership in `ZInfinity` using only outgoing-cycle conditions.
`adams_limit_cert using c` proves nonzero membership in the quotient using
the stronger cycle-and-nonboundary prefix and both incoming/outgoing tails.
The corresponding soundness theorems are `checked_intersection` and
`checked_nonzero_limit`. No JSON imports these mathematical tail or meaning
proofs, and no new format is introduced.

Direct build: `python3 program/ActualAdamsLimit/compile.py`. The two leaves
passed with five standard-axiom reports. The exact input hypotheses and
dependency audit are in their source and per-directory evidence; root
builds and exhaustive declaration audits are recorded in `program/tests/`.
