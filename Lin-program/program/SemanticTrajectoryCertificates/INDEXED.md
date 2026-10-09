# Binding semantic paths to the indexed finite page window

`Indexed.lean` wraps the existing `EventData` using a checked `BoundWire`.
It reuses `checkBound_sound`, all indexed label conditions, and exact
family lookup. `PageCoverage` proves the source and target paths have
exactly `eventPage - 2` stages and labels. For each page `q` with
`2 <= q < eventPage`, the corresponding label has page `q`, the correct
center and incoming/outgoing degrees, and its complete comparison equals
the family's value at the object/page/degree key.

`bound_event_transport` combines this coverage with the complete semantic
path theorem. The number of actual interpreted models is also exactly
`eventPage - 2`. `bound_event_from_check` and its `lin_cert` instance expose
the executable checker; `indexed_bundle_sound` handles batches.

The caller still supplies the proved `EventData` interpretation. Family
lookup and page counts do not establish the topology of spectra, a true
Adams realization, or the incoming/outgoing coordinate equations. The
coverage theorem concerns all finite pages preceding the supplied event;
the interpretation supplies meaning to those exact matrices.
The actual objects have no built-in topological degree merely because a
wire has labels. Agreement with those intended mathematical degrees, and
coherence of any larger family window, remain separate application proofs.

`IndexedExample.lean` uses actual event6651 and the shared351 family. It
identifies every source page2/3 at S0(52,177) and every target page2/3 at
S0(56,180), and transports the same endpoints to the final d4 statement.
The executable rejection examples change the event page or delete labels.

```sh
python3 program/SemanticTrajectoryCertificates/compile_indexed.py
python3 program/SemanticTrajectoryCertificates/assert_indexed.py
```

These commands compile only the two new modules, serially, and retain
independent actual exit and current-source/dependency/log/olean records.
Both modules currently compile with exit0; `assert_indexed.py` checks six
standard-only axiom reports and all18 current source/dependency fingerprints.
