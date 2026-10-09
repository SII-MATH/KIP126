import hashlib,importlib.util,json,sqlite3
from pathlib import Path
p=Path(__file__).resolve().parent;r=p.parent
sc=sqlite3.connect(f'file:{r}/upstream/kervaire-49/S0_AdamsSS_t261.db?mode=ro',uri=True);tc=sqlite3.connect(f'file:{r}/upstream/kervaire-49/CW_nu_eta_AdamsSS_t200.db?mode=ro',uri=True)
spec=importlib.util.spec_from_file_location('alg',r/'RealMapCertificates/export.py');a=importlib.util.module_from_spec(spec);spec.loader.exec_module(a)
def mon(raw):
 xs=raw.split(',');return a.mono(','.join(xs[:-1])),int(xs[-1])
def encode(ts,n):
 xs=[[] for _ in range(n)]
 for co,g in ts:xs[g].append(list(co))
 return xs
factor=mon(tc.execute('select mon from CW_nu_eta_AdamsE2_basis where s=1 and t=7 order by id').fetchone()[0]);report=[];lifted=0
for item in json.loads((p/'source.json').read_text()):
 s,t=item['s'],item['t'];w=item['wire'];n=w['targetGenerators'];assert (w['sourceS'],w['sourceT'],w['targetS'],w['targetT'])==(s,t,s+1,t+7)
 src=list(sc.execute('select id,mon from S0_AdamsE2_basis where s=? and t=? order by id',(s,t)));tgt=[(i,mon(raw)) for i,raw in tc.execute('select id,mon from CW_nu_eta_AdamsE2_basis where s=? and t=? order by id',(s+1,t+7))]
 assert item['source']==[list(x) for x in src];assert w['source']==[encode([(a.mono(raw),0)],1) for _,raw in src];assert w['target']==[encode([m],n) for _,m in tgt];assert w['images']==[encode([factor],n)]
 assert len(w['source'])==w['cols'] and len(w['target'])==w['rows'];assert json.loads((p/f'wire/s{s}t{t}.json').read_text())==w
 assert len(w['relations'])==len(item['relation_sources'])
 for rel,rid in zip(w['relations'],item['relation_sources']):
  if rid>0:
   raw=tc.execute('select rel from CW_nu_eta_AdamsE2_relations where rowid=?',(rid,)).fetchone()[0];assert rel==encode([mon(x) for x in raw.split(';')],n)
  else:
   occupied=[i for i,x in enumerate(rel) if x];assert len(occupied)==1;g=occupied[0]
   raw=sc.execute('select rel from S0_AdamsE2_relations where rowid=?',(-rid,)).fetchone()[0];assert rel==encode([(a.mono(x),g) for x in raw.split(';')],n);lifted+=1
 report.append(dict(source=[s,t],target=[s+1,t+7],columns=w['cols']))
assert sum(x['columns'] for x in report)==56
# The generator is deterministic and all comparison wires come from the named
# full-comparison audits; kernel checks additionally verify every matrix law.
import subprocess
before=(p/'Comparison.lean').read_bytes();subprocess.run(['python3',str(p/'generate.py')],check=True);assert before==(p/'Comparison.lean').read_bytes()
out=dict(status='source_target_factor_relations_and_comparison_generation_reviewed',maps=report,lifted_ring_relation_uses=lifted,factor=dict(degree=[1,7],monomial=[list(factor[0]),factor[1]]),database_sha256={n:hashlib.sha256((r/'upstream/kervaire-49'/n).read_bytes()).hexdigest() for n in ['S0_AdamsSS_t261.db','CW_nu_eta_AdamsSS_t200.db']})
(p/'review.json').write_text(json.dumps(out,indent=2)+'\n');print('56 actual shifted columns; target/factor/lifted relations exact; deterministic comparison generation')
