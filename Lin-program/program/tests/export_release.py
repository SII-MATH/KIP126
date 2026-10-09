"""Export all configured d2 inputs; audit ranges and preserve SQL NULL exactly."""
import hashlib
import json
from pathlib import Path
import subprocess
root=Path(__file__).resolve().parents[1]
category=json.loads((root/'upstream/kervaire-49/ss.json').read_text())
out=root/'release-certificates';out.mkdir(exist_ok=True)
summary=[]
for obj in category['rings']+category['modules']:
 db=root/'upstream/kervaire-49'/obj['path']
 dest=out/(obj['name']+'-d2.jsonl')
 with dest.open('w') as f:
  subprocess.run([str(root/'d2-export'),str(db),obj['name']],stdout=f,check=True)
 rows=[json.loads(s) for s in dest.read_text().splitlines()]
 summary.append(dict(object=obj['name'],source=obj['path'],source_sha256=hashlib.sha256(db.read_bytes()).hexdigest(),
                     records=len(rows),known=sum(r['status']=='finite_input' for r in rows),unknown=sum(r['status']=='unknown' for r in rows)))
(root/'release-certificates/manifest.json').write_text(json.dumps(summary,indent=2)+'\n')
print('Exported',len(summary),'configured spectra;',sum(s['records'] for s in summary),'degree blocks;',sum(s['unknown'] for s in summary),'unknown blocks retained')
