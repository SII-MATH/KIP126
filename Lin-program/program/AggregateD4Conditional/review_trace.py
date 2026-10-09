import hashlib,json,subprocess
from pathlib import Path
p=Path(__file__).resolve().parent;r=p.parent
files=['Trace.lean','trajectory-cycles.json'];old={f:hashlib.sha256((p/f).read_bytes()).hexdigest() for f in files};subprocess.run(['python3',str(p/'generate_trace.py')],check=True);assert old=={f:hashlib.sha256((p/f).read_bytes()).hexdigest() for f in files}
trace=json.loads((p/'trajectory-cycles.json').read_text())[0];blocks=json.loads((p/'source.json').read_text())['blocks'];w=json.loads((r/'FiniteEventProducer/D4/event3254.json').read_text());iw=json.loads((r/'FiniteEventProducer/D4/indexed-event3254.json').read_text());assert iw['finite']==w and iw['eventPage']==4 and iw['sourceDegree']=={'s':12,'t':138} and iw['targetDegree']=={'s':16,'t':141}
assert w['event']==blocks['S0:12,138:d4']['wire']
for ep in trace['endpoints']:
 f=ep['endpoint'];assert w['raw'+f.capitalize()]==list(map(bool,ep['raw_vector']));assert w[f]==list(map(bool,ep['final_coordinates']))
 assert w[f+'Stages']==[dict(wire=blocks[s['comparison']]['wire'],representative=list(map(bool,s['coordinates']))) for s in ep['prior_stages']]
report=dict(staircase_id=3254,prior_cycle_steps=4,prior_nonboundary_steps=4,raw_projection_links=2,producer_wires_match=True,producer_sha256={n:hashlib.sha256((r/'FiniteEventProducer/D4'/n).read_bytes()).hexdigest() for n in ['event3254.json','indexed-event3254.json']})
(p/'trace-review.json').write_text(json.dumps(report,indent=2)+'\n');print('trace deterministic; both C++ wire paths exactly match allraw/fullmatrices/stagecoords')
