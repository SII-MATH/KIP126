import json,csv,sqlite3,hashlib
from pathlib import Path
p=Path(__file__).resolve().parent;r=p.parent;db=r/'upstream/kervaire-49/S0_AdamsSS_t261.db';c=sqlite3.connect(f'file:{db}?mode=ro',uri=True)
d=json.loads((r/'AllClaimTrajectoryAudit/shared-dag.json').read_text());claims=json.loads((r/'AllClaimTrajectoryAudit/claims.json').read_text());claim=next(x for x in claims['claims'] if x['claim']=='fact-7.6-4');items=[]
for key in claim['unknown_refs']:
 x=dict(d['rows'][key]);s,t=x['source'];bs=c.execute('select id,mon,d2 from S0_AdamsE2_basis where s=? and t=? order by id',(s,t)).fetchall();x['summands']=[]
 for j in map(int,x['raw'][1].split(',')):
  row=bs[j];a=list(map(int,row[1].split(',')));x['summands'].append({'local':j,'basis':row,'factors':[{'exponent':e,'generator':c.execute('select id,name,s,t from S0_AdamsE2_generators where id=?',(g,)).fetchone()} for g,e in zip(a[::2],a[1::2])]})
 x['events']=[];items.append(x)
files=[]
for f in sorted((r/'upstream/proofs_csv').glob('proofs-part*.csv')):
 files.append({'file':f.name,'sha256':hashlib.sha256(f.read_bytes()).hexdigest()})
 with f.open(encoding='utf-8-sig',newline='') as inp:
  for line,event in enumerate(csv.DictReader(inp),2):
   for x in items:
    if event['name']=='S0' and event['s']==str(x['source'][0]) and event['t']==str(x['source'][1]) and event['r']==str(x['page']):
     x['events'].append({'file':f.name,'line':line,**event})
(p/'sources.json').write_text(json.dumps({'sha256':hashlib.sha256(db.read_bytes()).hexdigest(),'files':files,'items':items},indent=2)+'\n')
for x in items:
 print(x['source'],x['page'],x['raw'],'summands',x['summands'])
 for e in x['events']:print(e['id'],e['reason'],e['depth'],e['x'],e['dx'],e['info'])
