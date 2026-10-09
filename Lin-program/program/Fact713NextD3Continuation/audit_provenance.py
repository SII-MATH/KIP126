"""Check exact prior family/provenance and distinguish attempted partial rules."""
import hashlib
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
load = lambda p: json.loads(p.read_text())
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
records=[]
for label,filename in [('zero','zero-family.json'),('residual_rebased','residual-family.json')]:
    old = load(ROOT/'Fact721FirstD4Continuation/branches'/f'{label}.json')
    current = load(HERE/'branches'/f'{label}.json')
    assert all(current['new_comparisons'][k]==v for k,v in old['new_comparisons'].items())
    old_family=load(ROOT/'Fact721FirstD4Continuation'/filename)['entries']
    family=load(HERE/filename)['entries']
    assert family[:len(old_family)]==old_family and len(family)==len(old_family)+13
    assert 'S0:13,137:d3' in current['added_to_previous']
    assert 'S0:20,140:d3' not in current['new_comparisons']
    complete_uses=[use for block in current['added_to_previous'].values() for use in block['uses']
                   if use['kind']=='conditional_named_actual_d3_theorem']
    assert len(complete_uses)==2 and all(use['row']==[2916,'1',None,9000] for use in complete_uses)
    attempted=current['attempted_new_rules']
    assert any(use['row']==[3135,'1',None,9000] for use in attempted)
    assert all(use['row'][0] in [2916,3135] for use in attempted)
    assert not any(use['row'][0]==3136 for use in attempted)
    assert 'row3136' in current['extra_requested']['S0:11,133:d5']['first_failure']
    records.append(dict(branch=label,prior_prefix=len(old_family),full_family=len(family),
                        added_comparisons=13,complete_new_rule_uses=complete_uses,
                        partial_rule_attempts=attempted))
signature=load(HERE/'conditional_signature.json')
old_sig=ROOT/'Fact721FirstD4Continuation/conditional_signature.json'
assert signature['prior_signature_sha256']==sha(old_sig)
assert signature['named_actual_E3_cycle_representatives']==load(old_sig)['named_actual_E3_cycle_representatives']
assert signature['requirements']==load(old_sig)['requirements']
result=dict(status='prior_families_exact_and_partial_row3135_rule_not_promoted',branches=records,
            prior_actual_cycle_inputs_preserved=True,unknown_row3136_retained=True,
            sha256={str(p.relative_to(ROOT)):sha(p) for p in [Path(__file__),HERE/'conditional_signature.json',old_sig]})
(HERE/'provenance-audit.json').write_text(json.dumps(result,indent=2)+'\n')
print('Both prior families/provenance exact; only complete row2916 rules promoted')
print('Row3135 named rule retained separately; row3136 unknown blocks its full comparison')
