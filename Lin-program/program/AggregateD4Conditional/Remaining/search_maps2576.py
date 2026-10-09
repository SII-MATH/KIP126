"""Configured S0 map E2 screen; literal zero only, no implicit pages."""
import importlib.util,json,sqlite3,collections
from pathlib import Path
p=Path(__file__).resolve().parent;r=p.parents[1]
spec=importlib.util.spec_from_file_location('alg',r/'RealMapCertificates/export.py');a=importlib.util.module_from_spec(spec);spec.loader.exec_module(a)
config=json.loads((r/'upstream/category-inventory.json').read_text());dbs={x['source']['name']:x['source']['path'] for x in config['records'] if x['section'] in ['rings','modules']}
sc=a.connection(dbs['S0'])
def mon(raw):
 xs=raw.split(',');return a.mono(','.join(xs[:-1])),int(xs[-1])
def basis(c,o,s,t,ring=False):return [(i,a.mono(m) if ring else mon(m)) for i,m in c.execute(f'select id,mon from {o}_AdamsE2_basis where s=? and t=? order by id',(s,t))]
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
  for label,s,t,j in [('source',4,132,0),('target',7,134,1)]:
   raw=basis(sc,'S0',s,t,True)[j][1]
   if factor is None:
    cur={()}
    for g in raw:
     if g not in images:raise ValueError('missing generator image')
     cur=a.multiply(cur,images[g])
   elif ring:cur=a.multiply({raw},factor)
   else:cur={(tuple(sorted(raw+co)),g) for co,g in factor}
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
   entry[label]=dict(degree=[s+fs,t+ft],coordinates=sorted(lookup[m] for m in cur),relation_rowids=used)
  entry['status']='candidate_needs_E4' if not entry['source']['coordinates'] and entry['target']['coordinates'] else 'source_not_literal_zero' if entry['source']['coordinates'] else 'target_literal_zero'
 except (ValueError,sqlite3.Error) as e:entry.update(status='unknown',reason=str(e))
 results.append(entry)
report=dict(config_source_sha256=config['source_sha256'],counts=dict(collections.Counter(x['status'] for x in results)),maps=results)
(p/'maps2576-residual.json').write_text(json.dumps(report,indent=2)+'\n');print(report['counts']);print([x['map']['name'] for x in results if x['status']=='candidate_needs_E4'])
