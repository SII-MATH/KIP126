import json,subprocess,hashlib
from pathlib import Path
root=Path(__file__).resolve().parents[1]
category=json.loads((root/'upstream/kervaire-49/ss.json').read_text())
out=root/'staircase-release';out.mkdir(exist_ok=True)
manifest=[]
with (out/'appendix.jsonl').open('w') as appendix:
 for obj in category['rings']+category['modules']:
  path=root/'upstream/kervaire-49'/obj['path']
  output=out/(obj['name']+'.jsonl')
  with output.open('w') as f:subprocess.run([str(root/'StaircaseCertificates/staircase-export'),str(path),obj['name']],stdout=f,check=True)
  total=0;selected=0
  for line in output.open():
   r=json.loads(line);total+=1
   if 122<=r['t']-r['s']<=127 and r['s']<=25:appendix.write(line);selected+=1
  manifest.append(dict(object=obj['name'],blocks=total,appendix_blocks=selected,source_sha256=hashlib.sha256(path.read_bytes()).hexdigest()))
(out/'manifest.json').write_text(json.dumps(manifest,indent=2)+'\n')
print(len(manifest),'spectra',sum(m['blocks'] for m in manifest),'basis blocks;',sum(m['appendix_blocks'] for m in manifest),'appendix blocks')
