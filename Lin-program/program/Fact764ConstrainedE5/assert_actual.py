"""Validate the separate actual-meaning leaf build without refreshing evidence."""
import hashlib,json,re
from pathlib import Path
P=Path(__file__).resolve().parent;R=P.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
a=json.loads((P/'Actual-compile.json').read_text())
assert a['exit_code']==0
for path,h in a['input_sha256'].items():assert sha(R/path)==h,path
assert sha(P/'Actual.log')==a['log_sha256']
assert sha(R/'.lake/build/lib/lean/Fact764ConstrainedE5/Actual.olean')==a['olean_sha256']
text=(P/'Actual.log').read_text()
assert 'sorryAx' not in text and 'error:' not in text and 'error(' not in text
reports=re.findall(r'depends on axioms: \[([^]]*)\]',text)
assert len(reports)==3
for vals in reports:
    assert {v.strip() for v in vals.split(',')}<={'propext','Classical.choice','Quot.sound'}
print('Actual current direct build;3 standard-only axiom reports')
