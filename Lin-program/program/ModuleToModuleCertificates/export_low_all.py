"""Bounded low-degree all-module-map export. Unsupported algebra remains unresolved."""
import collections,importlib.util,json,pathlib,sqlite3
HERE=pathlib.Path(__file__).resolve().parent;ROOT=HERE.parent;BASE=ROOT/'upstream/kervaire-49';OUT=ROOT/'ModuleLowMapBatches'
# Reuse parsing helpers; no producer invocation or shared-output mutation.
spec=importlib.util.spec_from_file_location('helpers',HERE/'export_shifted.py');helpers=importlib.util.module_from_spec(spec);spec.loader.exec_module(helpers)
def connect(p):return sqlite3.connect(f'file:{p}?mode=ro',uri=True)
def div(a,b):
 if a[1]!=b[1]:return None
 x,y=collections.Counter(a[0]),collections.Counter(b[0])
 return None if any(x[g]<e for g,e in y.items()) else tuple(sorted((x-y).elements()))
def main():
 OUT.mkdir(exist_ok=True);category=json.loads((BASE/'ss.json').read_text());objs={o['name']:o for o in category['modules']};rc=connect(BASE/'S0_AdamsSS_t261.db');ringrels=list(rc.execute('select rowid,rel,s,t from S0_AdamsE2_relations where t<=30'));all_reports=[];batch=[];counter=0
 for ordinal,mapping in enumerate(category['maps']):
  sn,tn=mapping['from'],mapping['to']
  if sn not in objs or tn not in objs:continue
  if objs[sn].get('over')!='S0' or objs[tn].get('over')!='S0':continue
  folder=OUT/f'map{ordinal:03d}';folder.mkdir(exist_ok=True);sc=connect(BASE/objs[sn]['path']);tc=connect(BASE/objs[tn]['path']);mc=connect(BASE/mapping['path']);tab=mc.execute("select name from sqlite_master where type='table' and name like 'map_AdamsE2_%'").fetchone()[0];raw_images=dict(mc.execute('select id,map from "'+tab+'"'));sg={i:(s,t) for i,s,t in sc.execute(f'select id,s,t from {sn}_AdamsE2_generators')};tg={i:(s,t) for i,s,t in tc.execute(f'select id,s,t from {tn}_AdamsE2_generators')};rg={i:(s,t) for i,s,t in rc.execute('select id,s,t from S0_AdamsE2_generators')};groups=collections.defaultdict(list)
  for i,raw,s,t in sc.execute(f'select id,mon,s,t from {sn}_AdamsE2_basis where t<=12 order by id'):groups[s,t].append((i,helpers.mon(raw)))
  reports=[];fil=mapping.get('fil',0);sus=mapping.get('sus',0)
  for (s,t),source in sorted(groups.items()):
   report=dict(s=s,t=t,target_s=s+fil,target_t=t+fil-sus,source_ids=[i for i,_ in source])
   try:
    if t>mapping['t_max']:raise ValueError('source degree beyond declared map t_max')
    target=[(i,helpers.mon(raw)) for i,raw in tc.execute(f'select id,mon from {tn}_AdamsE2_basis where s=? and t=? order by id',(s+fil,t+fil-sus))];lookup={m:i for i,m in target};a=1+max(g for _,(_,g) in source);images=[]
    for g in range(a):
     if g not in raw_images:raise ValueError('missing generator image in dense family')
     image=helpers.polynomial(raw_images[g])
     for coeff,h in image:
      if h not in tg or any(x not in rg for x in coeff):raise ValueError('unknown/missing coefficient or target generator')
      deg=(tg[h][0]+sum(rg[x][0] for x in coeff),tg[h][1]+sum(rg[x][1] for x in coeff))
      if deg!=(sg[g][0]+fil,sg[g][1]+fil-sus):raise ValueError('generator image degree mismatch')
     images.append(image)
    module_rels=[(rid,helpers.polynomial(raw),rs,rt) for rid,raw,rs,rt in tc.execute(f'select rowid,rel,s,t from {tn}_AdamsE2_relations where s<=? and t<=?',(s+fil,t+fil-sus))]
    outs=[];terms=[];used=[];provenance=[]
    for _,(coeff,g) in source:
     vals=[(tuple(sorted(coeff+c)),h) for c,h in images[g]];out={x for x,n in collections.Counter(vals).items() if n%2};trace=[]
     for bad in sorted(out):
      if bad in lookup:continue
      choice=next(((rid,rel,div(bad,rel[0]),'module') for rid,rel,_,_ in module_rels if len(rel)==1 and div(bad,rel[0]) is not None),None)
      if choice is None:
       for rid,raw,rs,rt in ringrels:
        if ';' in raw or rs>s+fil or rt>t+fil-sus:continue
        rel=helpers.polynomial(raw+','+str(bad[1]));q=div(bad,rel[0])
        if q is not None:choice=(rid,rel,q,'ring');break
      if choice is None:raise ValueError('unsupported non-basis residual: needs general multi-term relation reduction')
      rid,rel,q,kind=choice;trace.append(dict(relation=len(used),multiplier=[q]));used.append(rel);provenance.append(dict(kind=kind,rowid=rid));out.remove(bad)
     outs.append(out);terms.append(trace)
    b=1+max([g for image in images+used for _,g in image]+[g for _,(_,g) in target]+[0])
    def expr(ts,n):
     result=[[] for _ in range(n)]
     for coeff,g in ts:result[g].append(list(coeff))
     return result
    algebra=dict(version=1,sourceS=0,sourceT=0,targetS=0,targetT=0,sourceGenerators=a,targetGenerators=b,rows=len(target),cols=len(source),images=[expr(p,b) for p in images],source=[expr([mon],a) for _,mon in source],target=[expr([mon],b) for _,mon in target],relations=[expr(p,b) for p in used],entries=[mon in out for _,mon in target for out in outs],terms=terms)
    wire=dict(version=1,filtration=fil,suspension=sus,sourceS=s,sourceT=t,targetS=s+fil,targetT=t+fil-sus,algebra=algebra);path=folder/f's{s}t{t}.json';path.write_text(json.dumps(wire,sort_keys=True,separators=(',',':'))+'\n');report.update(status='generated_unverified',target_ids=[i for i,_ in target],relations=provenance,certificate=str(path.relative_to(ROOT)));batch += [f'def map{counter} : ShiftedWire := shifted_module_map% "{path.relative_to(ROOT)}"',f'theorem map{counter}valid : map{counter}.Valid := by lin_cert using ()'];counter+=1
   except (ValueError,KeyError) as e:report.update(status='unresolved',reason=str(e))
   reports.append(report)
  all_reports.append(dict(name=mapping['name'],filtration=fil,suspension=sus,blocks=reports))
 for i,start in enumerate(range(0,len(batch),200)):
  lines=['import ModuleToModuleCertificates.ShiftedImport','set_option maxRecDepth 4096',f'namespace LowModuleMaps{i}','open ModuleToModuleCertificates LinProgramCertificates']+batch[start:start+200]+[f'end LowModuleMaps{i}'];(OUT/f'Batch{i:03d}.lean').write_text('\n'.join(lines)+'\n')
 audit=dict(maps=len(all_reports),generated=counter,unresolved=sum(r['status']=='unresolved' for m in all_reports for r in m['blocks']),batches=(len(batch)+199)//200,records=all_reports);(OUT/'generation_audit.json').write_text(json.dumps(audit,indent=2)+'\n');print({k:v for k,v in audit.items() if k!='records'})
if __name__=='__main__':main()
