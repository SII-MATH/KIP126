import json,pathlib
p=pathlib.Path(__file__).resolve().parent;r=p.parent
ns={};text=(r/'FiniteEventProducer/test.py').read_text();exec(text[text.index('def ev('):text.index('for row in rows:')],ns)
old=json.loads((r/'AggregateD4Conditional/source.json').read_text())['blocks'];branches=[]
for name,coords in [('3',[0,0,1]),('2_3',[0,1,1])]:
 b=json.loads((p/f'branch_{name}.json').read_text())['blocks'];assert len(b)==334
 for k,w in old.items():assert b[k]==w
 for x in b.values():ns['comparison'](x['wire'])
 assert set(b)-set(old)=={'S0:6,132:d3','S0:6,132:d4','S0:10,135:d4'}
 w=b['S0:6,132:d3']['wire'];raw=[int(i in [int(j) for j in name.split('_')]) for i in range(5)]
 canonical=json.loads((r/'Row2574Detector/target.json').read_text());assert ns['ev'](canonical['projection'],3,5,raw)==coords
 aggregate=b['S0:9,134:d2']['wire'];assert w['outgoing']==ns['ev'](aggregate['projection'],3,5,raw) and w['h']==0
 branches.append(b)
assert [k for k in branches[0] if branches[0][k]!=branches[1][k]]==['S0:6,132:d3']
report=json.loads((p/'prototype.json').read_text());assert all(x['counts']=={'finite_nonzero_event':88,'unresolved':13} for x in report['branches'])
print('668 complete comparison identities audited; all331 old blocks unchanged; one branch-sensitive matrix; no additional event completed')
