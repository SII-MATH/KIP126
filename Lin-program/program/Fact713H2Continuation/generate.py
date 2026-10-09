"""Continue both square families with the named h2-product d3 theorem."""
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
wrapper = (ROOT/'Fact713SquareContinuation/generate.py').read_text().rsplit('exec(compile(source,',1)[0]
context = {'__file__': str(HERE/'generate.py')}
exec(compile(wrapper, str(HERE/'generate.py'), 'exec'), context)
source = context['source']
source = source.replace("ROOT/'Fact713Ctheta4Continuation/branches'/f'{parent_case}.json'",
                        "ROOT/'Fact713SquareContinuation/branches'/f'{parent_case}.json'")
needle = '    def matrix(obj, s, t, page, uses):\n'
replacement = needle + '''        if (obj,s,t,page)==('S0',16,140,3):
            selected=ns['selected'](obj,s,t,page)
            assert selected==[[3146,'1','1',3],[3147,'4',None,9000],[3148,'0','0,1,2',9997]]
            assert ns['dim'](obj,s,t,page)==3
            target=ns['dim'](obj,19,142,page)
            assert target==2
            columns=[]
            for rid,rawbase,diff,level in selected:
                row=[rid,rawbase,diff,level]
                if rid==3147:
                    uses.append(dict(object=obj,source=[s,t],page=page,row=row,
                        kind='conditional_row3147_named_h2_product_d3_zero',
                        target_predecessor='S0:19,142:d2',
                        theorem='Row3147H2Product.Actual.Stage2.named_d3_zero',
                        coordinate_binding='E2 raw coordinate4 projects to E3 coordinate1 in the complete inherited d2 comparison',
                        premise='Complete actual factor/source/product d2 meanings, whole E2 h2-product tensor, actual quotient-product transition, complete empty factor d3 target, and complete right-source d3 prefix meaning in the constructed E3 chart. Other two source columns retain their exact stored events.'))
                    columns.append([0]*target)
                elif level==10000-page and diff is not None:
                    image=ns['bits'](diff,len(ns['e2'](obj,19,142)))
                    columns.append(ns['project'](obj,19,142,page,image))
                    uses.append(dict(object=obj,source=[s,t],page=page,row=row,
                        kind='stored_event',target_predecessor='S0:19,142:d2'))
                elif 2<=level<5000:
                    columns.append([0]*target)
                    uses.append(dict(object=obj,source=[s,t],page=page,row=row,
                        kind='stored_zero_prefix_or_boundary',target_predecessor='S0:19,142:d2'))
                else:
                    raise ValueError(f'unhandled full row3147 source d3 column {row}')
            return ns['rows'](columns,target)
'''
assert source.count(needle)==1
source = source.replace(needle,replacement)
source = source.replace("status='row2684_square_two_conditional_finite_cases'",
                        "status='row3147_h2_product_two_conditional_finite_cases'")
exec(compile(source,str(HERE/'generate.py'),'exec'),{'__file__':str(HERE/'generate.py')})
