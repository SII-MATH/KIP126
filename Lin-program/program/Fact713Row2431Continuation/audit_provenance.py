"""Check exact old families and the single new whole d3 rule."""
import hashlib
import json
from pathlib import Path
HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
load=lambda p:json.loads(p.read_text())
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
rows=[]
for label,file in [('zero','zero-family.json'),('residual_rebased','residual-family.json')]:
    old=load(ROOT/'Fact713NextD3Continuation/branches'/f'{label}.json')
    current=load(HERE/'branches'/f'{label}.json')
    assert all(current['new_comparisons'][k]==v for k,v in old['new_comparisons'].items())
    old_family=load(ROOT/'Fact713NextD3Continuation'/file)['entries']
    family=load(HERE/file)['entries']
    assert family[:len(old_family)]==old_family and len(family)==len(old_family)+6
    uses=[use for block in current['added_to_previous'].values() for use in block['uses']
          if use['kind'].startswith('conditional_row2431')]
    assert len(uses)==1 and uses[0]['row']==[2431,'1',None,9000] and uses[0]['page']==3
    assert uses[0]['theorem']=='Fact713Row2431Search.Actual.actual_row2431_whole_d3_zero'
    assert 'S0:20,140:d3' not in current['new_comparisons']
    assert all(use['row'][0]!=3136 for use in current['attempted_new_rules'])
    rows.append(dict(branch=label,old_prefix=len(old_family),entries=len(family),new_rule=uses[0]))
sig=load(HERE/'conditional_signature.json')
old_sig=ROOT/'Fact713NextD3Continuation/conditional_signature.json'
assert sig['prior_signature_sha256']==sha(old_sig)
for field in ['named_actual_E3_cycle_representatives','requirements','new_named_rules']:
    assert sig[field]==load(old_sig)[field]
result=dict(status='exact_prior_families_and_single_new_whole_rule_checked',branches=rows,
    prior_named_actual_inputs_preserved=True,unknown_row3136_preserved=True,
    sha256={str(p.relative_to(ROOT)):sha(p) for p in [Path(__file__),HERE/'conditional_signature.json',old_sig]})
(HERE/'provenance-audit.json').write_text(json.dumps(result,indent=2)+'\n')
print('Both prior families exact; only whole row2431 d3 added; row3136 remains unknown')
