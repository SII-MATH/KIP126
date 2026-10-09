import csv,json
from pathlib import Path
p=Path(__file__).resolve().parent;r=p.parent;out=[]
for f in sorted((r/'upstream/proofs_csv').glob('proofs-part*.csv')):
 with f.open(encoding='utf-8-sig',newline='') as inp:
  for line,e in enumerate(csv.DictReader(inp),2):
   if e['name']=='S0' and e['s']=='18' and e['t']=='145':out.append({'file':f.name,'line':line,**e})
(p/'row3564-all-events.json').write_text(json.dumps(out,indent=2)+'\n')
for e in out:print(e['id'],e['reason'],e['depth'],e['r'],e['x'],e['dx'],e['info'])
