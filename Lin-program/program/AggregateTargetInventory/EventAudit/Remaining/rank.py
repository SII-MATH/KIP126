import collections,csv,json
from pathlib import Path
p=Path(__file__).resolve().parent;r=p.parents[2];dag=json.loads((p.parent/'dag.json').read_text());res=json.loads((p.parent/'event-results.json').read_text());impact=collections.defaultdict(set);records={}
def scan(K,root,seen):
 if K in seen:return
 seen.add(K);b=dag['blocks'][K];s,t=b['center'];page=b['page']
 for a,bb in [(s,t),(s-page,t-page+1)]:
  d=dag['degrees'][f'S0:{a},{bb}'];rs=d['e2'] if page==2 else [x for x in d['staircase'] if page<=x[3]<5000 or 5000<=x[3]<=10000-page]
  for row in rs:
   unknown=row[2] is None if page==2 else row[3]==9000 or row[3]==10000-page and row[2] is None
   if unknown:
    key=f'{a},{bb}:d{page}:row{row[0]}';impact[key].add(root);records[key]=dict(source=[a,bb],page=page,row=row,reason='unknown_d2' if page==2 else 'sentinel_unknown' if row[3]==9000 else 'unknown_event')
 for x in b['predecessors']:scan(x,root,seen)
for x in res:
 if x['status']=='unresolved':scan(x['root'],x['staircase_id'],set())
by=collections.defaultdict(list)
for k,z in records.items():
 z.update(key=k,events=sorted(impact[k]),impact=len(impact[k]),proof_events=[])
 if z['page']>2:by[(*z['source'],z['page'])].append(z)
for f in sorted((r/'upstream/proofs_csv').glob('proofs-part*.csv')):
 with f.open(newline='',encoding='utf-8-sig') as inp:
  rd=csv.DictReader(inp)
  for record,e in enumerate(rd,1):
   if e['name']!='S0':continue
   for z in by.get((int(e['s']),int(e['t']),int(e['r'])),[]):
    if e['x']==z['row'][1]:z['proof_events'].append(dict(file=f.name,record=record,physical_end_line=rd.line_num,**e))
out=sorted(records.values(),key=lambda x:(-x['impact'],x['page'],x['source']));(p/'ranking.json').write_text(json.dumps(out,indent=2)+'\n')
for z in out[:20]:print(z['impact'],z['key'],[(x['id'],x['reason'],x['dx']) for x in z['proof_events']])
