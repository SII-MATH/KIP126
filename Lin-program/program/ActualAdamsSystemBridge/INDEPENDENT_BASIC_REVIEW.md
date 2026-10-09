# Actual Adams System Bridge: Independent Basic Review

Reviewer: `/root/map_search_next`. The independent review covers the frozen
`Basic.lean` implemented by `/root`. This reviewer implemented `Trace.lean`, so
its build evidence below is **not** presented as an independent Trace review.

No mathematical soundness findings in `Basic.lean`.

## Reviewed meaning

`Incoming S r d` includes all actual source elements over all bidegrees with
an exact proof that `AdamsTarget r e = d`. It is not a selected list of rows.
The extra `Unit` summand contributes only zero. In particular, a target with
filtration less than the page number still has its zero boundary without any
invented negative-filtration source. `incoming_image` proves both directions
of equality with the full `PageBoundary` predicate. The dependent casts are
eliminated by substituting the supplied bidegree equality.

`quotient_zero_iff` derives equality with a boundary class from the actual
cycle quotient and the injective `toNext` map. A Type equivalence alone would
not fix which next-page value means zero. `ZeroMeaning` explicitly supplies
that fact; no additivity of `toNext` is inferred. `system.homology_zero`
combines these two equivalences and uses `advance_on_cycle`.

`advance` is a total function and sends noncycles to zero by convention.
Its mathematical page-transition statement is restricted to cycles. This
does not grant survival, nonzeroness, or immunity to incoming differentials.

## New Trace implementation

`trace_at_transport` inducts on the actual `ManualInputObligations.Trace` and
transports along `r = n+2`. Each step uses its cycle proof and the prescribed
homology quotient to identify the endpoint with `System.at`. `trace_at` and
`endpoint_at` expose the usual page indexing without an uninterpreted
compatibility premise.

`incoming_cycle` proves that every element in the full incoming image is a
cycle, using linear zero preservation or `S.differentialSq` after the degree
cast. `differentialLaws` exports this fact and zero-outgoing for the existing
filtration theorems. These claims use the actual supplied differential maps,
not metadata or absent records.

## Reproducible evidence

Run `python3 program/ActualAdamsSystemBridge/independent-basic-review.py` from
the repository root. It replays all complexes of two-dimensional F2 linear
incoming/outgoing maps, all zero-preserving identifications of their complete
homology quotients, and all tested nonnegative-filtration source formulas.
It includes a bijective but zero-swapping counterexample to show why
`ZeroMeaning` is necessary. Finite replay is supplemental; Lean proves the
general statements.

`Basic-compile.json` records direct compile success and three standard axiom
reports. `Trace-compile.json` records direct compile success and five standard
axiom reports. All reports contain only `propext`, `Classical.choice`, and/or
`Quot.sound`. Failed development logs are preserved separately and are not
success evidence. Source and successful log hashes are checked by the review
script; an integrated Lake rebuild may legitimately replace the historical
direct `.olean` files.

## Remaining obligations

The caller still supplies the graded Adams sequence, actual page homology
equivalences, and zero compatibility. This bridge does not identify them with
the sphere or tmf, establish named Ext classes, prove an additive page
equivalence, establish convergence, or prove the three external differential
inputs. Finite traces do not assert nonzero endpoints. The unreduced incoming
sum type can contain distinct encodings of zero, so full incoming-image
vanishing is often the useful tail condition; subsingleton of the incoming
type itself is a stronger condition.
