import json,pathlib,sqlite3,collections,hashlib
p=pathlib.Path(__file__).resolve().parent
rows=[json.loads(l) for l in (p/'actual-s0/resolution.jsonl').read_text().splitlines()]
counts=collections.Counter((r['s'],r['t']) for r in rows)
db=p.parent/'upstream/kervaire-49/S0_AdamsSS_t261.db'
c=sqlite3.connect(f'file:{db}?mode=ro',uri=True)
paper={(s,t):n for s,t,n in c.execute('select s,t,count(*) from S0_AdamsE2_basis where t<=8 group by s,t')}
report=[]
for t in range(9):
 for s in range(t+1):
  report.append(dict(s=s,t=t,hom_generator_count=counts[s,t],paper_e2_basis_count=paper.get((s,t),0),match=counts[s,t]==paper.get((s,t),0)))
assert all(r['match'] for r in report)
(p/'actual-s0/hom-comparison.json').write_text(json.dumps(dict(source_sha256=hashlib.sha256(db.read_bytes()).hexdigest(),raw_source_commit='23d12c973db2b294a6c00c15bd106e70b0af3fa6',comparison_only=True,cells=report),indent=2)+'\n')
lean=['import ExtComplexCertificates.MinimalHom','open ExtComplexCertificates.ActualResolution']
for r in report:
 lean.append(f'example : actualHomDimension {r["s"]} {r["t"]} = {r["hom_generator_count"]} := by decide')
(p/'MinimalHomDimensions.lean').write_text('\n'.join(lean)+'\n')
print('45 bidegree cells, 16 total generators: all raw Hom counts equal independent paper S0 E2 basis counts')
