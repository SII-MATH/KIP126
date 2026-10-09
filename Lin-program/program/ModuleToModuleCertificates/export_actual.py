"""Complete actual Cnu->CW_nu_eta degree blocks requiring no relation reduction."""
import collections,hashlib,json,pathlib,sqlite3
HERE=pathlib.Path(__file__).resolve().parent;BASE=HERE.parent/'upstream/kervaire-49'
def mon(raw):
 xs=list(map(int,raw.split(',')))
 if any(x<0 or x==4294967295 for x in xs):raise ValueError('unknown/sentinel module encoding')
 if len(xs)%2!=1:raise ValueError('module encoding requires final generator')
 return tuple(g for g,e in zip(xs[:-1:2],xs[1:-1:2]) for _ in range(e)),xs[-1]
def polynomial(raw):
 if raw is None or '?' in raw:raise ValueError('unknown map')
 return [] if raw=='' else [mon(m) for m in raw.split(';')]
def main():
 src=sqlite3.connect(f'file:{BASE}/Cnu_AdamsSS_t200.db?mode=ro',uri=True);tgt=sqlite3.connect(f'file:{BASE}/CW_nu_eta_AdamsSS_t200.db?mode=ro',uri=True);mp=sqlite3.connect(f'file:{BASE}/map_AdamsSS_Cnu_to_CW_nu_eta_t180.db?mode=ro',uri=True)
 images={i:(None if raw is None or '4294967295' in raw or '?' in raw else polynomial(raw)) for i,raw in mp.execute('select id,map from map_AdamsE2_Cnu_to_CW_nu_eta')}
 target=collections.defaultdict(list)
 for i,raw,s,t in tgt.execute('select id,mon,s,t from CW_nu_eta_AdamsE2_basis order by id'):target[s,t].append((i,mon(raw)))
 source=collections.defaultdict(list)
 for i,raw,s,t in src.execute('select id,mon,s,t from Cnu_AdamsE2_basis where t<=12 order by id'):source[s,t].append((i,mon(raw)))
 lean=['import ModuleToModuleCertificates.Import','namespace ModuleToModuleCertificates.Actual','open LinProgramCertificates'];audit=[];rejected=[]
 for (s,t),rows in sorted(source.items()):
  outs=[]
  for bid,(coeff,g) in rows:
   if g not in images or images[g] is None:raise ValueError('missing/unknown source generator image')
   vals=[(tuple(sorted(coeff+c)),h) for c,h in images[g]];outs.append([m for m,n in collections.Counter(vals).items() if n%2])
  tb=target[s,t];lookup={m:i for i,m in tb}
  reductions=[];used_relations=[]
  for out in outs:
   trace=[]
   for bad in list(out):
    if bad in lookup:continue
    matching=[(rid,polynomial(raw)) for rid,raw in tgt.execute('select rowid,rel from CW_nu_eta_AdamsE2_relations where s=? and t=?',(s,t)) if polynomial(raw)==[bad]]
    if not matching:raise ValueError(f'unresolved target term {bad} at {(s,t)}')
    rid,rel=matching[0];trace.append(dict(relation=len(used_relations),multiplier=[[]]));used_relations.append((rid,rel));out.remove(bad)
   reductions.append(trace)
  a=1+max(g for _,(_,g) in rows);b=1+max([h for out in outs for _,h in out]+[g for _,(_,g) in tb]+[0])
  if any(g not in images or images[g] is None for g in range(a)):raise ValueError('missing image in dense source family')
  def expr(terms,n):
   out=[[] for _ in range(n)]
   for c,g in terms:
    if g>=n:raise ValueError('target generator outside selected family')
    out[g].append(list(c))
   return out
  b=max(b,1+max([g for i in range(a) for _,g in images[i]]+[0]))
  w=dict(version=1,sourceS=s,sourceT=t,targetS=s,targetT=t,sourceGenerators=a,targetGenerators=b,rows=len(tb),cols=len(rows),images=[expr(images[i],b) for i in range(a)],source=[expr([m],a) for _,m in rows],target=[expr([m],b) for _,m in tb],relations=[expr(rel,b) for _,rel in used_relations],entries=[m in out for _,m in tb for out in outs],terms=reductions)
  name=f's{s}t{t}';(HERE/f'{name}.json').write_text(json.dumps(w,sort_keys=True,separators=(',',':'))+'\n');lean += [f'def {name} : Wire := module_to_module% "ModuleToModuleCertificates/{name}.json"',f'theorem {name}valid : {name}.Valid := by lin_cert using ()'];audit.append(dict(s=s,t=t,source_ids=[i for i,_ in rows],target_ids=[i for i,_ in tb],relation_ids=[i for i,_ in used_relations]))
 lean+=['#print axioms ModuleToModuleCertificates.checkMatrix_linear','end ModuleToModuleCertificates.Actual'];(HERE/'Actual.lean').write_text('\n'.join(lean)+'\n');(HERE/'audit.json').write_text(json.dumps(dict(map='Cnu__CW_nu_eta',coefficient_ring='identity S0',filtration=0,suspension=0,verified_candidates=audit,unresolved=rejected,sources={n:hashlib.sha256((BASE/n).read_bytes()).hexdigest() for n in ['Cnu_AdamsSS_t200.db','CW_nu_eta_AdamsSS_t200.db','map_AdamsSS_Cnu_to_CW_nu_eta_t180.db']}),indent=2)+'\n');print(len(audit),'complete blocks',len(rejected),'unresolved')
if __name__=='__main__':main()
