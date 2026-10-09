"""Export both full comparison branches without selecting a raw NULL value."""
import hashlib
import json
from pathlib import Path
import sqlite3
import subprocess

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
PRODUCER=ROOT/'PageTransitionCertificates/page-transition-export'
wire_dir=HERE/'wire'
wire_dir.mkdir(exist_ok=True)
family_path=ROOT/'Fact713Row2693Continuation/zero_b0-family.json'
family=json.loads(family_path.read_text())
for name,s,t in [('current2',9,134),('upper2',12,136)]:
    wire=next(entry['wire'] for entry in family['entries']
        if entry['key']==dict(object='S0',page=2,s=s,t=t))
    (wire_dir/f'{name}.json').write_text(json.dumps(wire,sort_keys=True,separators=(',',':'))+'\n')
for branch in [0,1]:
    for name,args in [('current3',['1','3','1','001',f'{branch}10']),
                      ('source3',['3','1','1',f'{branch}10','0'])]:
        result=subprocess.run([str(PRODUCER),*args],capture_output=True,text=True,check=True)
        wire=json.loads(result.stdout)
        (wire_dir/f'{name}_{branch}.json').write_text(json.dumps(wire,sort_keys=True,separators=(',',':'))+'\n')
db=ROOT/'upstream/kervaire-49/S0_AdamsSS_t261.db'
c=sqlite3.connect('file:'+str(db)+'?mode=ro',uri=True)
groups=[c.execute('SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',d).fetchall()
    for d in [(1,129),(3,130),(5,131)]]
n,m,k=map(len,groups)
def matrix(rows,dimension):
    assert all(row[2] is not None for row in rows)
    columns=[list(map(int,row[2].split(','))) if row[2] else [] for row in rows]
    return ''.join('1' if i in column else '0' for i in range(dimension) for column in columns) or '-'
result=subprocess.run([str(PRODUCER),str(k),str(m),str(n),matrix(groups[1],k),matrix(groups[0],m)],
    capture_output=True,text=True,check=True)
(wire_dir/'sourceIncoming2.json').write_text(json.dumps(json.loads(result.stdout),sort_keys=True,separators=(',',':'))+'\n')
degrees={}
for s,t in [(3,130),(6,132),(9,134),(7,136),(10,138),(3,124),(14,134)]:
    degrees[f'{s},{t}']={table:c.execute(
        f'SELECT * FROM S0_AdamsE2_{table} WHERE s=? AND t=? ORDER BY id',(s,t)).fetchall()
        for table in ['basis','ss']}
(HERE/'raw-degrees.json').write_text(json.dumps(degrees,indent=2)+'\n')
print('7 complete comparison wires; both unknown-value branches retained')
