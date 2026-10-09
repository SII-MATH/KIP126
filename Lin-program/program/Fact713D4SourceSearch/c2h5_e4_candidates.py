"""Enumerate every C2h5 d3 ambiguity after full-map naturality constraints."""
import hashlib
import importlib.util
import itertools
import json
from pathlib import Path

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
spec=importlib.util.spec_from_file_location('oracle',ROOT/'Row3147MapSearch/search_lifted.py')
h=importlib.util.module_from_spec(spec)
spec.loader.exec_module(h)
spec2=importlib.util.spec_from_file_location('independent',ROOT/'Row3147MapSearch/review.py')
a=importlib.util.module_from_spec(spec2)
spec2.loader.exec_module(a)
source=json.loads((HERE/'source.json').read_text())
matrices={tuple(x['source_degree']):x['wire']['algebra'] for x in source['matrices']}
sc=h.alg.connection('S0_AdamsSS_t261.db')
tc=h.alg.connection('C2h5_AdamsSS_t200.db')
degrees=[(9,132),(12,134),(15,136),(13,135),(16,137),(19,139)]
quotients={}
maps={}
for st in degrees:
    S=h.comparison(sc,'S0',*st,h.metadata(sc))['wire']
    T=h.comparison(tc,'C2h5',*st,h.metadata(tc))['wire']
    a.check_wire(S);a.check_wire(T)
    s,t=st;M=matrices[st]['entries'];U=matrices[s+2,t+1]['entries'];L=matrices[s-2,t-1]['entries']
    assert a.matmul(T['outgoing'],M,T['k'],T['m'],S['m'])==a.matmul(U,S['outgoing'],T['k'],S['k'],S['m'])
    assert a.matmul(M,S['incoming'],T['m'],S['m'],S['n'])==a.matmul(T['incoming'],L,T['m'],T['n'],S['n'])
    maps[st]=a.matmul(T['projection'],a.matmul(M,S['inclusion'],T['m'],S['m'],S['h']),T['h'],T['m'],S['h'])
    quotients[st]=dict(source=S,target=T)
assert maps[12,134]==[0,0]
assert maps[16,137]==[0,0,0,0,0,0,1,0]
raw={f'{s},{t}':[list(r) for r in tc.execute('SELECT id,base,diff,level FROM C2h5_AdamsE2_ss WHERE s=? AND t=? ORDER BY id',(s,t))] for s,t in degrees}
assert [4188,'0',None,9997] in raw['16,137'] and [3988,'3',None,9000] in raw['13,135']
assert [3868,'0,1',None,9997] in raw['12,134']

# In the independently checked E3 coordinates: source d3=0; target d3=0;
# The incoming staircase basis is (e0+e1,e1), whereas the E3 map uses
# the E2-ordered basis (e0,e1); both E2-ordered columns hit the same boundary.
sphere_source_d3=[0,0,0,0]
sphere_source_incoming=[0,0,1,1]
sphere_target_d3=[0,0]
sphere_target_incoming=[0,0,1,0]
v4=list(itertools.product([0,1],repeat=4))
ev=lambda matrix,m,n,v:tuple(a.matmul(matrix,list(v),m,n,1))
def rank(cols):
    span={(0,)*len(cols[0])} if cols else {()}
    for col in cols:span |= {tuple(x^y for x,y in zip(v,col)) for v in list(span)}
    return len(span).bit_length()-1

cases=[]
for source_unknown in itertools.product([0,1],repeat=3):
    # C2h5 source quotient dimension is one; all S0 source images are zero.
    for target_unknown in itertools.product([0,1],repeat=2):
        target_d3=[target_unknown[0],1,0,0,target_unknown[1],0,1,0]
        if a.matmul(target_d3,maps[16,137],2,4,2)!=a.matmul(maps[19,139],sphere_target_d3,2,1,2):
            continue
        for incoming_unknown in v4:
            detector_incoming=[0,0,0,incoming_unknown[0],0,0,0,incoming_unknown[1],
                               0,0,0,incoming_unknown[2],0,0,0,incoming_unknown[3]]
            if a.matmul(detector_incoming,maps[13,135],4,4,2)!=a.matmul(maps[16,137],sphere_target_incoming,4,2,2):
                continue
            if any(a.matmul(target_d3,detector_incoming,2,4,4)):
                continue
            cycles=[v for v in v4 if not any(ev(target_d3,2,4,v))]
            boundaries={ev(detector_incoming,4,4,v) for v in v4}
            named=(0,0,0,1)
            assert named in cycles
            survives=named not in boundaries
            cases.append(dict(source_d3=list(source_unknown),target_d3_unknown=list(target_unknown),
                incoming_d3_unknown=list(incoming_unknown),detector_source_E4_dimension=int(not any(source_unknown)),
                detector_target_E4_dimension=(len(cycles).bit_length()-1)-(len(boundaries).bit_length()-1),
                named_target_cycle=True,named_target_boundary=not survives,target_E4_map_injective=survives))
assert len(cases)==32 and all(x['target_E4_map_injective'] for x in cases)
assert {tuple(x['target_d3_unknown']) for x in cases}==set(itertools.product([0,1],repeat=2))
assert all(x['incoming_d3_unknown']==[0,0,0,0] for x in cases)
out=dict(status='all_C2h5_E4_d3_candidates_enumerated',full_E2_matrices=len(matrices),
    E2_columns=sum(m['cols'] for m in matrices.values()),complete_E3_map_neighborhoods=6,
    quotients={str(k):v for k,v in quotients.items()},coordinate_maps={str(k):v for k,v in maps.items()},
    raw_staircase_rows=raw,cases=cases,case_count=len(cases),injective_cases=32,noninjective_cases=0,
    constraints=['complete d2 complexes and both d2 chain-map squares',
       'named target image is E2 coordinate3, raw row4185 base3 with a stored later d4 event',
       'whole incoming naturality and row2773 d3 zero force row3988 base3 d3 zero',
       'd3 squared zero', 'no raw unknown nonzero or persistence assertion imposed'],
    limitation='Source map remains zero after any descent and the complete target map is injective in all 32 cases. '
       'Full Lean parameterized quotients, chain maps and actual descent meanings remain to be proved; unknown row4188 is not guessed.',
    sha256={str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest() for p in
      [Path(__file__),HERE/'source.json',HERE/'lifted-search.json']})
(HERE/'c2h5-e4-candidates.json').write_text(json.dumps(out,indent=2)+'\n')
print('32 cases: target injection in every case; whole incoming naturality forces row3988 d3 zero')
