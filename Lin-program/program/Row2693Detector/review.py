import json,sqlite3,hashlib,subprocess
from pathlib import Path
p=Path(__file__).resolve().parent;r=p.parent;c=sqlite3.connect(f'file:{r}/upstream/kervaire-49/S0_AdamsSS_t261.db?mode=ro',uri=True)
row=c.execute('select id,base,diff,level from S0_AdamsE2_ss where id=2693').fetchone();assert row==(2693,'4',None,9000)
assert c.execute('select id,base,diff,level from S0_AdamsE2_ss where id=2779').fetchone()==(2779,'4','4',2)
for factor in ['h0','h2']:
 pro=json.loads((p/f'products-{factor}-provenance.json').read_text());assert len(pro)==8
 assert {tuple(x['source_degree']) for x in pro}=={(10,134),(13,136)}
names=['ann.json','detect.json','ann0.json','detect0.json'];before={n:hashlib.sha256((p/n).read_bytes()).hexdigest() for n in names}
for f in ['prepare.py','prepare_h0.py']:subprocess.run(['python3',str(p/f)],check=True)
assert before=={n:hashlib.sha256((p/n).read_bytes()).hexdigest() for n in names}
(p/'review.json').write_text(json.dumps(dict(raw_row=row,h0_source_boundary_row=[2779,'4','4',2],products=16,bilinear_certificates=4,external_premises=['two all-class local quotient Leibniz squares with factor-cycle terms removed','both product differentials preserve zero'],status='conditional_structural_zero_no_prefix_or_desired_zero_premise'),indent=2)+'\n')
print('16 actual product columns; four deterministic bilinear certificates; raw unknown retained')
