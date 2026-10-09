"""Complete d2 quotients and all three Leibniz product tensors."""
import importlib.util
import json
import sqlite3
import subprocess
from pathlib import Path
p=Path(__file__).resolve().parent
r=p.parent
spec=importlib.util.spec_from_file_location('helper',r/'Row3147MapSearch/search_lifted.py')
h=importlib.util.module_from_spec(spec);spec.loader.exec_module(h)
c=sqlite3.connect(f'file:{r}/upstream/kervaire-49/S0_AdamsSS_t261.db?mode=ro',uri=True)
canon=lambda x:json.dumps(x,sort_keys=True,separators=(',',':'))+'\n'
comparisons=[]
for tag,s,t in [('h1',1,2),('dh1',4,4),('x',17,143),('dx',20,145),('named',18,145),('target',21,147)]:
    q=h.comparison(c,'S0',s,t,h.metadata(c))
    comparisons.append(dict(tag=tag,degree=[s,t],**q))
    (p/f'{tag}.json').write_text(canon(q['wire']))
batch=[]
for tag,protag,deg,left,right,target in [('named','h1',[17,143],'h1','x','named'),('leftTerm','h04',[17,143],'dh1','x','target'),('rightTerm','h1',[20,145],'h1','dx','target')]:
    pro=json.loads((p/f'products-{protag}-provenance.json').read_text())
    cols=[x for x in pro if x['source_degree']==deg]
    m=len(cols[0]['target_basis_ids'])
    tensor=''.join('1' if i in col['target_coordinates'] else '0' for i in range(m) for col in cols)
    batch.append(f'{p}/{left}.json {p}/{right}.json {p}/{target}.json {tensor or "-"}')
(p/'products.batch').write_text('\n'.join(batch)+'\n')
run=subprocess.run([str(r/'PageProductCertificates/page-product-export'),'--batch',str(p/'products.batch')],capture_output=True,text=True,check=True)
assert len(run.stdout.splitlines())==3
for tag,line in zip(['namedProduct','leftTerm','rightTerm'],run.stdout.splitlines(),strict=True):
    (p/f'{tag}.json').write_text(line+'\n')
(p/'comparisons.json').write_text(json.dumps(comparisons,indent=2)+'\n')
print('Six complete d2 comparisons and three full descended product certificates')
