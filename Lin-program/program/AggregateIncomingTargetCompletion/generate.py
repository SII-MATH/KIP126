"""Bind twelve previously missing targets to existing complete comparisons."""
import hashlib
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
load = lambda path: json.loads((ROOT / path).read_text())
sha = lambda path: hashlib.sha256(path.read_bytes()).hexdigest()
old = load('AggregateD5Conditional/source.json')['blocks']
e4 = load('Stem125E4Search/search.json')['new_blocks']
e5 = load('Stem125E5Search/search.json')['branches'][0]['new_blocks']
assert e5 == load('Stem125E5Search/search.json')['branches'][1]['new_blocks']
blocks = {**old, **e4, **e5}
mapping = load('AggregateEliminationCertificates/mapping.json')
ids = mapping['missing_same_page_target_comparisons'][:-1]
assert len(ids) == 12 and mapping['missing_same_page_target_comparisons'][-1] == 3391
matches = [row for row in mapping['matches'] if row['staircase_id'] in ids]
roots = {row['target_same_page_key'] for row in matches}
closure = set()


def visit(key):
    if key in closure:
        return
    closure.add(key)
    for predecessor in blocks[key]['predecessors']:
        visit(predecessor)


for key in roots:
    visit(key)
extra = {key: blocks[key] for key in sorted(closure - set(old))}
assert len(extra) == 26 and len(closure) == 88 and len(roots) == 10


def name(key):
    namespace = 'AggregateD5Conditional.Data' if key in old else 'Stem125E4Search.Data' if key in e4 else 'Stem125E5Search.Data'
    return namespace + '.b_' + key.replace(':', '_').replace(',', '_').replace('-', 'neg')


def entry(key):
    block = blocks[key]
    s, t = block['center']
    return f'⟨⟨"S0",{block["page"]},{s},{t}⟩,{name(key)}⟩'


lines = ['import Stem125E4Search.Data', 'import Stem125E5Search.Data',
         'import IndexedD5Certificates.Events', 'namespace AggregateIncomingTargetCompletion',
         'open IndexedFamilyCertificates PageTransitionCertificates',
         'set_option maxRecDepth 10000', 'set_option maxHeartbeats 12000000',
         'def extra : Family := [\n  ' + ',\n  '.join(entry(key) for key in extra) + '\n]',
         'theorem extra_count : extra.length = 26 := by decide',
         'theorem extra_entries : ∀ e ∈ extra, KeyValid e.key ∧ e.wire.Valid := by',
         '  unfold extra']
for key in extra:
    lines += [f'  refine List.forall_mem_cons.mpr ⟨⟨by decide,{name(key)}_complete⟩,?_⟩']
lines += ['  intro x h', '  exact False.elim (List.not_mem_nil h)',
          'theorem extra_coherent : Coherent extra := ⟨by decide,extra_entries,by decide⟩',
          '#print axioms extra_coherent', 'end AggregateIncomingTargetCompletion']
(HERE / 'Data.lean').write_text('\n'.join(lines) + '\n')

lines = ['import AggregateIncomingTargetCompletion.Data',
         'namespace AggregateIncomingTargetCompletion',
         'open IndexedFamilyCertificates IndexedD5Certificates',
         'set_option maxRecDepth 20000', 'set_option maxHeartbeats 18000000',
         'def family : Family := IndexedD5Certificates.family ++ extra',
         'theorem count : family.length = 384 := by decide',
         'theorem unique : UniqueKeys family := by decide',
         'theorem extends_old : Extends IndexedD5Certificates.family family := append_extends _ _']
for i in range(26):
    lines += [f'theorem forward{i} : ∀ a ∈ IndexedD5Certificates.family, PairCompatible a extra[{i}] := by decide',
              f'theorem backward{i} : ∀ b ∈ IndexedD5Certificates.family, PairCompatible extra[{i}] b := by decide']
lines += ['theorem coherent : Coherent family := by',
          '  apply coherent_append IndexedD5Certificates.family_coherent extra_coherent unique',
          '  · intro a ha', '    unfold extra']
for i in range(26):
    lines += [f'    refine List.forall_mem_cons.mpr ⟨forward{i} a ha,?_⟩']
