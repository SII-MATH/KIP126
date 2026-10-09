import hashlib,json,sqlite3
from pathlib import Path
p=Path(__file__).resolve().parent;r=p.parent
c=sqlite3.connect(f'file:{r}/upstream/kervaire-49/C2_AdamsSS_t200.db?mode=ro',uri=True)
row=c.execute('select id,base,diff,level from C2_AdamsE2_ss where id=3110').fetchone();assert row==(3110,'0',None,9995)
a=json.loads((p/'audit.json').read_text());assert len(a['columns'])==20
for name,h in a['sources'].items():assert hashlib.sha256((r/'upstream/kervaire-49'/name).read_bytes()).hexdigest()==h
(p/'prefix-source.json').write_text(json.dumps(dict(source_row=row,source_degree=[14,139],requested_sphere_row=3005,requested_degree=[14,138],requested_vector=[2],earlier_page=3,stored_event_page=5,interpretation='finite stored earlier-zero prefix; raw event value remains unknown',unproved=['this stored future-event prefix agrees with actual Adams d3','local map naturality']),indent=2)+'\n')
print('20 actual map columns; row3110 raw NULL preserved; d5-prefix marker verified')
