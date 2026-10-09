"""Read-only bounded source factorization review, not a theorem producer."""
import hashlib,importlib.util,json,sqlite3,subprocess
from pathlib import Path
HERE=Path(__file__).resolve().parent;ROOT=HERE.parent
spec=importlib.util.spec_from_file_location('alg',ROOT/'RealMapCertificates/export.py');alg=importlib.util.module_from_spec(spec);spec.loader.exec_module(alg)
db=ROOT/'upstream/kervaire-49/S0_AdamsSS_t261.db';c=sqlite3.connect('file:'+str(db)+'?mode=ro',uri=True)
meta=dict(c.execute('select name,value from version'))
rels=[(rid,raw,alg.parse_poly(raw),s,t) for rid,raw,s,t in []]
rels=[(rid,raw,[alg.mono(v) for v in raw.split(';')],s,t) for rid,raw,s,t in c.execute('select rowid,rel,s,t from S0_AdamsE2_relations')]
def basis(d):
 assert d[1]<=meta['t_max']
 return c.execute('select id,mon,d2 from S0_AdamsE2_basis where s=? and t=? order by id',d).fetchall()
def comparison(d):
 assert d[1]<=meta['d2_t_max']
 groups=[basis(dd) for dd in [(d[0]-2,d[1]-1),d,(d[0]+2,d[1]+1)]]
 n,m,k=map(len,groups)
 assert all(x[2] is not None for g in groups[:2] for x in g)
 def matrix(rows,n):
  return ''.join('1' if i in [int(z) for z in raw.split(',') if z] else '0' for i in range(n) for _,_,raw in rows) or '-'
 return json.loads(subprocess.check_output([str(ROOT/'PageTransitionCertificates/page-transition-export'),str(k),str(m),str(n),matrix(groups[1],k),matrix(groups[0],m)]))
def ev(bits,m,n,v):return [sum(bits[i*n+j]*v[j] for j in range(n))%2 for i in range(m)]
def prod(monomial,degree,vector,outdegree):
 bs=basis(degree);out=basis(outdegree);index={alg.mono(row[1]):j for j,row in enumerate(out)}
 cur=set()
 for j in vector:cur.symmetric_difference_update(alg.multiply({monomial},{alg.mono(bs[j][1])}))
 reductions=[]
 for _ in range(10000):
  bad=next((m for m in sorted(cur) if m not in index),None)
  if bad is None:break
  match=next(((r,alg.divide(bad,r[2][0])) for r in rels if r[3]<=outdegree[0] and r[4]<=outdegree[1] and alg.divide(bad,r[2][0]) is not None),None)
  if match is None:raise ValueError(('no relation',bad))
  r,mul=match;cur.symmetric_difference_update(alg.multiply({mul},r[2]));reductions.append({'rowid':r[0],'raw':r[1],'multiplier':list(mul)})
 else:raise ValueError('reduction limit')
 raw=[int(alg.mono(row[1]) in cur) for row in out];w=comparison(outdegree)
 assert ev(w['outgoing'],w['k'],w['m'],raw)==[0]*w['k']
 return {'raw':raw,'E3':ev(w['projection'],w['h'],w['m'],raw),'reductions':reductions}
records=[]
for d,factor,fd in [((15,139),(0,),(1,1)),((14,138),(0,0),(2,2)),((15,138),(1,),(1,2)),((15,136),(2,),(1,4))]:
 w=comparison(d);bs=basis(d)
 for j in range(w['h']):
  vec=[i for i in range(w['m']) if w['inclusion'][i*w['h']+j]]
  result=prod(factor,d,vec,(16,140))
  records.append({'factor':list(factor),'input_degree':list(d),'E3_basis':j,'raw_input_indices':vec,'raw_input_rows':[bs[i] for i in vec],**result})
result={'scope':'Read-only source-side E3 product screen; no d3 value inferred','database_sha256':hashlib.sha256(db.read_bytes()).hexdigest(),
'source_basis':basis((16,140)),'source_ss':c.execute('select id,base,diff,level from S0_AdamsE2_ss where s=16 and t=140 order by id').fetchall(),
'source_comparison':comparison((16,140)),'target_comparison':comparison((19,142)),'routes':records}
(HERE/'source-routes.json').write_text(json.dumps(result,indent=2)+'\n');print(json.dumps(result,indent=2))
