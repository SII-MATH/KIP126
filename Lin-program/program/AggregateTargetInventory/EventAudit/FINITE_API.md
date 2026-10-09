# User-facing finite event API

Import AggregateTargetInventory.EventAudit.Certificates and open FiniteAPI
and Certificates in that namespace. For example:

```lean
example : FiniteEventValid input3010 := by
  finite_event_cert using certificate3010
```

There are87 input/certificate pairs. Input carries the exact E2 source and
target vectors, event coordinates and differential matrix. FiniteEventValid
means both raw endpoints admit a chain of complete quotient changes through
nonboundary cycles, the event matrix has the specified nonzero value, and
the event source is not in its kernel. The NonzeroPath step uses the existing
PageTransition comparison model; no arbitrary transport map is allowed.

Certificates reuse the already kernel-checked cycle/nonboundary/coordinate
links and event equations. They contain independent path and matrix-value
proofs rather than a field asserting FiniteEventValid itself. The tactic
assembles the semantic theorem without repeating expensive decide checks.
It consumes a Lean proof certificate, not untrusted external proof text.
The original numerical certificates are still verified by their upstream
executable checkers. This convenience layer adds no new trust root.

APIExamples includes d2 outgoing/incoming, d4 incoming/outgoing and the
same-page incoming-image obstruction. Failures identify a mismatched input
or certificate type through Lean's ordinary elaboration errors.

The input describes imported finite E2 algebra. FiniteEventValid does NOT
state an actual Adams differential, a topological elimination, or all101
paper targets excluded. The existing local semantic assumptions still
must be transported through the Adams comparison bridge. No previously
unresolved event receives an API certificate.

Register AggregateTargetInventory.EventAudit.APIExamples, importing the
API and all87 packaged certificates. review_api.py verifies byte-stable
regeneration and that174 paths reuse existing theorems without new decide
calls. No old dependency was modified or lake build run.

FiniteAPI, Certificates and APIExamples all passed direct Lean -j1
compilation. The review passed. No sorry, new axiom or native_decide was
introduced.

The API path is deliberately UNGRADED: composability checks dimensions,
but the type does not enforce consecutive spectral pages or bidegree shifts.
The generated path proofs follow the separately audited consecutive-page
lists. This adapter is not a full indexed spectral-sequence trajectory API.
NonzeroPath.refl by itself allows a zero length-zero path; start_nonzero
proves a nonzero endpoint forces a nonzero start. FiniteEventValid.raw_nonzero
uses the event value to establish both original endpoints are nonzero.

finite_event_cert is a proof-bundling adapter, NOT an executable data
certificate checker. It applies checked Lean proofs with the correct input
type. The actual executable data checks remain the previously imported
PageTransition and algebra certificate checkers; this adapter must not be
confused with lin_cert's data verification.
