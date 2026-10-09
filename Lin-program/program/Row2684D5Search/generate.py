"""Generate strict local comparisons and every E2 square-product column."""
import hashlib
import importlib.util
import json
import sqlite3
from pathlib import Path

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
spec=importlib.util.spec_from_file_location('algebra',ROOT/'RealMapCertificates/export.py')
alg=importlib.util.module_from_spec(spec);spec.loader.exec_module(alg)
database=ROOT/'upstream/kervaire-49/S0_AdamsSS_t261.db'
c=sqlite3.connect('file:'+str(database)+'?mode=ro',uri=True)
factor=json.loads((HERE/'factor.json').read_text())
base=json.loads((ROOT/'Fact713DC2h6Source/refined.json').read_text())
branch_path=ROOT/'Fact713Ctheta4Continuation/branches/zero_b0.json'
branch=json.loads(branch_path.read_text())
blocks={
 'factor2':factor['comparisons']['S0:6,67:d2']['wire'],
 'factor3':factor['comparisons']['S0:6,67:d3']['wire'],
 'emptyTarget2':factor['comparisons']['S0:10,70:d2']['wire'],
 'source2':base['comparisons']['S0:12,134:d2']['wire'],
 'source3':base['comparisons']['S0:12,134:d3']['wire'],
 'source4':branch['new_comparisons']['S0:12,134:d4']['wire']}
wire_dir=HERE/'wire';wire_dir.mkdir(exist_ok=True)
canonical=lambda x:json.dumps(x,sort_keys=True,separators=(',',':'))+'\n'
lines=['import PageTransitionCertificates.Import','import PageProductCertificates.Basic',
       'import NamedElementCertificates.Evaluation','namespace Row2684D5Search.Data',
       'open LinearCertificates PageTransitionCertificates NamedElementCertificates',
       'set_option maxRecDepth 8192','set_option maxHeartbeats 8000000']
for name,wire in blocks.items():
 (wire_dir/(name+'.json')).write_text(canonical(wire))
 lines += [f'def {name} : WireComparison := page_comparison% "Row2684D5Search/wire/{name}.json"',
           f'theorem {name}_valid : {name}.Valid := by lin_cert using ()',f'#print axioms {name}_valid']
factor_basis=c.execute('SELECT id,mon FROM S0_AdamsE2_basis WHERE s=6 AND t=67 ORDER BY id').fetchall()
source_basis=c.execute('SELECT id,mon FROM S0_AdamsE2_basis WHERE s=12 AND t=134 ORDER BY id').fetchall()
lookup={alg.mono(raw):i for i,(_,raw) in enumerate(source_basis)}
relations=[(rid,raw,s,t,[alg.mono(term) for term in raw.split(';')]) for rid,raw,s,t in
           c.execute('SELECT rowid,rel,s,t FROM S0_AdamsE2_relations ORDER BY rowid')]
columns=[]
for j,(_,left) in enumerate(factor_basis):
 for k,(_,right) in enumerate(factor_basis):
  initial=alg.multiply({alg.mono(left)},{alg.mono(right)});current=initial.copy();used=[];terms=[];origins=[]
  seen=set()
  for _ in range(10000):
   bad=next((x for x in sorted(current) if x not in lookup),None)
   if bad is None:break
   assert tuple(sorted(current)) not in seen;seen.add(tuple(sorted(current)))
   choice=next(((rel,alg.divide(bad,rel[4][0])) for rel in relations
      if rel[4] and rel[2]<=12 and rel[3]<=134 and alg.divide(bad,rel[4][0]) is not None),None)
   if choice is None:raise ValueError('missing product reduction')
   rel,q=choice
   terms.append(dict(relation=len(used),multiplier=[list(q)]));used.append(rel[4])
   origins.append(dict(rowid=rel[0],raw=rel[1],degree=[rel[2],rel[3]]))
   current.symmetric_difference_update(alg.multiply({q},rel[4]))
  else:raise ValueError('product reduction limit')
  name=f'product{j}{k}'
  bundle=dict(relations=used,input=sorted(initial),output=sorted(current),terms=terms)
  (wire_dir/(name+'.json')).write_text(canonical(bundle))
  coords=[int(i in [lookup[x] for x in current]) for i in range(len(source_basis))]
  columns.append(dict(name=name,left=j,right=k,wire=bundle,coordinates=coords,relations=origins))
  lines += [f'def {name} : Bundle := named_bundle% "Row2684D5Search/wire/{name}.json"',
    f'theorem {name}_valid : EqualModuloRelations {name}.relations {name}.input {name}.output := by',
    f'  lin_cert using {name}.terms',f'#print axioms {name}_valid']
entries=[bool(col['coordinates'][i]) for i in range(3) for col in columns]
bools=lambda a:'['+','.join('true' if v else 'false' for v in a)+']'
lines += [f'def tensor : PageProductCertificates.Tensor 2 2 3 := fun i j k =>',
          f'  ({bools(entries)} : List Bool)[i.val*4+j.val*2+k.val]!',
          'def factorVector : Vec 2 := fun _ => true',
          'def sourceVector : Vec 3 := fun i => i.val == 0',
          'def squareVector : Vec 3 := fun i => i.val != 1',
          'def middleVector : Vec 2 := fun i => i.val == 1',
          'def finalVector : Vec 1 := fun _ => true',
          'theorem square_coordinates : PageProductCertificates.product tensor factorVector factorVector = squareVector := by decide',
          'theorem source_path :',
          '  eval (matrixOf source2.k source2.m source2.outgoing) sourceVector = zero /\\',
          '  eval source2.comparison.projection sourceVector = middleVector /\\',
          '  eval source2.comparison.projection squareVector = middleVector /\\',
          '  eval (matrixOf source3.k source3.m source3.outgoing) middleVector = zero /\\',
          '  eval source3.comparison.projection middleVector = finalVector /\\',
          '  eval (matrixOf source4.k source4.m source4.outgoing) finalVector = zero /\\',
          '  eval source4.comparison.projection finalVector = finalVector := by decide',
          'theorem factor_path :',
          '  eval (matrixOf factor2.k factor2.m factor2.outgoing) factorVector = zero /\\',
          '  eval factor2.comparison.projection factorVector = finalVector := by decide',
          '#print axioms square_coordinates','#print axioms source_path','#print axioms factor_path',
          'end Row2684D5Search.Data']
(HERE/'Data.lean').write_text('\n'.join(lines)+'\n')
(HERE/'products.json').write_text(json.dumps(dict(blocks=blocks,factor_basis=factor_basis,source_basis=source_basis,
 columns=columns,tensor=entries,input_sha256={str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest()
 for p in [database,HERE/'factor.json',ROOT/'Fact713DC2h6Source/refined.json',branch_path]}),indent=2)+'\n')
print('6 comparisons;4 full product columns',[(x['name'],x['coordinates']) for x in columns])
