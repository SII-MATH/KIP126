"""Supplemental independent review of both quotient coordinate changes."""
import runpy
from pathlib import Path
import hashlib,json
HERE=Path(__file__).resolve().parent
scope=runpy.run_path(str(HERE/'independent_review.py'))
load,decode,ev=scope['load'],scope['decode'],scope['ev']
after,blocks=scope['after'],scope['blocks']
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
checks=[]
for detector,key in [('source','S0:12,134:d2'),('upperSource','S0:15,136:d2')]:
    neww,new=blocks[detector];oldw=after[key]['wire'];old=decode(oldw)
    assert all(oldw[k]==neww[k] for k in ['m','n','k','h','incoming','outgoing'])
    forward=[ev(old['projection'],ev(new['inclusion'],1<<j)) for j in range(2)]
    backward=[ev(new['projection'],ev(old['inclusion'],1<<j)) for j in range(2)]
    assert forward==backward==[2,1]
    for v in range(4):assert ev(backward,ev(forward,v))==v
    cycles=[v for v in range(1<<neww['m']) if ev(new['outgoing'],v)==0]
    for v in cycles:assert ev(forward,ev(new['projection'],v))==ev(old['projection'],v)
    checks.append(dict(key=key,forward=forward,backward=backward,cycles=len(cycles)))
assert ev(blocks['source'][1]['projection'],1)==1
assert ev(decode(after['S0:12,134:d2']['wire'])['projection'],1)==2
out=decode(after['S0:12,134:d3']['wire'])['outgoing']
assert out[1]==0
record=load(HERE/'CoordinateBridge-compile.json')
assert record['observed_exit_code']==0
assert record['source_sha256']==sha(HERE/'CoordinateBridge.lean')
assert record['log_sha256']==sha(HERE/'CoordinateBridge.log')
assert 'sorryAx' not in (HERE/'CoordinateBridge.log').read_text()
reports=sum(x.startswith("'Fact713NextSourceSearch.") for x in (HERE/'CoordinateBridge.log').read_text().splitlines())
assert reports==6
result=dict(status='no_correctness_findings',checks=checks,axiom_reports=reports,compile=record,
  named_detector_coordinate=1,named_staircase_coordinate=2,staircase_named_d3_column=0,
  scope='Actual column uses explicit Actual.Meaning, whole d3 naturality and named-class premise; coordinate equivalences are proved on all quotient elements.')
(HERE/'coordinate-bridge-review.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps(result,indent=2))