lines += ['    intro x h', '    exact False.elim (List.not_mem_nil h)',
          '  · intro a ha', '    unfold extra at ha',
          '    simp only [List.mem_cons,List.not_mem_nil,or_false] at ha',
          '    rcases ha with ' + ' | '.join(['rfl'] * 26)]
for i in range(26):
    lines += [f'    · exact backward{i}']
lines += ['theorem all_95_events : ∀ e ∈ IndexedD5Certificates.events, e.Valid family := by',
          '  intro e he',
          '  exact bound_extension extends_old unique (IndexedD5Certificates.all_events e he)',
          '#print axioms coherent', '#print axioms all_95_events',
          'end AggregateIncomingTargetCompletion']
(HERE / 'Family.lean').write_text('\n'.join(lines) + '\n')


lines = ['import AggregateIncomingTargetCompletion.Family',
         'import AggregateEliminationCertificates.Data',
         'namespace AggregateIncomingTargetCompletion',
         'open LinearCertificates PageTransitionCertificates IndexedFamilyCertificates',
         'set_option maxRecDepth 20000', 'set_option maxHeartbeats 16000000',
         '/-- A complete target comparison and an explicit incoming preimage prove zero in its finite homology quotient. -/',
         'theorem target_boundary_zero (w : WireComparison) (valid : w.Valid) (x : Vec w.m)',
         '    (incoming : InImage (matrixOf w.m w.n w.incoming) x) :',
         '    ∃ cycle : Cycle (matrixOf w.k w.m w.outgoing), cycle.val = x ∧',
         '      (Quot.mk _ cycle : Homology (matrixOf w.k w.m w.outgoing)',
         '        (matrixOf w.m w.n w.incoming)) = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) := by',
         '  obtain ⟨source,eq⟩ := incoming',
         '  have cycle : InKernel (matrixOf w.k w.m w.outgoing) x := by',
         '    rw [← eq]', '    exact valid.2.1 source',
         '  refine ⟨⟨x,cycle⟩,rfl,?_⟩', '  apply Quot.sound',
         '  change InImage _ (add x zero)', '  rw [ResolutionCertificates.add_zero]',
         '  exact ⟨source,eq⟩',
         'def completedIds : List Nat := [' + ','.join(map(str,ids)) + ']',
         'theorem completed_count : completedIds.length = 12 := by decide',
         'theorem old_missing_partition : AggregateEliminationCertificates.Data.missingIncomingTarget =',
         '    completedIds ++ [3391] := rfl',
         'theorem all_35_incoming_targets : (AggregateEliminationCertificates.Data.suppliedIncomingTarget ++ completedIds).length = 35 := by decide']
