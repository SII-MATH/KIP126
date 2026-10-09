# Shared indexed family: 358 blocks and 95 events

This producer binds all 95 finite events to the same object/page/degree-indexed
family of 358 full comparison matrices. The family preserves all 351 entries
of `HighD2` and adds seven entries; the event set preserves the 94 old bound
records byte for byte and adds event 3391. Every event binds its final
differential and all earlier source and target comparison matrices, totaling
102 prior stages.

`prepare.py` runs the C++ family exporter and binder, writes canonical JSON,
and preserves per-event and per-family conditional provenance. `generate.py`
creates `extra.json`, the old-prefix-preserving `family-extension.json`, and
the Lean extension declarations. `family.json` uses the producer's sorted
order; the extension file preserves the old list prefix. Both contain exactly
the same keyed matrices. The Lean event list appends 3391 after the old 94
events; binding correctness does not rely on the sorted file's positions.

The seven added keys are S0 (12,136), page 3; (13,139), pages 4 and 5;
(14,140), page 3; (18,143), page 4; (3,129), page 5; and (8,133), page 4.

## Proofs and checks

`IndexedD5Certificates/Extension.lean` proves that preserving exact lookup
values transports old event validity when the extended family has unique
keys. Its coherence extension theorem checks old-old, new-new and both
directions of old-new pairs. `Family.lean` applies those theorems to the seven
new entries. `Events.lean` reuses the 94 old proofs through the extension and
proves the new event, yielding `all_events` for the full list of 95.

All 128,164 ordered family pairs are covered: 123,201 old pairs, 49 new pairs,
and 4,914 cross pairs. Pair compatibility tests matching differentials and
consecutive-page dimensions only when those indexed entries exist; it does
not create missing pages.

From `program/`:

```sh
python3 IndexedFamilyProducer/D5/review.py
python3 IndexedFamilyProducer/D5/assert_current.py
python3 IndexedFamilyProducer/D5/cli_test.py
```

The independent read-only review is recorded in `independent-review.json`.
It checks the full matrix family, all pairs, all 95 canonical bound records,
the 94 unchanged old bytes, all 102 stage bindings, conditional provenance,
and the Lean extension interfaces. All three modules have actual compiler
exit code 0, and the current input/source/log/olean audit passes. The CLI test
exercises all 95 records, line-specific mixed-batch failures, an empty batch,
and an invalid family.

The new d5 role retains the row2796 completion, compatibility and naturality
premises. Earlier staircase meanings also remain explicit. These finite
family results require an Adams realization to imply the corresponding
topological claims. The proofs use no `sorry`, `native_decide`, custom axiom,
or mathematical trust in C++, Python, or hashes.
