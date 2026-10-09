"""Audit full-basis d2 reconstruction, all matrix roles, and all 94 trajectories."""
import hashlib,importlib.util,json,subprocess
from pathlib import Path
p=Path(__file__).resolve().parent;root=p.parent
sha=lambda f:hashlib.sha256(f.read_bytes()).hexdigest()
names=['source.json','event-results.json','Data.lean','Events.lean'];before={n:sha(p/n) for n in names}
subprocess.run(['python3',str(p/'events.py')],check=True)
assert before=={n:sha(p/n) for n in names}
source=json.loads((p/'source.json').read_text());old=json.loads((root/'AggregateHighD2Conditional/source.json').read_text())
events=json.loads((p/'event-results.json').read_text());old_events=json.loads((root/'AggregateHighD2Conditional/event-results.json').read_text())
dag=json.loads((p/'dag.json').read_text());high=json.loads((root/'HighFiltrationD2Audit/report.json').read_text())
assert (p/'dag.json').read_bytes()==(root/'AggregateHighD2Conditional/dag.json').read_bytes()
assert len(source['blocks'])==355 and len(old['blocks'])==351
for k,b in old['blocks'].items():assert source['blocks'][k]==b,k
assert source['database_sha256']==old['database_sha256']
assert len(events)==101 and len({e['staircase_id'] for e in events})==101
assert [e['staircase_id'] for e,o in zip(events,old_events,strict=True) if e!=o]==[2696,2697,3391]
spec=importlib.util.spec_from_file_location('raw_audit',root/'Row2925Detector/source_independent_audit.py');audit=importlib.util.module_from_spec(spec);spec.loader.exec_module(audit)
high_by_degree={tuple(b['degree']):b for b in high['reconstructed_degrees']}
assert len(high_by_degree)==25 and not high['failures']
known=unknown=0
for (s,t),b in high_by_degree.items():
 assert dag['degrees'][f'S0:{s},{t}']['e2']==b['source_basis']
 assert dag['degrees'][f'S0:{s+2},{t+1}']['e2']==b['target_basis']
 assert dag['degrees'][f'S0:{s},{t}']['staircase']==b['staircase']
 w=json.loads((root/f'HighFiltrationD2Audit/wire/d{s}_{t}.json').read_text());m=b['cols'];k=b['rows']
 assert w['matrix']==b['entries'] and w['basis']==[bool(b['basis_columns'][j][i]) for i in range(m) for j in range(m)]
 assert audit.matmul(w['basis'],w['inverse'],m,m,m)==[i==j for i in range(m) for j in range(m)]
 assert audit.matmul(w['images'],w['inverse'],k,m,m)==w['matrix']
 for j,(_,_,raw) in enumerate(b['source_basis']):
  if raw is None:unknown+=1
  else:
   ids=list(map(int,raw.split(','))) if raw else [];known+=1
   assert [bool(b['entries'][i*m+j]) for i in range(k)]==[i in ids for i in range(k)]
assert (known,unknown)==(9,15)
roles={};uses=[]
for key,block in source['blocks'].items():
 assert all(k in source['blocks'] for k in block['predecessors'])
 audit.wire_laws(block['wire'])
 for u in block['uses']:
  if u['kind']!='conditional_d2_staircase':continue
  assert block['page']==u['page']==2 and u['object']=='S0' and u['row'][2] is None
  degree=tuple(u['source']);b=high_by_degree[degree];assert b['source_basis'][u['column']]==u['row']
  assert b['evidence']==u['staircase_basis_evidence'];s,t=degree
  assert u['basis_certificate']==f'd{s}_{t}'
  field='outgoing' if u['source']==block['center'] else 'incoming'
  assert block['wire'][field]==b['entries']
  roles[key,field]=u['basis_certificate'];uses.append(dict(block=key,role=field,**u))
assert len(uses)==16 and len(roles)==14
horizontal=vertical=0
for key,b in source['blocks'].items():
 o=b['object'];s,t=b['center'];r=b['page'];w=b['wire']
 nxt=source['blocks'].get(f'{o}:{s+r},{t+r-1}:d{r}')
 if nxt:
  horizontal+=1;assert w['k']==nxt['wire']['m'] and w['m']==nxt['wire']['n'] and w['outgoing']==nxt['wire']['incoming']
 nxt=source['blocks'].get(f'{o}:{s},{t}:d{r+1}')
 if nxt:vertical+=1;assert w['h']==nxt['wire']['m']
