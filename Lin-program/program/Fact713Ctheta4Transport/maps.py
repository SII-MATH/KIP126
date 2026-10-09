"""Complete top-cell coefficient maps and checked finite page descent."""
import hashlib
import importlib.util
import json
import sqlite3
from pathlib import Path

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
BASE=ROOT/'upstream/kervaire-49'
spec=importlib.util.spec_from_file_location('map_helper',ROOT/'Row3147MapSearch/search_lifted.py')
h=importlib.util.module_from_spec(spec)
spec.loader.exec_module(h)
a=h.alg
report=json.loads((HERE/'ctheta-search.json').read_text())
sc=sqlite3.connect(f'file:{BASE}/Ctheta4_AdamsSS_t200.db?mode=ro',uri=True)
tc=sqlite3.connect(f'file:{BASE}/S0_AdamsSS_t261.db?mode=ro',uri=True)
mc=sqlite3.connect(f'file:{BASE}/map_AdamsSS_Ctheta4_to_S0_t200.db?mode=ro',uri=True)
images=dict(mc.execute('select id,map from map_AdamsE2_Ctheta4_to_S0'))
assert images=={0:'',1:';'}
relations=[(rid,raw,s,t,[a.mono(x) for x in raw.split(';')]) for rid,raw,s,t in
    tc.execute('select rowid,rel,s,t from S0_AdamsE2_relations where t<=170 order by rowid')]
degrees=sorted(tuple(node['degree']) for node in report['graph']['degrees'].values() if node['object']=='Ctheta4')
maps={}
wire_dir=HERE/'mapwire'
wire_dir.mkdir(exist_ok=True)
lines=['import ModuleToModuleCertificates.ShiftedImport','set_option maxRecDepth 8192',
       'set_option maxHeartbeats 8000000','namespace Fact713Ctheta4Transport.Maps','open ModuleToModuleCertificates']
for s,t in degrees:
    source=sc.execute('select id,mon from Ctheta4_AdamsE2_basis where s=? and t=? order by id',(s,t)).fetchall()
    target=tc.execute('select id,mon from S0_AdamsE2_basis where s=? and t=? order by id',(s,t-31)).fetchall()
    lookup={a.mono(raw):j for j,(_,raw) in enumerate(target)}
    outputs,certs,used,origins=[],[],[],[]
    for bid,raw in source:
        co,g=h.module_mon(raw)
        current=a.multiply({co},a.poly(images[g]))
        terms=[]
        seen=set()
        for _ in range(10000):
            bad=next((x for x in sorted(current) if x not in lookup),None)
            if bad is None:break
            state=tuple(sorted(current))
            if state in seen:raise ValueError('reduction cycle')
            seen.add(state)
            choice=next(((rid,raw,rs,rt,poly,a.divide(bad,poly[0])) for rid,raw,rs,rt,poly in relations
                if poly and rs<=s and rt<=t-31 and a.divide(bad,poly[0]) is not None),None)
            if choice is None:raise ValueError('no relation '+str((bid,bad)))
            rid,rraw,rs,rt,poly,q=choice
            terms.append(dict(relation=len(used),multiplier=[list(q)]))
            used.append([[list(x) for x in poly]])
            origins.append(dict(rowid=rid,raw=rraw,degree=[rs,rt]))
            current.symmetric_difference_update(a.multiply({q},poly))
        else:raise ValueError('reduction limit')
        outputs.append([lookup[x] for x in current])
        certs.append(terms)
    def expr(raw):
        co,g=h.module_mon(raw)
        return [[list(co)] if i==g else [] for i in range(2)]
    algebra=dict(version=1,sourceS=0,sourceT=0,targetS=0,targetT=0,sourceGenerators=2,targetGenerators=1,
        rows=len(target),cols=len(source),images=[[[]],[[[]]]],source=[expr(raw) for _,raw in source],
        target=[[[list(x) for x in [a.mono(raw)]]] for _,raw in target],relations=used,
        entries=[i in col for i in range(len(target)) for col in outputs],terms=certs)
    wire=dict(version=1,filtration=0,suspension=31,sourceS=s,sourceT=t,targetS=s,targetT=t-31,algebra=algebra)
    (wire_dir/f'm{s}_{t}.json').write_text(json.dumps(wire,sort_keys=True,separators=(',',':'))+'\n')
    lines.extend([f'def m{s}_{t} : ShiftedWire := shifted_module_map% "Fact713Ctheta4Transport/mapwire/m{s}_{t}.json"',
        f'theorem m{s}_{t}_valid : m{s}_{t}.Valid := by lin_cert using ()',f'#print axioms m{s}_{t}_valid'])
    maps[f'{s},{t}:E2']=dict(rows=len(target),cols=len(source),entries=algebra['entries'],
        source=source,target=target,wire=wire,relation_sources=origins)
lines.append('end Fact713Ctheta4Transport.Maps')
(HERE/'Maps.lean').write_text('\n'.join(lines)+'\n')
def ev(b,x):return h.ev(b['entries'],b['rows'],b['cols'],x)
def columns(w,field,rows,cols):return [h.ev(w[field],rows,cols,[int(i==j) for i in range(cols)]) for j in range(cols)]
compat=[]
for key,block in sorted(report['comparisons'].items(),key=lambda kv:(kv[1]['page'],kv[0])):
    if block['object']!='Ctheta4':continue
    s,t=block['center'];r=block['page'];w=block['wire']
    target=report['comparisons'][f'S0:{s},{t-31}:d{r}']['wire']
    middle=maps[f'{s},{t}:E{r}'];lower=maps[f'{s-r},{t-r+1}:E{r}'];upper=maps[f'{s+r},{t+r-1}:E{r}']
    assert (middle['rows'],middle['cols'])==(target['m'],w['m'])
    for j in range(w['m']):
        x=[int(i==j) for i in range(w['m'])]
        assert h.ev(target['outgoing'],target['k'],target['m'],ev(middle,x))==ev(upper,h.ev(w['outgoing'],w['k'],w['m'],x)),(key,'outgoing',j)
    for j in range(w['n']):
        x=[int(i==j) for i in range(w['n'])]
        assert h.ev(target['incoming'],target['m'],target['n'],ev(lower,x))==ev(middle,h.ev(w['incoming'],w['m'],w['n'],x)),(key,'incoming',j)
    nextcols=[h.ev(target['projection'],target['h'],target['m'],ev(middle,col)) for col in columns(w,'inclusion',w['m'],w['h'])]
    maps[f'{s},{t}:E{r+1}']=dict(rows=target['h'],cols=w['h'],entries=[col[i] for i in range(target['h']) for col in nextcols])
    compat.append(key)
out=dict(maps=maps,compatible=compat,input_sha256={str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest()
    for p in [BASE/'Ctheta4_AdamsSS_t200.db',BASE/'S0_AdamsSS_t261.db',BASE/'map_AdamsSS_Ctheta4_to_S0_t200.db']})
(HERE/'maps.json').write_text(json.dumps(out,indent=2)+'\n')
print('map degrees',len(degrees),'E2 columns',sum(x['cols'] for k,x in maps.items() if k.endswith('E2')),'compatible pages',len(compat))
for k in ['17,169:E3','17,169:E4']:print(k,maps[k])
