"""Continue both full families with the proved named row2693 d5 zero."""
from pathlib import Path

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
wrapper=(ROOT/'Fact713H2Continuation/generate.py').read_text().rsplit('exec(compile(source,',1)[0]
context={'__file__':str(HERE/'generate.py')}
exec(compile(wrapper,str(HERE/'generate.py'),'exec'),context)
source=context['source']
source=source.replace("ROOT/'Fact713SquareContinuation/branches'/f'{parent_case}.json'",
                      "ROOT/'Fact713H2Continuation/branches'/f'{parent_case}.json'")
needle='    def matrix(obj, s, t, page, uses):\n'
replacement=needle+'''        if (obj,s,t,page)==('S0',10,134,5):
            selected=ns['selected'](obj,s,t,page)
            assert selected==[[2693,'4',None,9000],[2694,'3','1',9995]]
            assert ns['dim'](obj,s,t,page)==2
            target=ns['dim'](obj,15,138,page)
            assert target==1
            columns=[]
            for rid,rawbase,diff,level in selected:
                row=[rid,rawbase,diff,level]
                if rid==2693:
                    uses.append(dict(object=obj,source=[s,t],page=page,row=row,
                        kind='conditional_row2693_named_h1_product_d5_zero',
                        target_predecessor='S0:15,138:d4',
                        theorem='Row2693D5Search.Actual.Input.named_d5_zero',
                        coordinate_binding='Original E2 raw coordinate4 projects through exact d2/d3/d4 comparisons to E5 coordinate0 in the whole 2-dimensional source.',
                        premise='Complete actual source/right d2/d3/d4 meanings, full E2 h1 multiplication, actual quotient-product transitions, low h0 detectors deriving h1d3/d4, full right d5 meaning and correction annihilator. Neither desired d5 nor h1d5 is supplied. The other source column retains its exact stored nonzero event.'))
                    columns.append([0]*target)
                elif level==10000-page and diff is not None:
                    image=ns['bits'](diff,len(ns['e2'](obj,15,138)))
                    columns.append(ns['project'](obj,15,138,page,image))
                    uses.append(dict(object=obj,source=[s,t],page=page,row=row,
                        kind='stored_event',target_predecessor='S0:15,138:d4'))
                else:raise ValueError(f'unhandled row2693 whole-source column {row}')
            return ns['rows'](columns,target)
'''
assert source.count(needle)==1
source=source.replace(needle,replacement)
source=source.replace('for s,t,page in [(23,142,3),(26,144,3)]:',
 'for s,t,page in [(23,142,3),(26,144,3),(5,130,2),(5,130,3),(5,130,4),(10,134,5)]:')
needle='    new={k:b for k,b in ns[\'cache\'].items() if k not in initial_keys}\n'
replacement='''    # Cached helpers are not necessarily exported family entries. Close
    # the emitted family rather than merely checking the in-memory cache.
    prior_family=json.loads((ROOT/'Fact713H2Continuation'/f'{parent_case}-family.json').read_text())['entries']
    emitted={f"{e['key']['object']}:{e['key']['s']},{e['key']['t']}:d{e['key']['page']}" for e in prior_family}
    emitted.update(k for k in ns['cache'] if k not in initial_keys)
    before_closure=set(emitted)
    while True:
        missing=set()
        for key in list(emitted):
            block=ns['cache'][key]
            r=block['page']
            if r<=2:continue
            s,t=block['center']
            for ps,pt in [(s,t),(s-r,t-r+1),(s+r,t+r-1)]:
                key=f'S0:{ps},{pt}:d{r-1}'
                if key not in emitted:missing.add((ps,pt,r-1))
        if not missing:break
        for s,t,r in sorted(missing):
            ensure('S0',s,t,r)
            emitted.add(f'S0:{s},{t}:d{r}')
    predecessor_closure_added=sorted(emitted-before_closure)
    new={k:b for k,b in ns['cache'].items() if k not in initial_keys or k in predecessor_closure_added}
'''
assert source.count(needle)==1
source=source.replace(needle,replacement)
source=source.replace('extra_requested=extra_requested,previous_branch_preserved=',
 'extra_requested=extra_requested,predecessor_closure_added=predecessor_closure_added,previous_branch_preserved=')
source=source.replace("status='row3147_h2_product_two_conditional_finite_cases'",
                      "status='row2693_h1_product_two_conditional_finite_cases'")
exec(compile(source,str(HERE/'generate.py'),'exec'),{'__file__':str(HERE/'generate.py')})