inventory = {r["staircase_id"]: r for r in
             json.loads((root / "AggregateTargetInventory/inventory.json").read_text())["staircase"]}
trace_count = 0
for event in events:
    if event["status"] != "finite_nonzero_event":
        continue
    row = inventory[event["staircase_id"]]
    page = event["event_page"]
    start = [row["filtration"], row["total_degree"]] if row["status"] == "stored_outgoing" else row["other_degree"]
    finish = [start[0]+page, start[1]+page-1]
    for name, center, indices in [
        ("source", start, row["base_local_indices"] if row["status"] == "stored_outgoing" else row["diff_local_indices"]),
        ("target", finish, row["diff_local_indices"] if row["status"] == "stored_outgoing" else row["base_local_indices"]),
    ]:
        s, t = center
        v = [i in indices for i in range(len(dag["degrees"][f"S0:{s},{t}"]["e2"]))]
        for q in range(2, page):
            w = source["blocks"][f"S0:{s},{t}:d{q}"]["wire"]
            assert not any(audit.matmul(w["outgoing"], v, w["k"], w["m"], 1))
            v = audit.matmul(w["projection"], v, w["h"], w["m"], 1)
            assert any(v)
            trace_count += 1
        assert v == event[name + "_coordinates"]
    w = source["blocks"][event["root"]]["wire"]
    assert audit.matmul(w["outgoing"], event["source_coordinates"], w["k"], w["m"], 1) == event["target_coordinates"]
    assert any(event["target_coordinates"])
assert sum(e["status"] == "finite_nonzero_event" for e in events) == 94
assert sum(e["status"] == "unresolved" for e in events) == 7
assert trace_count == 96

new_uses=[]
for key,b in source['blocks'].items():
 for u in b['uses']:
  if u['kind']=='conditional_dc2h6_d3':
   assert key=='S0:12,136:d3' and u['source']==[9,134] and u['page']==3 and u['row']==[2695,'2',None,9000]
   new_uses.append(dict(block=key,role='incoming',**u))
  if u['kind']=='conditional_dc2h6_d4':
   assert key=='S0:13,139:d4' and u['source']==[9,136] and u['page']==4 and u['row']==[2861,'1',None,9000]
   new_uses.append(dict(block=key,role='incoming',**u))
assert len(new_uses)==2
for rid,message in [(2696,'unknown S0:6,132:d3:row2574; target dimension 3'),(2697,'unknown S0:6,132:d3:row2574; target dimension 3'),(3391,'unknown S0:11,138:d3:row3019; target dimension 2')]:
 e=next(e for e in events if e['staircase_id']==rid);assert e['status']=='unresolved' and e['reason']==message
assert not any(u['row'][0] in [2574,3019] for b in source['blocks'].values() for u in b['uses'] if u['kind'] in ['conditional_dc2h6_d3','conditional_dc2h6_d4'])
assert set(source['blocks'])-set(old['blocks'])=={'S0:12,136:d3','S0:13,139:d4','S0:3,129:d5','S0:8,133:d4'}
report=dict(complete_comparisons=355,unchanged_previous_comparisons=351,finite_nonzero_events=94,unresolved=7,
 new_events=[],new_dc2h6_uses=new_uses,all_accepted_prior_stages=trace_count,
 reconstructed_degrees=25,raw_known_columns=known,raw_null_columns_preserved=unknown,
 conditional_column_roles=uses,whole_matrix_meaning_links=len(roles),horizontal_pairs=horizontal,consecutive_pairs=vertical,
 generated_sha256=before,dependency_sha256={str(f.relative_to(root)):sha(f) for f in [p/'dag.json',p/'generate.py',p/'events.py',p/'review.py',root/'HighFiltrationD2Audit/report.json',root/'HighFiltrationD2Certificates/Data.lean',root/'AggregateHighD2Conditional/source.json',root/'Row2861D4Detector/ImportedMeaning.lean',root/'Row2695Detector/Matches.lean']+sorted((root/'HighFiltrationD2Audit/wire').glob('d*.json'))},
 interpretation_obligations=['full staircase basis values','incoming-boundary and later-prefix d2 meanings','linearity and zero preservation','earlier conditional finite-data meanings','actual Adams realization'])
(p/'review.json').write_text(json.dumps(report,indent=2)+'\n')
print(f'355 comparisons/351 unchanged;94 complete events/96 prior stages;16 rawNULL column roles/14 complete matrix meanings;9 known raw columns preserved;2 new conditional incoming rules;7 unresolved')
