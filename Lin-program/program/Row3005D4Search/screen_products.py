"""All low-degree E3 factor tests for the row3005 d4 target."""
import hashlib
import importlib.util
import itertools
import json
import sqlite3
from pathlib import Path

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
old=ROOT/'AggregateThreeProductConditional/Remaining/screen.py'
ns={'__file__':str(old)}
exec(compile(old.read_text().split('\nfactors, excluded =')[0],str(old),'exec'),ns)
c=ns['c'];basis=ns['basis'];comparison=ns['comparison'];project=ns['project'];product=ns['product'];algebra=ns['algebra']
records=[]
for s,t in c.execute('SELECT DISTINCT s,t FROM S0_AdamsE2_basis WHERE 0<t AND t<=40 ORDER BY t,s'):
 rows=basis(s,t)
 assert len(rows)<=4
 for v in itertools.product(range(2),repeat=len(rows)):
  if not any(v):continue
  item=dict(degree=[s,t],basis_ids=[rows[i][0] for i,b in enumerate(v) if b],
            basis_monomials=[rows[i][1] for i,b in enumerate(v) if b]);records.append(item)
  try:
   item['factor_E3']=project(comparison(s,t),v)
   factor={algebra.mono(raw) for raw in item['basis_monomials']}
   for label,ss,tt,vector in [('source',14,138,[0,0,1,0,0]),('target',18,141,[1,1,0])]:
    raw=product(factor,ss,tt,vector,s,t)
    item[label]=dict(degree=[ss+s,tt+t],raw=raw,E3=project(comparison(ss+s,tt+t),raw))
   item['status']='candidate' if not any(item['source']['E3']) and any(item['target']['E3']) else 'no_detection'
  except (ValueError,AssertionError) as error:item.update(status='unknown',reason=str(error))
report=dict(scope='All nonzero homogeneous E2 combinations of factors with 0<t<=40; E3 only',
 results=records,comparisons={str(k):v for k,v in ns['comparisons'].items()},
 input_sha256=hashlib.sha256((ROOT/'upstream/kervaire-49/S0_AdamsSS_t261.db').read_bytes()).hexdigest())
(HERE/'products-screen.json').write_text(json.dumps(report,indent=2)+'\n')
print(len(records),'factors;',sum(x['status']=='candidate' for x in records),'E3 candidates')
for x in records:
 if x['status']=='candidate':print(x['degree'],x['basis_ids'],x['basis_monomials'],x['target'])
