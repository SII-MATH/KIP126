"""Add the final target with an explicitly named successor-zero condition."""
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
load = lambda path: json.loads((ROOT / path).read_text())
old = load('AggregateD5Conditional/source.json')['blocks']
base = {**old, **load('AggregateIncomingTargetCompletion/data.json')['extra']}
successor = load('Row3743Successor/source.json')['blocks']
conditional = load('AggregateIncomingTargetCompletion/conditional3391-search.json')['blocks']
extra = {key: value for key, value in sorted({**successor, **conditional}.items()) if key not in base}
assert len(extra) == 15


def name(key):
    prefix = 'ConditionalData' if key in conditional else 'Row3743Successor.Data'
    return prefix + '.b_' + key.replace(':', '_').replace(',', '_').replace('-', 'neg')


lines = ['import AggregateIncomingTargetCompletion.Targets', 'import Row3743Successor.Named',
         'namespace AggregateIncomingTargetCompletion.ConditionalData',
         'open LinearCertificates PageTransitionCertificates', 'set_option maxRecDepth 12000']
for key, block in conditional.items():
    wire = block['wire']
    local = name(key).split('.')[-1]
    fields = ['version', 'k', 'm', 'n', 'h', 'outgoing', 'incoming', 'inclusion', 'projection', 'up', 'down']
    literal = ','.join(json.dumps(wire[field], separators=(',', ':')) for field in fields)
    lines += [f'def {local} : WireComparison := ⟨{literal}⟩',
              f'theorem {local}_complete : {local}.Valid := by lin_cert using ()']
lines += ['end AggregateIncomingTargetCompletion.ConditionalData',
          'namespace AggregateIncomingTargetCompletion.Final',
          'open IndexedFamilyCertificates PageTransitionCertificates',
          'set_option maxHeartbeats 16000000',
          'def extra : Family := [']
for i, (key, block) in enumerate(extra.items()):
    s, t = block['center']
    lines += [f'  ⟨⟨"S0",{block["page"]},{s},{t}⟩,{name(key)}⟩' + (',' if i+1 < len(extra) else '')]
lines += [']', 'theorem extra_count : extra.length = 15 := by decide',
          'theorem extra_entries : ∀ e ∈ extra, KeyValid e.key ∧ e.wire.Valid := by', '  unfold extra']
for key in extra:
    lines += [f'  refine List.forall_mem_cons.mpr ⟨⟨by decide,{name(key)}_{"complete" if key in conditional else "valid"}⟩,?_⟩']
lines += ['  intro x h', '  exact False.elim (List.not_mem_nil h)',
          'theorem extra_coherent : Coherent extra := ⟨by decide,extra_entries,by decide⟩',
          '#print axioms extra_coherent', 'end AggregateIncomingTargetCompletion.Final']
(HERE / 'FinalData.lean').write_text('\n'.join(lines) + '\n')

lines = ['import AggregateIncomingTargetCompletion.FinalData',
         'namespace AggregateIncomingTargetCompletion.Final',
         'open IndexedFamilyCertificates IndexedD5Certificates',
         'set_option maxRecDepth 20000', 'set_option maxHeartbeats 18000000',
         'def family : Family := AggregateIncomingTargetCompletion.family ++ extra',
         'theorem count : family.length = 399 := by decide',
         'theorem unique : UniqueKeys family := by decide',
         'theorem extends_base : Extends AggregateIncomingTargetCompletion.family family := append_extends _ _',
         'theorem extends_original : Extends IndexedD5Certificates.family family := by',
         '  intro key wire found',
         '  exact extends_base _ _ (AggregateIncomingTargetCompletion.extends_old _ _ found)']
for i in range(15):
    lines += [f'theorem forward{i} : ∀ a ∈ AggregateIncomingTargetCompletion.family, PairCompatible a extra[{i}] := by decide',
              f'theorem backward{i} : ∀ b ∈ AggregateIncomingTargetCompletion.family, PairCompatible extra[{i}] b := by decide']
lines += ['theorem coherent : Coherent family := by',
          '  apply coherent_append AggregateIncomingTargetCompletion.coherent extra_coherent unique',
          '  · intro a ha', '    unfold extra']
for i in range(15):
    lines += [f'    refine List.forall_mem_cons.mpr ⟨forward{i} a ha,?_⟩']
lines += ['    intro x h', '    exact False.elim (List.not_mem_nil h)',
          '  · intro a ha', '    unfold extra at ha',
          '    simp only [List.mem_cons,List.not_mem_nil,or_false] at ha',
          '    rcases ha with ' + ' | '.join(['rfl'] * 15)]
for i in range(15):
    lines += [f'    · exact backward{i}']
lines += ['theorem all_95_events : ∀ e ∈ IndexedD5Certificates.events, e.Valid family := by',
          '  intro e he', '  exact bound_extension extends_original unique (IndexedD5Certificates.all_events e he)',
          '#print axioms coherent', '#print axioms all_95_events',
          'end AggregateIncomingTargetCompletion.Final']
(HERE / 'FinalFamily.lean').write_text('\n'.join(lines) + '\n')
(HERE / 'final-data.json').write_text(json.dumps(dict(extra=extra, base_count=384,
    final_count=399, conditional_row=[3743, '0', None, 9000], conditional_kind='conditional_successor_row3986',
    new_targets=[3391], all_incoming_targets=36,
    scope='The numeric final target uses the separately proved successor-zero rule with actual coordinate and known-event meaning still required.'), indent=2) + '\n')
print('15 final extra blocks;399 coherent candidates;row3743 raw NULL preserved')
