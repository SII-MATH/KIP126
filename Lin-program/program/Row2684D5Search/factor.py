"""Complete bounded factor comparisons; no unknown higher column override."""
import hashlib
import json
import sqlite3
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
script = ROOT/'AggregateD5Conditional/generate.py'
ns={'__file__':str(script)}
exec(compile(script.read_text().split('\ncandidates=[]')[0],str(script),'exec'),ns)
ns['dag']=dict(degrees={},blocks={})
ns['cache'].clear();ns['failures'].clear();ns['attempted'].clear()
database=ROOT/'upstream/kervaire-49/S0_AdamsSS_t261.db'
c=sqlite3.connect('file:'+str(database)+'?mode=ro',uri=True)
metadata=dict(c.execute('SELECT name,value FROM version'))

def visit(s,t,r):
    key=f'S0:{s},{t}:d{r}'
    if key in ns['dag']['blocks']:return
    predecessors=[]
    for a,b in [(s-r,t-r+1),(s,t),(s+r,t+r-1)]:
        if b>metadata['t_max']:raise ValueError('outside E2 coverage')
        ns['dag']['degrees'][f'S0:{a},{b}']=dict(object='S0',degree=[a,b],
            e2=[list(x) for x in c.execute('SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(a,b))],
            staircase=[list(x) for x in c.execute('SELECT id,base,diff,level FROM S0_AdamsE2_ss WHERE s=? AND t=? ORDER BY id',(a,b))])
        if r>2:visit(a,b,r-1);predecessors.append(f'S0:{a},{b}:d{r-1}')
    ns['dag']['blocks'][key]=dict(object='S0',center=[s,t],page=r,predecessors=predecessors)

visit(6,67,4)
for r in [2,3,4]:
    key=f'S0:6,67:d{r}'
    try:
        block=ns['build']('S0',6,67,r)
        print(key,{f:block['wire'][f] for f in ['k','m','n','h']},block['uses'])
    except (ValueError,AssertionError,KeyError) as error:print(key,'FAILED',str(error))
out=dict(comparisons=ns['cache'],failures=ns['failures'],graph=ns['dag'],
         input_sha256=hashlib.sha256(database.read_bytes()).hexdigest())
(HERE/'factor.json').write_text(json.dumps(out,indent=2)+'\n')
