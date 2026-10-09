"""Replay all family links independently and reject malformed bindings."""
import copy
import hashlib
import importlib.util
import json
import subprocess
import tempfile
from pathlib import Path

p=Path(__file__).resolve().parent;root=p.parent
family=json.loads((p/'family.json').read_text())
bound=[json.loads(x) for x in (p/'bound90.jsonl').read_text().splitlines()]
source=json.loads((root/'AggregateC2H2Conditional/source.json').read_text())
spec=importlib.util.spec_from_file_location('matrix_audit',root/'Row3147MapSearch/review.py')
audit=importlib.util.module_from_spec(spec);spec.loader.exec_module(audit)
key=lambda k:(k['object'],k['page'],k['s'],k['t'])
blocks={key(e['key']):e['wire'] for e in family['entries']}
assert len(blocks)==len(family['entries'])==336
assert blocks=={(b['object'],b['page'],*b['center']):b['wire'] for b in source['blocks'].values()}
horizontal=vertical=0
for (o,page,s,t),w in blocks.items():
    audit.check_wire(w)
    nxt=blocks.get((o,page,s+page,t+page-1))
    if nxt is not None:
        horizontal+=1
        assert w['k']==nxt['m'] and w['m']==nxt['n'] and w['outgoing']==nxt['incoming']
    nxt=blocks.get((o,page+1,s,t))
    if nxt is not None:
        vertical+=1;assert w['h']==nxt['m']
assert horizontal==190 and vertical==122
stages=0
original=[json.loads(x) for x in (root/'FiniteEventProducer/ThreeProduct/indexed90.jsonl').read_text().splitlines()]
assert len(bound)==90
for w,expected in zip(bound,original):
    assert w==dict(version=1,object='S0',event=expected)
    e=w['event'];f=e['finite'];source_degree=e['sourceDegree']
    assert blocks['S0',e['eventPage'],source_degree['s'],source_degree['t']]==f['event']
    for side in ['source','target']:
        center=e[side+'Degree']
        for i,stage in enumerate(f[side+'Stages']):
            stages+=1
            assert blocks['S0',i+2,center['s'],center['t']]==stage['wire']
assert stages==90
canonical=lambda x:json.dumps(x,sort_keys=True,separators=(',',':'))+'\n'
tests=[]
with tempfile.TemporaryDirectory(dir=p) as directory:
    temp=Path(directory)
    def check(name,fam,event=None,object='S0',message=None):
        fp=temp/'family.json';ip=temp/'event.jsonl'
        fp.write_text(fam if isinstance(fam,str) else canonical(fam))
        if event is None:args=['--family',str(fp)]
        else:
            ip.write_text(event if isinstance(event,str) else canonical(event));args=['--bind',str(fp),object,str(ip)]
        result=subprocess.run([str(p/'indexed-family-export'),*args],capture_output=True,text=True)
        assert result.returncode!=0 and not result.stdout,name
        if message:assert message in result.stderr,(name,result.stderr)
        tests.append(name)
    duplicate=copy.deepcopy(family);duplicate['entries'].append(duplicate['entries'][0])
    check('duplicate key',duplicate,message='duplicate')
    conflict=copy.deepcopy(family)
    altered_entry=copy.deepcopy(next(x for x in family['entries'] if x['wire']['projection']))
    altered_entry['wire']['projection'][0]^=True
    conflict['entries'].append(altered_entry)
    check('conflicting key',conflict,message='duplicate or conflicting family key')
    missing=copy.deepcopy(family);e=original[0];k=('S0',e['eventPage'],e['sourceDegree']['s'],e['sourceDegree']['t'])
    missing['entries']=[x for x in missing['entries'] if key(x['key'])!=k]
    check('missing event block',missing,e,message='missing family block')
    check('unknown object',family,e,object='NoSuchObject',message='unknown object')
    altered=copy.deepcopy(next(x for x in original if x['finite']['event']['projection']));altered['finite']['event']['projection'][0]^=True
    check('full comparison mismatch',family,altered,message='full comparison differs')
    stage_event=next(x for x in original if x['finite']['sourceStages'])
    altered=copy.deepcopy(stage_event);stage=altered['finite']['sourceStages'][0]['wire']
    stage['projection'][0]^=True
    check('stage comparison mismatch',family,altered,message='source.stage[0]')
    unknown=copy.deepcopy(family);unknown['surprise']=0;check('unknown field',unknown,message='unknown field')
    check('duplicate JSON field','{"version":1,"version":1,"entries":[]}',message='duplicate field')
    check('null value','null',message='unknown/null')
    check('negative page',{'version':1,'entries':[{'key':{'object':'S0','page':-2,'s':0,'t':0},'wire':e['finite']['event']}]},message='expected natural')
    check('oversized family',' '*10000001,message='limit10MB')
    check('family NUL suffix',canonical(family).strip()+'\x00garbage',message='trailing JSON')
    check('event NUL suffix',family,canonical(e).strip()+'\x00garbage',message='trailing JSON')
    for label,control in [('VT','\x0b'),('FF','\x0c')]:
        check('family '+label+' prefix',control+canonical(family),message='unknown/null')
        check('event '+label+' prefix',family,control+canonical(e),message='unknown/null')
    before=(p/'family.json').read_bytes(),(p/'bound90.jsonl').read_bytes()
    subprocess.run(['python3',str(p/'prepare.py')],check=True)
    assert before==((p/'family.json').read_bytes(),(p/'bound90.jsonl').read_bytes())
(p/'audit.json').write_text(json.dumps(dict(family_entries=336,bound_events=90,bound_stages=90,
    negative_filtration_entries=sum(k[2]<0 for k in blocks),horizontal_pairs=horizontal,consecutive_pages=vertical,
    conflicts=[],negative_tests=tests,deterministic=True,
    family_sha256=hashlib.sha256((p/'family.json').read_bytes()).hexdigest(),
    bound_sha256=hashlib.sha256((p/'bound90.jsonl').read_bytes()).hexdigest()),indent=2)+'\n')
print('336 full blocks; 190/122 coherent pairs; 90 events/90 stages; '+str(len(tests))+' rejection cases')
