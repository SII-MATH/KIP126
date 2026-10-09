"""Complete h0 product needed for the second detector basis cycle."""
import json,importlib.util,sqlite3,subprocess
from pathlib import Path
H=Path(__file__).resolve().parent;R=H.parent
spec=importlib.util.spec_from_file_location('h',R/'Row3147MapSearch/search_lifted.py');h=importlib.util.module_from_spec(spec);spec.loader.exec_module(h);a=h.alg
c=sqlite3.connect(f'file:{R}/upstream/kervaire-49/S0_AdamsSS_t261.db?mode=ro',uri=True);meta=h.metadata(c)
can=lambda x:json.dumps(x,sort_keys=True,separators=(',',':'))+'\n'
lines=['import Fact762SphereGDetection.Data','namespace Fact762SphereGDetection.H0Data','open LinearCertificates PageTransitionCertificates NamedElementCertificates','set_option maxRecDepth 8192']
for n,d in [('h0',(1,1)),('source',(22,166)),('target',(23,167))]:
 w=h.comparison(c,'S0',*d,meta)['wire'];(H/f'h0-{n}.json').write_text(can(w));lines += [f'def {n} : WireComparison := page_comparison% "Fact762SphereGDetection/h0-{n}.json"',f'theorem {n}_valid : {n}.Valid := by lin_cert using ()']
source=list(c.execute('select id,mon from S0_AdamsE2_basis where s=22 and t=166 order by id'));target=list(c.execute('select id,mon from S0_AdamsE2_basis where s=23 and t=167 order by id'));lookup={a.mono(raw):i for i,(_,raw) in enumerate(target)};rels=[(i,raw,s,t,[a.mono(x) for x in raw.split(';')]) for i,raw,s,t in c.execute('select rowid,rel,s,t from S0_AdamsE2_relations where s<=23 and t<=167 order by rowid')];cols=[];records=[]
pl=lambda p:'['+','.join('['+','.join(map(str,x))+']' for x in p)+']'
for j,(bid,raw) in enumerate(source):
 initial=a.multiply({(0,)},{a.mono(raw)});cur=set(initial);used=[];terms=[];origins=[]
 for _ in range(10000):
  bad=next((x for x in sorted(cur) if x not in lookup),None)
  if bad is None:break
  r,q=next(( (r,a.divide(bad,r[4][0])) for r in rels if r[4] and a.divide(bad,r[4][0]) is not None))
  terms.append(dict(relation=len(used),multiplier=[q]));used.append(r[4]);origins.append(r[:4]);cur.symmetric_difference_update(a.multiply({q},r[4]))
 else:raise ValueError('bound')
 w=dict(input=sorted(initial),output=sorted(cur),relations=used,terms=terms);(H/f'h0-column{j}.json').write_text(can(w));cols.append(sorted(lookup[x] for x in cur));records.append(dict(source=[bid,raw],bundle=w,origins=origins))
 lines += [f'def column{j} : Bundle := named_bundle% "Fact762SphereGDetection/h0-column{j}.json"',f'theorem column{j}_valid : EqualModuloRelations column{j}.relations (multiply [[0]] {pl([a.mono(raw)])}) column{j}.output := by lin_cert using column{j}.terms']
bits=[int(i in col) for i in range(len(target)) for col in cols];(H/'h0-product.batch').write_text(f'{H}/h0-h0.json {H}/h0-source.json {H}/h0-target.json '+''.join(map(str,bits))+'\n');out=subprocess.run([str(R/'PageProductCertificates/page-product-export'),'--batch',str(H/'h0-product.batch')],text=True,capture_output=True,check=True);(H/'h0-product.json').write_text(out.stdout)
lines += ['def wire : PageProductCertificates.Wire := page_product% "Fact762SphereGDetection/h0-product.json"','theorem wire_valid : wire.Valid := by lin_cert using ()','def namedSource : Vec 4 := fun i => i.val == 0','def namedTarget : Vec 5 := fun i => i.val == 2','theorem named_product : PageProductCertificates.product wire.product (fun _ => true) namedSource = namedTarget := by decide','theorem target_next : eval Data.w23_167_2.comparison.projection namedTarget = (fun i => i.val == 2) := by decide']
for j in range(4):lines.append(f'#print axioms column{j}_valid')
lines += ['#print axioms wire_valid','#print axioms named_product','#print axioms target_next','end Fact762SphereGDetection.H0Data'];(H/'H0Data.lean').write_text('\n'.join(lines)+'\n');(H/'h0-provenance.json').write_text(json.dumps(dict(source=source,target=target,columns=cols,records=records),indent=2)+'\n');print(cols)
