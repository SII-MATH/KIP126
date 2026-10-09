"""All events refer to one full imported family, never a batch-local subset."""
import json
import re
from pathlib import Path

p=Path(__file__).resolve().parent
root=p.parent
out=root/'IndexedFamilyCertificates'
pro=json.loads((p/'provenance.json').read_text())
family=['import IndexedFamilyCertificates.Import','set_option maxRecDepth 8192',
        'set_option maxHeartbeats 4000000','namespace IndexedFamilyCertificates.Generated',
        'def family : Family := family_input% "IndexedFamilyProducer/family.json"',
        'theorem family_length : family.length = 336 := by decide',
        'theorem family_unique : UniqueKeys family := by decide',
        'end IndexedFamilyCertificates.Generated']
(out/'GeneratedFamily.lean').write_text('\n'.join(family)+'\n')
records=pro['records'];assert len(records)==90
existing={}
for file in (root/'AggregateTargetInventory/EventAudit').glob('IndexedBatch*.lean'):
    for rid in re.findall(r'theorem event(\d+)_valid',file.read_text()):
        existing[int(rid)]=(f'AggregateTargetInventory.EventAudit.{file.stem}',f'AggregateTargetInventory.EventAudit.{file.stem}.event{rid}_valid')
existing[3254]=('AggregateD4Conditional.Executable3254','AggregateD4Conditional.Executable3254.indexed_valid')
for rid in [3744,3745]:
    module=f'AggregateThreeProductConditional.Pipeline.Executable{rid}'
    existing[rid]=(module,module+'.indexed_valid')
batchnames=[]
for start in range(0,len(records),10):
    name=f'GeneratedBatch{start//10}'
    batchnames.append(name)
    lines=['import IndexedFamilyCertificates.GeneratedFamily']+[f'import {m}' for m in sorted({existing[x['staircase_id']][0] for x in records[start:start+10]})]+['set_option maxRecDepth 8192',
           'set_option maxHeartbeats 4000000',
           'namespace IndexedFamilyCertificates.Generated']
    for record in records[start:start+10]:
        rid=record['staircase_id'];n=f'event{rid}'
        lines += [f'def {n} : BoundWire := bound_event% "IndexedFamilyProducer/events/{n}.json"',
                  f'theorem {n}_valid : {n}.Valid family := by',
                  f'  refine ⟨rfl, ⟨{existing[rid][1]}, ?_⟩⟩',
                  '  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩',
                  '  · decide', '  · decide', '  · decide',
                  f'theorem {n}_differential : DifferentialAt family (keyAt {n}.object {n}.event.eventPage {n}.event.sourceDegree)',
                  f'    {n}.event.finite.source {n}.event.finite.target := {n}_valid.2.differential']
    lines+=['end IndexedFamilyCertificates.Generated']
    (out/(name+'.lean')).write_text('\n'.join(lines)+'\n')
alllines=[f'import IndexedFamilyCertificates.{n}' for n in batchnames]
alllines+=['set_option maxRecDepth 8192','set_option maxHeartbeats 8000000','namespace IndexedFamilyCertificates.Generated',
           'def events : List BoundWire := ['+','.join(f'event{x["staircase_id"]}' for x in records)+']',
           'theorem events_count : events.length = 90 := by decide',
           'theorem all_events_valid : ∀ event ∈ events, event.Valid family := by',
           '  intro event h',
           '  simp only [events, List.mem_cons, List.not_mem_nil, or_false] at h',
           '  rcases h with '+' | '.join('rfl' for _ in records)]
alllines += [f'  · exact event{x["staircase_id"]}_valid' for x in records]
alllines+=['#print axioms all_events_valid','end IndexedFamilyCertificates.Generated']
(out/'GeneratedAll.lean').write_text('\n'.join(alllines)+'\n')
print('one shared family + nine ten-event proof batches + aggregate90 theorem')
