"""Independent exhaustive rank check of recorded local completions."""
import hashlib
import itertools
import json
import sqlite3
from pathlib import Path
HERE=Path(__file__).resolve().parent
ROOT=HERE.parents[1]

def sha(path):return hashlib.sha256(path.read_bytes()).hexdigest()
def ev(a,m,n,x):
    assert len(a)==m*n and len(x)==n
    return [sum(a[i*n+j]*x[j] for j in range(n))%2 for i in range(m)]
def rank(cs):
    piv={}
    for x in cs:
        v=sum(int(b)<<i for i,b in enumerate(x))
        while v:
            p=v.bit_length()-1
            if p not in piv:piv[p]=v;break
            v^=piv[p]
    return len(piv)
def mk(t,unknown):
    cols=[unknown if x is None else x for x in t['columns']]
    return [col[i] for i in range(t['rows']) for col in cols]
def composition_zero(left,m,k,right,n):
    return all(not any(ev(left,m,k,[right[i*n+j] for i in range(k)])) for j in range(n))

def run():
    d=json.loads((HERE/'enumeration.json').read_text())
    for name,digest in d['input_sha256'].items():assert sha(ROOT/name)==digest
    for n,digest in d['database_sha256'].items():assert sha(ROOT/f'upstream/kervaire-49/{n}_AdamsSS_t{261 if n=="S0" else 200}.db')==digest
    assert d['script_sha256']==sha(HERE/'enumerate.py')
    con={n:sqlite3.connect(f'file:{ROOT}/upstream/kervaire-49/{n}_AdamsSS_t{261 if n=="S0" else 200}.db?mode=ro',uri=True) for n in ['S0','C2']}
    for key,rows in d['raw_staircases'].items():
        n,deg=key.split(':');s,t=map(int,deg.split(','));assert rows==[list(x) for x in con[n].execute(f'SELECT id,base,diff,level FROM {n}_AdamsE2_ss WHERE s=? AND t=? ORDER BY id',(s,t))]
    for key,rec in d['comparisons'].items():
        n,deg,_=key.split(':');s,t=map(int,deg.split(','));meta=dict(con[n].execute('SELECT name,value FROM version'));assert t<=meta['d2_t_max'] and t+1<=meta['t_max']
        assert rec['rows']==[[dict(id=i,mon=mon,d2=raw) for i,mon,raw in con[n].execute(f'SELECT id,mon,d2 FROM {n}_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',deg)] for deg in [(s-2,t-1),(s,t),(s+2,t+1)]]
    ts=d['templates'];C,H=ts['c2'],ts['h2'];CN,HN=ts['c2_next'],ts['h2_next']
    assert C['unknowns']==[dict(column=0,row=[2797,'5',None,9000],degree=[8,135],dimension=5)]
    assert H['unknowns']==[dict(column=0,row=[3094,'1',None,9000],degree=[9,139],dimension=2)]
    for template in ts.values():
        n=template['object'];s,t=template['degree'];rs=d['raw_staircases'][f'{n}:{s},{t}'];selected=[x for x in rs if 3<=x[3]<5000 or 5000<=x[3]<=9997]
        assert len(selected)==template['cols']
        for j,(_,base,raw,level) in enumerate(selected):
            col=template['columns'][j]
            if col is None:assert raw is None and level==9000
            elif 2<=level<5000 or 9000<level<9997:assert not any(col)
            else:
                assert level==9997 and raw is not None
                w=d['comparisons'][f'{n}:{s+3},{t+2}:d2']['wire'];ids=[] if raw=='' else list(map(int,raw.split(',')))
                assert col==ev(w['projection'],w['h'],w['m'],[int(i in ids) for i in range(w['m'])])
    assert ts['c2_incoming']['columns']==[[0]*6] and ts['h2_incoming']['cols']==0
    f=d['c2_E3_target_basis_images'];p=d['h2_E3_target_basis_images'];assert rank(f)==2
    assert len(d['cases'])==128
    for cv in itertools.product([0,1],repeat=5):
        for hv in itertools.product([0,1],repeat=2):
            case=next(x for x in d['cases'] if x['c2row2797']==list(cv) and x['h2row3094']==list(hv))
            A,B=mk(C,cv),mk(H,hv)
            cn=[list(v) for v in itertools.product([0,1],repeat=CN['rows']) if composition_zero(mk(CN,v),CN['rows'],CN['cols'],A,C['cols'])]
            hn=[list(v) for v in itertools.product([0,1],repeat=HN['rows']) if composition_zero(mk(HN,v),HN['rows'],HN['cols'],B,H['cols'])]
            assert case['c2_next_admissible']==cn and case['h2_next_admissible']==hn and cn and hn
            nat=all(not any(ev(A,5,6,v)) for v in f);leib=all(not any(ev(B,2,2,v)) for v in p)
            assert case['c2_naturality']==nat and case['h2_leibniz']==leib
            for obj in case['classes']:
                x=obj['input'];fx=[sum(f[j][i]*x[j] for j in range(2))%2 for i in range(6)];px=[sum(p[j][i]*x[j] for j in range(2))%2 for i in range(2)]
                assert obj['c2_cycle']==(not any(ev(A,5,6,fx)))
                assert obj['h2_cycle']==(not any(ev(B,2,2,px)))
                assert obj['c2_boundary']==(not any(fx)) and obj['h2_boundary']==(not any(px))
                if nat:assert not any(x) or obj['c2_cycle'] and not obj['c2_boundary']
            if nat:assert cv==(0,0,0,0,0)
            if leib:assert hv==(0,0)
    result=dict(status='independent_128_completion_replay_passed',statistics=d['statistics'],
                result='No countercompletion under C2 naturality; C2 alone injects the full two-dimensional target in every admissible local quotient.',
                raw_unknowns_retained=[[2797,'5',None,9000],[3094,'1',None,9000]],
                enumeration_sha256=sha(HERE/'enumeration.json'),script_sha256=sha(Path(__file__)),
                limitations='Finite matrix feasibility only. Kernel-checked generic quotient/naturality proof and actual full C2 matrix certificates remain necessary.')
    (HERE/'review.json').write_text(json.dumps(result,indent=2,sort_keys=True)+'\n')
    print('128 completion cases independently checked; C2 detects universally under explicit naturality')
if __name__=='__main__':run()
