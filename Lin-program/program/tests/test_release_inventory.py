import json
from pathlib import Path
r=Path(__file__).resolve().parents[1]
c=json.loads((r/'upstream/kervaire-49/ss.json').read_text())
i=json.loads((r/'upstream/category-inventory.json').read_text())
assert len(c['rings'])+len(c['modules'])==49
assert len(c['maps'])==180 and len(c['maps_v2'])==115 and len(c['cofseqs'])==61
for key in ['rings','modules','maps','maps_v2','cofseqs','commutativity']:
 assert [x['source'] for x in i['records'] if x['section']==key]==c[key]
a=json.loads((r/'proof_release_audit.json').read_text())
assert a['total_rows']==2672275 and len(a['files'])==3
print('Exact category inventory and release log row counts passed')
