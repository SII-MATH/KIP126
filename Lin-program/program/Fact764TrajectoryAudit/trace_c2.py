import csv,json,sqlite3
from pathlib import Path
p=Path(__file__).resolve().parent;r=p.parent;found=[]
for f in sorted((r/'upstream/proofs_csv').glob('proofs-part*.csv')):
 with f.open(encoding='utf-8-sig',newline='') as inp:
  for line,e in enumerate(csv.DictReader(inp),2):
   if e['name']=='C2' and (e['s'],e['t']) in [('18','146'),('21','148')]:found.append({'file':f.name,'line':line,**e})
(p/'c2-events.json').write_text(json.dumps(found,indent=2)+'\n')
for e in found:print(e)
