"""Untrusted derived-map producer. Every nonzero coordinate needs an algebra trace.
Source t <= 12; target and intermediate degrees are never silently truncated.
"""
import collections, functools, hashlib, importlib.util, json, pathlib, sqlite3
HERE=pathlib.Path(__file__).resolve().parent
ROOT=HERE.parent
BASE=ROOT/'upstream/kervaire-49'
OUT=HERE/'data'
def load_module(name,path):
 spec=importlib.util.spec_from_file_location(name,path);module=importlib.util.module_from_spec(spec);spec.loader.exec_module(module);return module
ring=load_module('derived_ring_helpers',ROOT/'RealMapCertificates/export.py')
mod=load_module('derived_module_helpers',ROOT/'ModuleToModuleCertificates/export_general.py')
def connect(path):return sqlite3.connect(f'file:{path}?mode=ro',uri=True)
def canonical(w):return json.dumps(w,sort_keys=True,separators=(',',':'))+'\n'
def parity(xs):return {x for x,n in collections.Counter(xs).items() if n%2}
def key(term):return term[1],len(term[0]),term[0]
def quotient(a,b):
 if a[1]!=b[1]:return None
 return ring.divide(a[0],b[0])
def expression(ts,n):
 out=[[] for _ in range(n)]
 for c,g in sorted(ts):
  if g>=n:raise ValueError('generator out of dense range')
  out[g].append(list(c))
 return out
