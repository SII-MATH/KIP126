"""Rank unresolved row/page values by concrete proof-log leads, not proof status."""
import csv,json
from pathlib import Path
p=Path(__file__).resolve().parent;r=p.parent
items=[dict(x,exact_events=[],same_degree_events=[]) for x in json.loads((p/'blockers.json').read_text())['unknown_rows'] if not x['zero_target_candidate']]
by={}
for x in items:by.setdefault((str(x['source'][0]),str(x['source'][1]),str(x['page'])),[]).append(x)
for f in sorted((r/'upstream/proofs_csv').glob('proofs-part*.csv')):
 with f.open(encoding='utf-8-sig',newline='') as inp:
  for line,e in enumerate(csv.DictReader(inp),2):
   if e['name']!='S0':continue
   for x in by.get((e['s'],e['t'],e['r']),[]):
    v={'file':f.name,'line':line,**e};x['same_degree_events'].append(v)
    if e['x']==x['row'][1]:x['exact_events'].append(v)
for x in items:
 exact=x['exact_events'];x['priority']=0 if any(e['reason']=='N' and e['dx']=='' for e in exact) else 1 if any(e['reason']=='D' for e in exact) else 2 if any(e['reason']=='G' for e in exact) else 3
items.sort(key=lambda x:(x['priority'],x['page'],x['source']))
(p/'ranked-sources.json').write_text(json.dumps(items,indent=2)+'\n')
for x in items:print(x['priority'],x['source'],x['page'],x['row'],[(e['id'],e['reason'],e['dx'],e['info'][:100]) for e in x['exact_events']])
