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


for r in range(5,10):visit(11-r,137-r,min(r-1,3))
for r in range(5,10):
    for page in [2,3]:
        s,t=11-r,137-r
        key=f'S0:{s},{t}:d{page}'
        try:
            block=ns['build']('S0',s,t,page)
            print(key,{f:block['wire'][f] for f in ['k','m','n','h']},block['uses'])
        except (ValueError,AssertionError,KeyError) as error:print(key,'FAILED',str(error))
out=dict(comparisons=ns['cache'],failures=ns['failures'],graph=ns['dag'],
         input_sha256=hashlib.sha256(database.read_bytes()).hexdigest())
(HERE/'comparisons.json').write_text(json.dumps(out,indent=2)+'\n')

# Export only the complete comparisons needed for the three eliminated sources.
names={'source6d2':(5,131,2),'source7d2':(4,130,2),
       'source7d3':(4,130,3),'source8d2':(3,129,2),
       'source7Incoming2':(1,128,2),'source7Target2':(7,132,2)}
wire_dir=HERE/'wire';wire_dir.mkdir(exist_ok=True)
lines=['import PageTransitionCertificates.Import',
       'namespace Fact715IncomingTail.Data',
       'open LinearCertificates PageTransitionCertificates']
for name,(s,t,r) in names.items():
    w=ns['cache'][f'S0:{s},{t}:d{r}']['wire']
    (wire_dir/(name+'.json')).write_text(json.dumps(w,sort_keys=True,separators=(',',':'))+'\n')
    lines.extend([f'def {name} : WireComparison := page_comparison% "Fact715IncomingTail/wire/{name}.json"',
                  f'theorem {name}_valid : {name}.Valid := by lin_cert using ()',
                  f'theorem {name}_accepted : checkWire {name} = true := by decide'])
lines.append('end Fact715IncomingTail.Data')
(HERE/'Data.lean').write_text('\n'.join(lines)+'\n')
