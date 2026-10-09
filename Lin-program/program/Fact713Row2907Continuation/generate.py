"""Continue three actual d4 candidates in the inherited staircase coordinates."""
from pathlib import Path
HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
wrapper=(ROOT/'Fact713Row2916Continuation/generate.py').read_text().split('exec(compile(source,')[0]
context={'__file__':str(HERE/'generate.py')}
exec(compile(wrapper,str(HERE/'generate.py'),'exec'),context)
source=context['source']
source=source.replace("ROOT/'Fact713FourBranchContinuation/branches'/f'{case_name}.json'", "ROOT/'Fact713Row2916Continuation/branches'/f'{parent_case}.json'")
needle="for case_name, label, vector, coefficient in [('zero_a0','zero',[0,0],0),('zero_a1','zero',[0,0],1),('residual_a0','residual_rebased',[1,0],0),('residual_a1','residual_rebased',[1,0],1)]:"
replacement="for case_name,parent_case,label,vector,coefficient,b in [('zero_b0','zero_a0','zero',[0,0],0,0),('zero_b1','zero_a0','zero',[0,0],0,1),('residual','residual_a0','residual_rebased',[1,0],0,0)]:"
assert source.count(needle)==1
source=source.replace(needle,replacement)
source=source.replace("ROOT/'Row3136FamilyBranches/branches'/f'{case_name}.json'", "ROOT/'Row3136FamilyBranches/branches'/f'{parent_case}.json'")
needle="        selected=parent_selected(obj,s,t,page)\n"
replacement=needle+'''        if obj=='S0' and (s,t)==(20,140) and page>=5:
            changed=[row for row in selected if row[0]!=3136]
            if changed!=selected:
                selection_changes.append(dict(object=obj,degree=[s,t],page=page,removed=3136,
                    kind='rebase_after_derived_row2907_nonzero_d4',old=selected,new=changed,
                    canonical_column=([1,b] if label=='zero' else [1]),
                    staircase_column=([b,1] if label=='zero' else [1]),
                    warning='Raw target NULL remains stored; this conditional quotient uses the proved whole d4 column and keeps row3135 as representative when present.'))
            return changed
'''
assert source.count(needle)==1
source=source.replace(needle,replacement)
needle='    def matrix(obj, s, t, page, uses):\n'
replacement=needle+'''        if (obj,s,t,page)==('S0',16,137,4):
            assert ns['selected'](obj,s,t,page)==[[2907,'1',None,9996]]
            assert ns['dim'](obj,s,t,page)==1
            target=ns['dim'](obj,20,140,page)
            assert target==(2 if label=='zero' else 1)
            column=[b,1] if label=='zero' else [1]
            uses.append(dict(object=obj,source=[s,t],page=page,row=[2907,'1',None,9996],
                kind='conditional_row2907_actual_whole_d4_candidate',
                target_predecessor='S0:20,140:d3',canonical_column=([1,b] if label=='zero' else [1]),
                staircase_column=column,remaining_coefficient=(b if label=='zero' else None),
                theorem=('Row2907D4Candidates.Actual.whole_column' if label=='zero' else
                    'Row2907TargetProduct.Branches.residual_whole_d4'),
                coordinate_binding='Fact713Row2907Continuation.Actual.whole_column_in_staircase',
                premise='Complete same-input product witness, known actual product d4, whole target d3 and E3 product meanings, actual quotient-product transitions; canonical-to-staircase full quotient bridge.'))
            return [[bit] for bit in column]
'''
assert source.count(needle)==1
source=source.replace(needle,replacement)
source=source.replace("report = dict(inherited_row3136_selection_changes=", "report = dict(parent_case=parent_case,row2907_coefficient=(b if label=='zero' else None),inherited_row3136_selection_changes=")
source=source.replace("status='row2916_d4_four_conditional_finite_cases'", "status='row2907_d4_three_conditional_finite_cases'")
exec(compile(source,str(HERE/'generate.py'),'exec'),{'__file__':str(HERE/'generate.py')})
