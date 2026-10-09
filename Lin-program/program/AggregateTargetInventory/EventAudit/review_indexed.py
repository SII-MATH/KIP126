import hashlib,json,subprocess
from pathlib import Path
p=Path(__file__).resolve().parent;files=sorted((p/'indexed-batch').glob('*.json'))+[p/f'IndexedBatch{i}.lean' for i in range(9)]+[p/'indexed-audit.json'];before={str(f):hashlib.sha256(f.read_bytes()).hexdigest() for f in files};subprocess.run(['python3',str(p/'generate_indexed.py')],check=True);assert before=={str(f):hashlib.sha256(f.read_bytes()).hexdigest() for f in files}
a=json.loads((p/'indexed-audit.json').read_text());assert len(a)==87
for rec in a:
 w=json.loads((p/rec['file']).read_text());r=w['eventPage'];s=w['sourceDegree'];t=w['targetDegree'];assert t=={'s':s['s']+r,'t':s['t']+r-1}
 for side in ['source','target']:
  labels=w[side+'Labels'];center=w[side+'Degree'];assert len(labels)==len(w['finite'][side+'Stages'])==r-2
  for i,l in enumerate(labels,2):assert l==dict(page=i,center=center,incoming=dict(s=center['s']-i,t=center['t']-i+1),outgoing=dict(s=center['s']+i,t=center['t']+i-1))
print('87 indexed wrappers exact page counts/degrees/all labels verified;deterministic')
producer=p.parents[1]/'FiniteEventProducer/indexed87.jsonl'
lines=producer.read_text().splitlines();assert len(lines)==len(a)
for line,rec in zip(lines,a):assert line+'\n'==(p/rec['file']).read_text()
print('all87 C++ indexed outputs byte-identical to Lean imports')
