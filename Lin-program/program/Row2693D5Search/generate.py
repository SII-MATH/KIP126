"""Export the source h1 product and its d5 correction annihilator."""
import hashlib
import importlib.util
import json
from pathlib import Path
import sqlite3
import subprocess

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
sp=importlib.util.spec_from_file_location('algebra',ROOT/'RealMapCertificates/export.py')
alg=importlib.util.module_from_spec(sp);sp.loader.exec_module(alg)
db=ROOT/'upstream/kervaire-49/S0_AdamsSS_t261.db'
c=sqlite3.connect('file:'+str(db)+'?mode=ro',uri=True)
meta=dict(c.execute('select name,value from version'))
parent=ROOT/'Fact713SquareContinuation/zero_b0-family.json'
family={(e['key']['page'],e['key']['s'],e['key']['t']):e['wire'] for e in json.loads(parent.read_text())['entries']}
canonical=lambda x:json.dumps(x,sort_keys=True,separators=(',',':'))+'\n'
def basis(d):
 assert d[1]<=meta['t_max']
 return c.execute('select id,mon,d2 from S0_AdamsE2_basis where s=? and t=? order by id',d).fetchall()
def comparison(d):
 assert d[1]<=meta['d2_t_max']
 groups=[basis(x) for x in [(d[0]-2,d[1]-1),d,(d[0]+2,d[1]+1)]]
 n,m,k=map(len,groups)
 def bits(g,target):
  cols=[]
  for _,_,raw in g:
   assert raw is not None
   ids=[int(x) for x in raw.split(',') if x]
   assert len(ids)==len(set(ids)) and all(0<=i<target for i in ids)
   cols.append(ids)
  return ''.join('1' if i in col else '0' for i in range(target) for col in cols) or '-'
 w=json.loads(subprocess.check_output([str(ROOT/'PageTransitionCertificates/page-transition-export'),str(k),str(m),str(n),bits(groups[1],k),bits(groups[0],m)]))
 return dict(wire=w,degree=d,page=2,groups=groups)
comparisons={}
for label,d in [('left',(1,2)),('right',(9,132)),('product',(10,134)),('target',(15,138))]:
 for r in [2,3,4]:
  if label=='left' and r>2:
   item=dict(wire=dict(version=1,k=1,m=1,n=0,h=1,outgoing=[False],incoming=[],inclusion=[True],projection=[True],up=[],down=[False]),
     degree=d,page=r,status='derived by LowH1 detector; never inferred from SQL NULL')
  else:
   w=family.get((r,*d))
   if w is None:assert r==2;item=comparison(d)
   else:item=dict(wire=w,degree=d,page=r,status='exact inherited complete comparison')
  comparisons[label+str(r)]=item
comparisons['right5']=dict(wire=family[5,9,132],degree=(9,132),page=5,status='finite earlier-zero prefix; requires complete actual meaning')
for label,d in [('h0',(1,1)),('tower4',(4,4)),('tower5',(5,5)),('tower6',(6,6)),('emptyProduct',(2,3))]:
 comparisons[label+'2']=comparison(d)
for label,d,k,n in [('h0',(1,1),0,0),('tower5',(5,5),0,0),('tower6',(6,6),0,0)]:
 comparisons[label+'3']=dict(wire=dict(version=1,k=k,m=1,n=n,h=1,outgoing=[False]*k,incoming=[False]*n,
  inclusion=[True],projection=[True],up=[False]*n,down=[False]*k),degree=d,page=3,
  status='whole low tower; complete actual meanings required; all incoming E2 neighbor groups empty')
lines=['import PageTransitionCertificates.Import','import PageProductCertificates.Basic','import NamedElementCertificates.Evaluation',
 'namespace Row2693D5Search.Data','open LinearCertificates PageTransitionCertificates NamedElementCertificates',
 'set_option maxRecDepth 8192','set_option maxHeartbeats 8000000']
