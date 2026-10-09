import hashlib,itertools,json,sqlite3,subprocess
from pathlib import Path
p=Path(__file__).resolve().parent;r=p.parent
c=sqlite3.connect(f'file:{r}/upstream/kervaire-49/S0_AdamsSS_t261.db?mode=ro',uri=True)
row=c.execute('select id,s,t,base,diff,level from S0_AdamsE2_ss where id=2574').fetchone()
known=c.execute('select id,s,t,base,diff,level from S0_AdamsE2_ss where id=2866').fetchone()
assert row==(2574,6,132,'0',None,9997)
assert known==(2866,7,136,'0','3',9997)
pro=json.loads((p/'products-h2-provenance.json').read_text());assert len(pro)==7
assert [(x['source_id'],x['target_coordinates']) for x in pro]==[(2573,[0]),(2574,[]),(2695,[]),(2696,[2]),(2697,[2]),(2698,[3]),(2699,[])]
names=['ann.json','detect.json'];before={n:hashlib.sha256((p/n).read_bytes()).hexdigest() for n in names}
subprocess.run(['python3',str(p/'prepare.py')],check=True)
assert before=={n:hashlib.sha256((p/n).read_bytes()).hexdigest() for n in names}
w=json.loads((p/'target.json').read_text());target=json.loads((p/'productTarget.json').read_text())
def ev(a,m,n,v):return [sum(a[i*n+j] and v[j] for j in range(n))%2 for i in range(m)]
def mul(v):
 out=[0]*4
 for a,x in zip(v,pro[2:]):
  if a:
   for i in x['target_coordinates']:out[i]^=1
 return out
allowed=[]
for v in itertools.product([0,1],repeat=3):
 raw=ev(w['inclusion'],5,3,v);image=ev(target['projection'],2,4,mul(raw))
 assert (image==[0,1])==(v[2]==1)
 if image==[0,1]:allowed.append(v)
assert len(allowed)==4
ranking=json.loads((r/'AggregateTargetInventory/EventAudit/Remaining/ranking.json').read_text())
record=next(x for x in ranking if x['row'][0]==2574)
logs=[x for x in record['proof_events'] if x['id'] in ['2047477','2047478']]
assert len(logs)==2
report=dict(raw_unknown=row,known_imported_differential=known,products=7,bilinear_certificates=2,target_E3_dimension=3,product_target_E3_dimension=2,allowed_coordinates=allowed,proof_log_provenance=logs,certificate_sha256=before,external_premises=['all-class local quotient h2 Leibniz square','product differential sends imported row2866 source to class e3'],status='exact affine restriction; no source differential selected; no zero inference')
(p/'review.json').write_text(json.dumps(report,indent=2)+'\n');print('7 products, 2 stable bilinear certificates, exactly 4/8 affine candidates; raw unknown retained')
