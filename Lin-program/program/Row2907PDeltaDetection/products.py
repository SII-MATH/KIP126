"""Complete source/target products with the low-degree factor (12,42)."""
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
alg=helper.alg
database=ROOT/'upstream/kervaire-49/S0_AdamsSS_t261.db'
sql=sqlite3.connect(f'file:{database}?mode=ro',uri=True)
graph=json.loads((HERE/'search.json').read_text())
comparisons=graph['comparisons']
comparisons['S0:16,137:d2']=json.loads((HERE/'source-d2.json').read_text())
comparisons['S0:20,140:d2']=helper.comparison(sql,'S0',20,140,helper.metadata(sql))
wire_dir=HERE/'wire';wire_dir.mkdir(exist_ok=True)
canonical=lambda v:json.dumps(v,sort_keys=True,separators=(',',':'))+'\n'
lines=['import PageTransitionCertificates.Import','import PageProductCertificates.Import',
       'import NamedElementCertificates.Evaluation','namespace Row2907PDeltaDetection.Data',
       'open LinearCertificates PageTransitionCertificates NamedElementCertificates',
       'set_option maxRecDepth 8192','set_option maxHeartbeats 8000000']
names={}
for key,b in sorted(comparisons.items()):
    _,degree,page=key.split(':');s,t=map(int,degree.split(','));r=int(page[1:]);name=f'c{s}_{t}_{r}'
    names[key]=name;(wire_dir/f'{name}.json').write_text(canonical(b['wire']))
    lines += [f'def {name} : WireComparison := page_comparison% "Row2907PDeltaDetection/wire/{name}.json"',
              f'theorem {name}_valid : {name}.Valid := by lin_cert using ()',f'#print axioms {name}_valid']
relations=[(rid,raw,s,t,[alg.mono(x) for x in raw.split(';')]) for rid,raw,s,t in
           sql.execute('select rowid,rel,s,t from S0_AdamsE2_relations order by rowid')]
products={}
for name,source_degree,target_degree in [('source',(16,137),(28,179)),('target',(20,140),(32,182))]:
    source=sql.execute('select id,mon from S0_AdamsE2_basis where s=? and t=? order by id',source_degree).fetchall()
    target=sql.execute('select id,mon from S0_AdamsE2_basis where s=? and t=? order by id',target_degree).fetchall()
    lookup={alg.mono(raw):i for i,(_,raw) in enumerate(target)}
    cols=[]
    for j,(bid,raw) in enumerate(source):
        initial={(31,)+alg.mono(raw)};initial={tuple(sorted(x)) for x in initial}
        current=initial.copy();used=[];terms=[];origins=[];seen=set()
        for _ in range(10000):
            bad=next((x for x in sorted(current) if x not in lookup),None)
            if bad is None:break
            assert tuple(sorted(current)) not in seen;seen.add(tuple(sorted(current)))
            chosen=next(((rel,alg.divide(bad,rel[4][0])) for rel in relations if rel[4]
                and rel[2]<=target_degree[0] and rel[3]<=target_degree[1]
                and alg.divide(bad,rel[4][0]) is not None),None)
            if chosen is None:raise ValueError(f'missing reduction {name}/{bid}/{bad}')
            rel,q=chosen
            terms.append(dict(relation=len(used),multiplier=[list(q)]));used.append(rel[4])
            origins.append(dict(rowid=rel[0],raw=rel[1],degree=[rel[2],rel[3]]))
            current.symmetric_difference_update(alg.multiply({q},rel[4]))
        else:raise ValueError('reduction limit')
        bundle=dict(relations=used,input=sorted(initial),output=sorted(current),terms=terms)
        (wire_dir/f'{name}{j}.json').write_text(canonical(bundle))
        lines += [f'def {name}{j} : Bundle := named_bundle% "Row2907PDeltaDetection/wire/{name}{j}.json"',
                  f'theorem {name}{j}_valid : EqualModuloRelations {name}{j}.relations {name}{j}.input {name}{j}.output := by',
                  f'  lin_cert using {name}{j}.terms',f'#print axioms {name}{j}_valid']
        cols.append(dict(id=bid,mon=raw,bundle=bundle,relations=origins,coordinates=sorted(lookup[x] for x in current)))
    entries=[int(i in col['coordinates']) for i in range(len(target)) for col in cols]
    left='c12_42_2';right=names[f'S0:{source_degree[0]},{source_degree[1]}:d2'];dest=names[f'S0:{target_degree[0]},{target_degree[1]}:d2']
    batch=HERE/f'{name}.batch';batch.write_text(f'{wire_dir}/{left}.json {wire_dir}/{right}.json {wire_dir}/{dest}.json '+(''.join(map(str,entries)) or '-')+'\n')
    run=subprocess.run([str(ROOT/'PageProductCertificates/page-product-export'),'--batch',str(batch)],capture_output=True,text=True,check=True)
    (wire_dir/f'{name}Product.json').write_text(run.stdout)
    lines += [f'def {name}Product : PageProductCertificates.Wire := page_product% "Row2907PDeltaDetection/wire/{name}Product.json"',
              f'theorem {name}Product_valid : {name}Product.Valid := by lin_cert using ()',
              f'theorem {name}Product_bindings : {name}Product.left = {left} ∧ {name}Product.right = {right} ∧ {name}Product.target = {dest} := ⟨rfl,rfl,rfl⟩',
              f'#print axioms {name}Product_valid']
    products[name]=dict(source_degree=source_degree,target_degree=target_degree,source=source,target=target,
                        columns=cols,entries=entries,wire=json.loads(run.stdout))
lines.append('end Row2907PDeltaDetection.Data')
(HERE/'Data.lean').write_text('\n'.join(lines)+'\n')
(HERE/'products.json').write_text(json.dumps(dict(products=products,comparisons=comparisons,
    source_sha256=hashlib.sha256(database.read_bytes()).hexdigest()),indent=2)+'\n')
for name,p in products.items():print(name,[(c['id'],c['coordinates']) for c in p['columns']])
