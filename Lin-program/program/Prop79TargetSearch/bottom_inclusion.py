"""Complete S0 bottom-cell inclusion maps at the source and target of d3."""
import hashlib
import importlib.util
import json
from pathlib import Path
import sqlite3

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
spec=importlib.util.spec_from_file_location('helper',ROOT/'Row3147MapSearch/search_lifted.py')
helper=importlib.util.module_from_spec(spec);spec.loader.exec_module(helper)
a=helper.alg
spec=importlib.util.spec_from_file_location('search',ROOT/'Prop79IncomingSearch/search.py')
search=importlib.util.module_from_spec(spec);spec.loader.exec_module(search)
sc=sqlite3.connect(f'file:{ROOT}/upstream/kervaire-49/S0_AdamsSS_t261.db?mode=ro',uri=True)
tc=sqlite3.connect(f'file:{ROOT}/upstream/kervaire-49/Cnu_AdamsSS_t200.db?mode=ro',uri=True)
sm,tm=helper.metadata(sc),helper.metadata(tc)
rg={i:(s,t) for i,s,t in sc.execute('select id,s,t from S0_AdamsE2_generators')}
mg={i:(s,t) for i,s,t in tc.execute('select id,s,t from Cnu_AdamsE2_generators')}
degrees=[(12,138),(14,139),(16,140),(15,140),(17,141),(19,142)]
relations=[]
for rid,raw,s,t in tc.execute('select rowid,rel,s,t from Cnu_AdamsE2_relations order by rowid'):
 if s<=19 and t<=142:
  relations.append((dict(kind='module',database='Cnu_AdamsSS_t200.db',table='Cnu_AdamsE2_relations',rowid=rid,raw=raw,degree=[s,t]),[helper.module_mon(x) for x in raw.split(';')]))
ringrels=list(sc.execute('select rowid,rel,s,t from S0_AdamsE2_relations where s<=19 and t<=142 order by rowid'))
for g,(gs,gt) in mg.items():
 for rid,raw,rs,rt in ringrels:
  if gs+rs<=19 and gt+rt<=142:
   relations.append((dict(kind='ring_lift',database='S0_AdamsSS_t261.db',table='S0_AdamsE2_relations',rowid=rid,raw=raw,ring_degree=[rs,rt],module_generator=g,module_generator_degree=[gs,gt],degree=[gs+rs,gt+rt]),[(a.mono(x),g) for x in raw.split(';')]))
assert tc.execute('select id,mon from Cnu_AdamsE2_basis where s=0 and t=0').fetchall()==[(0,'0')]
matrices={};directory=HERE/'bottom-wire';directory.mkdir(exist_ok=True)
for s,t in degrees:
 helper.require_basis_window(sm,(s,t));helper.require_basis_window(tm,(s,t))
 source=sc.execute('select id,mon from S0_AdamsE2_basis where s=? and t=? order by id',(s,t)).fetchall()
 target=tc.execute('select id,mon from Cnu_AdamsE2_basis where s=? and t=? order by id',(s,t)).fetchall()
 target_mons=[helper.module_mon(raw) for _,raw in target];lookup=set(target_mons)
 outputs=[];used=[];provenance=[];certificates=[]
 for bid,raw in source:
  assert helper.monomial_degree(a.mono(raw),rg,True,rg)==(s,t)
  current={(a.mono(raw),0)};trace=[];seen=set()
  for step in range(10000):
   bad=next((m for m in sorted(current) if m not in lookup),None)
   if bad is None:break
   state=tuple(sorted(current));assert state not in seen;seen.add(state)
   choice=next(((origin,terms,a.divide(bad[0],terms[0][0])) for origin,terms in relations if terms and bad[1]==terms[0][1] and origin['degree'][0]<=s and origin['degree'][1]<=t and a.divide(bad[0],terms[0][0]) is not None),None)
   if choice is None:raise ValueError(f'no bottom-cell reduction for {bid}')
   origin,terms,q=choice
   assert all(helper.monomial_degree(m,mg,False,rg)==tuple(origin['degree']) for m in terms)
   trace.append(dict(relation=len(used),multiplier=[q]));used.append(terms);provenance.append(origin)
   current.symmetric_difference_update(a.parity((tuple(sorted(q+co)),g) for co,g in terms))
  else:raise ValueError('reduction bound')
  outputs.append(current);certificates.append(trace)
 generators=1+max([0]+[g for _,g in target_mons]+[g for rel in used for _,g in rel])
 def expr(terms,n):
  out=[[] for _ in range(n)]
  for co,g in terms:out[g].append(list(co))
  return out
 algebra=dict(version=1,sourceS=0,sourceT=0,targetS=0,targetT=0,sourceGenerators=1,targetGenerators=generators,rows=len(target),cols=len(source),images=[expr([((),0)],generators)],source=[expr([(a.mono(raw),0)],1) for _,raw in source],target=[expr([m],generators) for m in target_mons],relations=[expr(rel,generators) for rel in used],entries=[m in out for m in target_mons for out in outputs],terms=certificates)
 wire=dict(version=1,filtration=0,suspension=0,sourceS=s,sourceT=t,targetS=s,targetT=t,algebra=algebra)
 tag=f's{s}t{t}';(directory/(tag+'.json')).write_text(search.canonical(wire))
 matrices[tag]=dict(source_degree=[s,t],target_degree=[s,t],source=source,target=target,wire=wire,relation_sources=provenance)
