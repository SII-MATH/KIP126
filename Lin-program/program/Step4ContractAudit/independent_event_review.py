"""Review current inventory boundaries and probe the coverage script in memory."""
from collections import Counter
from contextlib import redirect_stdout
import copy
import csv
import hashlib
import io
import json
from pathlib import Path
import re
from unittest.mock import patch

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
load = lambda p: json.loads(p.read_text())
inventory_path = ROOT / 'AggregateTargetInventory/inventory.json'
events_path = ROOT / 'AggregateD5Conditional/event-results.json'
producer_path = ROOT / 'FiniteEventProducer/D5/all95.jsonl'
inventory = load(inventory_path)
events = load(events_path)
rows = inventory['staircase']
by_id = {x['staircase_id']:x for x in rows}
assert len(by_id) == len(rows) == 105
event_ids = [x['staircase_id'] for x in events]
assert len(set(event_ids)) == len(event_ids) == 101
assert set(event_ids) <= set(by_id)
excluded = [x for x in rows if x['staircase_id'] not in event_ids]
assert sorted(x['staircase_id'] for x in excluded) == [2695,3080,3993,3994]
assert all(x['status'] == 'sentinel_unknown' and x['event_page'] is None and x['diff'] is None
           for x in excluded)
assert set(event_ids) == {x['staircase_id'] for x in rows if x['status'] != 'sentinel_unknown'}
slots = [by_id[i] for i in event_ids]
pending = [x['staircase_id'] for x in slots if x['diff'] is None]
assert sorted(pending) == [2696,2852]
for row in slots:
    if row['diff'] is None:
        assert row['status'] == 'stored_outgoing'
        continue
    assert isinstance(row['diff'],str) and re.fullmatch(r'(0|[1-9][0-9]*)(,(0|[1-9][0-9]*))*',row['diff'])
    support = list(map(int,row['diff'].split(',')))
    assert len(support) == len(set(support)) and support == row['diff_local_indices']
assert sum(x['diff'] is not None for x in slots) == 99
accepted = [x for x in events if x['status'] == 'finite_nonzero_event']
accepted_ids = [x['staircase_id'] for x in accepted]
assert len(accepted_ids) == len(set(accepted_ids)) == 95
assert set(accepted_ids).isdisjoint(pending)
assert len(set(event_ids)-set(accepted_ids)) == 6
assert len((set(event_ids)-set(accepted_ids))-set(pending)) == 4
assert Counter(x['classification'] for x in accepted) == {'stored_outgoing':59,'stored_incoming':36}
for event in events:
    row = by_id[event['staircase_id']]
    assert event['classification'] == row['status'] and event['event_page'] == row['event_page']

provenance_path = ROOT / 'FiniteEventProducer/D5/provenance.json'
indexed_path = ROOT / 'FiniteEventProducer/D5/indexed95.jsonl'
records = [json.loads(x) for x in producer_path.read_text().splitlines()]
indexed = [json.loads(x) for x in indexed_path.read_text().splitlines()]
provenance = load(provenance_path)['records']
assert len(provenance) == len(records) == len(indexed) == 95
assert [p['staircase_id'] for p in provenance] == accepted_ids
for event,pr,record,ix in zip(accepted,provenance,records,indexed,strict=True):
    assert pr['inventory'] == by_id[event['staircase_id']]
    assert pr['root'] == event['root'] and pr['event_page'] == event['event_page']
    assert record == ix['finite']
    assert record['source'] == event['source_coordinates']
    assert record['target'] == event['target_coordinates']
    assert len(record['sourceStages']) == len(pr['source_trace']) == event['event_page']-2
    assert len(record['targetStages']) == len(pr['target_trace']) == event['event_page']-2
assert sum(len(w['sourceStages'])+len(w['targetStages']) for w in records) == 102

