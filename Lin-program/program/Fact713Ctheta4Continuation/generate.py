"""Preserve both r=0 row2907 families and add the whole Ctheta4 d4 rule."""
from pathlib import Path
HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
wrapper=(ROOT/'Fact713Row2907Continuation/generate.py').read_text().rsplit('exec(compile(source,',1)[0]
context={'__file__':str(HERE/'generate.py')}
exec(compile(wrapper,str(HERE/'generate.py'),'exec'),context)
source=context['source']
needle="for case_name,parent_case,label,vector,coefficient,b in [('zero_b0','zero_a0','zero',[0,0],0,0),('zero_b1','zero_a0','zero',[0,0],0,1),('residual','residual_a0','residual_rebased',[1,0],0,0)]:"
replacement="for case_name,parent_case,label,vector,coefficient,b in [('zero_b0','zero_b0','zero',[0,0],0,0),('zero_b1','zero_b1','zero',[0,0],0,1)]:"
assert source.count(needle)==1
source=source.replace(needle,replacement)
source=source.replace("ROOT/'Fact713Row2916Continuation/branches'/f'{parent_case}.json'", "ROOT/'Fact713Row2907Continuation/branches'/f'{parent_case}.json'")
source=source.replace("ROOT/'Row3136FamilyBranches/branches'/f'{parent_case}.json'", "ROOT/'Row3136FamilyBranches/branches/zero_a0.json'")
needle='    def matrix(obj, s, t, page, uses):\n'
replacement=needle+'''        if (obj,s,t,page)==('S0',17,138,4):
            assert ns['selected'](obj,s,t,page)==[[2994,'0,1,2',None,9000]]
            assert ns['dim'](obj,s,t,page)==1
            target=ns['dim'](obj,21,141,page)
            uses.append(dict(object=obj,source=[s,t],page=page,row=[2994,'0,1,2',None,9000],
                kind='conditional_row2994_whole_Ctheta4_d4_zero',target_predecessor='S0:21,141:d3',
                theorem='Fact713Ctheta4Transport.Actual.whole_d4_zero',
                coordinate_binding='whole actual one-dimensional E4 source; arbitrary complete target coordinates',
                premise='Degree-correct Ctheta4 top-cell shift31, complete d2 and d3 homology meanings, whole map coordinates, same-input Ctheta4 finite d4 cycle, actual quotient transitions and d4 naturality.'))
            return [[0] for _ in range(target)]
'''
assert source.count(needle)==1
source=source.replace(needle,replacement)
source=source.replace("status='row2907_d4_three_conditional_finite_cases'", "status='row2994_Ctheta4_two_conditional_finite_cases'")
exec(compile(source,str(HERE/'generate.py'),'exec'),{'__file__':str(HERE/'generate.py')})
