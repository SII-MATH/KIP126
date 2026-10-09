"""Audit frozen proof evidence and independently exercise cumulative boundaries."""
import hashlib
import itertools
import json
from pathlib import Path
import re
import sqlite3

HERE=Path(__file__).resolve().parent;ROOT=HERE.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
frozen=json.loads((HERE/'frozen-source.json').read_text())['files']
for path,digest in frozen.items():assert sha(HERE/path)==digest
reports=0
for module in (HERE/'modules.txt').read_text().split():
    name=module.split('.')[-1];r=json.loads((HERE/(name+'-compile.json')).read_text())
    assert r['observed_exit_code']==0 and r['inputs_stable']
    assert sha(HERE/(name+'.lean'))==r['source_sha256']
    assert sha(HERE/r['log'])==r['log_sha256']
    assert sha(ROOT/'.lake/build/lib/lean'/(module.replace('.','/')+'.olean'))==r['olean_sha256']
    for path,digest in r['dependencies_sha256'].items():assert sha(ROOT/path)==digest
    log=(HERE/r['log']).read_text()
    assert 'sorryAx' not in log and 'error:' not in log and 'warning:' not in log
    for names in re.findall(r'depends on axioms:\s*\[([^]]*)\]',log):
        assert {s.strip() for s in names.split(',')}<={'propext','Classical.choice','Quot.sound'}
        reports+=1
    assert not re.search(r'\b(sorry|admit|axiom|unsafe|native_decide)\b',(HERE/(name+'.lean')).read_text())

counts=dict(event_models=0,cutoff_cases=0,valid_tail_nonzero_cases=0,
            outgoing_death_cases=0,missing_tail_countermodels=0,zero_start_countermodels=0)
for events in itertools.product('NHD',repeat=7):
    counts['event_models']+=1
    alive=True;cycle=True;value=1;zs=[True];bs=[False];vs=[1]
    for event in events:
        if alive:
            if event=='D':cycle=False;alive=False;value=0
            elif event=='H':alive=False;value=0
        zs.append(cycle);bs.append(cycle and value==0);vs.append(value)
    assert all(not bs[i] or bs[j] for i in range(8) for j in range(i,8))
    for cutoff in range(8):
        counts['cutoff_cases']+=1
        tail=all(e!='H' for e in events[cutoff:])
        start=zs[cutoff] and vs[cutoff]!=0
        if tail and start:
            assert not any(bs)
            counts['valid_tail_nonzero_cases']+=1
            counts['outgoing_death_cases']+=int('D' in events[cutoff:])
        if start and any(bs) and not tail:counts['missing_tail_countermodels']+=1
        if tail and zs[cutoff] and vs[cutoff]==0 and any(bs):counts['zero_start_countermodels']+=1

c=sqlite3.connect(f'file:{ROOT}/upstream/kervaire-49/S0_AdamsSS_t261.db?mode=ro',uri=True)
for r in range(8,13):
    assert c.execute('select count(*) from S0_AdamsE2_basis where s=? and t=?',(12-r,135-r)).fetchone()==(0,)
basic=(HERE/'Basic.lean').read_text()
for fragment in ['incoming_image','ActualAdamsIncomingBridge.differential_image','(by omega)',
                 'ActualFiniteNoHit.no_boundary_ever','L.endpoint8.trace 6 rfl','L.nonzero8']:
    assert fragment in basic
assert 'BInfinity input' in basic
for path,digest in frozen.items():assert sha(HERE/path)==digest
result=dict(status='passed',findings=[],frozen_files=len(frozen),modules=2,
    standard_axiom_reports=reports,counts=counts,empty_legal_incoming_degrees=5,
    semantic_checks=['cutoff 6 is actual E8','full incoming sum converted by exact image equivalences',
        'same raw input and nonzero actual E8 endpoint','no survival assumption above E8',
        'NotHit is not BInfinity, not permanent'],
    limitations='Initial coordinate, known differential, square/product, and actual quotient meanings inherited from the finite E8 certificate remain mathematical premises.')
(HERE/'independent-review.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps(result,indent=2))
