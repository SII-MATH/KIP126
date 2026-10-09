"""Complete d2 quotients and both whole Leibniz product tensors for row2773."""
import hashlib
import importlib.util
import json
from pathlib import Path
import sqlite3
import subprocess

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
spec=importlib.util.spec_from_file_location('raw2773',ROOT/'Row3147MapSearch/search_lifted.py')
helper=importlib.util.module_from_spec(spec)
spec.loader.exec_module(helper)
alg=helper.alg
database=ROOT/'upstream/kervaire-49/S0_AdamsSS_t261.db'
sql=sqlite3.connect(f'file:{database}?mode=ro',uri=True)
meta=helper.metadata(sql)
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
canonical=lambda v:json.dumps(v,sort_keys=True,separators=(',',':'))+'\n'
poly=lambda p:'['+','.join('['+','.join(map(str,m))+']' for m in p)+']'
blocks={}
lines=['import PageTransitionCertificates.Import','import PageProductCertificates.Import',
       'import NamedElementCertificates.Evaluation','import LinearCertificates.Checker',
       'namespace Row2773Leibniz.Data',
       'open LinearCertificates PageTransitionCertificates NamedElementCertificates',
       'set_option maxRecDepth 8192','set_option maxHeartbeats 4000000']
raw_row=list(sql.execute('SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=2773').fetchone())
assert raw_row==[2773,13,135,'1',None,9000]
raw_rows={}
for name,(s,t) in dict(eta=(1,2),right=(12,133),leftTarget=(4,4),rightTarget=(15,135),source=(13,135),target=(16,137)).items():
    b=helper.comparison(sql,'S0',s,t,meta)
    b.update(object='S0',degree=[s,t])
    blocks[name]=b
    (HERE/(name+'.json')).write_text(canonical(b['wire']))
    lines += [f'def {name} : WireComparison := page_comparison% "Row2773Leibniz/{name}.json"',
              f'theorem {name}_valid : {name}.Valid := by lin_cert using ()']
    raw_rows[name]=[list(x) for x in sql.execute('SELECT id,base,diff,level FROM S0_AdamsE2_ss WHERE s=? AND t=? ORDER BY id',(s,t))]
relations=[(rid,raw,rs,rt,[alg.mono(x) for x in raw.split(';')]) for rid,raw,rs,rt in
           sql.execute('SELECT rowid,rel,s,t FROM S0_AdamsE2_relations ORDER BY rowid')]
products=[]
for name,left,right,target in [('sourceProduct','eta','right','source'),('leftProduct','leftTarget','right','target')]:
    lb,rb,tb=[blocks[x] for x in [left,right,target]]
    ls,rs,ts=[b['rows'][1] for b in [lb,rb,tb]]
    assert len(ls)==1
    target_index={alg.mono(x['mon']):j for j,x in enumerate(ts)}
    columns=[]
    for j,row in enumerate(rs):
        initial=alg.multiply({alg.mono(ls[0]['mon'])},{alg.mono(row['mon'])})
        current=set(initial);used=[];indices={};trace=[];seen=set()
        for step in range(10000):
            bad=next((mon for mon in sorted(current) if mon not in target_index),None)
            if bad is None:break
            assert tuple(sorted(current)) not in seen
            seen.add(tuple(sorted(current)))
            match=next(((rel,alg.divide(bad,rel[4][0])) for rel in relations
                        if rel[2]<=tb['degree'][0] and rel[3]<=tb['degree'][1]
                        and rel[4] and alg.divide(bad,rel[4][0]) is not None),None)
            if match is None:raise ValueError(f'No reduction for {name} source row {row["id"]}')
            rel,multiplier=match
            if rel[0] not in indices:indices[rel[0]]=len(used);used.append(rel)
            trace.append(dict(relation=indices[rel[0]],multiplier=[multiplier]))
            current.symmetric_difference_update(alg.multiply({multiplier},rel[4]))
        else:raise ValueError('Reduction step bound')
        bundle=dict(relations=[r[4] for r in used],input=sorted(initial),output=sorted(current),terms=trace)
        file=f'{name}{j}.json'
        (HERE/file).write_text(canonical(bundle))
        coords=sorted(target_index[m] for m in current)
        columns.append(coords)
        item=dict(name=name,column=j,left_basis=ls[0],right_basis=row,target_basis=ts,
                  left_degree=lb['degree'],right_degree=rb['degree'],target_degree=tb['degree'],
                  bundle=bundle,coordinates=coords,
                  relation_sources=[dict(rowid=r[0],raw=r[1],degree=[r[2],r[3]]) for r in used])
        products.append(item)
        lines += [f'def {name}{j} : Bundle := named_bundle% "Row2773Leibniz/{file}"',
                  f'theorem {name}{j}_valid : EqualModuloRelations {name}{j}.relations',
                  f'    (multiply {poly([alg.mono(ls[0]["mon"])])} {poly([alg.mono(row["mon"])])}) {name}{j}.output := by',
                  f'  lin_cert using {name}{j}.terms',
                  f'#print axioms {name}{j}_valid']
    bits=[i in col for i in range(len(ts)) for col in columns]
    batch=HERE/(name+'.batch')
    batch.write_text(f'{HERE}/{left}.json {HERE}/{right}.json {HERE}/{target}.json '+(''.join('1' if b else '0' for b in bits) or '-')+'\n')
    run=subprocess.run([str(ROOT/'PageProductCertificates/page-product-export'),'--batch',str(batch)],capture_output=True,text=True,check=True)
    (HERE/(name+'.json')).write_text(run.stdout)
    lines += [f'def {name} : PageProductCertificates.Wire := page_product% "Row2773Leibniz/{name}.json"',
              f'theorem {name}_valid : {name}.Valid := by lin_cert using ()',
              f'theorem {name}_bindings : {name}.left = {left} ∧ {name}.right = {right} ∧ {name}.target = {target} := ⟨rfl,rfl,rfl⟩']
    for j,col in enumerate(columns):
        lines += [f'theorem {name}{j}_output_binding : {name}{j}.output = {poly([alg.mono(ts[i]["mon"]) for i in col])} := by decide',
                  f'theorem {name}{j}_tensor_binding : ∀ i : Fin {len(ts)}, {name}.product i ⟨0,by decide⟩ ⟨{j},by decide⟩ =',
                  f'    (({str([i in col for i in range(len(ts))]).lower().replace(" ","")} : List Bool)[i.val]!) := by decide']
lines += ['def rawRow : Nat × String × Option String × Nat := ⟨2773,"1",none,9000⟩',
          'theorem raw_unknown : rawRow.2.2.1 = none := rfl',
          'theorem source_product_raw : sourceProduct0.output = [[1,1,351]] := by decide',
          '#print axioms sourceProduct_valid','#print axioms leftProduct_valid',
          'end Row2773Leibniz.Data']
(HERE/'Data.lean').write_text('\n'.join(lines)+'\n')
report=dict(raw_row=raw_row,metadata=meta,comparisons=blocks,raw_staircase_rows=raw_rows,products=products,
    input_sha256={str(p.relative_to(ROOT)):sha(p) for p in [database,Path(__file__),ROOT/'Row3147MapSearch/search_lifted.py',ROOT/'RealMapCertificates/export.py']},
    limitation='Complete finite d2 quotients and polynomial products only; actual quotient and product meanings remain explicit. No NULL d3 prefix is used.')
(HERE/'provenance.json').write_text(json.dumps(report,indent=2)+'\n')
print('6 complete comparisons; 4 full product columns; 2 quotient product certificates')
for item in products:print(item['name'],item['column'],item['coordinates'],item['relation_sources'])
