"""Export a complete h2 product, retaining the inherited quotient coordinates."""
import hashlib
import importlib.util
import json
from pathlib import Path
import sqlite3
import subprocess

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
spec = importlib.util.spec_from_file_location('algebra', ROOT/'RealMapCertificates/export.py')
alg = importlib.util.module_from_spec(spec)
spec.loader.exec_module(alg)
db = ROOT/'upstream/kervaire-49/S0_AdamsSS_t261.db'
c = sqlite3.connect('file:'+str(db)+'?mode=ro', uri=True)
meta = dict(c.execute('select name,value from version'))
paths = [ROOT/f'Fact713SquareContinuation/zero_b{b}-family.json' for b in [0,1]]
families = [{(e['key']['page'],e['key']['s'],e['key']['t']): e['wire']
             for e in json.loads(p.read_text())['entries']} for p in paths]
canonical = lambda x: json.dumps(x,sort_keys=True,separators=(',',':'))+'\n'

def basis(d):
    assert d[1] <= meta['t_max']
    return c.execute('select id,mon,d2 from S0_AdamsE2_basis where s=? and t=? order by id',d).fetchall()

def neighborhood(d):
    assert d[1] <= meta['d2_t_max']
    groups = [basis(dd) for dd in [(d[0]-2,d[1]-1),d,(d[0]+2,d[1]+1)]]
    n,m,k = map(len,groups)
    def matrix(rows,target):
        columns = []
        for _,_,raw in rows:
            assert raw is not None
            indices = [int(z) for z in raw.split(',') if z]
            assert len(indices) == len(set(indices)) and all(0 <= i < target for i in indices)
            columns.append(indices)
        return [i in col for i in range(target) for col in columns]
    out,inc = matrix(groups[1],k),matrix(groups[0],m)
    bits = lambda v: ''.join('1' if x else '0' for x in v) or '-'
    wire = json.loads(subprocess.check_output([str(ROOT/'PageTransitionCertificates/page-transition-export'),
        str(k),str(m),str(n),bits(out),bits(inc)]))
    return dict(wire=wire,groups=groups)

comparisons = {}
for name,d in [('factor',(1,4)),('source',(15,136)),('product',(16,140)),
               ('target',(19,142)),('factorTarget',(4,6))]:
    item = neighborhood(d)
    if (2,*d) in families[0]:
        old = families[0][2,*d]
        assert old == families[1][2,*d]
        assert all(old[k] == item['wire'][k] for k in ['k','m','n','outgoing','incoming'])
        item['wire'] = old
    item['degree'] = d
    item['staircase'] = c.execute('select id,base,diff,level from S0_AdamsE2_ss where s=? and t=? order by id',d).fetchall()
    comparisons[name] = item
source3 = families[0][3,15,136]
assert source3 == families[1][3,15,136]
assert not any(source3['outgoing'])
comparisons['source3'] = dict(wire=source3,degree=(15,136),page=3,
    status='finite earlier-zero prefix; complete actual Meaning remains an explicit input')
lines = ['import PageTransitionCertificates.Import','import PageProductCertificates.Import',
    'import NamedElementCertificates.Evaluation','namespace Row3147H2Product.Data',
    'open LinearCertificates PageTransitionCertificates NamedElementCertificates',
    'set_option maxRecDepth 8192']
for name,item in comparisons.items():
    (HERE/'wire'/f'{name}.json').write_text(canonical(item['wire']))
    lines += [f'def {name} : WireComparison := page_comparison% "Row3147H2Product/wire/{name}.json"',
       f'theorem {name}_valid : {name}.Valid := by lin_cert using ()',f'#print axioms {name}_valid']
source = comparisons['source']['groups'][1]
target = comparisons['product']['groups'][1]
lookup = {alg.mono(row[1]): i for i,row in enumerate(target)}
relations = [(rid,raw,s,t,[alg.mono(x) for x in raw.split(';')]) for rid,raw,s,t in
    c.execute('select rowid,rel,s,t from S0_AdamsE2_relations where s<=16 and t<=140 order by rowid')]
columns = []
for j,row in enumerate(source):
    initial = alg.multiply({(2,)},{alg.mono(row[1])})
    cur = initial.copy()
    used,terms,origins,seen = [],[],[],set()
    for _ in range(10000):
        bad = next((m for m in sorted(cur) if m not in lookup),None)
        if bad is None: break
        assert tuple(sorted(cur)) not in seen
        seen.add(tuple(sorted(cur)))
        rel,q = next(( (r,alg.divide(bad,r[4][0])) for r in relations
                      if r[4] and alg.divide(bad,r[4][0]) is not None))
        terms.append(dict(relation=len(used),multiplier=[q]))
        used.append(rel[4])
        origins.append(dict(rowid=rel[0],raw=rel[1],degree=rel[2:4]))
        cur.symmetric_difference_update(alg.multiply({q},rel[4]))
    else: raise ValueError('product reduction limit')
    bundle = dict(input=sorted(initial),output=sorted(cur),relations=used,terms=terms)
    (HERE/'wire'/f'column{j}.json').write_text(canonical(bundle))
    columns.append(dict(source=row,bundle=bundle,relations=origins,
                        coordinates=sorted(lookup[x] for x in cur)))
    lines += [f'def column{j} : Bundle := named_bundle% "Row3147H2Product/wire/column{j}.json"',
        f'theorem column{j}_valid : EqualModuloRelations column{j}.relations column{j}.input column{j}.output := by lin_cert using column{j}.terms',
        f'#print axioms column{j}_valid']
entries = [int(i in col['coordinates']) for i in range(len(target)) for col in columns]
batch = HERE/'product.batch'
batch.write_text(' '.join(str(HERE/'wire'/f'{name}.json') for name in ['factor','source','product'])+
                 ' '+''.join(map(str,entries))+'\n')
result = subprocess.check_output([str(ROOT/'PageProductCertificates/page-product-export'),'--batch',str(batch)],text=True)
(HERE/'wire/productTensor.json').write_text(result)
lines += ['def tensor : PageProductCertificates.Wire := page_product% "Row3147H2Product/wire/productTensor.json"',
    'theorem tensor_valid : tensor.Valid := by lin_cert using ()',
    'theorem tensor_binding : tensor.left = factor ∧ tensor.right = source ∧ tensor.target = product := ⟨rfl,rfl,rfl⟩',
    '#print axioms tensor_valid','#print axioms tensor_binding','end Row3147H2Product.Data']
(HERE/'Data.lean').write_text('\n'.join(lines)+'\n')
out = dict(database_metadata=meta,comparisons=comparisons,columns=columns,entries=entries,
    tensor=json.loads(result),input_sha256={str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest()
    for p in [db,*paths,ROOT/'RealMapCertificates/export.py']},
    status='untrusted finite input; no actual d3 value inferred from SQL NULL')
(HERE/'source.json').write_text(json.dumps(out,indent=2)+'\n')
print('6 comparisons; full E2 tensor columns:',[x['coordinates'] for x in columns])
