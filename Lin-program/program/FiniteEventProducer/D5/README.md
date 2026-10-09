# Ninety-five finite and indexed event certificates

`prepare.py` reads all 358 comparisons in `AggregateD5Conditional` and
emits 95 finite witnesses and 95 degree-indexed witnesses through the actual
C++ `finite-event-export` and `indexed-event-export` executables.
The source and target trajectories contain 102 prior page steps in total.
`event3391.json` and `indexed-event3391.json` are the new d5 event;
all prior 94 finite and indexed lines are byte-identical to `HighD2`.

`test.py` independently checks every full comparison, the exact original
inventory indices, all prior cycle/nonboundary projections, the final
nonzero differential and every conditional dependency closure. It also
reruns both C++ exporters and checks byte-identical canonical JSONL.
`provenance.json` records raw inventory rows and conditional dependencies.

The new event uses E2 basis3082 at (13,139) and basis3391 at (18,143).
It preserves explicit conditional d3/d4 imported data and the row2796 d5
zero derived from the actual DC2h6 map under compatible source completions
and naturality. No completion existence or Adams realization is asserted.

Run from the repository root:

```sh
python3 program/FiniteEventProducer/D5/prepare.py
python3 program/AggregateD5Conditional/Pipeline/generate.py
python3 program/FiniteEventProducer/D5/test.py
```

The Lean modules `AggregateD5Conditional.Pipeline.Trace3391` and
`AggregateD5Conditional.Pipeline.Executable3391` import and kernel-check the
new C++ witnesses, connect them to the exact aggregate comparisons and
verify all six prior cycle/nonboundary steps. C++ is outside the trust root.
