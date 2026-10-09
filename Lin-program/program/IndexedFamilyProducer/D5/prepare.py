"""One complete shared family; bind existing actual C++ indexed records."""
import hashlib
import json
import subprocess
from pathlib import Path

p=Path(__file__).resolve().parent
root=p.parents[1]
sourcepath=root/'AggregateD5Conditional/source.json'
source=json.loads(sourcepath.read_text())
inputpath=root/'FiniteEventProducer/D5/indexed95.jsonl'
oldpro=json.loads((inputpath.parent/'provenance.json').read_text())
assert len(source['blocks'])==358
entries=[]
for name,block in sorted(source['blocks'].items()):
    s,t=block['center']
    entries.append(dict(key=dict(object=block['object'],page=block['page'],s=s,t=t),wire=block['wire']))
canonical=lambda x:json.dumps(x,sort_keys=True,separators=(',',':'))+'\n'
(p/'family.input.json').write_text(canonical(dict(version=1,entries=entries)))
with (p/'family.json').open('w') as out:
    subprocess.run([str(p.parent/'indexed-family-export'),'--family',str(p/'family.input.json')],stdout=out,check=True)
with (p/'bound95.jsonl').open('w') as out:
    subprocess.run([str(p.parent/'indexed-family-export'),'--bind',str(p/'family.json'),'S0',str(inputpath)],stdout=out,check=True)
bound=(p/'bound95.jsonl').read_text().splitlines();assert len(bound)==95
(p/'events').mkdir(exist_ok=True)
records=[]
for i,(line,record) in enumerate(zip(bound,oldpro['records'])):
    rid=record['staircase_id'];(p/'events'/f'event{rid}.json').write_text(line+'\n')
    records.append(dict(line=i+1,staircase_id=rid,root=record['root'],conditional_uses=record['conditional_uses']))
(p/'provenance.json').write_text(json.dumps(dict(family_block_count=358,event_count=95,
    family_source='AggregateD5Conditional',database_sha256=source['database_sha256'],
    family_conditional_uses=[dict(block=k,**u) for k,b in sorted(source['blocks'].items()) for u in b['uses'] if u['kind'].startswith('conditional')],
    attempted_overrides=source['attempted_overrides'],records=records,
    input_sha256={str(f.relative_to(root)):hashlib.sha256(f.read_bytes()).hexdigest() for f in [sourcepath,inputpath,inputpath.parent/'provenance.json']}),indent=2)+'\n')
print('one shared 358-entry family; 95 bound events; full conditional provenance retained')
