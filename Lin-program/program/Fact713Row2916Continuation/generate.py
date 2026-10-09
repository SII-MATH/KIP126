"""Continue the four frozen families with the whole row2916 d4 rule."""
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
source = (ROOT / 'Row3136FamilyBranches/generate.py').read_text()
source = source.replace("ROOT/'Fact713Row2431Continuation/branches'/f'{label}.json'",
                        "ROOT/'Fact713FourBranchContinuation/branches'/f'{case_name}.json'")
needle = "    ns['cache'].update(previous_branch)\n"
replacement = needle + '''    other_branch=json.loads((ROOT/'Fact713Row3143Continuation/branches'/f'{label}.json').read_text())['new_comparisons']
    assert all(previous_branch[key]==value for key,value in other_branch.items() if key in previous_branch)
    ns['cache'].update(other_branch)
'''
assert source.count(needle) == 1
source = source.replace(needle, replacement)
needle = '    def matrix(obj, s, t, page, uses):\n'
replacement = needle + '''        if (obj,s,t,page)==('S0',13,137,4):
            assert ns['selected'](obj,s,t,page)==[[2916,'1',None,9000]]
            assert ns['dim'](obj,s,t,page)==1
            target=ns['dim'](obj,17,140,page)
            uses.append(dict(object=obj,source=[s,t],page=page,row=[2916,'1',None,9000],
                kind='conditional_row2916_whole_actual_d4_zero',target_predecessor='S0:17,140:d3',
                theorem='Row2916D4Search.Actual.whole_sphere_d4_zero',
                coordinate_binding='Row2916D4Search.Binding.whole_column',
                premise='Complete actual Ceta top-cell d2 meanings, whole product equations with exact coefficient name, full Ceta incoming d3 and sphere d3 meanings, actual quotient transition, local zero laws and d4 naturality.'))
            return [[0] for _ in range(target)]
        if (obj,s,t,page)==('S0',17,140,4):
            assert ns['selected'](obj,s,t,page)==[[3143,'0',None,9000]]
            assert ns['dim'](obj,s,t,page)==1
            target=ns['dim'](obj,21,143,page)
            uses.append(dict(object=obj,source=[s,t],page=page,row=[3143,'0',None,9000],
                kind='conditional_row3143_whole_actual_d4_zero',target_predecessor='S0:21,143:d3',
                theorem='Fact713Row3143Continuation.ActualRule.whole_d4_zero',
                coordinate_binding='Fact713Row3143Continuation.ActualRule.actual_next_unique',
                premise='Complete actual E3 source homology and full naming bridge, d0/right/source product meanings, known nonzero actual ss2149 d4 in constructed E4 coordinates, actual product quotient transition, local zero laws.'))
            return [[0] for _ in range(target)]
'''
assert source.count(needle) == 1
source = source.replace(needle, replacement)
source = source.replace("status='u_zero_four_conditional_finite_cases'",
                        "status='row2916_d4_four_conditional_finite_cases'")
source = source.replace("report = dict(case_name=case_name,",
    "report = dict(inherited_row3136_selection_changes=json.loads((ROOT/'Row3136FamilyBranches/branches'/f'{case_name}.json').read_text())['selection_changes'],case_name=case_name,")
exec(compile(source, str(HERE / 'generate.py'), 'exec'), {'__file__': str(HERE / 'generate.py')})