class Producer:
 def __init__(self):
  self.category=json.loads((BASE/'ss.json').read_text());self.rings={o['name'] for o in self.category['rings']}
  self.objects={o['name']:o for o in self.category['rings']+self.category['modules']}
  self.maps={};self.duplicates=[];self.record_names=[]
  for i,m in enumerate(self.category['maps']+self.category['maps_v2']):
   if m['name'] in self.maps:
    self.duplicates.append(dict(ordinal=i-180,name=m['name'],identical=self.maps[m['name']]==m))
    alias=m['name']+'@'+str(i-180)
   else:alias=m['name']
   self.maps[alias]=m
   if i>=180:self.record_names.append(alias)
  self.connections={n:connect(BASE/o['path']) for n,o in self.objects.items()};self.blocks={};self.files=[];self.provenance={};self.failures=[]
 @functools.lru_cache(None)
 def basis(self,name,s,t):
  return [(i,(ring.mono(raw),0) if name in self.rings else mod.mon(raw)) for i,raw in self.connections[name].execute(f'select id,mon from {name}_AdamsE2_basis where s=? and t=? order by id',(s,t))]
 @functools.lru_cache(None)
 def groups(self,name):
  return list(self.connections[name].execute(f'select distinct s,t from {name}_AdamsE2_basis where t<=12 order by s,t'))
 @functools.lru_cache(None)
 def tmax(self,name):
  c=self.connections[name]
  # Basis truncation belongs to dataset metadata, not its largest nonzero basis.
  return int(c.execute("select value from version where name='t_max'").fetchone()[0])
 @functools.lru_cache(None)
 def degree(self,name):
  m=self.maps[name]
  if 'factor'in m:return m['factor'][1],m['factor'][0]+m['factor'][1]
  if 'composition'in m:
   shifts=[self.degree(n) for n in m['composition']];return tuple(map(sum,zip(*shifts)))
  return m.get('fil',0),m.get('fil',0)-m.get('sus',0)
 @functools.lru_cache(None)
 def limit(self,name):
  m=self.maps[name]
  if 'factor'in m:return min(self.tmax(m['to'])-self.degree(name)[1],m.get('t_max',10**9),self.tmax(m['from']))
  if 'composition'in m:
   lim=self.tmax(m['from']);offset=0
   for n in m['composition']:lim=min(lim,self.limit(n)-offset);offset+=self.degree(n)[1]
   return lim
  return min(m['t_max'],self.tmax(m['from']))
 @functools.lru_cache(None)
 def images(self,name):
  m=self.maps[name];c=connect(BASE/m['path']);tab=c.execute("select name from sqlite_master where type='table' and name like 'map_AdamsE2_%'").fetchone()[0]
  result=dict(c.execute('select id,map from "'+tab+'"'));c.close();return result
 @functools.lru_cache(None)
 def factor(self,name):
  m=self.maps[name];s,t=self.degree(name);target=m['to'] if m['from'] in self.rings else self.objects[m['from']]['over'];basis=self.basis(target,s,t)
  ids=m['factor'][2];ids=[ids] if isinstance(ids,int) else ids
  if len(ids)!=len(set(ids)):raise ValueError('repeated factor index')
  if any(i<0 or i>=len(basis) for i in ids):raise ValueError('factor index beyond complete bidegree basis')
  return parity(basis[i][1] for i in ids)
 @functools.lru_cache(None)
 def relations(self,name,s,t):
  result=[]
  for rid,raw in self.connections[name].execute(f'select rowid,rel from {name}_AdamsE2_relations where s<=? and t<=? order by rowid',(s,t)):
   terms=[(ring.mono(c),0) for c in raw.split(';')] if name in self.rings else mod.polynomial(raw)
   if terms:result.append((dict(kind='ring' if name in self.rings else 'module',object=name,rowid=rid),terms))
  return result
 def reduce(self,name,s,t,value,lookup):
  out=set(value);rules=list(self.relations(name,s,t));used=[];terms=[];provenance=[]
  if name not in self.rings:
   gens={g for _,g in out}|{g for _,r in rules for _,g in r}
   for origin,rel in self.relations(self.objects[name]['over'],s,t):
    for g in gens:rules.append((dict(origin,lift_generator=g),[(c,g) for c,_ in rel]))
  seen=set()
  for step in range(10000):
   bad=next((x for x in sorted(out,key=key,reverse=True) if x not in lookup),None)
   if bad is None:return out,used,terms,provenance
   state=frozenset(out)
   if state in seen:raise ValueError('relation rewrite cycle')
   seen.add(state)
   choice=next(((origin,r,q) for origin,r in rules if (q:=quotient(bad,r[0])) is not None),None)
   if choice is None:raise ValueError(f'no decreasing relation for {bad}')
   origin,r,q=choice;shifted=[(tuple(sorted(q+c)),g) for c,g in r]
   if shifted[0]!=bad:raise ValueError('relation leading term mismatch')
   terms.append(dict(relation=len(used),multiplier=[list(q)]));used.append(r);provenance.append(origin);out.symmetric_difference_update(shifted)
  raise ValueError('reduction step limit')
 def write(self,keyname,wire,kind,origin):
  path=OUT/f'{len(self.files):05d}.json';path.write_text(canonical(wire));entry=dict(key=keyname,kind=kind,path=str(path.relative_to(ROOT)),origin=origin)
  self.files.append(entry);return entry
 def block(self,name,s,t):
  cache=(name,s,t)
  if cache in self.blocks:return self.blocks[cache]
  m=self.maps[name];ds,dt=self.degree(name)
  if t>self.limit(name):raise ValueError('input outside map truncation')
  if t+dt>self.tmax(m['to']):raise ValueError('target beyond complete dataset truncation')
  source=self.basis(m['from'],s,t);target=self.basis(m['to'],s+ds,t+dt)
  meta=dict(name=name,sourceName=m['from'],targetName=m['to'],sourceS=s,sourceT=t,targetS=s+ds,targetT=t+dt,shiftS=ds,shiftT=dt,limit=self.limit(name),sourceIds=[i for i,_ in source],targetIds=[i for i,_ in target])
  if 'composition'in m:
   first,second=m['composition'];a=self.block(first,s,t);mid=self.degree(first);b=self.block(second,s+mid[0],t+mid[1]);n=len(source);k=a['rows'];rows=len(target)
   if a['target_ids']!=b['source_ids']:raise ValueError('intermediate basis IDs disagree')
   entries=[sum(b['entries'][i*k+r] and a['entries'][r*n+j] for r in range(k))%2==1 for i in range(rows) for j in range(n)]
   w=dict(version=1,name=name,sourceName=m['from'],middleName=self.maps[first]['to'],targetName=m['to'],sourceS=s,sourceT=t,middleS=s+mid[0],middleT=t+mid[1],targetS=s+ds,targetT=t+dt,firstShiftS=mid[0],firstShiftT=mid[1],secondShiftS=self.degree(second)[0],secondShiftT=self.degree(second)[1],firstLimit=self.limit(first),secondLimit=self.limit(second),cols=n,middle=k,rows=rows,first=a['entries'],second=b['entries'],output=entries)
   entry=self.write(f'{name}:{s}:{t}',w,'composition',dict(metadata=meta,first=a['entry']['path'],second=b['entry']['path']))
  else:
   a=1 if m['from'] in self.rings else 1+max([g for _,(_,g) in source]+[0])
   if 'factor'in m:
    factor=self.factor(name)
    images=[factor] if m['from'] in self.rings else [{(c,g) for c,_ in factor} for g in range(a)]
   else:
    if m.get('over'):raise ValueError('semilinear map not in this family')
    raw=self.images(name);images=[{(c,0) for c in ring.poly(raw[g])} if m['to'] in self.rings else parity(mod.polynomial(raw[g])) for g in range(a)]
   outputs=[];rels=[];terms=[];origins=[]
   for _,(co,g) in source:
    value=parity((tuple(sorted(co+c)),h) for c,h in images[g]);out,rs,ts,ps=self.reduce(m['to'],s+ds,t+dt,value,{x for _,x in target});offset=len(rels)
    for z in ts:z['relation']+=offset
    outputs.append(out);rels.extend(rs);terms.append(ts);origins.extend(ps)
   b=1+max([g for p in images+rels for _,g in p]+[g for _,(_,g) in target]+([a-1] if m['from'] not in self.rings and 'factor'in m else [0]))
   entries=[term in out for _,term in target for out in outputs];rows=len(target)
   algebra=dict(version=1,sourceS=0,sourceT=0,targetS=0,targetT=0,sourceGenerators=a,targetGenerators=b,rows=rows,cols=len(source),images=[expression(p,b) for p in images],source=[expression([term],a) for _,term in source],target=[expression([term],b) for _,term in target],relations=[expression(p,b) for p in rels],entries=entries,terms=terms)
   if 'factor'in m:
    w=dict(version=1,name=name,sourceName=m['from'],targetName=m['to'],sourceS=s,sourceT=t,targetS=s+ds,targetT=t+dt,shiftS=ds,shiftT=dt,limit=self.limit(name),ringSource=m['from'] in self.rings,factor=expression(factor,b),algebra=algebra)
    entry=self.write(f'{name}:{s}:{t}',w,'factor',dict(metadata=meta,relations=origins,upstream=m))
   else:
    w=dict(version=1,filtration=ds,suspension=ds-dt,sourceS=s,sourceT=t,targetS=s+ds,targetT=t+dt,algebra=algebra)
    entry=self.write(f'{name}:{s}:{t}',w,'direct_dependency',dict(metadata=meta,relations=origins,upstream=m))
  result=dict(entries=entries,rows=len(target),cols=len(source),source_ids=[i for i,_ in source],target_ids=[i for i,_ in target],entry=entry);self.blocks[cache]=result;return result
 def run(self):
  OUT.mkdir(exist_ok=True);records=[]
  for ordinal,m in enumerate(self.category['maps_v2']):
   report=dict(ordinal=ordinal,name=m['name'],blocks=[])
   for s,t in self.groups(m['from']):
    try:report['blocks'].append(dict(s=s,t=t,status='generated_unverified',path=self.block(self.record_names[ordinal],s,t)['entry']['path']))
    except (ValueError,KeyError) as e:report['blocks'].append(dict(s=s,t=t,status='unresolved',reason=str(e)))
   records.append(report)
  comms=[]
  for ordinal,c in enumerate(self.category['commutativity']):
   first,second=c['f'];a=self.maps[first];report=dict(ordinal=ordinal,name=c['name'],blocks=[])
   for s,t in self.groups(a['from']):
    try:
     x=self.block(first,s,t);ds,dt=self.degree(first);y=self.block(second,s+ds,t+dt);n=x['cols'];k=x['rows'];rows=y['rows'];product=[sum(y['entries'][i*k+r] and x['entries'][r*n+j] for r in range(k))%2==1 for i in range(rows) for j in range(n)]
     if c['g']:
      rhs=self.block(c['g'][0],s,t)
      if rhs['source_ids']!=x['source_ids'] or rhs['target_ids']!=y['target_ids']:raise ValueError('RHS basis mismatch')
      out=rhs['entries']
     else:rhs=None;out=[False]*(rows*n)
     ss,st=self.degree(second)
     if rhs and self.degree(c['g'][0])!=(ds+ss,dt+st):raise ValueError('RHS degree shift mismatch')
     if product!=out:
      differences=[dict(row=i,column=j) for i in range(rows) for j in range(n) if product[i*n+j]!=out[i*n+j]]
      report['blocks'].append(dict(s=s,t=t,status='page_level_obligation',reason='E2 matrices do not satisfy upstream commutativity assertion',rows=rows,cols=n,lhs_entries=product,rhs_entries=out,differences=differences,first=x['entry']['path'],second=y['entry']['path'],rhs=rhs['entry']['path'] if rhs else None))
      continue
     w=dict(version=1,name=c['name'],sourceName=a['from'],middleName=a['to'],targetName=self.maps[second]['to'],sourceS=s,sourceT=t,middleS=s+ds,middleT=t+dt,targetS=s+ds+ss,targetT=t+dt+st,firstShiftS=ds,firstShiftT=dt,secondShiftS=ss,secondShiftT=st,firstLimit=self.limit(first),secondLimit=self.limit(second),cols=n,middle=k,rows=rows,first=x['entries'],second=y['entries'],output=out)
     entry=self.write(f'comm:{ordinal}:{s}:{t}',w,'commutativity',dict(upstream=c,first=x['entry']['path'],second=y['entry']['path'],rhs=rhs['entry']['path'] if rhs else None));report['blocks'].append(dict(s=s,t=t,status='generated_unverified',path=entry['path']))
    except (ValueError,KeyError) as e:report['blocks'].append(dict(s=s,t=t,status='unresolved',reason=str(e)))
   comms.append(report)
  audit=dict(source_bound_t=12,records=records,commutativity=comms,duplicates=self.duplicates,files=self.files,permanence_external_obligations=[dict(ordinal=i,name=m['name'],factor=m['factor']) for i,m in enumerate(self.category['maps_v2']) if m['from']=='S0' and 'factor'in m])
  (HERE/'generation_audit.json').write_text(json.dumps(audit,indent=2)+'\n')
  print('files',len(self.files),'derived unresolved',sum(b['status']=='unresolved' for r in records for b in r['blocks']),'comm unresolved',sum(b['status']=='unresolved' for r in comms for b in r['blocks']),'page obligations',sum(b['status']=='page_level_obligation' for r in comms for b in r['blocks']))
if __name__=='__main__':Producer().run()
