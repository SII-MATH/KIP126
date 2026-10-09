"""Validate the frozen three-module direct build and enumeration evidence."""
import hashlib
import json
from pathlib import Path
import re

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
reports=0
for name in ['Basic','Whole','Constraints']:
    row=json.loads((HERE/(name+'-compile.json')).read_text())
    assert row['observed_exit_code']==0
    assert row['source_sha256']==sha(HERE/(name+'.lean'))
    assert row['log_sha256']==sha(HERE/(name+'.log'))
    assert row['olean_sha256']==sha(ROOT/'.lake/build/lib/lean/Stem125ConstrainedE5'/(name+'.olean'))
    log=(HERE/(name+'.log')).read_text()
    assert 'sorryAx' not in log and 'error:' not in log and 'error(' not in log
    ax=re.findall(r'depends on axioms: \[([^]]*)\]',log)
    assert all({x.strip() for x in a.split(',')}<={'propext','Classical.choice','Quot.sound'} for a in ax)
    reports+=len(ax)+log.count('does not depend on any axioms')
assert reports==16
enumeration=json.loads((HERE/'enumeration.json').read_text())
for path,digest in enumeration['input_sha256'].items():assert sha(ROOT/path)==digest,path
assert len(enumeration['rows'])==48
assert enumeration['dimension_counts']=={'3':4,'4':16,'5':20,'6':8}
assert enumeration['original_center_count']==45
assert enumeration['original_aggregate_blocks']==358
print('three current direct builds;16 standard reports;48 local choices with exact dimension3..6')
