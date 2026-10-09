"""Inspect genuine factor/target data without overriding any unknown columns."""
import hashlib,importlib.util,json,sqlite3
from pathlib import Path
P=Path(__file__).resolve().parent;R=P.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
script=R/'Stem125E4Search/search.py'
outer={'__file__':str(script)}
exec(compile(script.read_text().split('rows=[]')[0],str(script),'exec'),outer)
old=dict(outer['ns']['cache']);outcomes=[]
for s,t in [(4,24),(9,54),(16,96),(20,99),(13,57)]:
    for page in [2,3,4]:
        row={'degree':[s,t],'page':page}
        try:
            b=outer['ensure']('S0',s,t,page)
            row.update(status='complete_finite_comparison',wire=b['wire'],uses=b['uses'])
        except (ValueError,AssertionError,KeyError) as e:
            row.update(status='unresolved',reason=str(e))
        outcomes.append(row)
assert all(outer['ns']['cache'][k]==v for k,v in old.items())
new={k:v for k,v in outer['ns']['cache'].items() if k not in old}
sql=outer['sql'];degrees={}
for s,t in [(4,24),(6,25),(7,26),(8,27),(8,48),(9,54),(11,55),(12,56),(13,57),
            (6,52),(16,96),(19,98),(20,99),(25,150),(29,153)]:
    degrees[f'{s},{t}']={
        'basis':[list(x) for x in sql.execute('SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(s,t))],
        'staircase':[list(x) for x in sql.execute('SELECT id,base,diff,level FROM S0_AdamsE2_ss WHERE s=? AND t=? ORDER BY id',(s,t))]}
for s,t in [(6,25),(7,26),(8,27),(11,55),(12,56),(13,57)]:
    assert degrees[f'{s},{t}']['basis']==[]
tmfdb=R/'upstream/kervaire-49/tmf_AdamsSS_t261.db'
tmf=sqlite3.connect(f'file:{tmfdb}?mode=ro',uri=True)
tmf_target={'basis':[list(x) for x in tmf.execute('SELECT id,mon FROM tmf_AdamsE2_basis WHERE s=29 AND t=153 ORDER BY id')],
    'staircase':[list(x) for x in tmf.execute('SELECT id,base,diff,level FROM tmf_AdamsE2_ss WHERE s=29 AND t=153 ORDER BY id')]}
assert tmf_target['staircase']==[[5718,'0','0',2],[5719,'1','0',9998]]
report={'status':'factor_cycle_route_conditional', 'outcomes':outcomes,'new_blocks':new,
    'degrees':degrees,'all_requested_degree_data':outer['ns']['dag']['degrees'],
    'requested':outer['requested'],'tmf_target':tmf_target,
    'findings':[
      'g has complete d2/d3/d4 finite comparisons with zero codomains.',
      'Delta h1g has empty E2 outgoing codomains at d2/d3/d4; actual zero-space propagation suffices for outgoing cycle.',
      'Delta h1g complete E4 comparison blocked by unknown incoming row279 d3; do not assume nonboundary.',
      'g^4 direct prefix blocked by row1125 d3 and incoming row1060; these are not zeroed.',
      'tmf outgoing target has E2 dimension2 but both staircase rows die at d2; finite E3/E4 target zero precludes injective detection of the one-dimensional sphere target.',
      'A true characteristic-two commutative Leibniz differential annihilates g^4; combining with Delta target zero and actual product-name transport gives named d4 cycle.'],
    'input_sha256':{str(p.relative_to(R)):sha(p) for p in [Path(__file__),script,
        R/'AggregateD5Conditional/source.json',R/'AggregateD5Conditional/generate.py',
        R/'upstream/kervaire-49/S0_AdamsSS_t261.db',tmfdb]}}
(P/'search.json').write_text(json.dumps(report,indent=2,sort_keys=True)+'\n')
print('new complete blocks',len(new),'outcomes',[(x['degree'],x['page'],x['status']) for x in outcomes])