for record in matches:
    rid = record['staircase_id']
    key = record['target_same_page_key']
    block = blocks[key]
    s,t = block['center']; page=block['page']
    target = name(key)
    event = f'IndexedHighD2Certificates.event{rid}'
    sourcevec = f'AggregateD5Conditional.Events.event{rid}Source'
    targetvec = f'AggregateD5Conditional.Events.event{rid}Target'
    sourcekey = record['root']
    source = name(sourcekey)
    targetprevious = name(f'S0:{s},{t}:d{page-1}')
    source_s, source_t = blocks[sourcekey]['center']
    sourceprevious = name(f'S0:{source_s},{source_t}:d{page-1}')
    outprevious = name(f'S0:{s+page},{t+page-1}:d{page-1}')
    lines += [f'def target{rid} : WireComparison := {target}',
      f'theorem event{rid}_same_family : {event}.Valid family :=',
      f'  IndexedD5Certificates.bound_extension extends_old unique',
      f'    (IndexedD5Certificates.bound_extension IndexedD5Certificates.extends_old IndexedD5Certificates.unique',
      f'      IndexedHighD2Certificates.event{rid}_valid)',
      f'theorem event{rid}_full_stage_binding :',
      f'    StageBinding family {event}.object {event}.event.sourceDegree {event}.event.finite.sourceStages ∧',
      f'    StageBinding family {event}.object {event}.event.targetDegree {event}.event.finite.targetStages :=',
      f'  ⟨event{rid}_same_family.2.2.2.2.2.1,event{rid}_same_family.2.2.2.2.2.2⟩',
      f'theorem target{rid}_lookup : lookup family (keyAt {event}.object',
      f'    {event}.event.eventPage {event}.event.targetDegree) = some target{rid} := by decide',
      f'theorem target{rid}_exact_previous :',
      f'    {targetprevious}.h = target{rid}.m ∧',
      f'    {sourceprevious}.h = target{rid}.n ∧',
      f'    {outprevious}.h = target{rid}.k := by decide',
      f'theorem target{rid}_complete : target{rid}.Valid := {target}_complete',
      f'theorem target{rid}_full_incoming : target{rid}.incoming = {event}.event.finite.event.outgoing ∧',
      f'    target{rid}.m = {event}.event.finite.event.k ∧',
      f'    target{rid}.n = {event}.event.finite.event.m := by decide',
      f'theorem target{rid}_event_target : {targetvec} = {event}.event.finite.targetVector := by',
      '  funext i', f'  exact (show ∀ i, {targetvec} i = {event}.event.finite.targetVector i from by decide) i',
      f'theorem target{rid}_event_source : {sourcevec} = {event}.event.finite.sourceVector := by',
      '  funext i', f'  exact (show ∀ i, {sourcevec} i = {event}.event.finite.sourceVector i from by decide) i',
      f'theorem target{rid}_image : InImage (matrixOf target{rid}.m target{rid}.n target{rid}.incoming) {targetvec} := by',
      f'  refine ⟨{sourcevec},?_⟩', '  funext i',
      f'  exact (show ∀ i, eval (matrixOf target{rid}.m target{rid}.n target{rid}.incoming) {sourcevec} i = {targetvec} i from by decide) i',
      f'theorem target{rid}_quotient_zero :',
      f'    ∃ cycle : Cycle (matrixOf target{rid}.k target{rid}.m target{rid}.outgoing), cycle.val = {targetvec} ∧',
      f'      (Quot.mk _ cycle : Homology (matrixOf target{rid}.k target{rid}.m target{rid}.outgoing)',
      f'        (matrixOf target{rid}.m target{rid}.n target{rid}.incoming)) =',
      '          Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) :=',
      f'  target_boundary_zero target{rid} target{rid}_complete _ target{rid}_image',
      f'theorem target{rid}_whole_quotient_zero (x : Homology',
      f'    (matrixOf target{rid}.k target{rid}.m target{rid}.outgoing)',
      f'    (matrixOf target{rid}.m target{rid}.n target{rid}.incoming)) :',
      '    x = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) :=',
      f'  AllClaimZeroTargetCertificates.zero_quotient target{rid}.comparison target{rid}_complete.2 x',
      f'#print axioms target{rid}_quotient_zero']
lines += ['#print axioms target_boundary_zero', '#print axioms old_missing_partition',
          '#print axioms all_35_incoming_targets','end AggregateIncomingTargetCompletion']
(HERE / 'Targets.lean').write_text('\n'.join(lines) + '\n')

files = [ROOT / path for path in ['AggregateD5Conditional/source.json',
    'Stem125E4Search/search.json', 'Stem125E5Search/search.json',
    'AggregateEliminationCertificates/mapping.json',
    'IndexedFamilyProducer/D5/bound95.jsonl', 'IndexedFamilyProducer/D5/provenance.json']]
report = dict(status='twelve_existing_target_comparisons_bound', ids=ids,
    targets={row['staircase_id']: row['target_same_page_key'] for row in matches},
    closure={key: blocks[key] for key in sorted(closure)}, extra=extra,
    old_count=358, merged_count=384, target_count=10, old_missing_count=13,
    remaining=[3391], remaining_key='S0:18,143:d5',
    remaining_obstruction='S0:23,147:d4 row3743 unknown with target dimension1; separate successor argument is not assumed here.',
    input_sha256={str(path.relative_to(ROOT)): sha(path) for path in files})
(HERE / 'data.json').write_text(json.dumps(report, indent=2) + '\n')
print('12 targets /10 unique comparisons /88 predecessor closure /26 added /384 merged')
