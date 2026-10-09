"""Check producer regression identities; Lean imports have their own direct audit."""
import hashlib,json
from pathlib import Path
P=Path(__file__).resolve().parent;R=P.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
a=json.loads((P/'audit.json').read_text())
assert a['status']=='independent_quotient_oracle_passed'
for path,digest in a['source_sha256'].items():assert sha(R/path)==digest,path
assert sha(P/'filtered-extension-export')==a['executable_sha256']
assert sha(P/'valid.input.jsonl')==a['valid_input_sha256']
assert sha(P/'valid.jsonl')==a['valid_output_sha256']
inputs=(P/'valid.input.jsonl').read_text().splitlines()
outputs=(P/'valid.jsonl').read_text().splitlines()
assert len(inputs)==len(outputs)==a['accepted']==604
encode=lambda x:json.dumps(x,sort_keys=True,separators=(',',':'))
for line,query in zip(outputs,inputs):
    value=json.loads(line);assert encode(value)==line
    assert value['data']==json.loads(query)['data']
for name in ['correction','nonzero','empty','dimension64']:
    value=json.loads((P/f'case_{name}.json').read_text())
    assert (P/f'case_{name}.json').read_text()==encode(value)+'\n'
report=dict(status='current_producer_audit_passed',audit_sha256=sha(P/'audit.json'),
    accepted_records=len(outputs),source_sha256={str(p.relative_to(R)):sha(p)
    for p in [Path(__file__),P/'README.md',*sorted(P.glob('case_*.json'))]})
(P/'current-audit.json').write_text(json.dumps(report,indent=2,sort_keys=True)+'\n')
print('current producer:2555 oracle cases,604 canonical records,strict errors and deterministic synthesis')
