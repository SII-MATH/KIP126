"""Complete h2 product quotient wires; actual polynomial reductions are separate."""
import importlib.util
import json
import sqlite3
import subprocess
from pathlib import Path

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
spec=importlib.util.spec_from_file_location('bounded',ROOT/'Row3147MapSearch/search_lifted.py')
h=importlib.util.module_from_spec(spec);spec.loader.exec_module(h)
c=sqlite3.connect(f'file:{ROOT}/upstream/kervaire-49/S0_AdamsSS_t261.db?mode=ro',uri=True)
comparisons=[]
for tag,s,t in [('factor',1,4),('source',4,132),('target',7,134),('productSource',5,136),('productTarget',8,138)]:
    result=h.comparison(c,'S0',s,t,h.metadata(c))
    comparisons.append(dict(tag=tag,degree=[s,t],**result))
    (HERE/f'product-{tag}.json').write_text(json.dumps(result['wire'],sort_keys=True,separators=(',',':'))+'\n')
pro=json.loads((HERE/'products-h2-provenance.json').read_text())
batch=[]
for s,t,tag,right,target in [(4,132,'ann','source','productSource'),(7,134,'detect','target','productTarget')]:
    cols=[x for x in pro if x['source_degree']==[s,t]]
    m=len(cols[0]['target_basis_ids'])
    tensor=''.join('1' if i in x['target_coordinates'] else '0' for i in range(m) for x in cols)
    batch.append(f'{HERE}/product-factor.json {HERE}/product-{right}.json {HERE}/product-{target}.json {tensor or "-"}')
(HERE/'products.batch').write_text('\n'.join(batch)+'\n')
out=subprocess.check_output([str(ROOT/'PageProductCertificates/page-product-export'),'--batch',str(HERE/'products.batch')],text=True)
assert len(out.splitlines())==2
for tag,line in zip(['ann','detect'],out.splitlines()):
    (HERE/f'{tag}.json').write_text(line+'\n')
(HERE/'product-comparisons.json').write_text(json.dumps(comparisons,indent=2)+'\n')
print('two complete bilinear quotient wires')
