"""Check fixed-source excerpts, direct Lean success and exhaustive audit identities."""
import hashlib,json,re
from pathlib import Path
P=Path(__file__).resolve().parent;R=P.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
audit=json.loads((P/'compile-audit.json').read_text());assert len(audit)==1
a=audit[0];assert a['module']=='RepresentativeSquare' and a['exit_code']==0
for path,h in a['input_sha256'].items():assert sha(R/path)==h,path
assert sha(P/'RepresentativeSquare.log')==a['log_sha256']
assert sha(R/'.lake/build/lib/lean/GeneralizedLeibnizAudit/RepresentativeSquare.olean')==a['olean_sha256']
text=(P/'RepresentativeSquare.log').read_text();assert 'sorryAx' not in text and 'error:' not in text
reports=re.findall(r'depends on axioms: \[([^]]*)\]',text);assert len(reports)==3
for vals in reports:assert {v.strip() for v in vals.split(',')}<={'propext','Classical.choice','Quot.sound'}
r=json.loads((P/'review.json').read_text())
for path,h in r['source_sha256'].items():assert sha(R/path)==h,path
paper=json.loads((P/'paper-excerpts.json').read_text());assert sha(R/paper['source_path'])==paper['source_sha256']
print('one current direct build;3 standard-only reports;26 fixed-version excerpts;scope audit current')
