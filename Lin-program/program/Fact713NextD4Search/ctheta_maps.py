"""Degree-checked top-cell map; DB suspension30 conflicts with generator degrees."""
import json,sqlite3
from pathlib import Path
H=Path(__file__).resolve().parent;R=H.parent;B=R/'upstream/kervaire-49';j=json.loads((H/'ctheta-search.json').read_text());c=sqlite3.connect(f'file:{B}/Ctheta4_AdamsSS_t200.db?mode=ro',uri=True);s=sqlite3.connect(f'file:{B}/S0_AdamsSS_t261.db?mode=ro',uri=True);m=sqlite3.connect(f'file:{B}/map_AdamsSS_Ctheta4_to_S0_t200.db?mode=ro',uri=True);meta=dict(m.execute('select name,value from version'));maps={}
def ev(a,rr,cc,v):return [sum(a[i*cc+k]*v[k] for k in range(cc))%2 for i in range(rr)]
for ss,tt in [(15,168),(17,169),(19,170),(14,167),(20,171)]:
 src=list(c.execute('select id,mon from Ctheta4_AdamsE2_basis where s=? and t=? order by id',(ss,tt)));tgt=list(s.execute('select id,mon from S0_AdamsE2_basis where s=? and t=? order by id',(ss,tt-31)));lookup={raw:i for i,(_,raw) in enumerate(tgt)};cols=[]
 for bid,raw in src:
  fs=raw.split(',');g=int(fs[-1]);co=','.join(fs[:-1]);cols.append([lookup[co]] if g==1 else [])
 maps[f'{ss},{tt}:E2']=dict(source=src,target=tgt,rows=len(tgt),cols=len(src),entries=[int(i in col) for i in range(len(tgt)) for col in cols],columns=cols)
for ss,tt in [(14,167),(17,169),(20,171)]:
 sw=j['comparisons'][f'Ctheta4:{ss},{tt}:d2']['wire'];tw=j['comparisons'][f'S0:{ss},{tt-31}:d2']['wire'];mid=maps.get(f'{ss},{tt}:E2')
 if mid is None:continue
 cols=[]
 for col in range(sw['h']):
  rep=ev(sw['inclusion'],sw['m'],sw['h'],[int(i==col) for i in range(sw['h'])]);image=ev(mid['entries'],mid['rows'],mid['cols'],rep);cols.append(ev(tw['projection'],tw['h'],tw['m'],image))
 maps[f'{ss},{tt}:E3']=dict(rows=tw['h'],cols=sw['h'],entries=[col[i] for i in range(tw['h']) for col in cols])
print('named E2 image',ev(maps['17,169:E2']['entries'],4,8,[1,1,1,0,0,0,0,0]));print('full E3map',maps['17,169:E3'])
report=dict(metadata=meta,configured_suspension=31,actual_generator_degrees=list(c.execute('select id,s,t from Ctheta4_AdamsE2_generators')),generator_maps=list(m.execute('select id,map from map_AdamsE2_Ctheta4_to_S0')),degree_checked_suspension=31,mismatch='metadata30 sends top(0,31) to degree(0,1) but image1 has degree(0,0); rejected as graded data',maps=maps)
(H/'ctheta-maps.json').write_text(json.dumps(report,indent=2)+'\n')
