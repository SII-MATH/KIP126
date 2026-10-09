# Homology and candidate certificates

`Page` gives explicit F2 incoming and outgoing linear maps. `NonzeroHomology`
means outgoing vanishes and the representative is outside the entire incoming
image, with a separating functional proving the latter. It is stronger than
absence of a single matching differential record. `SameHomology` expresses
boundary difference of cycles. `UniqueCandidate` checks an explicit candidate
list and supplies preimages for every other candidate; it does not assert that
the list enumerates all topological classes.

`checkHomology_sound`, `checkCandidates_sound`, `checkUnique_sound` prove the
semantic statements. `page_cert using` invokes `lin_cert`. `checkWire` also
checks d squared zero. `PageChain.transport` is an explicit Lean proof
obligation: the current module does not invent inter-page transport from a
list of finite vectors. `representative_survives` is conditional on this proof.

The wire format uses row-major `LinearCertificates.WireMatrix` incoming and
outgoing matrices, a Boolean representative and separator. JSON canonical
roundtrip, matrix dimensions and vector dimensions are checked. Malformed or
unknown fields are rejected. No database names are interpreted as vectors.

All these are finite linear algebra claims. Identifying an actual Adams page,
its full basis, or an infinite permanent cycle requires additional mathematical
comparison and completeness theorems, not hashes or successful parsing.
