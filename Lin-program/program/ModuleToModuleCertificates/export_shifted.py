"""Complete actual Cnu->CW_nu_eta degree blocks requiring no relation reduction."""
import argparse,collections,hashlib,json,pathlib,sqlite3
HERE=pathlib.Path(__file__).resolve().parent;BASE=HERE.parent/'upstream/kervaire-49'
def mon(raw):
 xs=list(map(int,raw.split(',')))
 if any(x<0 or x==4294967295 for x in xs):raise ValueError('unknown/sentinel module encoding')
 if len(xs)%2!=1:raise ValueError('module encoding requires final generator')
 return tuple(g for g,e in zip(xs[:-1:2],xs[1:-1:2]) for _ in range(e)),xs[-1]
def polynomial(raw):
 if raw is None or '?' in raw:raise ValueError('unknown map')
 return [] if raw=='' else [mon(m) for m in raw.split(';')]
def main(map_name="Ceta__Q_Joker",max_t=12):
 category=json.loads((BASE/"ss.json").read_text());objects={o["name"]:o for o in category["modules"]};mapping=next(r for r in category["maps"] if r["name"]==map_name);sn=mapping["from"];tn=mapping["to"]
 if sn not in objects or tn not in objects or objects[sn].get("over")!="S0" or objects[tn].get("over")!="S0":raise ValueError("requires two S0 modules")
 fil=mapping.get("fil",0);sus=mapping.get("sus",0)
 output=HERE/"shifted";output.mkdir(exist_ok=True)
 src=sqlite3.connect(f'file:{BASE}/{objects[sn]["path"]}?mode=ro',uri=True);tgt=sqlite3.connect(f'file:{BASE}/{objects[tn]["path"]}?mode=ro',uri=True);mp=sqlite3.connect(f'file:{BASE}/{mapping["path"]}?mode=ro',uri=True)
 images={i:(None if raw is None or '4294967295' in raw or '?' in raw else polynomial(raw)) for i,raw in mp.execute('select id,map from "'+mp.execute("select name from sqlite_master where type='table' and name like 'map_AdamsE2_%'").fetchone()[0]+'"')}
 target=collections.defaultdict(list)
 for i,raw,s,t in tgt.execute(f'select id,mon,s,t from {tn}_AdamsE2_basis order by id'):target[s,t].append((i,mon(raw)))
 source=collections.defaultdict(list)
 for i,raw,s,t in src.execute(f'select id,mon,s,t from {sn}_AdamsE2_basis where t<={int(max_t)} order by id'):source[s,t].append((i,mon(raw)))
 lean=['import ModuleToModuleCertificates.ShiftedImport','namespace ModuleToModuleCertificates.ShiftedActual','open LinProgramCertificates'];audit=[];rejected=[]
 for (s,t),rows in sorted(source.items()):
  outs=[]
  for bid,(coeff,g) in rows:
   if g not in images or images[g] is None:raise ValueError('missing/unknown source generator image')
   vals=[(tuple(sorted(coeff+c)),h) for c,h in images[g]];outs.append([m for m,n in collections.Counter(vals).items() if n%2])
  tb=target[s+fil,t+fil-sus];lookup={m:i for i,m in tb}
  reductions=[];used_relations=[]
  for out in outs:
   trace=[]
   for bad in list(out):
    if bad in lookup:continue
    def quotient(big,small):
     if big[1]!=small[1]:return None
     a,b=collections.Counter(big[0]),collections.Counter(small[0])
     return None if any(a[g]<e for g,e in b.items()) else tuple(sorted((a-b).elements()))
    matching=[(rid,polynomial(raw),quotient(bad,polynomial(raw)[0])) for rid,raw in tgt.execute(f'select rowid,rel from {tn}_AdamsE2_relations where s<=? and t<=?',(s+fil,t+fil-sus)) if len(polynomial(raw))==1 and quotient(bad,polynomial(raw)[0]) is not None]
    if not matching:
     ring=sqlite3.connect(f'file:{BASE}/S0_AdamsSS_t261.db?mode=ro',uri=True)
     for rid,raw in ring.execute('select rowid,rel from S0_AdamsE2_relations where s<=? and t<=?',(s+fil,t+fil-sus)):
      if ';' in raw:continue
      lifted=polynomial(raw+','+str(bad[1]))
      mult=quotient(bad,lifted[0])
      if mult is not None:matching=[(-rid,lifted,mult)];break
     ring.close()
    if not matching:raise ValueError(f'unresolved target term {bad} at {(s,t)}')
    rid,rel,mult=matching[0];trace.append(dict(relation=len(used_relations),multiplier=[mult]));used_relations.append((rid,rel));out.remove(bad)
   reductions.append(trace)
  used={g for _,(_,g) in rows}
  if any(h==4294967295 for g in used for _,h in images[g]):raise ValueError('unknown target module-generator sentinel')
  a=1+max(g for _,(_,g) in rows);b=1+max([h for out in outs for _,h in out]+[g for _,(_,g) in tb]+[0])
  if any(g not in images or images[g] is None for g in range(a)):raise ValueError('missing image in dense source family')
  if any(h==4294967295 for g in range(a) for _,h in images[g]):raise ValueError('unknown image in dense source family')
  def expr(terms,n):
   out=[[] for _ in range(n)]
   for c,g in terms:
    if g>=n:raise ValueError('target generator outside selected family')
    out[g].append(list(c))
   return out
  b=max(b,1+max([g for i in range(a) for _,g in images[i]]+[0]))
  w=dict(version=1,sourceS=s,sourceT=t,targetS=s,targetT=t,sourceGenerators=a,targetGenerators=b,rows=len(tb),cols=len(rows),images=[expr(images[i],b) for i in range(a)],source=[expr([m],a) for _,m in rows],target=[expr([m],b) for _,m in tb],relations=[expr(rel,b) for _,rel in used_relations],entries=[m in out for _,m in tb for out in outs],terms=reductions)
  w=dict(version=1,filtration=fil,suspension=sus,sourceS=s,sourceT=t,targetS=s+fil,targetT=t+fil-sus,algebra=w)
  name=f's{s}t{t}';(output/f'{name}.json').write_text(json.dumps(w,sort_keys=True,separators=(',',':'))+'\n');lean += [f'def {name} : ShiftedWire := shifted_module_map% "ModuleToModuleCertificates/shifted/{name}.json"',f'theorem {name}valid : {name}.Valid := by lin_cert using ()'];audit.append(dict(s=s,t=t,source_ids=[i for i,_ in rows],target_ids=[i for i,_ in tb],relation_ids=[i for i,_ in used_relations]))
 lean+=['#print axioms ModuleToModuleCertificates.checkMatrix_linear','end ModuleToModuleCertificates.ShiftedActual'];(HERE/'ShiftedActual.lean').write_text('\n'.join(lean)+'\n');(output/'audit.json').write_text(json.dumps(dict(map=map_name,coefficient_ring='identity S0',filtration=fil,suspension=sus,verified_candidates=audit,unresolved=rejected,sources={n:hashlib.sha256((BASE/n).read_bytes()).hexdigest() for n in [objects[sn]['path'],objects[tn]['path'],mapping['path']]}),indent=2)+'\n');print(len(audit),'complete blocks',len(rejected),'unresolved')
if __name__=='__main__':
 parser=argparse.ArgumentParser();parser.add_argument('--map',default='Ceta__Q_Joker');parser.add_argument('--max-t',type=int,default=12);args=parser.parse_args();main(args.map,args.max_t)