# Execute the original script with in-memory input substitutions; writes are captured.
original_read = Path.read_text
source = (HERE / 'audit_coverage.py').read_text()
code = compile(source,str(HERE / 'audit_coverage.py'),'exec')
def probe(replacements):
    captured = {}
    def read(path,*args,**kwargs):
        if path in replacements:
            value = replacements[path]
            return value if isinstance(value,str) else json.dumps(value)
        return original_read(path,*args,**kwargs)
    def write(path,text,*args,**kwargs):
        captured[str(path)] = text
        return len(text)
    try:
        with patch.object(Path,'read_text',read),patch.object(Path,'write_text',write),redirect_stdout(io.StringIO()):
            exec(code,{'__file__':str(HERE / 'audit_coverage.py'),'__name__':'__review_probe__'})
        return dict(accepted=True,report=json.loads(next(iter(captured.values()))))
    except (AssertionError,KeyError,TypeError,ValueError,StopIteration) as error:
        return dict(accepted=False,error=type(error).__name__+': '+str(error))

baseline = probe({})
assert baseline['accepted'] and not baseline['report']['coverage_metadata_discrepancies']
mutants = {}
markers = ['?','[NULL]','possibly',False,0,'','00','0,','0,0','2,1','-1','1 2']
for marker in markers:
    altered = copy.deepcopy(inventory)
    next(x for x in altered['staircase'] if x['staircase_id']==2435)['diff'] = marker
    mutants['non_null_unknown_'+repr(marker)] = probe({inventory_path:altered})
altered = copy.deepcopy(inventory)
first = next(x for x in altered['staircase'] if x['staircase_id']==2435)
second = next(x for x in altered['staircase'] if x['staircase_id']==2492)
second.clear();second.update(copy.deepcopy(first))
mutants['missing_event_offset_by_duplicate_inventory_id'] = probe({inventory_path:altered})
altered = copy.deepcopy(events)
known_bad = next(x for x in altered if x['staircase_id']==2697)
known_bad.clear();known_bad.update(copy.deepcopy(next(x for x in altered if x['staircase_id']==2696)))
mutants['omitted_known_unresolved_event_replaced_by_duplicate_pending'] = probe({events_path:altered})
altered = copy.deepcopy(events)
next(x for x in altered if x['staircase_id']==2696)['status']='finite_nonzero_event'
next(x for x in altered if x['staircase_id']==2435)['status']='unresolved'
mutants['pending_promoted_to_accepted'] = probe({events_path:altered})
altered = copy.deepcopy(inventory)
next(x for x in altered['staircase'] if x['staircase_id']==2696)['diff']='0'
mutants['pending_changed_to_known'] = probe({inventory_path:altered})
mutants['certificate_content_replaced_with_same_stage_lengths'] = probe({producer_path:
    '\n'.join(json.dumps(dict(sourceStages=w['sourceStages'],targetStages=w['targetStages'])) for w in records)+'\n'})
assert not mutants['pending_promoted_to_accepted']['accepted']
assert not mutants['pending_changed_to_known']['accepted']
assert all(not mutants['non_null_unknown_'+repr(m)]['accepted'] for m in markers)
assert not mutants['missing_event_offset_by_duplicate_inventory_id']['accepted']
assert not mutants['omitted_known_unresolved_event_replaced_by_duplicate_pending']['accepted']
assert mutants['certificate_content_replaced_with_same_stage_lengths']['accepted']
report=dict(status='current_snapshot_and_hardened_boundaries_pass',
            current_counts=dict(inventory=105,excluded_sentinels=4,event_slots=101,known_values=99,
                                pending=pending,accepted=95,known_unresolved=4,outgoing=59,incoming=36,
                                actual_indexed_records=len(indexed),prior_steps=102),
            current_id_and_provenance_bijections=True,
            mutation_results={k:{kk:vv for kk,vv in v.items() if kk!='report'} for k,v in mutants.items()},
            findings=[],
            remaining_scope='Coverage counts are metadata; certificate contents and indexed records are independently bound here through producer provenance. The coverage script alone does not replace the producer or Lean certificate check.',
            source_sha256={str(p.relative_to(ROOT)):sha(p) for p in [HERE/'audit_coverage.py',inventory_path,events_path,producer_path,indexed_path,provenance_path]})
(HERE/'independent-event-review.json').write_text(json.dumps(report,indent=2)+'\n')
print(json.dumps({k:v for k,v in report.items() if k not in ['source_sha256','mutation_results']}))
