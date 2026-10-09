# All-claim zero-codomain certificates

All31 zero-selected-target candidates from the shared17-claim audit are
processed. Seventeen have fully reconstructed finite zero quotients;
fourteen remain unresolved, with the first missing row/page in source.json.
The batch constructs120 complete comparisons:81 d2,31 d3,8 d4. Some are
completed subdependencies of still-unresolved candidates. It covers Cnu
and S0 and shares repeated predecessor blocks.

`Basic.lean` proves a quotient with a complete comparison to Fin0 is zero,
and EVERY function/differential into that quotient vanishes. `Data.lean`
checks each full comparison with lin_cert, checks staircase representative
projections across all preceding pages, checks each known differential
column after projection, and identifies reused incoming matrices. Each
of the17 resolved candidates has a concrete candidateN_differential_zero
theorem. Both modules passed direct Lean -j1 compilation.

The generator never treats a selected target dimension as a proof. It
first recursively constructs the preceding complete comparison and
checks its dimension. Only then can an unknown differential into that
zero space have the unique zero column. Every such internal use records
its exact predecessor. All original unknown records remain in source.json.
For nonzero targets generation fails closed. No conditional naturality
or Leibniz override is used by this family.

Known event values, earlier-zero prefixes and incoming-class zeros retain
the same external finite staircase interpretation as the existing
trajectory model. Complete finite comparisons do not prove these imports
are the true Adams differentials. The17 results remove finite readiness
obstacles, not all missing mathematics of the paper claims. They concern
specified finite windows only; permanent claims gain no invented cutoff.

`source.json` records every candidate, all120 comparison wires and their
predecessors, raw unknowns, and unresolved reasons. `claim-results.json`
maps resolved and unresolved candidates to all17 inventory claims.
`review.py` verifies coverage, recursively complete predecessor references,
zero-dimension justification for internal unknown uses, retained raw data,
and byte-for-byte deterministic regeneration.

Run from program:

```
python3 AllClaimZeroTargetCertificates/generate.py
python3 AllClaimZeroTargetCertificates/review.py
```

Register `AllClaimZeroTargetCertificates.Data`, which imports Basic.
No sorry, new axiom, native_decide, or log-trusted theorem is introduced.
