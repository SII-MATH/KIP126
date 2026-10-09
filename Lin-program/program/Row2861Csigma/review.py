import hashlib,json,sqlite3,subprocess
from pathlib import Path
p=Path(__file__).resolve().parent;r=p.parent
before={n:hashlib.sha256((p/n).read_bytes()).hexdigest() for n in ['Actual.lean','Comparison.lean','source.json']}
subprocess.run(['python3',str(p/'export.py')],check=True);subprocess.run(['python3',str(p/'generate_comparison.py')],check=True)
assert before=={n:hashlib.sha256((p/n).read_bytes()).hexdigest() for n in before}
c=sqlite3.connect(f'file:{r}/upstream/kervaire-49/S0_AdamsSS_t261.db?mode=ro',uri=True);row=c.execute('select id,s,t,base,diff,level from S0_AdamsE2_ss where id=2861').fetchone();assert row==(2861,9,136,'1',None,9000)
pro=json.loads((p/'source.json').read_text());assert len(pro)==6 and sum(len(x['source']) for x in pro)==28
(p/'review.json').write_text(json.dumps(dict(raw_row=row,matrices=6,columns=28,bottom_cell_generator=0,external_premises=['bottom-cell map is an actual Adams map','local d3 naturality','target differential preserves zero'],hashes={f:hashlib.sha256((r/'upstream/kervaire-49'/f).read_bytes()).hexdigest() for f in ['S0_AdamsSS_t261.db','Csigma_AdamsSS_t200.db']}),indent=2)+'\n');print('28 actual bottom-cell columns; row2861 NULL preserved; deterministic')
