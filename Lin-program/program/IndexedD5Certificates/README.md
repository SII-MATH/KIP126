# Indexed family extension proofs

`Extension.lean` proves exact-lookup preservation for appended families,
transport of existing event bindings under a unique-key extension, and
coherence of an append from the old, new and cross-pair proofs.

`Family.lean` checks the seven added comparison blocks and every interaction
with the old 351 entries, proving `family_coherent` for 358 entries.
`Events.lean` transports the old 94 event proofs and proves the added 3391
binding, yielding 95 valid bound events and its `event3391_result` theorem.
Every event retains its indexed raw-to-final prior trajectory.

For artifacts, commands, the independent review and the remaining conditional
Adams interpretation obligations, see `../IndexedFamilyProducer/D5/README.md`.
All three modules have recorded successful direct compiles. Finite family
coherence supplies no existence or meaning for absent pages, and does not
discharge imported conditional staircase or naturality premises.
