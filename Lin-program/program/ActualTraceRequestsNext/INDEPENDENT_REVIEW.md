# Independent request and actual-semantics review

No correctness findings. All five frozen modules have successful compile
records with matching source, log and imported-data hashes; successful
reports use only standard axioms. The review verifies every frozen file,
all eight imported examples and the six compiled negative tactic checks.

The four exact specifications bind both class and finite endpoint:
Fact7.13 E9, first Fact7.21 E5, second Fact7.21 E5, and Prop7.9 no-hit through
d5. The independent enumeration checks all 64,008 version/claim/input/output
combinations and finds exactly four accepted records, agreeing with the
saved successful Lean runtime. The runtime's malformed-record, duplicate
field and indexed-batch checks remain preserved. No registered module or
runtime log was recompiled or overwritten by this review.

The imported `Request` contains data only. Each soundness theorem requires
a separately supplied typed actual prefix. The theorem extracts exact
input/output equality from the data check, binds the input through the
initial actual equivalence, and uses the existing same-input trace and
endpoint coordinate theorem. Explicit list lengths prevent padding or
truncation from changing the caller's requested element. The claim string
is checked in addition to the typed endpoint, so an E9 request cannot be
reported as E12 by this tactic.

The Prop7.9 result includes actual traces to E3, E4 and E5 and full
`PageBoundary` negations on d2 through d5. Its `Page5Input P` is an explicit
separate argument, and the tactic only provides this route with `incoming
last`. This is the complete incoming d5 interpretation, not merely a named
source column or a property of the JSON. No outgoing d5 or E6 result is
inferred. Exact output coordinates name the same nonzero E5 endpoint.

The parser's canonicalization and the request checks establish data shape
and identity. They do not establish actual Adams meanings; the typed
prefix and incoming arguments retain all earlier naturality, quotient,
cycle and data-interpretation premises. Finite endpoint validity is the
documented conditional conclusion.
