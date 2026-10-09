"""Retain exact empty incoming degrees and raw unknown event provenance."""
import hashlib
import json
from pathlib import Path
import sqlite3

HERE=Path(__file__).resolve().parent;ROOT=HERE.parent
db=ROOT/'upstream/kervaire-49/S0_AdamsSS_t261.db'
c=sqlite3.connect(f'file:{db}?mode=ro',uri=True)
empty={str((11-r,134-r)):c.execute('select id,mon,d2 from S0_AdamsE2_basis where s=? and t=? order by id',
    (11-r,134-r)).fetchall() for r in range(5,12)}
assert all(not rows for rows in empty.values())
data=dict(database_sha256=hashlib.sha256(db.read_bytes()).hexdigest(),empty_incoming=empty,
    named_basis=c.execute('select id,mon,d2 from S0_AdamsE2_basis where s=11 and t=133 order by id').fetchall(),
    named_staircase=c.execute('select id,base,diff,level from S0_AdamsE2_ss where s=11 and t=133 order by id').fetchall(),
    d5target_staircase=c.execute('select id,base,diff,level from S0_AdamsE2_ss where s=16 and t=137 order by id').fetchall(),
    d6target_staircase=c.execute('select id,base,diff,level from S0_AdamsE2_ss where s=17 and t=138 order by id').fetchall(),
    limitations='Known earlier full meanings and product detector remain mathematical inputs; NULL row2994 is not assumed zero.')
(HERE/'source.json').write_text(json.dumps(data,indent=2)+'\n')
request=dict(version=1,claim='fact-7.21:first:E6',source=[False,True],output=[True])
(HERE/'request.json').write_text(json.dumps(request,sort_keys=True,separators=(',',':'))+'\n')
(HERE/'requests.jsonl').write_text((json.dumps(request,sort_keys=True,separators=(',',':'))+'\n')*2)
print('seven empty incoming E2 degrees; exact unknown rows retained; request and batch exported')