for name,item in comparisons.items():
 (HERE/'wire'/f'{name}.json').write_text(canonical(item['wire']))
 lines += [f'def {name} : WireComparison := page_comparison% "Row2693D5Search/wire/{name}.json"',
 f'theorem {name}_valid : {name}.Valid := by lin_cert using ()',f'#print axioms {name}_valid']
rels=[(rid,raw,s,t,[alg.mono(x) for x in raw.split(';')]) for rid,raw,s,t in c.execute('select rowid,rel,s,t from S0_AdamsE2_relations order by rowid')]
products={}
for label,ld,rd in [('main',(1,2),(9,132)),('correction',(6,6),(9,132)),('low3',(1,1),(4,4)),('low4',(1,1),(5,5))]:
 td=tuple(x+y for x,y in zip(ld,rd));a,b,out=basis(ld),basis(rd),basis(td)
 lookup={alg.mono(row[1]):i for i,row in enumerate(out)};cols=[]
 for j,left in enumerate(a):
  for k,right in enumerate(b):
   initial=alg.multiply({alg.mono(left[1])},{alg.mono(right[1])});cur=initial.copy();used=[];terms=[];origins=[];seen=set()
   for _ in range(10000):
    bad=next((x for x in sorted(cur) if x not in lookup),None)
    if bad is None:break
    assert tuple(sorted(cur)) not in seen;seen.add(tuple(sorted(cur)))
    rel,q=next(((r,alg.divide(bad,r[4][0])) for r in rels if r[2]<=td[0] and r[3]<=td[1] and alg.divide(bad,r[4][0]) is not None))
    terms.append(dict(relation=len(used),multiplier=[q]));used.append(rel[4]);origins.append(dict(rowid=rel[0],raw=rel[1],degree=rel[2:4]))
    cur.symmetric_difference_update(alg.multiply({q},rel[4]))
   else:raise ValueError('reduction bound')
   bundle=dict(input=sorted(initial),output=sorted(cur),relations=used,terms=terms);name=f'{label}{j}{k}'
   (HERE/'wire'/f'{name}.json').write_text(canonical(bundle))
   cols.append(dict(name=name,left=j,right=k,bundle=bundle,relations=origins,coordinates=sorted(lookup[x] for x in cur)))
   lines += [f'def {name} : Bundle := named_bundle% "Row2693D5Search/wire/{name}.json"',
    f'theorem {name}_valid : EqualModuloRelations {name}.relations {name}.input {name}.output := by lin_cert using {name}.terms',f'#print axioms {name}_valid']
  
 entries=[i in col['coordinates'] for i in range(len(out)) for col in cols]
 products[label]=dict(left_degree=ld,right_degree=rd,target_degree=td,left_basis=a,right_basis=b,target_basis=out,columns=cols,tensor=entries)
 bools='['+','.join('true' if v else 'false' for v in entries)+']'
 lines += [f'def {label}Tensor : PageProductCertificates.Tensor {len(a)} {len(b)} {len(out)} :=',
  f'  fun i j k => ({bools} : List Bool)[i.val*{len(a)*len(b)}+j.val*{len(b)}+k.val]!']
lines += ['end Row2693D5Search.Data']
(HERE/'Data.lean').write_text('\n'.join(lines)+'\n')
out=dict(comparisons=comparisons,products=products,database_metadata=meta,
 input_sha256={str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest() for p in [db,parent,ROOT/'RealMapCertificates/export.py']},
 status='untrusted finite certificate inputs; no desired or low h1 differential assumed')
out['raw_staircases']={f'{s},{t}':c.execute('select id,base,diff,level from S0_AdamsE2_ss where s=? and t=? order by id',(s,t)).fetchall()
 for s,t in [(1,2),(9,132),(10,134),(15,138)]}
out['empty_basis_groups']={f'{s},{t}':basis((s,t)) for s,t in [(2,3),(4,3),(5,4),(2,3),(3,4)]}
(HERE/'source-products.json').write_text(json.dumps(out,indent=2)+'\n')
print(len(comparisons),'comparisons;',sum(len(p['columns']) for p in products.values()),'complete product columns')
