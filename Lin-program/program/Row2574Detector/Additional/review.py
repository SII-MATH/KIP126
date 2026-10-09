import hashlib,itertools,json,sqlite3,subprocess
from pathlib import Path
p=Path(__file__).resolve().parent;r=p.parents[1]
c=sqlite3.connect(f'file:{r}/upstream/kervaire-49/S0_AdamsSS_t261.db?mode=ro',uri=True)
assert c.execute('select mon,s,t,d2 from S0_AdamsE2_basis where id=42').fetchone()==('8,1',4,18,'')
assert c.execute('select mon,s,t,d2 from S0_AdamsE2_basis where id=35').fetchone()==('7,1',1,16,'0')
pro=json.loads((p/'products-f0-provenance.json').read_text());assert len(pro)==7 and pro[0]['target_coordinates']==[]
assert pro[0]['relation_rowids']==[14826]
assert [(x['source_id'],x['target_coordinates']) for x in pro[2:]]==[(2695,[1]),(2696,[1]),(2697,[]),(2698,[]),(2699,[])]
names=['ann.json','detect.json'];before={n:hashlib.sha256((p/n).read_bytes()).hexdigest() for n in names}
subprocess.run(['python3',str(p/'prepare.py')],check=True)
assert before=={n:hashlib.sha256((p/n).read_bytes()).hexdigest() for n in names}
def ev(a,m,n,v):return [sum(a[i*n+j] and v[j] for j in range(n))%2 for i in range(m)]
w=json.loads((p/'target.json').read_text());t=json.loads((p/'productTarget.json').read_text());allowed=[]
for v in itertools.product([0,1],repeat=3):
 raw=ev(w['inclusion'],5,3,v);out=[0]*3
 for a,x in zip(raw,pro[2:]):
  if a:
   for i in x['target_coordinates']:out[i]^=1
 image=ev(t['projection'],t['h'],t['m'],out)
 assert (not any(image))==(v[0]==0)
 if v[2] and not any(image):allowed.append(v)
assert allowed==[(0,0,1),(0,1,1)]
search=json.loads((p/'cycle-search.json').read_text())
report=dict(factor=dict(basis_id=42,generator=8,degree=[4,18],d2=''),rejected_factor=dict(basis_id=35,reason='h4 has nonzero d2 local0, so not E3 cycle'),products=7,bilinear_certificates=2,source_product_raw_zero=True,remaining=allowed,unavailable_d2_search_entries=sum('error' in x for x in search),certificate_sha256=before,external_premises=['existing h2 local Leibniz and row2866 value','generator8 local Leibniz and product differential zero preservation'],status='two conditional candidates; no differential selected')
(p/'review.json').write_text(json.dumps(report,indent=2)+'\n');print('generator8 verified; raw source product zero; full target kernel; exactly two candidates; h4 rejected')
