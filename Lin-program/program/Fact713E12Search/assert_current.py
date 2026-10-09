"""Verify current source, direct-build and independent finite-audit evidence."""
import hashlib
import json
from pathlib import Path
import re

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
count=0
for name,expected in [('compile-audit.json',['Data','Prefix','ZeroTargets']),
                      ('successor-compile-audit.json',['Successor','SuccessorData'])]:
    audit=json.loads((HERE/name).read_text())
    assert [x['module'] for x in audit]==expected
    for row in audit:
        assert row['exit_code']==0
        for path,digest in row['input_sha256'].items():assert sha(ROOT/path)==digest,path
        n=row['module'];log=HERE/(n+'.log')
        assert sha(log)==row['log_sha256']
        assert sha(ROOT/'.lake/build/lib/lean/Fact713E12Search'/(n+'.olean'))==row['olean_sha256']
        text=log.read_text();assert 'sorryAx' not in text and 'error:' not in text and 'error(' not in text
        axioms=re.findall(r'depends on axioms: \[([^]]*)\]',text)
        assert all({v.strip() for v in a.split(',')}<={'propext','Classical.choice','Quot.sound'} for a in axioms)
        count+=len(axioms)+text.count('does not depend on any axioms')
assert count==24
for name in ['search.json','audit.json','successor-audit.json']:
    report=json.loads((HERE/name).read_text())
    for path,digest in report['input_sha256'].items():assert sha(ROOT/path)==digest,(name,path)
successor=json.loads((HERE/'successor-search.json').read_text())
assert successor['baseline_search_sha256']==sha(HERE/'search.json')
generated=json.loads((HERE/'generated-manifest.json').read_text())
assert generated['source_sha256']==sha(HERE/'search.json')
assert len(generated['keys'])==78 and len(generated['zero_target_keys'])==13
additional=json.loads((HERE/'successor-manifest.json').read_text())
assert len(additional['keys'])==7 and not set(additional['keys'])&set(generated['keys'])
for k in generated['keys']+additional['keys']:
    tag='b_'+k.replace(':','_').replace(',','_').replace('-','neg')
    text=(HERE/'wires'/(tag+'.json')).read_text()
    wire=json.loads(text)
    assert text==json.dumps(wire,separators=(',',':'),sort_keys=True)+'\n'
    assert wire==successor['comparisons'][k]['wire']
print('five current direct builds;24 standard-only/no-axiom reports;85 imported comparisons;both finite audits current')
