# Fixed E2 names and actual endpoint construction

`Named.lean` removes arbitrary raw endpoint and page4-coordinate arguments
from the typed event application. It fixes the source to the actual E2
coordinate inverse of the six-dimensional vector with local index2, and
the target to the inverse of the five-dimensional vector with local index1.
`raw_binding` verifies these are exactly the imported `finite a b q`
rawSource/rawTarget vectors for every retained branch.

`Meanings` supplies four full comparison interpretations at the source and
target degrees on pages2 and3. Each `StepMeaning` quantifies over the full
actual outgoing carrier, uses an equivalence for the complete actual
incoming carrier, and identifies the actual quotient map with the checked
projection. These are mathematical premises, not parsed fields. Source and
target page4 coordinates are the same `E.source` and `E.target` objects
used by `EventMeaning`; there is no second unrelated coordinate system.

The finite cycle equations are kernel-checked. `advance` applies them to the
actual differential, forms the actual quotient class and extends its
`ManualInputObligations.Trace`. Both endpoints are constructed from E2
using two such steps. Their E4 coordinates are computed by the four fixed
projection matrices. Full actual nonboundary statements on pages2 and3
follow from the checked image exclusions and the whole-incoming meanings.

`named_event` then proves the typed differential equation, nonzero target
and actual target boundary without receiving raw endpoints, traces or
page4-coordinate identities as additional arguments. Its known d4 column
is still an explicit external mathematical input. Fixing a coordinate name
does not prove that the coordinates are the Adams E2 of the sphere: callers
still owe the whole meanings and their identification with the intended
topological construction. This is a conditional semantic bridge, not a
new realization of all nine keys or of the underlying CW spectrum.

The original two-leaf `frozen-source.json`, README and compilation records
remain historical evidence. Named has separate compile records and a
separate `frozen-named.json` record. Its direct compilation returned zero
and printed 12 theorem axiom reports containing only the standard axioms.
Run `python3 Row3151ActualTransport/compile.py Named` from `program/` after
the registered dependencies are available. Independent review artifacts
are separate from this source freeze.
