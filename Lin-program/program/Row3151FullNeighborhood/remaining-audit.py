"""Exact static dependency reachability for the five requested remaining events."""
import hashlib
import json
from pathlib import Path

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
source=json.loads((ROOT/'AggregateD5Conditional/source.json').read_text())
dag=json.loads((ROOT/'AggregateD5Conditional/dag.json').read_text())
new={'S0:11,137:d4','S0:15,140:d4','S0:15,140:d5'}
out=[]
for candidate in source['candidates']:
    row=candidate['raw']['event']['inventory_row'];rid=row['staircase_id']
    if rid not in [2696,2697,2852,3151,3992]:continue
    root=candidate['raw']['event']['comparison'];seen=set()
    def visit(key):
        if key in seen:return
        seen.add(key)
        for predecessor in dag['blocks'].get(key,{}).get('predecessors',[]):visit(predecessor)
    visit(root)
    out.append(dict(event=rid,event_page=candidate['raw']['event']['event_page'],root=root,
        closure_size=len(seen),newly_constrained_blocks=sorted(seen&new),raw_target=row['diff'],
        exact_raw_status=row['status'],existing_failure=candidate['reason'],
        statement={2696:'No dependency path to new eta/d4/d5 blocks; NULL d7 target and full d4/d5/d6 source trajectory still missing.',
                   2697:'No dependency path; existing affine two-branch finite d3 event already covers its branch ambiguity.',
                   2852:'No dependency path; NULL d5 target and row3147 target d3/d4 remain separate.',
                   3151:'New eta restricts second outgoing bit. FullNeighborhood now adds missing incoming dimension2 cases and nonzero kernel-image columns.',
                   3992:'No dependency path; existing eight-case finite event remains conditional on row3564 detector and known differential semantics.'}[rid]))
result=dict(scope='Static matrix-comparison predecessor DAG, not all possible product/naturality dependencies.',events=out,
    inputs={str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest() for p in
            [ROOT/'AggregateD5Conditional/source.json',ROOT/'AggregateD5Conditional/dag.json',HERE/'remaining-audit.py']})
(HERE/'remaining-audit.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps(result,indent=2))
