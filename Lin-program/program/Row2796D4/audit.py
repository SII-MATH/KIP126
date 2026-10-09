"""Audit complete E4 quotient inputs without assigning unknown differentials."""
import hashlib
import json
import sqlite3
import subprocess
from pathlib import Path

p = Path(__file__).resolve().parent
r = p.parent
db = r / 'upstream/kervaire-49/S0_AdamsSS_t261.db'
c = sqlite3.connect(f'file:{db}?mode=ro', uri=True)
degrees, nodes = {}, {}
roots = {'source': (8, 135), 'd4_target': (12, 138),
         'h3': (1, 8), 'generator8': (4, 18),
         'h3_source_product': (9, 143), 'h3_target_product': (13, 146),
         'generator8_source_product': (12, 153),
         'generator8_target_product': (16, 156)}

def visit(s, t, page):
    key = f'S0:{s},{t}:d{page}'
    if key in nodes:
        return
    predecessors = []
    for a, b in [(s-page, t-page+1), (s,t), (s+page,t+page-1)]:
        k = f'S0:{a},{b}'
        degrees[k] = dict(object='S0', degree=[a,b],
            e2=c.execute('select id,mon,d2 from S0_AdamsE2_basis where s=? and t=? order by id',(a,b)).fetchall(),
            staircase=c.execute('select id,base,diff,level from S0_AdamsE2_ss where s=? and t=? order by id',(a,b)).fetchall())
        if page > 2:
            visit(a,b,page-1)
            predecessors.append(f'S0:{a},{b}:d{page-1}')
    nodes[key] = dict(object='S0', center=[s,t], page=page, predecessors=predecessors)

for s,t in roots.values():
    visit(s,t,3)
dag = dict(summary=dict(database_sha256={'S0':hashlib.sha256(db.read_bytes()).hexdigest()}),
           blocks=nodes, degrees=degrees, rows={})
(p/'dag.json').write_text(json.dumps(dag,indent=2)+'\n')
generator = r/'AggregateTwoDetectorConditional/generate.py'
ns = {'__file__':str(p/'generate.py')}
exec(compile(generator.read_text().split('\ncandidates=[]')[0],str(generator),'exec'),ns)
results = {}
for name,(s,t) in roots.items():
    try:
        b = ns['build']('S0',s,t,3)
        results[name] = dict(degree=[s,t],status='complete_conditional_finite_comparison',
            e3_dimension=b['wire']['m'],e4_dimension=b['wire']['h'])
    except ValueError as e:
        results[name] = dict(degree=[s,t],status='blocked',reason=str(e))
for key,node in nodes.items():
    try:
        ns['build']('S0',*node['center'],node['page'])
    except ValueError:
        pass
report = dict(database_sha256=dag['summary']['database_sha256'],
    generator_sha256=hashlib.sha256(generator.read_bytes()).hexdigest(),
    roots=results,complete_comparisons=len(ns['cache']),failures=ns['failures'],
    conditional_uses=[dict(block=k,**u) for k,b in ns['cache'].items()
                      for u in b['uses'] if u['kind'].startswith('conditional')])
(p/'audit.json').write_text(json.dumps(report,indent=2)+'\n')
(p/'comparisons.json').write_text(json.dumps(ns['cache'],indent=2)+'\n')
def evaluate(w, field, m, n, vector):
    return [sum(w[field][i*n+j]*vector[j] for j in range(n)) % 2 for i in range(m)]

products = []
for factor,degree in [('h3',(13,146)),('d0',(16,156))]:
    subprocess.run(['python3',str(p/f'export_{factor}.py')],check=True,stdout=subprocess.DEVNULL)
    columns = [x for x in json.loads((p/f'products-{factor}-provenance.json').read_text())
               if x['source_degree'] == [12,138]]
    target = ns['cache']['S0:12,138:d2']['wire']
    named = evaluate(target,'inclusion',target['m'],target['h'],[1])
    raw = [sum(named[j]*(i in columns[j]['target_coordinates']) for j in range(target['m'])) % 2
           for i in range(len(columns[0]['target_basis_ids']))]
    assert not any(raw)
    products.append(dict(factor=factor,input_degree=[12,138],input_e2_vector=named,
        output_degree=degree,output_e2_vector=raw,
        conclusion='literal_zero_cannot_detect_nonzero_E4_target'))
report['target_product_obstruction'] = products
(p/'audit.json').write_text(json.dumps(report,indent=2)+'\n')
print(json.dumps(results,indent=2))
