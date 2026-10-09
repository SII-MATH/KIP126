"""Preserve both prior families and every prior mathematical premise."""
import hashlib
import json
from pathlib import Path

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
load=lambda p:json.loads(p.read_text())
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
rows=[]
for label,filename,extra in [('zero','zero-family.json',17),('residual_rebased','residual-family.json',18)]:
    old=load(ROOT/'Fact713Row2431Continuation/branches'/f'{label}.json')
    current=load(HERE/'branches'/f'{label}.json')
    assert all(current['new_comparisons'][key]==block for key,block in old['new_comparisons'].items())
    old_family=load(ROOT/'Fact713Row2431Continuation'/filename)['entries']
    family=load(HERE/filename)['entries']
    assert family[:len(old_family)]==old_family and len(family)==len(old_family)+extra
    uses=[use for block in current['added_to_previous'].values() for use in block['uses']
          if use['kind']=='conditional_row3143_whole_actual_d4_zero']
    assert len(uses)==1 and uses[0]['row']==[3143,'0',None,9000] and uses[0]['page']==4
    assert uses[0]['theorem']=='Fact713Row3143Continuation.ActualRule.whole_d4_zero'
    target=current['added_to_previous']['S0:21,143:d4']['wire']
    assert target['incoming']==[False] and target['n']==1
    assert 'S0:17,140:d4' not in current['new_comparisons']
    assert 'S0:20,140:d3' not in current['new_comparisons']
    named=current['added_to_previous']['S0:9,132:d9']['wire']
    assert named==dict(version=1,k=0,m=1,n=0,h=1,outgoing=[],incoming=[],inclusion=[True],projection=[True],up=[],down=[])
    rows.append(dict(branch=label,old_prefix=len(old_family),new_entries=extra,entries=len(family),new_rule=uses[0]))
signature=load(HERE/'conditional_signature.json')
old_path=ROOT/'Fact713Row2431Continuation/conditional_signature.json'
assert signature['prior_signature_sha256']==sha(old_path)
old_sig=load(old_path)
for field in ['named_actual_E3_cycle_representatives','requirements','new_named_rules','new_whole_rule']:
    assert signature[field]==old_sig[field]
out=dict(status='exact_prior_families_and_all_prior_math_inputs_preserved',branches=rows,
         source_d4_comparison_not_asserted=True,new_actual_rule_is_proved_in_Lean=True,
         actual_E10_requires_neighbor_meanings=True,
         sha256={str(p.relative_to(ROOT)):sha(p) for p in [Path(__file__),old_path,HERE/'conditional_signature.json']})
(HERE/'provenance-audit.json').write_text(json.dumps(out,indent=2)+'\n')
print(json.dumps(out,indent=2))
