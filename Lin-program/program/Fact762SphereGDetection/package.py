"""Kernel-check finite products and every complete detector comparison."""
import importlib.util,json,sqlite3,subprocess
from pathlib import Path
H=Path(__file__).resolve().parent;R=H.parent
j=json.loads((H/'provisional.json').read_text())
spec=importlib.util.spec_from_file_location('a',R/'RealMapCertificates/export.py');a=importlib.util.module_from_spec(spec);spec.loader.exec_module(a)
c=sqlite3.connect(f'file:{R}/upstream/kervaire-49/S0_AdamsSS_t261.db?mode=ro',uri=True)
canon=lambda x:json.dumps(x,sort_keys=True,separators=(',',':'))+'\n'
bl=lambda xs:'['+','.join('true' if x else 'false' for x in xs)+']'
pl=lambda xs:'['+','.join('['+','.join(map(str,m))+']' for m in xs)+']'
(H/'wire').mkdir(exist_ok=True);(H/'reductions').mkdir(exist_ok=True)
lines=['import PageTransitionCertificates.Import','import PageProductCertificates.Import','import NamedElementCertificates.Evaluation','namespace Fact762SphereGDetection.Data','open LinearCertificates PageTransitionCertificates NamedElementCertificates','set_option maxRecDepth 8192','set_option maxHeartbeats 8000000']
for key,b in sorted(j['comparisons'].items(),key=lambda p:(p[1]['page'],p[0])):
 s,t=b['center'];r=b['page'];n=f'w{s}_{t}_{r}'.replace('-','neg');(H/'wire'/f'{n}.json').write_text(canon(b['wire']))
 lines += [f'def {n} : WireComparison := page_comparison% "Fact762SphereGDetection/wire/{n}.json"',f'theorem {n}_valid : {n}.Valid := by lin_cert using ()',f'#print axioms {n}_valid']
for z,p in enumerate(j['products']):
 used=[];trace=[];origins=[]
 for tr in p['trace']:
  trace.append(dict(relation=len(used),multiplier=[tr['multiplier']]));used.append(tr['polynomial']);origins.append(tr['rowid'])
 w=dict(relations=used,input=p['input'],output=p['output'],terms=trace)
 (H/'reductions'/f'p{z}.json').write_text(canon(w))
 left=[a.mono(p['left'][1])];right=[a.mono(p['right'][1])]
 lines += [f'def p{z} : Bundle := named_bundle% "Fact762SphereGDetection/reductions/p{z}.json"',f'theorem p{z}_valid : EqualModuloRelations p{z}.relations (multiply {pl(left)} {pl(right)}) p{z}.output := by lin_cert using p{z}.terms',f'theorem p{z}_output : p{z}.output = {pl(p["output"])} := by decide',f'#print axioms p{z}_valid']
# Full g product from target degree(19,143), including the d2 boundary column.
products={}
tensor=[int(i==0 and k==0) for k in range(5) for i in range(2)]
for r in [2,3,4]:
 left=j['comparisons'][f'S0:4,24:d{r}']['wire'];right=j['comparisons'][f'S0:19,143:d{r}']['wire'];target=j['comparisons'][f'S0:23,167:d{r}']['wire']
 batch=H/f'product{r}.batch';batch.write_text(f'{H}/wire/w4_24_{r}.json {H}/wire/w19_143_{r}.json {H}/wire/w23_167_{r}.json '+''.join(map(str,tensor))+'\n')
 out=subprocess.run([str(R/'PageProductCertificates/page-product-export'),'--batch',str(batch)],text=True,capture_output=True,check=True)
 (H/f'product{r}.json').write_text(out.stdout);wire=json.loads(out.stdout)
 lines += [f'def product{r} : PageProductCertificates.Wire := page_product% "Fact762SphereGDetection/product{r}.json"',f'theorem product{r}_valid : product{r}.Valid := by lin_cert using ()',f'theorem product{r}_bindings : product{r}.left = w4_24_{r} ∧ product{r}.right = w19_143_{r} ∧ product{r}.target = w23_167_{r} := ⟨rfl,rfl,rfl⟩',f'#print axioms product{r}_valid']
 products[str(r)]=wire
 def ev(v,rr,cc,x):return [sum(v[i*cc+q]*x[q] for q in range(cc))%2 for i in range(rr)]
 def prod(x,y):return [sum(tensor[(k*left['m']+i)*right['m']+q]*x[i]*y[q] for i in range(left['m']) for q in range(right['m']))%2 for k in range(target['m'])]
 nextcols=[]
 for i in range(left['h']):
  for q in range(right['h']):
   x=ev(left['inclusion'],left['m'],left['h'],[int(z==i) for z in range(left['h'])]);y=ev(right['inclusion'],right['m'],right['h'],[int(z==q) for z in range(right['h'])]);nextcols.append(ev(target['projection'],target['h'],target['m'],prod(x,y)))
 nxt=[col[k] for k in range(target['h']) for col in nextcols]
 lines += [f'theorem product{r}_next : ∀ x : Vec {left["m"]}, ∀ y : Vec {right["m"]}, InKernel (matrixOf {left["k"]} {left["m"]} w4_24_{r}.outgoing) x → InKernel (matrixOf {right["k"]} {right["m"]} w19_143_{r}.outgoing) y → eval w23_167_{r}.comparison.projection (PageProductCertificates.product product{r}.product x y) = PageProductCertificates.product (PageProductCertificates.tensorOf {left["h"]} {right["h"]} {target["h"]} {bl(nxt)}) (eval w4_24_{r}.comparison.projection x) (eval w19_143_{r}.comparison.projection y) := by unfold InKernel; decide',f'#print axioms product{r}_next']
 tensor=nxt
lines += [f'def product5 : PageProductCertificates.Tensor 1 1 2 := PageProductCertificates.tensorOf 1 1 2 {bl(tensor)}', 'theorem product5_reflects : ∀ y : Vec 1, PageProductCertificates.product product5 (fun _ => true) y = zero → y = zero := by decide','#print axioms product5_reflects','end Fact762SphereGDetection.Data']
(H/'Data.lean').write_text('\n'.join(lines)+'\n');(H/'product-data.json').write_text(json.dumps(products,indent=2)+'\n')
print('comparisons',len(j['comparisons']),'polynomial products4','complete product tensors3')
