"""Inspect every detecting map whose source quotient is nonzero."""
import hashlib
import json
import sqlite3
from pathlib import Path

p=Path(__file__).resolve().parent
root=p.parent
report=json.loads((p/'lifted-search.json').read_text())
out=[]
for entry in report['maps']:
    if entry['status']!='source_nonzero_quotient' or not any(entry['target']['quotient']):
        continue
    name=entry['map']['to']
    db=root/'upstream/kervaire-49'/entry['target_database']
    c=sqlite3.connect(f'file:{db}?mode=ro',uri=True)
    s,t=entry['source']['degree'];w=entry['source']['comparison']['wire']
    rows=c.execute(f'select id,base,diff,level from {name}_AdamsE2_ss where s=? and t=? order by id',(s,t)).fetchall()
    selected=[]
    for rid,base,diff,level in rows:
        if not (3<=level<5000 or 5000<=level<=9997):
            continue
        ids=list(map(int,base.split(','))) if base else []
        assert ids==sorted(set(ids)) and all(0<=i<w['m'] for i in ids)
        v=[int(i in ids) for i in range(w['m'])]
        assert not any(sum(w['outgoing'][i*w['m']+j]*v[j] for j in range(w['m']))%2 for i in range(w['k']))
        coordinates=[sum(w['projection'][i*w['m']+j]*v[j] for j in range(w['m']))%2 for i in range(w['h'])]
        selected.append(dict(raw=[rid,base,diff,level],quotient=coordinates))
    out.append(dict(map=entry['map'],source_degree=[s,t],source_quotient=entry['source']['quotient'],
        target_quotient=entry['target']['quotient'],selected_source_staircase=selected,
        database_sha256=hashlib.sha256(db.read_bytes()).hexdigest(),
        status='source_nonzero_and_detecting_requires_actual_d3_on_displayed_source'))
assert len(out)==6
(p/'nonzero-source-constraints.json').write_text(json.dumps(out,indent=2)+'\n')
print('six detecting maps have nonzero source; displayed relevant sources still include NULL9997')
