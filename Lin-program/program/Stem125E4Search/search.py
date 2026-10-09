"""Extend the existing comparison DAG in memory for missing stem125 d3 centers."""
import hashlib,json,sqlite3
from pathlib import Path
P=Path(__file__).resolve().parent;R=P.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
source=R/'AggregateD5Conditional/source.json';saved=json.loads(source.read_text())
db=R/'upstream/kervaire-49/S0_AdamsSS_t261.db';sql=sqlite3.connect(f'file:{db}?mode=ro',uri=True)
metadata=dict(sql.execute('SELECT name,value FROM version'))
script=R/'AggregateD5Conditional/generate.py'
ns={'__file__':str(script)}
exec(compile(script.read_text().split('\ncandidates=[]')[0],str(script),'exec'),ns)
ns['cache']=dict(saved['blocks']);ns['failures']={}
original=ns['build'];requested={}
def ensure(obj,s,t,page):
 k=f'{obj}:{s},{t}:d{page}'
 if k not in ns['dag']['blocks']:
  for a,b in [(s-page,t-page+1),(s,t),(s+page,t+page-1)]:
   if b>metadata['t_max']:raise ValueError('outside declared E2 window')
   degree=f'{obj}:{a},{b}'
   record=dict(object=obj,degree=[a,b],e2=[list(x) for x in sql.execute('SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(a,b))],staircase=[list(x) for x in sql.execute('SELECT id,base,diff,level FROM S0_AdamsE2_ss WHERE s=? AND t=? ORDER BY id',(a,b))])
   if degree in ns['dag']['degrees']:assert ns['dag']['degrees'][degree]==record
   ns['dag']['degrees'][degree]=record
  ns['dag']['blocks'][k]=dict(object=obj,center=[s,t],page=page,predecessors=[] if page==2 else [f'{obj}:{a},{b}:d{page-1}' for a,b in [(s-page,t-page+1),(s,t),(s+page,t+page-1)]])
 requested[k]=dict(center=[s,t],page=page,negative_filtration=s<0)
 if page==2 and t>metadata['d2_t_max'] and k not in ns['cache']:
  # A map from an empty finite source has no missing d2 columns to infer.
  for a,b in [(s,t),(s-2,t-1)]:
   basis=ns['dag']['degrees'][f'{obj}:{a},{b}']['e2']
   if basis:raise ValueError('new nonempty source outside declared d2 window')
 return original(obj,s,t,page)
ns['build']=ensure
rows=[]
for f in [9,34,36,45,57]:
 t=f+125;k=f'S0:{f},{t}:d3';row=dict(filtration=f,center=[f,t],key=k)
 row['raw_roles']={}
 for a,b in [(f-3,t-2),(f,t),(f+3,t+2)]:
  row['raw_roles'][f'{a},{b}']=[list(x) for x in sql.execute('SELECT id,base,diff,level FROM S0_AdamsE2_ss WHERE s=? AND t=? ORDER BY id',(a,b))]
 try:
  block=ensure('S0',f,t,3);row.update(status='complete_finite_comparison',input=block['wire']['m'],homology=block['wire']['h'],uses=block['uses'])
 except (ValueError,AssertionError,KeyError) as e:row.update(status='unresolved',reason=str(e))
 rows.append(row)
new={k:v for k,v in ns['cache'].items() if k not in saved['blocks']}
assert all(ns['cache'][k]==v for k,v in saved['blocks'].items())
report=dict(rows=rows,new_blocks=new,requested=requested,failures=ns['failures'],degree_data=ns['dag']['degrees'],original_block_count=len(saved['blocks']),input_sha256={str(p.relative_to(R)):sha(p) for p in [source,script,db,Path(__file__)]},limitation='Finite numeric reconstruction only; conditional d2/staircase interpretations remain explicit. No missing map is set to zero.')
(P/'search.json').write_text(json.dumps(report,indent=2,sort_keys=True)+'\n')
for row in rows:print(row['filtration'],row['status'],row.get('input'),row.get('homology'),row.get('reason'),row.get('uses'))
print('new complete blocks',len(new))
