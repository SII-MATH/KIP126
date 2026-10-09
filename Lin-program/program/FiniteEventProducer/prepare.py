"""Extract raw endpoints and complete trace inputs; preserve every source field."""
import hashlib,json,pathlib
p=pathlib.Path(__file__).resolve().parent;r=p.parent;src=r/'AggregateTargetInventory/EventAudit'
s=json.loads((src/'source.json').read_text());dag=json.loads((src/'dag.json').read_text());events=json.loads((src/'event-results.json').read_text());traces=json.loads((src/'trajectory-cycles.json').read_text());lookup={x['staircase_id']:x for x in traces}
records=[];provenance=[]
for eid in [e["staircase_id"] for e in events if e["status"]=="finite_nonzero_event"]:
    e=next(x for x in events if x['staircase_id']==eid);tr=lookup[eid];out=dict(version=1,event=s['blocks'][e['root']]['wire'],source=list(map(bool,e['source_coordinates'])),target=list(map(bool,e['target_coordinates'])))
    for endpoint in tr['endpoints']:
        name=endpoint['endpoint'];key='raw'+name.title();a,t=endpoint['degree'];dim=len(dag['degrees'][f'S0:{a},{t}']['e2']);out[key]=[i in endpoint['raw_local_indices'] for i in range(dim)]
        out[name+'Stages']=[dict(wire=s['blocks'][step['comparison']]['wire'],representative=list(map(bool,step['coordinates']))) for step in endpoint['prior_stages']]
    records.append(out);provenance.append(dict(staircase_id=eid,event_page=e['event_page'],root=e['root'],conditional_uses=e['conditional_uses'],source_trace=tr))
(p/'all87.input.jsonl').write_text(''.join(json.dumps(x,sort_keys=True,separators=(',',':'))+'\n' for x in records))
(p/'provenance.json').write_text(json.dumps(dict(records=provenance,input_hashes={name:hashlib.sha256((src/name).read_bytes()).hexdigest() for name in ['source.json','dag.json','event-results.json','trajectory-cycles.json']}),indent=2)+'\n')

examples=[records[i] for i,e in enumerate(provenance) if e['staircase_id'] in (2435,2492)]
(p/'actual.input.jsonl').write_text(''.join(json.dumps(x,sort_keys=True,separators=(',',':'))+'\n' for x in examples))
