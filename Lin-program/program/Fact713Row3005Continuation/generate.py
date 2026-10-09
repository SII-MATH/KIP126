"""Extend the complete row2693 families using the actual C2 top-cell d4 theorem."""
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
wrapper = (ROOT / 'Fact713Row2693Continuation/generate.py').read_text().rsplit('exec(compile(source,', 1)[0]
context = {'__file__': str(HERE / 'generate.py')}
exec(compile(wrapper, str(HERE / 'generate.py'), 'exec'), context)
source = context['source']
source = source.replace("ROOT/'Fact713H2Continuation/branches'/f'{parent_case}.json'",
                        "ROOT/'Fact713Row2693Continuation/branches'/f'{parent_case}.json'")
source = source.replace("ROOT/'Fact713H2Continuation'/f'{parent_case}-family.json'",
                        "ROOT/'Fact713Row2693Continuation'/f'{parent_case}-family.json'")
needle = '    def matrix(obj, s, t, page, uses):\n'
replacement = needle + '''        if (obj,s,t,page)==('S0',14,138,4):
            selected=ns['selected'](obj,s,t,page)
            assert selected==[[3005,'2',None,9000]]
            assert ns['dim'](obj,s,t,page)==1
            target=ns['dim'](obj,18,141,page)
            assert target==1
            uses.append(dict(object=obj,source=[s,t],page=page,row=selected[0],
                kind='conditional_row3005_whole_C2_topcell_d4_zero',
                target_predecessor='S0:18,141:d3',
                theorem='Row3005D4Search.Actual.Certificate.whole_zero4',
                coordinate_binding='Complete sphere E2 raw coordinate2 projects to the unique E3 and E4 coordinate; C2 top-cell E2 lift is raw coordinate0.',
                premise='Full actual C2/sphere source and upper-target d2 comparison meanings, full sphere d3 meaning, actual quotient map transitions and d3 naturality, empty complete C2 E2 d4 target, zero laws and d4 naturality. C2 d3 vanishing is reflected from the injective full upper E3 map; no unknown source d3 or desired sphere d4 is supplied.'))
            return [[0]]
'''
assert source.count(needle) == 1
source = source.replace(needle, replacement)
source = source.replace('(5,130,4),(10,134,5)]:', '(5,130,4),(10,134,5),(14,138,4)]:')
needle = "    assert all(k in new and new[k]==b for k,b in previous_branch.items())"
assert source.count(needle) == 1
source = source.replace(needle, "    assert all(k in ns['cache'] and ns['cache'][k]==b for k,b in previous_branch.items())")
needle = "if k not in initial_keys or k in predecessor_closure_added}"
assert source.count(needle) == 1
source = source.replace(needle, "if k not in initial_keys or k in predecessor_closure_added or k in previous_branch}")
source = source.replace("status='row2693_h1_product_two_conditional_finite_cases'",
                        "status='row3005_C2_topcell_two_conditional_finite_cases'")
exec(compile(source, str(HERE / 'generate.py'), 'exec'), {'__file__': str(HERE / 'generate.py')})
