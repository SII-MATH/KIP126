import hashlib,json,sqlite3
from pathlib import Path
p=Path(__file__).resolve().parent;r=p.parent
c=sqlite3.connect(f'file:{r}/upstream/kervaire-49/C2_AdamsSS_t200.db?mode=ro',uri=True)
rows=c.execute('select id,base,diff,level from C2_AdamsE2_ss where s=20 and t=143 order by id').fetchall()
assert rows==[(3449,'0','1',9997),(3450,'2','2',9997),(3451,'1','2',9998)]
sr=c.execute('select id,base,diff,level from C2_AdamsE2_ss where s=17 and t=141 order by id').fetchall();assert sr[1]==(3289,'0',None,9000)
a=json.loads((p/'audit.json').read_text());assert len(a['columns'])==14
for name,h in a['sources'].items():assert hashlib.sha256((r/'upstream/kervaire-49'/name).read_bytes()).hexdigest()==h
(p/'following-source.json').write_text(json.dumps(dict(source_degree=[17,141],source_rows=sr,following_degree=[20,143],following_rows=rows,following_target=[23,145],known_columns=[[False,True,False],[False,False,True]],external_premises=['successor d3 equals the two imported matrix columns','local d3 squared is zero','local C2-to-S0 naturality'],conclusion='conditional zero of S0(17,140)d3 row3143; source NULL remains unknown'),indent=2)+'\n')
print('14 map columns and exact known successor/source-unknown rows reviewed')
