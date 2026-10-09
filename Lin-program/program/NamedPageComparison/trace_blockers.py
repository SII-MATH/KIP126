"""Stream pinned proof rows matching the exact source degrees; no proof trust."""
import csv,json,sqlite3,hashlib
from pathlib import Path
p=Path(__file__).resolve().parent;r=p.parent;db=r/'upstream/kervaire-49/S0_AdamsSS_t261.db'
c=sqlite3.connect(f'file:{db}?mode=ro',uri=True)
blocks=[]
for s,t,local,rowid in [(10,136,2,2858),(14,139,1,3080)]:
 basis=c.execute('select id,mon,d2 from S0_AdamsE2_basis where s=? and t=? order by id',(s,t)).fetchall()[local]
 mon=list(map(int,basis[1].split(',')))
 generators=[{'exponent':e,'row':c.execute('select * from S0_AdamsE2_generators where id=?',(g,)).fetchone()} for g,e in zip(mon[::2],mon[1::2])]
 blocks.append(dict(s=s,t=t,local=local,staircase=c.execute('select id,base,diff,level from S0_AdamsE2_ss where id=?',(rowid,)).fetchone(),basis=basis,generators=generators,events=[]))
files=[]
for f in sorted((r/'upstream/proofs_csv').glob('proofs-part*.csv')):
 files.append({'file':str(f.relative_to(r)),'sha256':hashlib.sha256(f.read_bytes()).hexdigest()})
 with f.open(encoding='utf-8-sig',newline='') as inp:
  for line,event in enumerate(csv.DictReader(inp),2):
   for b in blocks:
    if event.get('name')=='S0' and event.get('s')==str(b['s']) and event.get('t')==str(b['t']):
     b['events'].append({'file':str(f.relative_to(r)),'line':line,**event})
data={'status':'audit_only_no_zero_proof','database_sha256':hashlib.sha256(db.read_bytes()).hexdigest(),'proof_files':files,'blockers':blocks}
(p/'blocker_sources.json').write_text(json.dumps(data,indent=2)+'\n')
for b in blocks:
 print(b['s'],b['t'],b['generators'],'events',len(b['events']))
 print(json.dumps(b['events'],indent=2))
