"""Stream complete raw proof provenance around the row2916 d4 question."""
import csv
import hashlib
import json
from pathlib import Path
import sqlite3

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
degrees={(13,137),(17,140),(9,116),(4,21),(13,119),(8,24),(17,122),(12,27)}
database=ROOT/'upstream/kervaire-49/S0_AdamsSS_t261.db'
sql=sqlite3.connect(f'file:{database}?mode=ro',uri=True)
groups={f'{s},{t}':dict(staircase=[list(r) for r in sql.execute(
    'SELECT id,base,diff,level FROM S0_AdamsE2_ss WHERE s=? AND t=? ORDER BY id',(s,t))],
    basis=[list(r) for r in sql.execute('SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(s,t))])
    for s,t in sorted(degrees)}
rows=[]
sources={}
for path in sorted((ROOT/'upstream/proofs_csv').glob('*.csv')):
    h=hashlib.sha256()
    with path.open('rb') as stream:
        for block in iter(lambda:stream.read(1048576),b''):h.update(block)
    sources[str(path.relative_to(ROOT))]=h.hexdigest()
    with path.open(newline='') as stream:
        for line,row in enumerate(csv.DictReader(stream),2):
            if row['name']=='S0' and (int(row['s']),int(row['t'])) in degrees:
                rows.append(dict(file=path.name,line=line,record=row))
result=dict(status='untrusted_raw_provenance_search',raw_source=[2916,13,137,'1',None,9000],
    source_monomial='9,1,251,1',groups=groups,records=rows,sources_sha256=sources,
    warning='CSV records and later levels are not proof of actual differentials or completeness.')
(HERE/'provenance.json').write_text(json.dumps(result,indent=2)+'\n')
print(len(rows),'matching raw proof records')
for x in rows:
    r=x['record']
    if int(r['r'])>=3:print(x['file'],x['line'],r)