comparisons={}
for obj,c,meta in [('S0',sc,sm),('Cnu',tc,tm)]:
 for s,t in [(14,139),(17,141)]:
  comp=helper.comparison(c,obj,s,t,meta);search.check_wire(comp['wire'])
  comparisons[f'{obj}:{s},{t}']=comp
  (directory/f'{obj}_{s}_{t}_d2.json').write_text(search.canonical(comp['wire']))

def mat(s,t):
 w=matrices[f's{s}t{t}']['wire']['algebra']
 return [list(map(int,w['entries'][i*w['cols']:(i+1)*w['cols']])) for i in range(w['rows'])]
quotient_maps={}
for s,t in [(14,139),(17,141)]:
 sw,tw=(comparisons[f'{o}:{s},{t}']['wire'] for o in ['S0','Cnu'])
 middle,lower,upper=mat(s,t),mat(s-2,t-1),mat(s+2,t+1)
 assert search.multiply(middle,search.decode(sw,'incoming',sw['m'],sw['n']),sw['n'])==search.multiply(search.decode(tw,'incoming',tw['m'],tw['n']),lower,sw['n'])
 assert search.multiply(search.decode(tw,'outgoing',tw['k'],tw['m']),middle,sw['m'])==search.multiply(upper,search.decode(sw,'outgoing',sw['k'],sw['m']),sw['m'])
 qm=search.multiply(search.decode(tw,'projection',tw['h'],tw['m']),search.multiply(middle,search.decode(sw,'inclusion',sw['m'],sw['h']),sw['h']),sw['h'])
 quotient_maps[f'{s},{t}']=qm
svec=[0,1,0];tvec=[0,0,1,0]
assert search.apply(mat(14,139),svec)==tvec
assert comparisons['S0:17,141']['wire']['h']==0
old=json.loads((ROOT/'Prop79IncomingSearch/bottom-inclusion.json').read_text())
assert comparisons['S0:14,139']['wire']==old['comparisons']['S0:14,139']['wire']
report=dict(version=1,map='S0__Cnu',factor=dict(global_id=0,mon='0',degree=[0,0]),matrices=matrices,comparisons=comparisons,quotient_maps=quotient_maps,
 source_named_E2=svec,cnu_named_target_E2=tvec,source_d3_target_dimension=0,
 sources={name:search.sha(ROOT/'upstream/kervaire-49'/name) for name in ['S0_AdamsSS_t261.db','Cnu_AdamsSS_t200.db']},
 inputs_sha256={str(p.relative_to(ROOT)):search.sha(p) for p in [Path(__file__),ROOT/'Prop79IncomingSearch/search.py',ROOT/'Row3147MapSearch/search_lifted.py',ROOT/'RealMapCertificates/export.py',ROOT/'Prop79IncomingSearch/bottom-inclusion.json']},
 conditional_plan='The whole S0 d3 target is zero in the checked E3 quotient. Transport through the full bottom inclusion and explicit actual naturality; no NULL value is assigned.')
(HERE/'bottom-inclusion.json').write_text(search.canonical(report))
print('Six full target bottom-inclusion matrices; four complete d2 quotients; full S0 d3 target dimension zero.')
print('Induced E3 maps:',quotient_maps)
