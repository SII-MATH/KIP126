# Indexed finite event format, version 1

`indexed-event-export INPUT.jsonl` reads one complete witness per line and
writes deterministic canonical JSONL to stdout. A bad record produces
`path:line: detail` on stderr, later lines are still processed, and any
failure causes exit status 1. Redirect stdout only to a separate file.

The exact top-level fields are:

| Field | Value |
| --- | --- |
| `version` | natural number 1 |
| `sourceDegree`, `targetDegree` | objects with exactly natural fields `s`, `t` |
| `eventPage` | natural `r`, with `2 <= r <= 128` in this producer |
| `sourceLabels`, `targetLabels` | arrays of prior-page labels |
| `finite` | complete version-1 EventAudit.Executable finite wire |

A label has exactly `page`, `center`, `incoming`, `outgoing`; its three
degrees have exactly `s`, `t`. Every endpoint has `r-2` labels, in order
`2, ..., r-1`, and exactly as many finite stages. The target endpoint is
the source endpoint plus `(r,r-1)`. At page `q`, the center is the endpoint,
the incoming degree plus `(q,q-1)` is the center, and the outgoing degree
is the center plus `(q,q-1)`. These checks reject missing or reordered
prior pages even if their finite matrices happen to be identities.

All old finite-wire strict shape, chaining and resource constraints apply.
Duplicate/unknown keys, invalid types, negative integers and unknown values
are errors. Fields are serialized in alphabetical order without whitespace,
one trailing newline per record. No timestamps enter the data. Witness
order is the existing 87-event provenance order. `prepare_indexed.py`
generates labels from the event inventory; `indexed_test.py` independently
compares their direction and degrees to the original staircase inventory.

The corresponding Lean type and checker are in
`AggregateTargetInventory/EventAudit/Indexed.lean`. Lean rechecks both the
finite matrix witness and indexing constraints. C++ acceptance and SHA-256
hashes establish neither a Lean theorem nor an Adams interpretation.
Conditional source assumptions remain in `provenance.json`; this wrapper
does not discharge them. It does not compute a spectral sequence from a
CW spectrum, prove naturality, or establish topological elimination.

## Lean field diagnostics

Import `AggregateTargetInventory.EventAudit.IndexedDiagnostics` to use
`indexed_event_checked% "path.json"`. This checks canonical parsing and
the complete indexed finite certificate, with errors including the input
path and a field path such as `sourceLabels[1].incoming.t`,
`finite.targetStages.length`, or `targetDegree.s`. Indices start at zero.
For a shifted coordinate equation, the message prints the equation itself
and its left/right values, as opposed to mislabeling a shifted value as
the unshifted coordinate.
Malformed JSON still uses Lean's JSON parser diagnostics.

`diagnoseIndexed` is also available on an in-memory wire and through
`DiagnosticCertificateVerifier`. Its `none` result is proved equivalent
to `check w = true` by `diagnoseIndexed_none_iff`, and
`diagnoseIndexed_sound` proves `w.Valid`. Thus an incomplete diagnostic
cannot accidentally accept a certificate. The original `lin_cert using ()`
interface continues to use `check_sound`; successful import alone is data,
not a proof. `IndexedDiagnosticsTests.lean` checks a real d4 fixture and
four corruptions, including its second source label.
