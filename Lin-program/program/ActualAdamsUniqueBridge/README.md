# Uniqueness in an actual Adams homology group

`IsUnique S r d x` quantifies over the actual graded page, its differential,
and every incoming bidegree. It states that x is a nonboundary cycle and
every cycle is either a boundary or differs from x by a boundary. It is
not uniqueness among a finite list of named database rows.

`Coordinates` connects these actual groups to complete finite differential
matrices. Current and outgoing coordinates must be faithful; current
coordinates must preserve addition; incoming coordinates must cover the
entire finite source. The incoming type includes every source bidegree
with the required target and an explicit zero branch. Its image is proved
to be exactly `PageBoundary`. Current-coordinate surjectivity is unnecessary:
the finite uniqueness theorem already quantifies over every coefficient
vector, while the named actual nonboundary class supplies existence.

`Certificate` contains the existing strict `UniqueHomologyCertificates.Wire`
and mathematical interpretation/name proofs. Only the wire is imported
from JSON. These proofs are never supplied by C++, source strings or hashes.
`check_sound` transports the kernel-checked finite certificate to `IsUnique`.

```lean
example (S : AdamsSpectralSequence) (r : Nat) (d : Bidegree)
    (x : (S.element r d).carrier) (c : Certificate S r d x)
    (checked : UniqueHomologyCertificates.check c.wire.comparison c.wire.named = true) :
    IsUnique S r d x := check_sound S r d x c checked
```

For a concrete imported wire with proved interpretation, use
`adams_unique_cert using certificate`. `Fact764.lean` demonstrates the tactic
with both frozen branch wires from `Fact764ConstrainedE5`; the example
`unique_by_tactic` has the actual Adams proposition as its goal.
Malformed-record and comparison diagnostics are inherited from the strict
uniqueness importer and checker.

`Quotient.lean` proves the actual homology set is equivalent to Bool. Given
the actual next-page homology identification, the actual next page has
exactly two elements. This cardinality statement needs no zero preservation
from that identification; a statement naming its nonzero element would.

The Fact 7.6(4) application is conditional on the actual full matrix meaning
and named-element interpretation. It does not construct the actual S0
Adams spectral sequence or discharge these premises from raw database rows.
The product/trace modules offer additional routes to the cycle condition,
not a substitute for the remaining complete incoming interpretation.

Direct compilation: `python3 program/ActualAdamsUniqueBridge/compile.py`.
All three leaves passed, with 11 standard-axiom reports. Build and exhaustive
declaration-audit checkpoints are separately recorded in `program/tests/`.
