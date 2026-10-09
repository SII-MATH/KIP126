import hashlib,json,sqlite3,subprocess
from pathlib import Path
p=Path(__file__).resolve().parent;r=p.parent;c=sqlite3.connect(f'file:{r}/upstream/kervaire-49/S0_AdamsSS_t261.db?mode=ro',uri=True)
row=c.execute('select id,s,t,base,diff,level from S0_AdamsE2_ss where id=2796').fetchone();assert row==(2796,8,135,'2',None,9000)
assert c.execute('select mon,s,t from S0_AdamsE2_basis where id=42').fetchone()==('8,1',4,18)
for f in ['h3','d0']:
 a=json.loads((p/f'products-{f}-provenance.json').read_text());assert len(a)==13
 assert next(x for x in a if x['source_degree']==[8,135] and x['source_local']==2)['target_coordinates']==[]
files=['annh3.json','detecth3.json','annd0.json','detectd0.json'];before={f:hashlib.sha256((p/f).read_bytes()).hexdigest() for f in files}
for f in ['h3','d0']:subprocess.run(['python3',str(p/f'prepare_{f}.py')],check=True)
assert before=={f:hashlib.sha256((p/f).read_bytes()).hexdigest() for f in files}
(p/'review.json').write_text(json.dumps(dict(row=row,products=26,bilinear_certificates=4,second_factor=dict(generator=8,basis_id=42,s=4,t=18),source_products_both_zero=True,external=['local quotient Leibniz squares with factor-cycle terms removed','product differentials preserve zero','actual Adams interpretation of finite data']),indent=2)+'\n');print('26 actual product columns/four bilinear quotients verified;row2796 NULL unchanged')
