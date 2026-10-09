"""Actual C2 top-cell map: coefficient ring identity, target t = source t - 2."""
import collections,hashlib,importlib.util,json,pathlib,sqlite3
HERE=pathlib.Path(__file__).resolve().parent;BASE=HERE.parent/'upstream/kervaire-49'
spec=importlib.util.spec_from_file_location('ring_helpers',HERE.parent/'RealMapCertificates/export.py');rh=importlib.util.module_from_spec(spec);spec.loader.exec_module(rh)
def module_mon(raw):
 cells=raw.split(',')
 if len(cells)%2!=1:raise ValueError('expected coefficient pairs plus trailing module generator')
 if int(cells[-1])==4294967295:raise ValueError('unknown module generator sentinel')
 return rh.mono(','.join(cells[:-1])),int(cells[-1])
def main():
 source=sqlite3.connect(f'file:{BASE}/C2_AdamsSS_t200.db?mode=ro',uri=True)
 target=sqlite3.connect(f'file:{BASE}/S0_AdamsSS_t261.db?mode=ro',uri=True)
 mp=sqlite3.connect(f'file:{BASE}/map_AdamsSS_C2_to_S0_t200.db?mode=ro',uri=True)
 images={i:rh.poly(raw) for i,raw in mp.execute('select id,map from map_AdamsE2_C2_to_S0')}
 basis=collections.defaultdict(dict)
 for i,raw,s,t in target.execute('select id,mon,s,t from S0_AdamsE2_basis order by id'):basis[s,t][rh.mono(raw)]=i
 relations=[(i,[rh.mono(m) for m in raw.split(';')],s,t) for i,raw,s,t in target.execute('select rowid,rel,s,t from S0_AdamsE2_relations')]
 rows=list(source.execute('select id,mon,s,t from C2_AdamsE2_basis where (s=15 and t=140) or (s=17 and t=141) or (s=19 and t=142) or (s=18 and t=142) or (s=20 and t=143) or (s=22 and t=144) order by id'))
 lines=['import ModuleMapCertificates.Basic','namespace Fact713C2Row3143.MapActual','open NamedElementCertificates LinProgramCertificates ModuleMapCertificates']
 needed=sorted({module_mon(raw)[1] for _,raw,_,_ in rows});missing=set(needed)-images.keys()
 if missing:raise ValueError(f'missing module generator images {missing}')
 pl=lambda p:'['+','.join('['+','.join(map(str,m))+']' for m in p)+']'
 lines+=['def images : Nat → Polynomial',*[f'  | {g} => {pl(sorted(images[g]))}' for g in needed],'  | _ => []']
 audit=[]
 wire_dir=HERE/'wire';wire_dir.mkdir(exist_ok=True)
 wire_lines=['import Fact713C2Row3143.MapImport','namespace Fact713C2Row3143.MapImported','open LinProgramCertificates Fact713C2Row3143.MapImport']
 for bid,raw,s,t in rows:
  coeff,g=module_mon(raw);original=rh.multiply({coeff},images[g]);current=set(original);terms=[];used=[];idx={};seen=set();tb=basis[s,t-1]
  for _ in range(10000):
   bad=next((m for m in sorted(current) if m not in tb),None)
   if bad is None:break
   state=tuple(sorted(current))
   if state in seen:raise ValueError('reduction cycle')
   seen.add(state)
   choice=next(((r,rh.divide(bad,r[1][0])) for r in relations if r[2]<=s and r[3]<=t-1 and rh.divide(bad,r[1][0]) is not None),None)
   if choice is None:raise ValueError(f'no reduction for basis {bid}')
   (rid,rel,_,_),mult=choice
   if rid not in idx:idx[rid]=len(used);used.append((rid,rel))
   terms.append(dict(relation=idx[rid],multiplier=[mult]));current.symmetric_difference_update(rh.multiply({mult},rel))
  else:raise ValueError('reduction limit')
  reltext='['+','.join(pl(r) for _,r in used)+']';termtext='['+','.join('⟨'+str(x['relation'])+','+pl(x['multiplier'])+'⟩' for x in terms)+']'
  inp='⟨'+pl([coeff])[1:-1]+','+str(g)+'⟩'
  lines += [f'theorem basis{bid} : MapValid images {reltext} {inp} {pl(sorted(current))} := by lin_cert using ({termtext} : List Term)']
  if True:
   wire=dict(version=1,sourceS=s,sourceT=t,targetS=s,targetT=t-1,input=dict(coefficient=coeff,generator=g),images=[[g,sorted(images[g])]],relations=[r for _,r in used],output=sorted(current),terms=terms)
   (wire_dir/f'basis{bid}.json').write_text(json.dumps(wire,sort_keys=True,separators=(',',':'))+'\n')
   wire_lines += [f'def basis{bid} : Wire := c2_row3143_map% "Fact713C2Row3143/wire/basis{bid}.json"',f'theorem basis{bid}valid : basis{bid}.Valid := by lin_cert using ()']
  audit.append(dict(source_id=bid,source_encoding=raw,source_s=s,source_t=t,target_s=s,target_t=t-1,target_basis_ids=[tb[m] for m in sorted(current)],source_generator=g,relations=[i for i,_ in used]))
 wire_lines.append('end Fact713C2Row3143.MapImported');(HERE/'MapImported.lean').write_text('\n'.join(wire_lines)+'\n')
 lines+=['#print axioms ModuleMapCertificates.mapValid_linear','end Fact713C2Row3143.MapActual'];(HERE/'MapActual.lean').write_text('\n'.join(lines)+'\n')
 (HERE/'audit.json').write_text(json.dumps(dict(map='C2__S0',coefficient_ring_map='identity S0',suspension=1,filtration=0,range='all C2 source basis t<=20',columns=audit,sources={name:hashlib.sha256((BASE/name).read_bytes()).hexdigest() for name in ['C2_AdamsSS_t200.db','S0_AdamsSS_t261.db','map_AdamsSS_C2_to_S0_t200.db']}),indent=2)+'\n');print(len(audit),'actual module basis images')
if __name__=='__main__':main()
