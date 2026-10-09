"""Audit exactly one added source comparison and unchanged accepted events."""
import hashlib
import importlib.util
import json
import re
import sqlite3
from pathlib import Path
p=Path(__file__).resolve().parent
r=p.parent
sha=lambda f:hashlib.sha256(f.read_bytes()).hexdigest()
s=json.loads((p/'source.json').read_text())
old=json.loads((r/'AggregateD5Conditional/source.json').read_text())
assert len(s['blocks'])==359 and set(s['blocks'])-set(old['blocks'])=={'S0:21,147:d3'}
assert all(s['blocks'][k]==v for k,v in old['blocks'].items())
spec=importlib.util.spec_from_file_location('oracle',r/'Row2925Detector/source_independent_audit.py')
a=importlib.util.module_from_spec(spec);spec.loader.exec_module(a)
for b in s['blocks'].values():a.wire_laws(b['wire'])
b=s['blocks']['S0:21,147:d3'];w=b['wire']
assert (w['k'],w['m'],w['n'],w['h'])==(0,3,3,2)
assert w['incoming']==[False,False,True,False,False,False,False,False,False]
u=[x for x in b['uses'] if x['kind']=='conditional_h1_x493_leibniz']
assert len(u)==1 and u[0]['row']==[3564,'1',None,9000] and u[0]['source']==[18,145]
db=r/'upstream/kervaire-49/S0_AdamsSS_t261.db'
c=sqlite3.connect(f'file:{db}?mode=ro',uri=True)
for use in b['uses']:
    assert list(c.execute('SELECT id,base,diff,level FROM S0_AdamsE2_ss WHERE id=? AND s=? AND t=?',(use['row'][0],*use['source'])).fetchone())==use['row']
events=json.loads((p/'event-results.json').read_text())
oevents=json.loads((r/'AggregateD5Conditional/event-results.json').read_text())
assert [e for e in events if e['status']=='finite_nonzero_event']==[e for e in oevents if e['status']=='finite_nonzero_event']
assert next(e for e in events if e['staircase_id']==3992)['reason']=='unknown S0:21,147:d4:row3750; target dimension 3'
bl=lambda xs:'['+','.join('true' if v else 'false' for v in xs)+']'
literal='⟨1,0,3,3,2,'+','.join(bl(w[f]) for f in ['outgoing','incoming','inclusion','projection','up','down'])+'⟩'
assert 'def comparison : WireComparison := '+literal in (p/'Source.lean').read_text()
rows=json.loads((p/'compile-audit.json').read_text());assert len(rows)==1
row=rows[0];assert row['module']=='Source' and row['exit_code']==0
assert sha(p/'Source.lean')==row['source_sha256'] and sha(p/'Source.log')==row['log_sha256']
assert sha(r/'.lake/build/lib/lean/AggregateLeibniz3564Conditional/Source.olean')==row['olean_sha256']
axioms=re.findall(r'depends on axioms: \[([^]]*)\]',(p/'Source.log').read_text())
assert len(axioms)==2 and all({v.strip() for v in xs.split(',')}<={'propext','Classical.choice','Quot.sound'} for xs in axioms)
files=[p/n for n in ['Source.lean','source.json','dag.json','event-results.json','generate.py','events.py','review.py']]+[r/'Row3564LeibnizDetector/Matches.lean',r/'AggregateD5Conditional/source.json',db]
report=dict(comparisons=359,unchanged_comparisons=358,unchanged_events=95,new_events=[],
    compiled_modules=['Source'],uncompiled_exploratory_modules=['Basic','Data','Events'],
    source_E4_dimension=2,row3564_zero_condition='actual quotient Leibniz and imported x493 prefix',
    event3992_blocker='row3750 unknown d4 column',inputs_sha256={str(f.relative_to(r)):sha(f) for f in files})
(p/'review.json').write_text(json.dumps(report,indent=2)+'\n')
print('One current Source module;359 comparisons/358 unchanged;95 old events unchanged;unknown3992 d4 column retained')
