"""Independent source-copy, raw SQL, degree and typed-contract review."""
import hashlib
import json
import sqlite3
from pathlib import Path

p=Path(__file__).resolve().parent
r=p.parent
repo=r.parent
sha=lambda f:hashlib.sha256(f.read_bytes()).hexdigest()
provenance=json.loads((p/'reference-provenance.json').read_text())
copies=[]
def normalized(text):
    text=text.replace('ManualInputObligations.Reference','LinProgramReference')
    return '\n'.join(line for line in text.splitlines() if not line.startswith('import ')).strip()
for row in provenance['files']:
    original=repo/row['original'];copy=r/row['copy']
    assert sha(original)==row['original_sha256'] and sha(copy)==row['copy_sha256']
    assert normalized(original.read_text())==normalized(copy.read_text())
    assert [line for line in original.read_text().splitlines() if line.startswith('import ')]==row['original_imports']
    assert [line for line in copy.read_text().splitlines() if line.startswith('import ')]==row['copy_imports']
    copies.append(dict(original=row['original'],copy=row['copy'],body_identical=True,changes=row['changes']))
assert len(copies)==6
investigation=json.loads((p/'investigation.json').read_text())
records=[]
dbs={}
for row in investigation['records']:
    obj=row['object']
    if obj not in dbs:
        candidates=list((r/'upstream/kervaire-49').glob(obj+'_AdamsSS_t*.db'))
        assert len(candidates)==1
        path=candidates[0]
        assert sha(path)==row['database_sha256']
        dbs[obj]=sqlite3.connect(f'file:{path}?mode=ro',uri=True)
    db=dbs[obj]
    columns=row['source_basis_columns']
    assert columns==['id','mon','d2' if obj=='S0' else 'repr']
    for side in ['source','target']:
        degree=row[f'{side}_degree']
        basis=[list(x) for x in db.execute(f'SELECT {",".join(columns)} FROM {obj}_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',degree)]
        stair=[list(x) for x in db.execute(f'SELECT id,base,diff,level FROM {obj}_AdamsE2_ss WHERE s=? AND t=? ORDER BY id',degree)]
        assert basis==row[f'{side}_basis'] and stair==row[f'{side}_staircase']
        named=basis[row[f'{side}_local_index']]
        assert named[0]==row[f'{side}_basis_id'] and named[1]==row[f'{side}_mon']
    for gen in row['generators']:
        assert list(db.execute(f'SELECT id,name,s,t FROM {obj}_AdamsE2_generators WHERE id=?',(gen[0],)).fetchone())==gen
    s,t=row['source_degree'];q=row['page']
    assert row['target_degree']==[s+q,t+q-1]
    raw=row['source_staircase_row']
    assert raw in row['source_staircase'] and raw[3]==10000-q
    assert raw[1]==str(row['source_local_index']) and raw[2]==str(row['target_local_index'])
    records.append(dict(object=obj,page=q,source=row['source_degree'],target=row['target_degree'],
        source_basis_id=row['source_basis_id'],source_staircase_id=raw[0],target_basis_id=row['target_basis_id']))
assert [x['page'] for x in records]==[5,6,3]
assert records[1]['source_basis_id']==7371 and records[1]['source_staircase_id']==7370
assert [24+1,24+64]==[25,88] and [2+28,2+90]==[30,92]
assert [55+1,55+128]==[56,183] and [2+60,2+186]==[62,188]
assert [2*8,2*56]==[16,112] and [5*3+4,5*18+24]==[19,114]
build=[]
for row in json.loads((p/'isolated-compile-audit.json').read_text()):
    rel=row['module'].removeprefix('ManualInputObligations.').replace('.','/')
    assert row['exit_code']==0 and row['source_sha256']==sha(p/f'{rel}.lean')
    log=p/f'{rel.replace("/","-")}.log'
    assert row['log_sha256']==sha(log) and 'error:' not in log.read_text()
    build.append(dict(module=row['module'],exit_code=0,current_source_log=True))
assert len(build)==7
files=[p/'Typed.lean',p/'README.md',p/'investigation.json',p/'reference-provenance.json',
    p/'isolated-compile-audit.json',p/'INDEPENDENT_REVIEW.md',p/'independent-review.py']
files += list((p/'Reference').glob('*.lean'))
report=dict(status='independent_typed_contract_raw_SQL_and_copy_review_passed',findings=[],
    copies=copies,manual_records=records,build_observation=build,
    contracts=['exact actual d5/d6/d3 equations','E2 products then quotient traces',
      'explicit optional V2NameMatches','no inferred nonzero from type-only homology equivalence',
      'ExternalProofs proof fields not generated from strings/status/hash'],
    preserved_limitations=['PageHomologyIdentification lacks zero/add laws',
      'GeneralizedLeibnizRule is ordinary same-page formula','old IsPermanentCycle is stronger than outgoing-only semantics',
      'other inherited records retain uninterpreted Prop fields; Typed does not consume them as proofs'],
    unproved=['actual sphere/tmf Adams realization','named Ext interpretations','endpoint cycle traces',
      'image J d5/d6 proofs','Bruner-Rognes d3 proof','nonzero endpoints where needed'],
    inputs_sha256={str(f.relative_to(r)):sha(f) for f in files})
(p/'independent-review.json').write_text(json.dumps(report,indent=2,sort_keys=True)+'\n')
print('Independent manual review passed: six exact mathematical copies, three raw degree-correct inputs, seven current compiler records')
