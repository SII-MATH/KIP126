# Named initial pages and the permanence boundary

The four existing finite d2 survivor definitions are now connected to
`PermanentCycleCertificates.System` without copying or renaming their
matrices or named vectors. `Cases.lean` covers Fact7.6(2), Fact7.6(3), and
both Fact7.21 classes. `actual_d2_good` transports each finite cycle and
nonboundary result to a caller's actual system and actual initial element.

`InitialCoordinates` supplies coordinates for the whole current, incoming,
outgoing and next objects. `PageData.Meaning` requires injectivity, zero
compatibility, incoming/outgoing equations on every actual element, and
the next coordinate equation on every actual cycle. The named equation
identifies the caller's element with the existing target vector. These
proofs are not produced by parsing a name or reading a database row.

Each `certificate` has type `Certificate system element`. With proved
meaning and tail terms, the intended syntax is available for all four cases:

```lean
theorem conditional_permanence (s : System) (x : s.Page 0)
    (c : InitialCoordinates s Fact762.stage) (equations : c.page.Meaning)
    (named : c.current x = Fact762PageCertificates.target)
    (tail : TailVanishing s 1) : s.Permanent x := by
  permanent_cert using (Fact762.certificate s x c equations named tail)
```

This is a conditional theorem. The prefix has one stage, Adams page2;
its tail begins at System index1, Adams page3. `TailVanishing s 1` requires
the full actual incoming and outgoing spaces to be subsingletons at every
later page. It does not assume the named element's future survival or
nonzero value. The actual homology law in `System` propagates nonzeroness.
These strong tail hypotheses have not been proved for the paper classes,
and this interface does not claim the actual permanent-cycle results.

`compile.py` records serial compiler exits and hashes; failures are kept in
separate logs. `independent-review.py` independently replays all four
complete comparisons and named cycle/nonboundary conditions. The review
documents the precise scope of the all-vector meanings and page cutoff.
The root Lake checkpoint and exhaustive declaration audit supply separate
evidence after integration. C++ and hashes are not mathematical premises.
