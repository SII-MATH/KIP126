"""Configured S0 map E2 screen; literal zero only, no implicit pages."""
import importlib.util,json,sqlite3,collections,subprocess
from pathlib import Path
p=Path(__file__).resolve().parent;r=p.parent
spec=importlib.util.spec_from_file_location('alg',r/'RealMapCertificates/export.py');a=importlib.util.module_from_spec(spec);spec.loader.exec_module(a)
config=json.loads((r/'upstream/category-inventory.json').read_text());dbs={x['source']['name']:x['source']['path'] for x in config['records'] if x['section'] in ['rings','modules']}
sc=a.connection(dbs['S0'])
def mon(raw):
 xs=raw.split(',');return a.mono(','.join(xs[:-1])),int(xs[-1])
def basis(c,o,s,t,ring=False):return [(i,a.mono(m) if ring else mon(m)) for i,m in c.execute(f'select id,mon from {o}_AdamsE2_basis where s=? and t=? order by id',(s,t))]
def ev(a,m,n,v):return [sum(a[i*n+j] and v[j] for j in range(n))%2 for i in range(m)]
def comparison(c,o,s,t):
 rs=[c.execute(f'select id,d2 from {o}_AdamsE2_basis where s=? and t=? order by id',d).fetchall() for d in [(s-2,t-1),(s,t),(s+2,t+1)]];n,m,k=map(len,rs)
 if any(x[1] is None for group in rs[:2] for x in group):raise ValueError('unknown d2 in complete quotient')
 def mat(rows,dim):
  out=[]
  for _,raw in rows:
   ids=[int(x) for x in raw.split(',') if x]
   if any(i<0 or i>=dim for i in ids):raise ValueError('invalid d2 coordinate')
   out.append(ids)
  return ''.join('1' if i in ids else '0' for i in range(dim) for ids in out) or '-'
 run=subprocess.run([str(r/'PageTransitionCertificates/page-transition-export'),str(k),str(m),str(n),mat(rs[1],k),mat(rs[0],m)],capture_output=True,text=True)
 if run.returncode:raise ValueError(run.stderr.strip())
 return json.loads(run.stdout)
results=[]
for record in config['records']:
 if record['section'] not in ['maps','maps_v2'] or record['source'].get('from')!='S0':continue
 mp=record['source'];o=mp['to'];entry=dict(section=record['section'],ordinal=record['ordinal'],map=mp)
 try:
  tc=a.connection(dbs[o]);ring=o in ['S0','tmf'];decode=a.mono if ring else mon
  relations=[(i,[decode(v) for v in raw.split(';')],s,t) for i,raw,s,t in tc.execute(f'select rowid,rel,s,t from {o}_AdamsE2_relations')]
  if record['section']=='maps':
   mc=a.connection(mp['path']);images={i:a.poly(raw) for i,raw in mc.execute('select id,map from map_AdamsE2_S0_to_tmf')};fs=ft=0;factor=None
  else:
   stem,fs,idx=mp['factor'];ft=stem+fs;idx=[idx] if isinstance(idx,int) else idx;fb=basis(tc,o,fs,ft,ring)
   if any(i<0 or i>=len(fb) for i in idx):raise ValueError('factor coordinate missing')
   factor={fb[i][1] for i in idx}
  for label,s,t,js in [('source',16,140,[4]),('target',19,142,[1,2])]:
   cur=set()
   for j in js:
    raw=basis(sc,'S0',s,t,True)[j][1]
    if factor is None:
     image={()}
     for g in raw:
      if g not in images:raise ValueError('missing generator image')
      image=a.multiply(image,images[g])
    elif ring:image=a.multiply({raw},factor)
    else:image={(tuple(sorted(raw+co)),g) for co,g in factor}
    cur.symmetric_difference_update(image)
   target=basis(tc,o,s+fs,t+ft,ring);lookup={m:i for i,(_,m) in enumerate(target)};seen=set();used=[]
   for step in range(10000):
    bad=next((m for m in sorted(cur) if m not in lookup),None)
    if bad is None:break
    state=tuple(sorted(cur))
    if state in seen:raise ValueError('reduction cycle')
    seen.add(state)
    def div(x,y):return a.divide(x,y) if ring else a.divide(x[0],y[0]) if x[1]==y[1] else None
    choice=next(((rid,rel,div(bad,rel[0])) for rid,rel,rs,rt in relations if rel and rs<=s+fs and rt<=t+ft and div(bad,rel[0]) is not None),None)
    if choice is None:raise ValueError('no reducing relation')
    rid,rel,q=choice;used.append(rid);cur.symmetric_difference_update(a.multiply({q},set(rel)) if ring else {(tuple(sorted(q+co)),g) for co,g in rel})
   else:raise ValueError('reduction limit')
   ids=sorted(lookup[m] for m in cur)
   entry[label]=dict(degree=[s+fs,t+ft],coordinates=ids,relation_rowids=used)
   w=comparison(tc,o,s+fs,t+ft)
   v=[i in ids for i in range(w['m'])]
   if any(ev(w['outgoing'],w['k'],w['m'],v)):raise ValueError(label+' image is not a d2 cycle')
   entry[label]['quotient']=ev(w['projection'],w['h'],w['m'],v)
   entry[label]['comparison']=w
  entry['status']='candidate_needs_full_map_compatibility' if not any(entry['source']['quotient']) and any(entry['target']['quotient']) else 'source_nonzero_quotient' if any(entry['source']['quotient']) else 'target_zero_quotient'
 except (ValueError,sqlite3.Error) as e:entry.update(status='unknown',reason=str(e))
 results.append(entry)
report=dict(config_source_sha256=config['source_sha256'],counts=dict(collections.Counter(x['status'] for x in results)),maps=results)
(p/'maps-search.json').write_text(json.dumps(report,indent=2)+'\n');print(report['counts']);print([x['map']['name'] for x in results if x['status']=='candidate_needs_full_map_compatibility'])
