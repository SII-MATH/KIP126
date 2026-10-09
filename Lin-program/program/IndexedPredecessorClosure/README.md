# Complete preceding-page certificate coverage

IndexedFamilyCertificates.Coherent verifies every supplied comparison and
compatibility between supplied neighbors. Its documented semantics do not
assert that all neighbors exist. This package adds that distinct requirement.

For every supplied entry (object,r,s,t) with r > 2, PredecessorClosed
requires all three exact preceding-page keys and their whole homology
dimensions:

| Role | Required key | Required next dimension |
| --- | --- | --- |
| Incoming source | (object,r-1,s-r,t-r+1) | current wire.n |
| Current space | (object,r-1,s,t) | current wire.m |
| Outgoing target | (object,r-1,s+r,t+r-1) | current wire.k |

The requirement applies to every entry, hence also to all recursively
included predecessors. Page2 inputs are the base. Negative auxiliary
degrees remain explicit keys; no missing entry is inferred to be zero.

checkPredecessors is executable. checkPredecessors_iff proves exact
equivalence with PredecessorClosed. check additionally invokes checkFamily,
and check_sound proves Valid, which includes both coherence and closure.
The three Valid projection theorems expose the required complete
predecessor and dimension. Closure alone does not certify the raw E2
mathematics or identify the family with an actual spectral sequence.

```lean
example : IndexedPredecessorClosure.Valid family := by
  predecessor_closed_cert using ()
```

Use the existing strict family_input% JSON importer. diagnose reports
one-based entry index and incoming/current/outgoing role for either a
missing key or wrong homology dimension. diagnose_none_iff proves that
absence of diagnostics is exactly acceptance by checkPredecessors.

Tests show that a family can be Coherent and still lack a required
incoming predecessor. All three missing roles, a wrong whole dimension,
and use of an incomplete family with the tactic are rejected. A complete
family passes the combined checker and its separate closure checker.

Run python3 program/IndexedPredecessorClosure/compile.py from the repository
root. Three modules compile with17 axiom reports (13 standard-only and4
without axioms). Earlier failed attempts remain in evidence/ and are
excluded from acceptance. No admitted proof, custom axiom, native
evaluation proof or implicit C++ trust is used. The only permitted
foundational axioms are propext, Classical.choice and Quot.sound.
