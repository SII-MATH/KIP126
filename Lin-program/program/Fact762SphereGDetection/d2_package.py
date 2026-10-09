import json
from pathlib import Path
H=Path(__file__).resolve().parent;j=json.loads((H/'by-sigma-d2.json').read_text());c=j['matrices']['17,156']['columns'][0];gids=[6,7,9]
def ex(poly):return [[co for co,g in poly if g==i] for i in gids]
w=dict(version=1,rank=3,input=ex(c['input']),output=ex(c['output']),relations=[ex(t['polynomial']) for t in c['trace']],terms=[dict(relation=i,multiplier=[t['multiplier']]) for i,t in enumerate(c['trace'])]);(H/'by-sigma-incoming4337.json').write_text(json.dumps(w,sort_keys=True,separators=(',',':'))+'\n')
