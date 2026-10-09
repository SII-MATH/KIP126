"""Complete stem125 input inventory. Status categories are not elimination proofs."""
import collections,csv,hashlib,json,sqlite3
from pathlib import Path
p=Path(__file__).resolve().parent;r=p.parent;db=r/'upstream/kervaire-49/S0_AdamsSS_t261.db'
c=sqlite3.connect(f'file:{db}?mode=ro',uri=True)
def sha(path):return hashlib.sha256(path.read_bytes()).hexdigest()
def vec(raw,n):
 if raw is None:return None
 xs=[int(x) for x in raw.split(',') if x]
 if len(set(xs))!=len(xs) or any(x<0 or x>=n for x in xs):raise ValueError('bad local coordinates')
 return xs
def rank(vectors,n):
 piv={}
 for v in vectors:
  x=sum(1<<i for i in v)
  while x:
   j=x.bit_length()-1
   if j in piv:x^=piv[j]
   else:piv[j]=x;break
 return len(piv)
basis=[dict(global_id=i,filtration=s,total_degree=t,stem=t-s,monomial=mon,d2=d2) for i,s,t,mon,d2 in c.execute('select id,s,t,mon,d2 from S0_AdamsE2_basis where t-s=125 order by s,id')]
by=collections.defaultdict(list)
for b in basis:by[b['filtration']].append(b)
for group in by.values():
 for j,b in enumerate(group):b['local_index']=j
stairs=[];groups=[]
for s,group in sorted(by.items()):
 n=len(group);rows=[]
 for rid,t,base,diff,level in c.execute('select id,t,base,diff,level from S0_AdamsE2_ss where s=? and t-s=125 order by id',(s,)):
  v=vec(base,n)
  if level==9000:kind='sentinel_unknown';event=None;other=None
  elif 2<=level<5000:kind='stored_incoming';event=level;other=[s-event,t-event+1]
  elif 9000<level<=9998:kind='stored_outgoing';event=10000-level;other=[s+event,t+event-1]
  else:kind='unrecognized';event=None;other=None
  row=dict(staircase_id=rid,filtration=s,total_degree=t,stem=125,base=base,base_local_indices=v,base_global_ids=[group[j]['global_id'] for j in v],base_monomials=[group[j]['monomial'] for j in v],diff=diff,level=level,status=kind,event_page=event,other_degree=other,diff_global_ids=None)
  if other is not None:
   other_basis=[x[0] for x in c.execute('select id from S0_AdamsE2_basis where s=? and t=? order by id',other)]
   coords=vec(diff,len(other_basis));row['diff_local_indices']=coords
   row['diff_global_ids']=None if coords is None else [other_basis[j] for j in coords]
  rows.append(row);stairs.append(row)
 fullrank=rank([x['base_local_indices'] for x in rows],n)
 if len(rows)!=n or fullrank!=n:raise ValueError('staircase is not a complete basis')
 groups.append(dict(filtration=s,total_degree=s+125,dimension=n,basis_ids=[x['global_id'] for x in group],staircase_ids=[x['staircase_id'] for x in rows],staircase_rank=fullrank))
counts=dict(collections.Counter(x['status'] for x in stairs));sentinels=[x for x in stairs if x['status']=='sentinel_unknown']
result=dict(stem=125,basis_count=len(basis),staircase_count=len(stairs),counts=counts,filtration_groups=groups,basis=basis,staircase=stairs,four_sentinel_candidates=sentinels,provenance=dict(database=str(db.relative_to(r)),database_sha256=sha(db),claims_csv_sha256=sha(r.parent/'doc_data/kervaire_claims.csv'),basis_query='SELECT id,s,t,mon,d2 FROM S0_AdamsE2_basis WHERE t-s=125 ORDER BY s,id',staircase_query='SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE t-s=125 ORDER BY s,id'),trust_boundary='105 and38+63+4 are input counts only; no101 eliminations or4 mathematical survivors proved')
(p/'inventory.json').write_text(json.dumps(result,indent=2)+'\n')
with (p/'basis.csv').open('w',newline='') as f:
 w=csv.DictWriter(f,fieldnames=['global_id','filtration','total_degree','stem','local_index','monomial','d2']);w.writeheader();w.writerows(basis)
with (p/'staircase.csv').open('w',newline='') as f:
 fields=['staircase_id','filtration','total_degree','base','base_global_ids','diff','diff_global_ids','level','status','event_page'];w=csv.DictWriter(f,fieldnames=fields);w.writeheader()
 for row in stairs:w.writerow({k:json.dumps(row[k],separators=(',',':')) if isinstance(row[k],list) else '[NULL]' if row[k] is None else row[k] for k in fields})
print('basis',len(basis),'staircase',len(stairs),'groups',len(groups),'statuses',counts)
print('sentinel candidates',[(x['filtration'],x['total_degree'],x['base_global_ids']) for x in sentinels])
