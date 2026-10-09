# Conditional high-degree finite events

`prepare.py` constructs all 94 accepted finite witnesses and 94 indexed
witnesses from the 351-block `AggregateHighD2Conditional` snapshot, then
passes both batches through the existing strict C++ exporters.
All 90 previous `ThreeProduct` records remain byte-identical.

The four new records are:

| Staircase row | Page | Source degree and basis | Target degree and basis |
| --- | --- | --- | --- |
| 6651 | 4 | (52,177), 6651 | (56,180), 7006 |
| 7007 | 2 | (55,180), 7007 | (57,181), 7161 |
| 7162 | 2 | (56,181), 7162 | (58,182), 7246 |
| 7247 | 3 | (54,180), 7008 | (57,182), 7247 |

The final row is stored as an incoming differential. Its source is basis
7008, not basis 7247. All endpoints use exact raw local index 0, with the
degree and global basis identifiers retained in the provenance audit.

The new witnesses depend on explicitly conditional d2 matrices reconstructed
from complete staircase basis-value descriptions. The raw basis-table d2
columns remain NULL and lie beyond the table's declared d2 coverage.
The certificate verifies the finite algebra under the supplied staircase
semantics; it does not turn missing database values into unconditional
topological facts. All conditional dependency closures, including the raw
rows and `basis_certificate` names, appear in `provenance.json`.

```sh
python3 program/FiniteEventProducer/HighD2/prepare.py
python3 program/AggregateHighD2Conditional/Pipeline/generate.py
python3 program/FiniteEventProducer/HighD2/test.py
python3 program/AggregateHighD2Conditional/Pipeline/review.py
```

`test.py` independently checks all 94 finite and indexed records, 96 prior
stages, exact original inventory identities, all dependency closures, and
deterministic C++ output. `all94.jsonl` and `indexed94.jsonl` are stable
canonical JSONL; the individual new-event files are exact corresponding
lines. C++ and hashes supply data and provenance, not Lean theorem trust.
