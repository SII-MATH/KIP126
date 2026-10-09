# Fact 7.6(3): complete incoming exclusion

The same original E2 input from Fact763Continuation has a nonzero E6
endpoint. This package proves it cannot be an incoming boundary on any
page, using five complete empty E2 source degrees:

| Differential | Source degree |
| --- | --- |
| d6 | (4,129) |
| d7 | (3,128) |
| d8 | (2,127) |
| d9 | (1,126) |
| d10 | (0,125) |

For every later r, the source filtration is negative. EmptySources.zero
proves the canonical incoming differential vanishes for every r >= 6.
full_incoming_zero transfers this to the full incoming sum by the proved
boundary-image equivalence. named_not_hit uses the same E6 trace and its
nonzero endpoint to prove the original E2 input is outside BInfinity.
No later survival premise or query-only nonzero target is assumed.

```lean
example : Fact763NoHit.NotHit zeros input := by
  fact763_no_hit_cert using certificate with emptySources via zeros named binding
```

The existing certificate carries the prior full actual differential,
product and quotient meanings. emptySources contains entire E2 coordinate
equivalences with the zero-dimensional space, not mere absence of rows.
The raw SQL empty-degree queries are recorded in source.json and remain
untrusted mathematical inputs until those equivalences are provided.

This is incoming exclusion, not outgoing permanence or an E-infinity
survival proof. An element may support a later nonzero differential and
still satisfy this theorem. The original topological realization remains
an explicit obligation.

Two modules compile successfully in direct session43153, with three
standard-only axiom reports. Positive tactic cases use the exact original
input; the zero-input mismatch is rejected. Root integration/audit are
separate checks. No admitted proof, custom axiom, native proof shortcut,
or implicit trust in C++ is used.
