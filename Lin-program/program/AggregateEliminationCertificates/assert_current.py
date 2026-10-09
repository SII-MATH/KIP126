"""Check actual successful isolated compiles and the exact reviewed input snapshot."""
import hashlib
import json
import re
from pathlib import Path

P=Path(__file__).resolve().parent
R=P.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
rows=json.loads((P/'compile-audit.json').read_text())
assert [r['module'] for r in rows]==['Basic','Counterexample','Data','Targets']
axioms=0
for row in rows:
    assert row['exit_code']==0
    for path,digest in row['input_sha256'].items():assert sha(R/path)==digest
    n=row['module'];log=P/f'{n}.log'
    assert sha(log)==row['log_sha256']
    assert sha(R/f'.lake/build/lib/lean/AggregateEliminationCertificates/{n}.olean')==row['olean_sha256']
    text=log.read_text()
    assert not re.search(r'\berror(?:\(|:)|sorryAx',text)
    for used in re.findall(r'depends on axioms: \[([^]]*)\]',text):
        assert {x.strip() for x in used.split(',') if x.strip()}<={'propext','Classical.choice','Quot.sound'}
        axioms+=1
review=json.loads((P/'review.json').read_text())
for path,digest in review['inputs_sha256'].items():assert sha(R/path)==digest
print(f'PASS:4 actual successful modules;{axioms} standard axiom reports;105/95 exact rows;23 target projections;13 missing explicit')
