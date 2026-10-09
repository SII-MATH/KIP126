"""Continue both Ctheta4 families using the proved whole square d5 rule."""
from pathlib import Path
HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
wrapper=(ROOT/'Fact713Ctheta4Continuation/generate.py').read_text().rsplit('exec(compile(source,',1)[0]
context={'__file__':str(HERE/'generate.py')}
exec(compile(wrapper,str(HERE/'generate.py'),'exec'),context)
source=context['source']
source=source.replace("ROOT/'Fact713Row2907Continuation/branches'/f'{parent_case}.json'", "ROOT/'Fact713Ctheta4Continuation/branches'/f'{parent_case}.json'")
needle='    def matrix(obj, s, t, page, uses):\n'
replacement=needle+'''        if (obj,s,t,page)==('S0',12,134,5):
            assert ns['selected'](obj,s,t,page)==[[2684,'0',None,9000]]
            assert ns['dim'](obj,s,t,page)==1
            target=ns['dim'](obj,17,138,page)
            uses.append(dict(object=obj,source=[s,t],page=page,row=[2684,'0',None,9000],
                kind='conditional_row2684_whole_square_d5_zero',target_predecessor='S0:17,138:d4',
                theorem='Row2684D5Search.Actual.whole_d5_zero',
                coordinate_binding='whole actual E5 differential under arbitrary complete source and target coordinates',
                premise='Complete source d2/d3/d4 meanings, complete factor d2/d3 meanings, full E2 square-product tensor, actual quotient multiplicativity at pages2/3/4, empty factor d4target derived from complete d2 quotient, local zero laws. No factor d4 incoming, factor E5 nonzero or desired d5 value is supplied.'))
            return [[0] for _ in range(target)]
'''
assert source.count(needle)==1
source=source.replace(needle,replacement)
source=source.replace("status='row2994_Ctheta4_two_conditional_finite_cases'", "status='row2684_square_two_conditional_finite_cases'")
exec(compile(source,str(HERE/'generate.py'),'exec'),{'__file__':str(HERE/'generate.py')})
