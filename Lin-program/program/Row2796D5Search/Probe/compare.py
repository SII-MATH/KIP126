"""Exact full E3 maps and two further target descents; source stays arbitrary."""
import importlib.util,json
from pathlib import Path
P=Path(__file__).resolve().parent;R=P.parents[1]
spec=importlib.util.spec_from_file_location('oracle',R/'Row2925Detector/source_independent_audit.py');a=importlib.util.module_from_spec(spec);spec.loader.exec_module(a)
blocks=json.loads((R/'AggregateC2Row3019Conditional/source.json').read_text())['blocks'];blocks=dict(blocks);blocks.update(json.loads((P.parent/'comparisons.json').read_text())['blocks'])
actual=json.loads((P/'source.json').read_text());mats={tuple(x['source_degree']):x['wire']['algebra'] for x in actual['matrices']}
centers=sorted({(8,135)}|{(s+ds,t+dt) for s,t in [(9,136),(13,139),(17,142)] for ds,dt in [(-3,-2),(0,0),(3,2)]})
e3={};e4={};used={}
for s,t in centers:
 S=blocks[f'S0:{s},{t}:d2']['wire'];T=blocks[f'DC2h6:{s},{t}:d2']['wire'];F,U,L=[mats[s+ds,t+dt] for ds,dt in [(0,0),(2,1),(-2,-1)]]
 assert a.matmul(T['outgoing'],F['entries'],T['k'],T['m'],S['m'])==a.matmul(U['entries'],S['outgoing'],T['k'],S['k'],S['m'])
 assert a.matmul(F['entries'],S['incoming'],T['m'],S['m'],S['n'])==a.matmul(T['incoming'],L['entries'],T['m'],T['n'],S['n'])
 e3[s,t]=a.matmul(T['projection'],a.matmul(F['entries'],S['inclusion'],T['m'],S['m'],S['h']),T['h'],T['m'],S['h'])
 for n in ['S0','DC2h6']:used[f'{n}:{s},{t}:d2']=blocks[f'{n}:{s},{t}:d2']
for s,t in [(9,136),(13,139),(17,142)]:
 S=blocks[f'S0:{s},{t}:d3']['wire'];T=blocks[f'DC2h6:{s},{t}:d3']['wire'];F,U,L=[e3[s+ds,t+dt] for ds,dt in [(0,0),(3,2),(-3,-2)]]
 assert a.matmul(T['outgoing'],F,T['k'],T['m'],S['m'])==a.matmul(U,S['outgoing'],T['k'],S['k'],S['m'])
 assert a.matmul(F,S['incoming'],T['m'],S['m'],S['n'])==a.matmul(T['incoming'],L,T['m'],T['n'],S['n'])
 e4[s,t]=a.matmul(T['projection'],a.matmul(F,S['inclusion'],T['m'],S['m'],S['h']),T['h'],T['m'],S['h'])
 for n in ['S0','DC2h6']:used[f'{n}:{s},{t}:d3']=blocks[f'{n}:{s},{t}:d3']
S=blocks['S0:13,139:d4']['wire'];T=blocks['DC2h6:13,139:d4']['wire'];F,U,L=e4[13,139],e4[17,142],e4[9,136]
assert a.matmul(T['outgoing'],F,T['k'],T['m'],S['m'])==a.matmul(U,S['outgoing'],T['k'],S['k'],S['m'])
assert a.matmul(F,S['incoming'],T['m'],S['m'],S['n'])==a.matmul(T['incoming'],L,T['m'],T['n'],S['n'])
e5=a.matmul(T['projection'],a.matmul(F,S['inclusion'],T['m'],S['m'],S['h']),T['h'],T['m'],S['h'])
assert e3[8,135]==[0,1,0,0,0,0] and e5==[1]
for n in ['S0','DC2h6']:used[f'{n}:13,139:d4']=blocks[f'{n}:13,139:d4']
for q in [3,4]:used[f'S0:8,135:d{q}']=blocks[f'S0:8,135:d{q}']
raw=[0,0,1,0,0,0,0];v=raw;source_trace=[]
for q in [2,3,4]:
 w=used[f'S0:8,135:d{q}']['wire'];assert not any(a.matmul(w['outgoing'],v,w['k'],w['m'],1))
 after=a.matmul(w['projection'],v,w['h'],w['m'],1);assert after==[1,0]
 source_trace.append(dict(page=q,raw_or_coordinates=v,projection=after));v=after
assert not any(a.matmul(e3[8,135],[1,0],3,2,1))
result=dict(status='all_actual_target_squares_verified_source_not_completed',centers=centers,blocks=used,E3={str(k):v for k,v in e3.items()},E4={str(k):v for k,v in e4.items()},target_E5=e5,
 source_exact_raw_trace=source_trace,source_map_is_not_zero=True,named_source_image_E3=[0,0,0],
 source_unknown='DC2h6(8,135) d3/d4 matrices and complete homology coordinates arbitrary, subject to explicit actual induced-map compatibility; no completion existence asserted.',
 target_conditional_uses=[dict(block=k,**u) for k,b in used.items() for u in b['uses']],
 input_sha256={str(p.relative_to(R)):a.sha(p) for p in [P/'source.json',P.parent/'comparisons.json',R/'AggregateC2Row3019Conditional/source.json']},script_sha256=a.sha(Path(__file__)))
(P/'comparison-audit.json').write_text(json.dumps(result,indent=2,sort_keys=True)+'\n')
print('20 complete d2,6 d3,2 d4 target comparisons;10 actual E3 maps;3 E4 maps;targetE5 reflects;source map only named0')
