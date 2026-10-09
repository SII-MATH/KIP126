"""Export complete d2 neighborhoods and the full h2 multiplication tensor."""
import hashlib
import importlib.util
import json
from pathlib import Path
import sqlite3
import subprocess

HERE=Path(__file__).resolve().parent;ROOT=HERE.parent
spec=importlib.util.spec_from_file_location('helper',ROOT/'Row3147MapSearch/search_lifted.py')
helper=importlib.util.module_from_spec(spec);spec.loader.exec_module(helper);alg=helper.alg
db=ROOT/'upstream/kervaire-49/S0_AdamsSS_t261.db'
c=sqlite3.connect(f'file:{db}?mode=ro',uri=True);meta=helper.metadata(c)
canonical=lambda x:json.dumps(x,sort_keys=True,separators=(',',':'))+'\n'
comparisons={};lines=['import PageTransitionCertificates.Import','import PageProductCertificates.Import',
 'import NamedElementCertificates.Evaluation','namespace Fact715Source2574.Data',
 'open LinearCertificates PageTransitionCertificates NamedElementCertificates',
 'set_option maxRecDepth 8192']
for name,d in [('factor',(1,4)),('source',(6,132)),('product',(7,136)),('target',(10,138)),('factorTarget',(4,6))]:
    block=helper.comparison(c,'S0',*d,meta);block['degree']=d
    block['staircase']=list(c.execute('select id,base,diff,level from S0_AdamsE2_ss where s=? and t=? order by id',d))
    comparisons[name]=block
    (HERE/'wire'/f'{name}.json').write_text(canonical(block['wire']))
    lines += [f'def {name} : WireComparison := page_comparison% "Fact715Source2574/wire/{name}.json"',
       f'theorem {name}_valid : {name}.Valid := by lin_cert using ()',f'#print axioms {name}_valid']
source=comparisons['source']['rows'][1];target=comparisons['product']['rows'][1]
lookup={alg.mono(x['mon']):i for i,x in enumerate(target)}
rels=[(i,raw,s,t,[alg.mono(x) for x in raw.split(';')]) for i,raw,s,t in
      c.execute('select rowid,rel,s,t from S0_AdamsE2_relations where s<=7 and t<=136 order by rowid')]
columns=[]
for j,row in enumerate(source):
    inp=alg.multiply({(2,)},{alg.mono(row['mon'])});cur=set(inp);terms=[];used=[];origins=[];seen=set()
    for _ in range(10000):
        bad=next((x for x in sorted(cur) if x not in lookup),None)
        if bad is None:break
        assert tuple(sorted(cur)) not in seen;seen.add(tuple(sorted(cur)))
        rel,q=next(( (r,alg.divide(bad,r[4][0])) for r in rels if r[4] and alg.divide(bad,r[4][0]) is not None))
        terms.append(dict(relation=len(used),multiplier=[q]));used.append(rel[4]);origins.append(rel[:4])
        cur.symmetric_difference_update(alg.multiply({q},rel[4]))
    else:raise ValueError('reduction bound')
    w=dict(input=sorted(inp),output=sorted(cur),relations=used,terms=terms)
    (HERE/'wire'/f'column{j}.json').write_text(canonical(w))
    columns.append(dict(source=row,bundle=w,relations=origins,coordinates=sorted(lookup[x] for x in cur)))
    lines += [f'def column{j} : Bundle := named_bundle% "Fact715Source2574/wire/column{j}.json"',
        f'theorem column{j}_valid : EqualModuloRelations column{j}.relations column{j}.input column{j}.output := by lin_cert using column{j}.terms',
        f'#print axioms column{j}_valid']
entries=[int(i in col['coordinates']) for i in range(len(target)) for col in columns]
batch=HERE/'product.batch';batch.write_text(' '.join(str(HERE/'wire'/f'{name}.json') for name in ['factor','source','product'])+' '+''.join(map(str,entries))+'\n')
run=subprocess.run([str(ROOT/'PageProductCertificates/page-product-export'),'--batch',str(batch)],text=True,capture_output=True,check=True)
(HERE/'wire/productTensor.json').write_text(run.stdout)
lines += ['def tensor : PageProductCertificates.Wire := page_product% "Fact715Source2574/wire/productTensor.json"',
 'theorem tensor_valid : tensor.Valid := by lin_cert using ()',
 'theorem tensor_binding : tensor.left = factor ∧ tensor.right = source ∧ tensor.target = product := ⟨rfl,rfl,rfl⟩',
 '#print axioms tensor_valid','end Fact715Source2574.Data']
(HERE/'Data.lean').write_text('\n'.join(lines)+'\n')
events=json.loads((ROOT/'Fact715IncomingTail/proof-events.json').read_text())
selected=[e for e in events['events'] if e['id'] in ['2047477','2047478','2421936','2603892']]
out=dict(database_sha256=hashlib.sha256(db.read_bytes()).hexdigest(),comparisons=comparisons,
         columns=columns,entries=entries,tensor=json.loads(run.stdout),events=selected,
         events_input_hashes=events['input_sha256'],status='untrusted_finite_input')
(HERE/'source.json').write_text(json.dumps(out,indent=2)+'\n')
for name,b in comparisons.items():print(name,b['degree'],(b['wire']['m'],b['wire']['h']))
print('product columns',[x['coordinates'] for x in columns])
