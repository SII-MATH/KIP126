"""Complete earlier neighborhoods for the d6 and d7 targets."""
import hashlib
import importlib.util
import json
from pathlib import Path
import sqlite3
import subprocess

HERE=Path(__file__).resolve().parent;ROOT=HERE.parent
spec=importlib.util.spec_from_file_location('helper',ROOT/'Row3147MapSearch/search_lifted.py')
helper=importlib.util.module_from_spec(spec);spec.loader.exec_module(helper)
database=ROOT/'upstream/kervaire-49/S0_AdamsSS_t261.db'
c=sqlite3.connect(f'file:{database}?mode=ro',uri=True);metadata=helper.metadata(c)
wire=HERE/'wire';wire.mkdir(exist_ok=True)
canonical=lambda x:json.dumps(x,sort_keys=True,separators=(',',':'))+'\n'
names={'d6target2':(18,139),'d6incoming2':(15,137),'d6outgoing2':(21,141),'d7target2':(19,140)}
blocks={}
for name,d in names.items():
    b=helper.comparison(c,'S0',*d,metadata);b['degree']=d
    b['staircase']=list(c.execute('select id,base,diff,level from S0_AdamsE2_ss where s=? and t=? order by id',d))
    blocks[name]=b;(wire/f'{name}.json').write_text(canonical(b['wire']))
def ev(a,m,n,v):return [sum(a[i*n+j]*v[j] for j in range(n))%2 for i in range(m)]
def bits(raw,n):
    assert raw is not None
    ids=list(map(int,raw.split(','))) if raw else []
    return [int(i in ids) for i in range(n)]
def solve(cols,y):
    for x in __import__('itertools').product((0,1),repeat=len(cols)):
        if [sum(x[j]*cols[j][i] for j in range(len(cols)))%2 for i in range(len(y))]==y:return x
    raise ValueError('incomplete representative span')
def next_matrix(source,target):
    sw,tw=blocks[source]['wire'],blocks[target]['wire']
    selected=[x for x in blocks[source]['staircase'] if 3<=x[3]<5000 or 5000<=x[3]<=9997]
    xs=[ev(sw['projection'],sw['h'],sw['m'],bits(x[1],sw['m'])) for x in selected]
    ys=[]
    for rid,base,diff,level in selected:
        if level==9997:raw=bits(diff,tw['m'])
        elif level<5000:raw=[0]*tw['m']
        else:raise ValueError(f'unproved prefix {rid}/{level}')
        ys.append(ev(tw['projection'],tw['h'],tw['m'],raw))
    cols=[]
    for j in range(sw['h']):
        v=solve(xs,[int(i==j) for i in range(sw['h'])])
        cols.append([sum(v[l]*ys[l][i] for l in range(len(xs)))%2 for i in range(tw['h'])])
    return [col[i] for i in range(tw['h']) for col in cols],dict(rows=selected,source_coordinates=xs,target_coordinates=ys)
out,outprov=next_matrix('d6target2','d6outgoing2');inc,incprov=next_matrix('d6incoming2','d6target2')
k,m,n=(blocks[name]['wire']['h'] for name in ['d6outgoing2','d6target2','d6incoming2'])
run=subprocess.run([str(ROOT/'PageTransitionCertificates/page-transition-export'),str(k),str(m),str(n),
                   ''.join(map(str,out)) or '-', ''.join(map(str,inc)) or '-'],capture_output=True,text=True,check=True)
w=json.loads(run.stdout);assert w['h']==0
blocks['d6target3']=dict(degree=[18,139],page=3,wire=w,outgoing_provenance=outprov,incoming_provenance=incprov)
(wire/'d6target3.json').write_text(canonical(w))
empty={str(d):list(c.execute('select id,mon,d2 from S0_AdamsE2_basis where s=? and t=?',d)) for d in [(7,130),(6,129),(5,128)]}
assert all(not rows for rows in empty.values())
lines=['import PageTransitionCertificates.Import','namespace Fact721SecondE6.Data','open LinearCertificates PageTransitionCertificates']
for name in blocks:
    lines += [f'def {name} : WireComparison := page_comparison% "Fact721SecondE6/wire/{name}.json"',
       f'theorem {name}_valid : {name}.Valid := by lin_cert using ()',f'#print axioms {name}_valid']
lines += ['end Fact721SecondE6.Data'];(HERE/'Data.lean').write_text('\n'.join(lines)+'\n')
(HERE/'source.json').write_text(json.dumps(dict(database_sha256=hashlib.sha256(database.read_bytes()).hexdigest(),
    blocks=blocks,empty_incoming_E2=empty,status='complete_finite_earlier_target_certificates',
    limitations='Actual recorded differential interpretations and complete E2 meanings remain premises.'),indent=2)+'\n')
for name,b in blocks.items():print(name,{f:b['wire'][f] for f in ['k','m','n','h']})
