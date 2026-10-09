"""Complete by-sigma E2 matrix and its complete d2 quotient map."""
import importlib.util,json,sqlite3
from pathlib import Path
H=Path(__file__).resolve().parent;R=H.parent;B=R/'upstream/kervaire-49'
spec=importlib.util.spec_from_file_location('h',R/'Row3147MapSearch/search_lifted.py');h=importlib.util.module_from_spec(spec);spec.loader.exec_module(h);a=h.alg
s=sqlite3.connect(f'file:{B}/CW_nu_eta_2_AdamsSS_t200.db?mode=ro',uri=True);t=sqlite3.connect(f'file:{B}/S0_AdamsSS_t261.db?mode=ro',uri=True);m=sqlite3.connect(f'file:{B}/map_AdamsSS_CW_nu_eta_2_to_S0_by_sigma_t200.db?mode=ro',uri=True)
images=dict(m.execute('select id,map from map_AdamsE2_CW_nu_eta_2_to_S0_by_sigma'));rels=[(i,raw,ss,tt,[a.mono(x) for x in raw.split(';')]) for i,raw,ss,tt in t.execute('select rowid,rel,s,t from S0_AdamsE2_relations order by rowid')]
degrees=[(17,156),(19,157),(21,158)];basis={d:list(s.execute('select id,mon from CW_nu_eta_2_AdamsE2_basis where s=? and t=? order by id',d)) for d in degrees};gids=sorted({h.module_mon(raw)[1] for rows in basis.values() for _,raw in rows});print('generators',gids)
canon=lambda x:json.dumps(x,sort_keys=True,separators=(',',':'))+'\n';pl=lambda xs:'['+','.join('['+','.join(map(str,m))+']' for m in xs)+']'
(H/'mapwire').mkdir(exist_ok=True);lines=['import Fact762SphereGDetection.Data','import ModuleToModuleCertificates.ShiftedImport','import PageTransitionCertificates.InducedMap','namespace Fact762SphereGDetection.BySigmaData','open LinearCertificates PageTransitionCertificates ModuleToModuleCertificates','set_option maxRecDepth 8192','set_option maxHeartbeats 8000000'];maps={}
for ss,tt in degrees:
 source=basis[ss,tt];target=list(t.execute('select id,mon from S0_AdamsE2_basis where s=? and t=? order by id',(ss+1,tt+8)));lookup={a.mono(raw):j for j,(_,raw) in enumerate(target)};used=[];origins=[];terms=[];cols=[]
 for bid,raw in source:
  co,g=h.module_mon(raw);cur=a.multiply({co},a.poly(images[g]));tr=[]
  for _ in range(10000):
   bad=next((x for x in sorted(cur) if x not in lookup),None)
   if bad is None:break
   rel,q=next(( (r,a.divide(bad,r[4][0])) for r in rels if r[2]<=ss+1 and r[3]<=tt+8 and r[4] and a.divide(bad,r[4][0]) is not None))
   tr.append(dict(relation=len(used),multiplier=[q]));used.append([rel[4]]);origins.append(dict(rowid=rel[0],raw=rel[1],degree=rel[2:4]));cur.symmetric_difference_update(a.multiply({q},rel[4]))
  else:raise ValueError('reduction bound')
  terms.append(tr);cols.append(sorted(lookup[x] for x in cur))
 def expr(raw):
  co,g=h.module_mon(raw);return [[co] if i==g else [] for i in gids]
 algebra=dict(version=1,sourceS=0,sourceT=0,targetS=0,targetT=0,sourceGenerators=len(gids),targetGenerators=1,rows=len(target),cols=len(source),images=[[sorted(a.poly(images[g]))] for g in gids],source=[expr(raw) for _,raw in source],target=[[[a.mono(raw)]] for _,raw in target],relations=used,entries=[i in col for i in range(len(target)) for col in cols],terms=terms)
 wire=dict(version=1,filtration=1,suspension=-7,sourceS=ss,sourceT=tt,targetS=ss+1,targetT=tt+8,algebra=algebra);n=f'm{ss}_{tt}'
 (H/'mapwire'/f'{n}.json').write_text(canon(wire));lines += [f'def {n} : ShiftedWire := shifted_module_map% "Fact762SphereGDetection/mapwire/{n}.json"',f'theorem {n}_valid : {n}.Valid := by lin_cert using ()',f'#print axioms {n}_valid'];maps[n]=dict(source=source,target=target,wire=wire,origins=origins,columns=cols)
 print(n,cols)
w=json.loads((H/'by-sigma-d2.json').read_text())['comparisons']['19,157']['wire'];(H/'wire/bySigma2.json').write_text(canon(w))
lines += ['def source : WireComparison := page_comparison% "Fact762SphereGDetection/wire/bySigma2.json"','theorem source_valid : source.Valid := by lin_cert using ()','abbrev target := Data.w20_165_2','theorem compatible : CompatibleMap (matrixOf source.k source.m source.outgoing) (matrixOf source.m source.n source.incoming) (matrixOf target.k target.m target.outgoing) (matrixOf target.m target.n target.incoming) m19_157.algebra.mat m21_158.algebra.mat m17_156.algebra.mat := by lin_cert using ()','def quotientMap := coordinateMap source.comparison target.comparison m19_157.algebra.mat','def named2 : Vec 3 := fun i => i.val == 2','def target2 : Vec 3 := fun i => i.val == 2','def named3 : Vec 3 := fun i => i.val == 2','def target3 : Vec 2 := fun i => i.val == 0','theorem named2_map : eval m19_157.algebra.mat named2 = target2 := by decide','theorem source_next : eval source.comparison.projection named2 = named3 := by decide','theorem target_next : eval target.comparison.projection target2 = target3 := by decide','theorem named3_map : eval quotientMap named3 = target3 := by decide']
for n in ['source_valid','compatible','named2_map','source_next','target_next','named3_map']:lines.append(f'#print axioms {n}')
lines.append('end Fact762SphereGDetection.BySigmaData');(H/'BySigmaData.lean').write_text('\n'.join(lines)+'\n');(H/'by-sigma-maps.json').write_text(json.dumps(dict(generators=gids,maps=maps),indent=2)+'\n')
