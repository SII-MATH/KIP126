"""Continue both existing families with named row2916 and row3135 d3 theorems."""
import hashlib
import itertools
import json
import subprocess
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
BASE = ROOT/'Fact713DC2h6Source/refined.json'
base = json.loads(BASE.read_text())
baseline = base['comparisons'] | base['successor_closure']
graph = json.loads((ROOT/'Fact713E12Search/search.json').read_text())['graph']
SCRIPT = ROOT/'Fact713DC2h6Source/refine.py'
reports = []
for label, vector in [('zero', [0, 0]), ('residual_rebased', [1, 0])]:
    context = {'__file__': str(SCRIPT)}
    exec(compile(SCRIPT.read_text().split('\nresults={}')[0], str(SCRIPT), 'exec'), context)
    ns, ensure = context['ns'], context['ensure']
    ns['cache'].update(baseline)
    ns['failures'].clear()
    initial_keys = set(ns['cache'])
    previous_branch=json.loads((ROOT/'Fact721FirstD4Continuation/branches'/f'{label}.json').read_text())['new_comparisons']
    ns['cache'].update(previous_branch)
    previous = ns['matrix']
    original_selected = ns['selected']
    if label == 'residual_rebased':
        def selected(obj, s, t, page):
            rows = original_selected(obj, s, t, page)
            if obj == 'S0' and page >= 4 and (s, t) in [(17, 138), (20, 140)]:
                remove = 2994 if s == 17 else 3135
                return [row for row in rows if row[0] != remove]
            return rows
        ns['selected'] = selected

    attempted_new_rules=[]
    def matrix(obj, s, t, page, uses):
        if obj=='S0' and page==3 and (s,t) in [(13,137),(20,140)]:
            selected=ns['selected'](obj,s,t,page)
            target=ns['dim'](obj,s+page,t+page-1,page)
            columns=[]
            for rid,rawbase,diff,level in selected:
                row=[rid,rawbase,diff,level]
                if rid in [2916,3135]:
                    assert row==([2916,'1',None,9000] if rid==2916 else [3135,'1',None,9000])
                    use=dict(object=obj,source=[s,t],page=page,row=row,
                        kind='conditional_named_actual_d3_theorem',target_predecessor=f'S0:{s+3},{t+2}:d2',
                        theorem=('Fact713Row2916Search.Actual.actual_row2916_d3_zero' if rid==2916 else
                            'Row3135H0Leibniz.Actual.actual_row3135_d3_zero'),
                        coordinate_binding=('Fact713Row2916Search.CoordinateBridge.actual_staircase_column' if rid==2916 else
                            'source quotient namedSource=E2 coordinate1; exact actual product source naming'),
                        premise=('Complete d2 actual meanings, current maps, actual quotient transitions, C2h5 d3 naturality, named derived source coordinate1.' if rid==2916 else
                            'Complete actual product/quotient meanings, named h0 and right/source classes, known nonzero right differential from staircase3066 to E2basis3236.'))
                    uses.append(use);attempted_new_rules.append(use)
                    columns.append([0]*target)
                elif level==10000-page and diff is not None:
                    image=ns['bits'](diff,len(ns['e2'](obj,s+3,t+2)))
                    columns.append(ns['project'](obj,s+3,t+2,page,image))
                    uses.append(dict(object=obj,source=[s,t],page=page,row=row,kind='stored_event',target_predecessor=f'S0:{s+3},{t+2}:d2'))
                elif 2<=level<5000 or 9000<level<10000-page:
                    columns.append([0]*target)
                    uses.append(dict(object=obj,source=[s,t],page=page,row=row,kind='stored_zero_prefix_or_boundary',target_predecessor=f'S0:{s+3},{t+2}:d2'))
                elif target==0:
                    columns.append([])
                    uses.append(dict(object=obj,source=[s,t],page=page,row=row,kind='checked_zero_codomain',target_predecessor=f'S0:{s+3},{t+2}:d2'))
                else:
                    raise ValueError(f'unknown S0:{s},{t}:d3:row{rid}; target dimension {target}; earlier named columns retained only as conditional uses')
            assert len(columns)==ns['dim'](obj,s,t,page)
            return ns['rows'](columns,target)

        if (obj,s,t,page)==('S0',11,133,4):
            assert ns['selected'](obj,s,t,page)==[[2622,'1',None,9000]]
            assert ns['dim'](obj,s,t,page)==1
            target=ns['dim'](obj,15,136,page)
            uses.append(dict(object=obj,source=[s,t],page=page,row=[2622,'1',None,9000],
                kind='conditional_row2622_d4_whole_actual_C2h6_naturality',target_predecessor='S0:15,136:d3',
                theorem='Fact721FirstD4Search.Actual.actual_row2622_d4_zero',
                coordinate_binding='whole actual map; no named source binding required',
                premise='Complete actual E3 homology meanings, actual current maps and quotient transitions, full target injection and d4 naturality.'))
            return [[0] for _ in range(target)]
        if (obj,s,t,page)==('S0',18,141,3):
            assert ns['selected'](obj,s,t,page)==[[3247,'0,1',None,9000]]
            assert ns['dim'](obj,s,t,page)==1
            target=ns['dim'](obj,21,143,page)
            uses.append(dict(object=obj,source=[s,t],page=page,row=[3247,'0,1',None,9000],
                kind='conditional_actual_E3_cycle_representatives',target_predecessor='S0:21,143:d2',
                theorem='Fact713Row3247Boundaries.Actual.row3247_d3_zero',
                coordinate_binding='Fact713Row3247Source.Binding.raw_named',
                required_actual_inputs=['Cnu P-squared product E3 cycle representative named by row1183',
                    'Cnu h0 product E3 cycle representative named by row5286',
                    'complete actual map, product, quotient meanings and factorization meanings'],
                provenance_only=['row1078 d4 targets row1183','row4536 d7 targets row5286'],
                warning='The two named E3 cycles are explicit mathematical assumptions; later boundary equations do not establish them.'))
            return [[0] for _ in range(target)]
        if (obj,s,t,page)==('S0',12,134,4):
            assert ns['selected'](obj,s,t,page)==[[2684,'0',None,9000]]
            assert ns['dim'](obj,s,t,page)==1
            target=ns['dim'](obj,16,137,page)
            uses.append(dict(object=obj,source=[s,t],page=page,row=[2684,'0',None,9000],
                kind='conditional_row2684_d4_actual_C2h5_naturality',target_predecessor='S0:16,137:d3',
                theorem='Fact713D4SourceSearch.Assembly.actual_d4_zero',
                coordinate_binding='Fact713D4SourceSearch.CoordinateBridge.actual_next_unique',
                premise='Complete actual E3 homology meanings, row2773 d3 incoming forcing, actual map quotient transitions and d4 naturality.'))
            return [[0] for _ in range(target)]
        if (obj,s,t,page)==('S0',13,135,4):
            assert ns['selected'](obj,s,t,page)==[[2773,'1',None,9000]]
            assert ns['dim'](obj,s,t,page)==1
            target=ns['dim'](obj,17,138,page)
            uses.append(dict(object=obj,source=[s,t],page=page,row=[2773,'1',None,9000],
                kind='conditional_row2773_d4_actual_leibniz',target_predecessor='S0:17,138:d3',
                theorem='Row2773D4Leibniz.Actual.actual_row2773_d4_zero',
                coordinate_binding='Row2773D4Leibniz.CoordinateBridge.actual_next_unique',
                premise='E3 product meanings, actual full homology multiplicativity and eta d3 derivation.'))
            return [[0] for _ in range(target)]
        if (obj, s, t, page) != ('S0', 17, 138, 3):
            return previous(obj, s, t, page, uses)
        assert ns['selected'](obj, s, t, page) == [[2994, '0,1,2', None, 9000]]
        assert ns['dim'](obj, s, t, page) == 1 and ns['dim'](obj, 20, 140, page) == 2
        uses.append(dict(object=obj, source=[s, t], page=page, row=[2994, '0,1,2', None, 9000],
            kind='explicit_two_candidate_branch', branch=label, coordinates=vector,
            target_predecessor='S0:20,140:d2',
            premise='One case of actual_staircase_candidates, not an unconditional differential value.'))
        return [[bit] for bit in vector]

    ns['matrix'] = matrix
    results = {}
    for key, node in sorted(graph.items(), key=lambda pair: (pair[1]['page'], pair[1]['center'])):
        try:
            block = ensure('S0', *node['center'], node['page'])
            result = dict(status='finite_comparison_available',
                          dimensions={f: block['wire'][f] for f in ['k', 'm', 'n', 'h']})
        except (ValueError, AssertionError, KeyError) as error:
            result = dict(status='unresolved', first_failure=str(error))
        result['unresolved_predecessors'] = [k for k in node['predecessors'] if results[k]['status'] == 'unresolved']
        results[key] = result
    assert all(ns['cache'][k] == b for k, b in baseline.items())
    new = {k: b for k, b in ns['cache'].items() if k not in initial_keys}
    source = 'S0:17,138:d3'
    # This exporter checks the complex directly, without trusting staircase selection.
    incoming = ns['matrix']('S0', 14, 136, 3, [])
    proc = subprocess.run([str(ROOT/'PageTransitionCertificates/page-transition-export'), '2', '1',
        str(ns['dim']('S0', 14, 136, 3)), ''.join(map(str, vector)),
        ''.join(str(x) for row in incoming for x in row) or '-'], capture_output=True, text=True)
    assert proc.returncode == 0, proc.stderr
    direct = json.loads(proc.stdout)
    chosen = ns['selected']('S0', 17, 138, 4)
    trajectory, v = [], [1, 1]
    for page in range(2, 12):
        key = f'S0:9,132:d{page}'
        if key not in ns['cache']:
            trajectory.append(dict(page=page, status='unresolved', reason=results[key]['first_failure']))
            break
        w = ns['cache'][key]['wire']
        ev = lambda a, m, n, x: [sum(a[i*n+j]*x[j] for j in range(n)) % 2 for i in range(m)]
        outgoing = ev(w['outgoing'], w['k'], w['m'], v)
        boundaries = {tuple(ev(w['incoming'], w['m'], w['n'], x)) for x in itertools.product([0,1], repeat=w['n'])}
        nextv = ev(w['projection'], w['h'], w['m'], v)
        trajectory.append(dict(page=page, vector=v, outgoing=outgoing, is_boundary=tuple(v) in boundaries, next=nextv))
        v = nextv
    previous_branch=json.loads((ROOT/'Fact721FirstD4Continuation/branches'/f'{label}.json').read_text())['new_comparisons']
    assert all(k in new and new[k]['wire']==b['wire'] for k,b in previous_branch.items())
    added={k:b for k,b in new.items() if k not in previous_branch}
    extra_requested={}
    for page in range(2, 7):
        for s,t in [(11,133),(16,137),(6,129)]:
            key=f'S0:{s},{t}:d{page}'
            try:
                block=ensure('S0',s,t,page)
                extra_requested[key]=dict(status='complete',wire=block['wire'],uses=block['uses'])
            except (ValueError,AssertionError,KeyError) as error:
                extra_requested[key]=dict(status='unresolved',first_failure=str(error))
    report = dict(attempted_new_rules=attempted_new_rules,extra_requested=extra_requested,previous_branch_preserved=len(previous_branch),added_to_previous=added,branch=label, assumed_staircase_d3=vector, baseline_preserved=len(baseline),
        changed_selection_rows=([2994,3135] if label == 'residual_rebased' else []),
        new_comparisons=new, graph_available=sum(k in ns['cache'] for k in graph),
        graph_unresolved=sum(k not in ns['cache'] for k in graph),
        source_direct_comparison=direct, source_next_selected_raw=chosen,
        source_selection_compatible=len(chosen) == direct['h'], source_result=results[source],
        roots=[dict(key=f'S0:9,132:d{page}', **results[f'S0:9,132:d{page}']) for page in range(2,12)],
        named_trajectory=trajectory,
        scope='Conditional finite case split requiring named actual E3 cycle representatives. A staircase selection mismatch is not a contradiction from topology; '
              'raw level9000 does not itself prove next-page survival.')
    (HERE/'branches').mkdir(exist_ok=True)
    (HERE/'branches'/f'{label}.json').write_text(json.dumps(report, indent=2)+'\n')
    reports.append({k:v for k,v in report.items() if k not in ['new_comparisons', 'roots', 'added_to_previous']})
summary = dict(status='conditional_row2916_row3135_d3_two_finite_branches', branches=reports,
    sha256={str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest() for p in [BASE,SCRIPT,Path(__file__)]})
(HERE/'branches'/'summary.json').write_text(json.dumps(summary, indent=2)+'\n')
print(json.dumps(reports, indent=2))
