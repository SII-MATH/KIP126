"""Explore both actual row2574 boundary choices over both prior finite branches."""
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
wrapper = (ROOT / 'Fact713Row3005Continuation/generate.py').read_text().rsplit('exec(compile(source,', 1)[0]
context = {'__file__': str(HERE / 'generate.py')}
exec(compile(wrapper, str(HERE / 'generate.py'), 'exec'), context)
source = context['source']
source = source.replace("ROOT/'Fact713Row2693Continuation/branches'/f'{parent_case}.json'",
                        "ROOT/'Fact713Row3005Continuation/branches'/f'{parent_case}.json'")
source = source.replace("ROOT/'Fact713Row2693Continuation'/f'{parent_case}-family.json'",
                        "ROOT/'Fact713Row3005Continuation'/f'{parent_case}-family.json'")
needle = "for case_name,parent_case,label,vector,coefficient,b in [('zero_b0','zero_b0','zero',[0,0],0,0),('zero_b1','zero_b1','zero',[0,0],0,1)]:"
replacement = "for case_name,parent_case,label,vector,coefficient,b,row2574bit in [('zero_b0_c0','zero_b0','zero',[0,0],0,0,0),('zero_b0_c1','zero_b0','zero',[0,0],0,0,1),('zero_b1_c0','zero_b1','zero',[0,0],0,1,0),('zero_b1_c1','zero_b1','zero',[0,0],0,1,1)]:"
assert source.count(needle) == 1
source = source.replace(needle, replacement)
needle = "        selected=parent_selected(obj,s,t,page)\n"
replacement = needle + '''        if obj=='S0' and (s,t)==(9,134) and page>=4:
            changed=[row for row in selected if row[0]!=2696]
            if changed!=selected:
                selection_changes.append(dict(object=obj,degree=[s,t],page=page,
                    kind='quotient_by_actual_row2574_boundary',removed_representative=2696,
                    original=selected,chosen=changed,incoming_column=[row2574bit,1,0],
                    relation='E3(raw3) equals coefficient times E3(raw2) modulo the full incoming boundary',
                    warning='This is a quotient basis change; the original later unknown row2696 is retained in provenance and is not asserted zero.'))
            return changed
'''
assert source.count(needle) == 1
source = source.replace(needle, replacement)
needle = '    def matrix(obj, s, t, page, uses):\n'
replacement = needle + '''        if (obj,s,t,page)==('S0',6,132,3):
            selected=ns['selected'](obj,s,t,page)
            assert selected==[[2574,'0',None,9997]]
            assert ns['dim'](obj,s,t,page)==1 and ns['dim'](obj,9,134,page)==3
            uses.append(dict(object=obj,source=[s,t],page=page,row=selected[0],
                kind='conditional_row2574_actual_exhaustive_two_boundary_choices',
                target_predecessor='S0:9,134:d2',coordinates=[row2574bit,1,0],
                theorem='Row2574D3Search.Actual.Input.column',
                whole_theorem='Row2574D3Search.Actual.Input.whole_source',
                coefficient=row2574bit,
                coordinate_binding='Full current E3 coordinates ordered by raw2,raw3,raw1; h2 product forces coordinate1=true and d3-squared forces coordinate2=false.',
                premise='Complete original Fact715Source2574 d2 meanings and recorded product event; whole h2 E2 product and actual quotient product transition; complete current and upper d2 meanings; complete outgoing d3 map. The first coordinate is the actual map value, with both exhaustive choices retained.'))
            return [[row2574bit],[1],[0]]
'''
assert source.count(needle) == 1
source = source.replace(needle, replacement)
source = source.replace('(10,134,5),(14,138,4)]:', '(10,134,5),(14,138,4),(6,132,3),(9,134,3)]:')
source = source.replace('report = dict(parent_case=parent_case,',
                        'report = dict(row2574_coefficient=row2574bit,parent_case=parent_case,')
needle = "    report = dict(row2574_coefficient=row2574bit,"
replacement = '''    # The right inverse is nonunique. Use the already checked producer's
    # witness while preserving all maps, quotient coordinates and dimensions.
    for center,stem in [((6,132),'source3'),((9,134),'current3')]:
        block=new[f'S0:{center[0]},{center[1]}:d3']
        canonical=json.loads((ROOT/'Row2574D3Search/wire'/f'{stem}_{row2574bit}.json').read_text())
        assert all(block['wire'][field]==canonical[field] for field in canonical if field!='down')
        block['wire']=canonical
''' + needle
assert source.count(needle) == 1
source = source.replace(needle, replacement)
source = source.replace("status='row3005_C2_topcell_two_conditional_finite_cases'",
                        "status='row2574_exhaustive_four_conditional_finite_cases'")
exec(compile(source, str(HERE / 'generate.py'), 'exec'), {'__file__': str(HERE / 'generate.py')})
