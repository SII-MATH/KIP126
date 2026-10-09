"""Read-only current blockers and exact physical proof records for three events."""
import csv
import hashlib
import json
from pathlib import Path
import sqlite3

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent


def sha(path):
    h=hashlib.sha256()
    with path.open('rb') as stream:
        for chunk in iter(lambda:stream.read(1048576),b''):
            h.update(chunk)
    return h.hexdigest()


def run():
    aggregate=ROOT/'AggregateDC2h6Conditional/source.json'
    source=json.loads(aggregate.read_text())
    events=[c for c in source['candidates'] if c['row_ref'] in ['event3151','event3152','event3992']]
    assert len(events)==3 and all(c['status']=='unresolved' for c in events)
    assert all('row2708' in c['reason'] for c in events if c['row_ref']!='event3992')
    assert 'row3564' in next(c for c in events if c['row_ref']=='event3992')['reason']
    constraints=json.loads((ROOT/'Row2708MapSearch/nonzero-source-constraints.json').read_text())
    selected={('S0',7,134),('S0',10,136),('S0',11,137),('S0',15,140),
              ('S0',18,145),('S0',21,147),('C2',18,146),('C2',21,148)}
    for row in constraints:
        selected.add((row['map']['to'],*row['source_degree']))
    records=[]
    proof_files=sorted((ROOT/'upstream/proofs_csv').glob('proofs-part*.csv'))
    for path in proof_files:
        with path.open(encoding='utf-8-sig',newline='') as stream:
            reader=csv.DictReader(stream)
            previous=reader.line_num
            for row in reader:
                start=previous+1
                previous=reader.line_num
                if (row['name'],int(row['s']),int(row['t'])) in selected:
                    records.append(dict(file=path.name,physical_start_line=start,
                                        physical_end_line=reader.line_num,**row))
    config=json.loads((ROOT/'upstream/category-inventory.json').read_text())
    objects={r['source']['name']:r['source'] for r in config['records'] if r['section'] in ['rings','modules']}
    connections={}
    degrees=[]
    for name,s,t in sorted(selected):
        path=ROOT/'upstream/kervaire-49'/objects[name]['path']
        if name not in connections:
            connections[name]=sqlite3.connect(f'file:{path}?mode=ro',uri=True)
        db=connections[name]
        degrees.append(dict(object=name,degree=[s,t],database=objects[name]['path'],
            e2=[list(r) for r in db.execute(f'SELECT id,mon,d2 FROM {name}_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(s,t))],
            staircase=[list(r) for r in db.execute(f'SELECT id,base,diff,level FROM {name}_AdamsE2_ss WHERE s=? AND t=? ORDER BY id',(s,t))],
            metadata=dict(db.execute('SELECT name,value FROM version'))))
    inputs=[aggregate,ROOT/'Row2708MapSearch/nonzero-source-constraints.json',ROOT/'upstream/category-inventory.json',
            ROOT/'Row2708MapSearch/lifted-search.json',ROOT/'Row2708MapSearch/review.json',
            ROOT/'Fact764TrajectoryAudit/C2Naturality.lean',ROOT/'Fact764TrajectoryAudit/LaterDetector.lean',
            ROOT/'BranchReplayCertificates/D154545.lean',Path(__file__),*proof_files]
    databases=sorted({ROOT/'upstream/kervaire-49'/objects[n]['path'] for n,_,_ in selected})
    result=dict(events=events,selected_degrees=degrees,physical_proof_records=records,
                inputs_sha256={str(p.relative_to(ROOT)):sha(p) for p in inputs+databases},
                limitation='All log records are external provenance; NULL and r999 remain uninterpreted.')
    (HERE/'source.json').write_text(json.dumps(result,indent=2)+'\n')
    print('three unresolved events;',len(selected),'source degrees;',len(records),'physical proof records')


if __name__=='__main__':
    run()
