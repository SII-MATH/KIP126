"""Extend the proved 351-entry family with seven checked blocks and one event."""
import json
from pathlib import Path

p = Path(__file__).resolve().parent
root = p.parents[1]
out = root / 'IndexedD5Certificates'
old = json.loads((p.parent / 'HighD2/family.json').read_text())['entries']
full = json.loads((p / 'family.json').read_text())['entries']
key = lambda e: tuple(e['key'][k] for k in ['object', 'page', 's', 't'])
lookup = {key(e): e for e in full}
assert len(lookup) == 358 and len(old) == 351
assert all(lookup[key(e)] == e for e in old)
oldkeys = {key(e) for e in old}
extra = [e for e in full if key(e) not in oldkeys]
assert len(extra) == 7
canonical = lambda x: json.dumps(x, sort_keys=True, separators=(',', ':')) + '\n'
(p / 'extra.json').write_text(canonical(dict(version=1, entries=extra)))
(p / 'family-extension.json').write_text(canonical(dict(version=1, entries=old + extra)))

lines = ['import IndexedD5Certificates.Extension',
         'import IndexedHighD2Certificates.GeneratedCoherence',
         'import AggregateD5Conditional.Data',
         'set_option maxRecDepth 8192', 'set_option maxHeartbeats 8000000',
         'namespace IndexedD5Certificates', 'open IndexedFamilyCertificates',
         'def extra : Family := family_input% "IndexedFamilyProducer/D5/extra.json"',
         'def family : Family := IndexedHighD2Certificates.family ++ extra',
         'theorem length : family.length = 358 := by decide',
         'theorem unique : UniqueKeys family := by decide',
         'theorem extends_old : Extends IndexedHighD2Certificates.family family := append_extends _ _',
         'theorem extra_entries : ∀ e ∈ extra, KeyValid e.key ∧ e.wire.Valid := by',
         '  unfold extra']
for e in extra:
    k = e['key']
    name = f'b_{k["object"]}_{k["s"]}_{k["t"]}_d{k["page"]}'.replace('-', 'neg')
    lines += [f'  refine List.forall_mem_cons.mpr ⟨⟨by decide, AggregateD5Conditional.Data.{name}_complete⟩, ?_⟩']
lines += ['  intro x h', '  exact False.elim (List.not_mem_nil h)',
          'theorem extra_coherent : Coherent extra := by',
          '  exact ⟨by decide, extra_entries, by decide⟩']
for i in range(7):
    lines += [f'theorem forward{i} : ∀ a ∈ IndexedHighD2Certificates.family, PairCompatible a extra[{i}] := by decide',
              f'theorem backward{i} : ∀ b ∈ IndexedHighD2Certificates.family, PairCompatible extra[{i}] b := by decide']
lines += ['theorem family_coherent : Coherent family := by',
          '  apply coherent_append IndexedHighD2Certificates.family_coherent extra_coherent unique',
          '  · intro a ha', '    unfold extra']
for i in range(7):
    lines += [f'    refine List.forall_mem_cons.mpr ⟨forward{i} a ha, ?_⟩']
lines += ['    intro x h', '    exact False.elim (List.not_mem_nil h)', '  · unfold extra']
for i in range(7):
    lines += [f'    refine List.forall_mem_cons.mpr ⟨backward{i}, ?_⟩']
lines += ['    intro x h', '    exact False.elim (List.not_mem_nil h)',
          '#print axioms family_coherent', 'end IndexedD5Certificates']
(out / 'Family.lean').write_text('\n'.join(lines) + '\n')

lines = ['import IndexedD5Certificates.Family',
         'import IndexedHighD2Certificates.GeneratedAll',
         'import AggregateD5Conditional.Pipeline.Executable3391',
         'set_option maxRecDepth 8192', 'set_option maxHeartbeats 8000000',
         'namespace IndexedD5Certificates', 'open IndexedFamilyCertificates',
         'theorem old_events : ∀ e ∈ IndexedHighD2Certificates.events, e.Valid family := by',
         '  intro e he',
         '  exact bound_extension extends_old unique (IndexedHighD2Certificates.all_events_valid e he)',
         'def event3391 : BoundWire := bound_event% "IndexedFamilyProducer/D5/events/event3391.json"',
         'theorem event3391_valid : event3391.Valid family := by',
         '  refine ⟨rfl, ⟨AggregateD5Conditional.Pipeline.Executable3391.indexed_valid, ?_⟩⟩',
         '  exact ⟨by decide, unique, by decide, by decide, by decide⟩',
         'theorem event3391_result : DifferentialAt family (keyAt event3391.object event3391.event.eventPage event3391.event.sourceDegree)',
         '    event3391.event.finite.source event3391.event.finite.target := event3391_valid.2.differential',
         'def events : List BoundWire := IndexedHighD2Certificates.events ++ [event3391]',
         'theorem event_count : events.length = 95 := by decide',
         'theorem all_events : ∀ e ∈ events, e.Valid family := by',
         '  intro e he', '  rcases List.mem_append.mp he with h | h',
         '  · exact old_events e h', '  · have equal : e = event3391 := List.mem_singleton.mp h',
         '    subst e', '    exact event3391_valid',
         '#print axioms all_events', 'end IndexedD5Certificates']
(out / 'Events.lean').write_text('\n'.join(lines) + '\n')
print('Generated extension proofs: 351 old +7 new blocks; 94 old +1 new event')
