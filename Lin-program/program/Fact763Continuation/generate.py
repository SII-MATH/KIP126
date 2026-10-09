"""Complete d5 comparison and the earlier full incoming-source collapse."""
import hashlib
import importlib.util
import json
from pathlib import Path
import sqlite3
import subprocess

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
spec=importlib.util.spec_from_file_location('helper',ROOT/'Row3147MapSearch/search_lifted.py')
helper=importlib.util.module_from_spec(spec);spec.loader.exec_module(helper)
db=ROOT/'upstream/kervaire-49/S0_AdamsSS_t261.db'
c=sqlite3.connect('file:'+str(db)+'?mode=ro',uri=True)
incoming=helper.comparison(c,'S0',5,130,helper.metadata(c))
assert incoming['wire']['h']==0
selected=list(c.execute('SELECT id,base,diff,level FROM S0_AdamsE2_ss '
                       'WHERE s=10 AND t=134 AND 5<=level AND level<=9995 ORDER BY id'))
assert selected==[(2693,'4',None,9000),(2694,'3','1',9995)]
target=json.loads((ROOT/'Row2693D5Search/wire/target4.json').read_text())
assert target['h']==1 and target['m']==2
# Raw target local1 projects to the sole E5 class through the already
# complete target d2/d3/d4 comparisons; no unknown column is made zero.
v=[0,1,0]
for page in [2,3,4]:
    w=json.loads((ROOT/'Row2693D5Search/wire'/f'target{page}.json').read_text())
    assert len(v)==w['m']
    assert not any(sum(w['outgoing'][i*w['m']+j]*v[j] for j in range(w['m']))%2
                   for i in range(w['k']))
    v=[sum(w['projection'][i*w['m']+j]*v[j] for j in range(w['m']))%2 for i in range(w['h'])]
assert v==[1]
run=subprocess.run([str(ROOT/'PageTransitionCertificates/page-transition-export'),
                    '1','2','0','01','-'],capture_output=True,text=True,check=True)
source5=json.loads(run.stdout)
assert source5['h']==1
blocks={'incoming2':incoming['wire'],'source5':source5}
(HERE/'wire').mkdir(exist_ok=True)
lines=['import PageTransitionCertificates.Import','namespace Fact763Continuation.Data',
       'open LinearCertificates PageTransitionCertificates']
for name,w in blocks.items():
    (HERE/'wire'/f'{name}.json').write_text(json.dumps(w,sort_keys=True,separators=(',',':'))+'\n')
    lines.extend([f'def {name} : WireComparison := page_comparison% "Fact763Continuation/wire/{name}.json"',
      f'theorem {name}_valid : {name}.Valid := by lin_cert using ()',f'#print axioms {name}_valid'])
lines.append('end Fact763Continuation.Data')
(HERE/'Data.lean').write_text('\n'.join(lines)+'\n')
report=dict(status='conditional_named_d5_zero_with_complete_other_column_and_incoming',
    database_sha256=hashlib.sha256(db.read_bytes()).hexdigest(),incoming2=incoming,
    source5=source5,source_rows=selected,target_last_column_E5=v,
    named_column=dict(raw=[2693,'4',None,9000],
        theorem='Row2693D5Search.Actual.Input.named_d5_zero',coordinates=[0]),
    retained_column=dict(raw=[2694,'3','1',9995],coordinates=[1]),
    limitation='Complete actual coordinate/product/quotient and stored-column meanings remain premises.')
(HERE/'source.json').write_text(json.dumps(report,indent=2)+'\n')
print('Complete incoming source E2->E3 dimension1->0; source E5->E6 dimension2->1')
