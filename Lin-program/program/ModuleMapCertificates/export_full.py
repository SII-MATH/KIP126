"""Full Cnu->S0 map export, with per-column failure records and complete-block gates."""
import collections,hashlib,json,pathlib,sqlite3
from export import module_mon,rh
HERE=pathlib.Path(__file__).resolve().parent
ROOT=HERE.parent;BASE=ROOT/'upstream/kervaire-49';OUT=ROOT/'ModuleMapBatches'
def main():
 OUT.mkdir(exist_ok=True);wire=OUT/'wire';wire.mkdir(exist_ok=True);matdir=OUT/'matrices';matdir.mkdir(exist_ok=True)
 source=sqlite3.connect(f'file:{BASE}/Cnu_AdamsSS_t200.db?mode=ro',uri=True)
 target=sqlite3.connect(f'file:{BASE}/S0_AdamsSS_t261.db?mode=ro',uri=True)
 mp=sqlite3.connect(f'file:{BASE}/map_AdamsSS_Cnu_to_S0_t200.db?mode=ro',uri=True)
 images={i:rh.poly(raw) for i,raw in mp.execute('select id,map from map_AdamsE2_Cnu_to_S0')}
 basis=collections.defaultdict(dict)
 for i,raw,s,t in target.execute('select id,mon,s,t from S0_AdamsE2_basis order by id'):basis[s,t][rh.mono(raw)]=i
 relations=[(i,[rh.mono(m) for m in raw.split(';')],s,t) for i,raw,s,t in target.execute('select rowid,rel,s,t from S0_AdamsE2_relations')]
 allrows=list(source.execute('select id,mon,s,t from Cnu_AdamsE2_basis where t<=200 order by id'));groups=collections.defaultdict(list);resolved=[];failed=[];wires={}
 for bid,raw,s,t in allrows:
  try:
   coeff,g=module_mon(raw)
   if g not in images:raise ValueError('missing module image')
   original=rh.multiply({coeff},images[g]);current=set(original);terms=[];used=[];idx={};seen=set();tb=basis[s,t-4]
   eligible=[r for r in relations if r[2]<=s and r[3]<=t-4]
   for _ in range(10000):
    bad=next((m for m in sorted(current) if m not in tb),None)
    if bad is None:break
    state=tuple(sorted(current))
    if state in seen:raise ValueError('reduction cycle')
    seen.add(state)
    choice=next(((r,rh.divide(bad,r[1][0])) for r in eligible if rh.divide(bad,r[1][0]) is not None),None)
    if choice is None:raise ValueError('target basis unresolved: no reducing relation')
    (rid,rel,_,_),mult=choice
    if rid not in idx:idx[rid]=len(used);used.append((rid,rel))
    terms.append(dict(relation=idx[rid],multiplier=[mult]));current.symmetric_difference_update(rh.multiply({mult},rel))
   else:raise ValueError('10000-step limit')
   w=dict(version=1,sourceS=s,sourceT=t,targetS=s,targetT=t-4,input=dict(coefficient=coeff,generator=g),images=[[g,sorted(images[g])]],relations=[r for _,r in used],output=sorted(current),terms=terms)
   (wire/f'basis{bid}.json').write_text(json.dumps(w,sort_keys=True,separators=(',',':'))+'\n');wires[bid]=w
   row=dict(source_id=bid,s=s,t=t,target_s=s,target_t=t-4,target_ids=[tb[m] for m in sorted(current)],relation_ids=[i for i,_ in used]);resolved.append(row);groups[s,t].append(row)
  except ValueError as e:failed.append(dict(source_id=bid,s=s,t=t,reason=str(e)))
 matrices=[];units=[]
 for (s,t),rows in sorted(groups.items()):
  expected=[i for i,_,rs,rt in allrows if (rs,rt)==(s,t)]
  if expected!=[r['source_id'] for r in rows]:continue
  tb=sorted((i,m) for m,i in basis[s,t-4].items());rels=[];terms=[];imageset={};inputs=[]
  for row in rows:
   w=wires[row['source_id']];inputs.append(w['input']);offset=len(rels);rels+=w['relations'];terms.append([dict(tr,relation=tr['relation']+offset) for tr in w['terms']]);imageset.update(w['images'])
  mw=dict(version=1,sourceS=s,sourceT=t,targetS=s,targetT=t-4,rows=len(tb),cols=len(rows),source=inputs,target=[[list(mon)] for _,mon in tb],entries=[i in r['target_ids'] for i,_ in tb for r in rows],images=sorted(imageset.items()),relations=rels,terms=terms)
  name=f's{s}t{t}';(matdir/f'{name}.json').write_text(json.dumps(mw,sort_keys=True,separators=(',',':'))+'\n');matrices.append(dict(name=name,s=s,t=t,source_ids=expected,target_ids=[i for i,_ in tb]))
  code=[]
  for r in rows:
   bid=r['source_id'];code += [f'def column{bid} : Wire := module_map% "ModuleMapBatches/wire/basis{bid}.json"',f'theorem column{bid}valid : column{bid}.Valid := by lin_cert using ()']
  code += [f'def {name} : MatrixWire := module_matrix% "ModuleMapBatches/matrices/{name}.json"',f'theorem {name}valid : {name}.Valid := by lin_cert using ()'];units.append((len(rows),code))
 batches=[];code=[];count=0
 for n,unit in units:
  if count>=100:batches.append(code);code=[];count=0
  code+=unit;count+=n
 if code:batches.append(code)
 for i,code in enumerate(batches):
  header=['import ModuleMapCertificates.MatrixImport','set_option maxRecDepth 4096',f'namespace ModuleMapRelease{i}','open ModuleMapCertificates LinProgramCertificates']
  (OUT/f'Batch{i:03d}.lean').write_text('\n'.join(header+code+[f'end ModuleMapRelease{i}'])+'\n')
 audit=dict(status='generated_not_yet_kernel_verified',source_basis=len(allrows),resolved=len(resolved),failed=failed,complete_matrices=len(matrices),batches=len(batches),columns=resolved,matrices=matrices,sources={name:hashlib.sha256((BASE/name).read_bytes()).hexdigest() for name in ['Cnu_AdamsSS_t200.db','S0_AdamsSS_t261.db','map_AdamsSS_Cnu_to_S0_t200.db']})
 (OUT/'generation_audit.json').write_text(json.dumps(audit,indent=2)+'\n');print(len(resolved),'resolved',len(failed),'failed',len(matrices),'matrices',len(batches),'batches')
if __name__=='__main__':main()
