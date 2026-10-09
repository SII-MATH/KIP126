"""Enumerate the exact local d3 completions and imposed naturality constraints.

No missing d3 is assigned as input. Every value is enumerated, constrained,
and retained in the report. This is a finite feasibility audit, not Lean proof.
"""
import importlib.util
import itertools
import json
import sqlite3
from pathlib import Path
HERE=Path(__file__).resolve().parent
ROOT=HERE.parents[1]
spec=importlib.util.spec_from_file_location('bounded',ROOT/'Row3147MapSearch/search_lifted.py')
h=importlib.util.module_from_spec(spec);spec.loader.exec_module(h)
spec=importlib.util.spec_from_file_location('independent',ROOT/'Row2925Detector/source_independent_audit.py')
a=importlib.util.module_from_spec(spec);spec.loader.exec_module(a)


def run():
    base=ROOT/'upstream/kervaire-49'
    dbs={n:sqlite3.connect(f'file:{base}/{n}_AdamsSS_t{261 if n=="S0" else 200}.db?mode=ro',uri=True) for n in ['S0','C2']}
    source=json.loads((ROOT/'AggregateC2H2Conditional/source.json').read_text())['blocks']
    comps={};raws={}
    def block(n,s,t):
        key=f'{n}:{s},{t}:d2'
        if key not in comps:
            if key in source:
                w=source[key]['wire']
                generated=h.comparison(dbs[n],n,s,t,h.metadata(dbs[n]))
                assert w['incoming']==generated['wire']['incoming'] and w['outgoing']==generated['wire']['outgoing']
                a.wire_laws(w);comps[key]=dict(rows=generated['rows'],wire=w)
            else:
                got=h.comparison(dbs[n],n,s,t,h.metadata(dbs[n]))
                # Reexpress complete quotient basis in staircase-selected order,
                # the same convention used by the 336-block aggregate.
                prefix=(ROOT/'AggregateC2H2Conditional/generate.py').read_text().split('\ncandidates=[]')[0]
                ns={'__file__':str(ROOT/'AggregateC2H2Conditional/generate.py')};exec(compile(prefix,'aggregate','exec'),ns)
                deg={}
                for x,y in [(s-2,t-1),(s,t),(s+2,t+1)]:
                    deg[f'{n}:{x},{y}']=dict(e2=dbs[n].execute(f'SELECT id,mon,d2 FROM {n}_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(x,y)).fetchall(),staircase=dbs[n].execute(f'SELECT id,base,diff,level FROM {n}_AdamsE2_ss WHERE s=? AND t=? ORDER BY id',(x,y)).fetchall())
                ns['dag']=dict(degrees=deg,blocks={key:dict(predecessors=[])})
                w=ns['build'](n,s,t,2)['wire'];a.wire_laws(w);comps[key]=dict(rows=got['rows'],wire=w)
        return comps[key]['wire']
    def rows(n,s,t):
        key=f'{n}:{s},{t}'
        raws[key]=[list(x) for x in dbs[n].execute(f'SELECT id,base,diff,level FROM {n}_AdamsE2_ss WHERE s=? AND t=? ORDER BY id',(s,t))]
        return raws[key]
    def projected(w,raw):
        ids=[] if raw=='' else list(map(int,raw.split(',')))
        assert all(0<=i<w['m'] for i in ids)
        return a.matmul(w['projection'],[i in ids for i in range(w['m'])],w['h'],w['m'],1)
    def d3_template(n,s,t):
        S=block(n,s,t);T=block(n,s+3,t+2)
        rs=[x for x in rows(n,s,t) if 3<=x[3]<5000 or 5000<=x[3]<=9997]
        assert len(rs)==S['h']
        cols=[];unknown=[]
        for j,(rid,base,diff,level) in enumerate(rs):
            if level==9997 and diff is not None:cols.append(projected(T,diff))
            elif 2<=level<5000 or 9000<level<9997:cols.append([0]*T['h'])
            else:cols.append(None);unknown.append(dict(column=j,row=[rid,base,diff,level],degree=[s,t],dimension=T['h']))
        return dict(object=n,degree=[s,t],rows=T['h'],cols=S['h'],columns=cols,unknowns=unknown)
    def matrix(template,values):
        cols=[values[j] if x is None else x for j,x in enumerate(template['columns'])]
        return [x[i] for i in range(template['rows']) for x in cols]
    C=d3_template('C2',8,135);Cin=d3_template('C2',5,133);Cnext=d3_template('C2',11,137)
    H=d3_template('S0',9,139);Hin=d3_template('S0',6,137);Hnext=d3_template('S0',12,141)
    assert C['rows']==5 and C['cols']==6 and [x['row'][0] for x in C['unknowns']]==[2797]
    assert Cin['cols']==1 and Cin['columns']==[[0]*6]
    assert H['rows']==2 and H['cols']==2 and [x['row'][0] for x in H['unknowns']]==[3094]
    assert Hin['cols']==0
    target=source['S0:8,135:d2']['wire']
    assert source['S0:8,135:d3']['wire']['outgoing']==[False]*4
    c2=block('C2',8,135);h2=block('S0',9,139)
    reports=json.loads((HERE.parent/'lifted-search.json').read_text())
    c2record=next(x for x in reports['maps'] if x['map']['name']=='S0__C2')
    c2cols=[]
    for label in ['target','target1']:
        coords=c2record[label]['coordinates'];c2cols.append(projected(c2,','.join(map(str,coords))))
    assert c2cols==[[1,0,0,0,0,0],[0,1,0,0,0,0]]
    # Independently reduce both h2 images, including the second image omitted
    # after the original screen encountered the first unknown comparison.
    ringrels=[(rid,raw,[h.alg.mono(x) for x in raw.split(';')],s,t) for rid,raw,s,t in dbs['S0'].execute('SELECT rowid,rel,s,t FROM S0_AdamsE2_relations ORDER BY rowid')]
    sourcebasis=dbs['S0'].execute('SELECT id,mon FROM S0_AdamsE2_basis WHERE s=8 AND t=135 ORDER BY id').fetchall()
    targetbasis=dbs['S0'].execute('SELECT id,mon FROM S0_AdamsE2_basis WHERE s=9 AND t=139 ORDER BY id').fetchall()
    lookup={h.alg.mono(raw):i for i,(_,raw) in enumerate(targetbasis)}
    h2cols=[];products=[]
    for j in [2,1]:
        cur=h.alg.multiply({(2,)},{h.alg.mono(sourcebasis[j][1])});initial=sorted(cur);trace=[]
        for _ in range(10000):
            bad=next((m for m in sorted(cur) if m not in lookup),None)
            if bad is None:break
            choice=next(((rid,raw,terms,h.alg.divide(bad,terms[0])) for rid,raw,terms,s,t in ringrels if terms and s<=9 and t<=139 and h.alg.divide(bad,terms[0]) is not None),None)
            assert choice is not None
            rid,raw,terms,q=choice;trace.append(dict(rowid=rid,raw=raw,multiplier=q));cur.symmetric_difference_update(h.alg.multiply({q},terms))
        coords=sorted(lookup[x] for x in cur);h2cols.append(projected(h2,','.join(map(str,coords))))
        products.append(dict(source_local=j,source_basis_id=sourcebasis[j][0],input=initial,trace=trace,target_coordinates=coords))
    assert h2cols==[[1,0],[1,0]]
    F=[col[i] for i in range(6) for col in c2cols]
    P=[col[i] for i in range(2) for col in h2cols]
    Cinc=matrix(Cin,{});Hinc=matrix(Hin,{})
    # Next outgoing d3 columns are independently enumerated too, enforcing
    # adjacent d3^2=0 rather than only a central incoming/outgoing complex.
    assert len(Cnext['unknowns'])==1 and len(Hnext['unknowns'])==1
    cnextj=Cnext['unknowns'][0]['column'];hnextj=Hnext['unknowns'][0]['column']
    cases=[]
    stats=dict(total_central_completions=0,central_valid=0,c2_naturality=0,h2_leibniz=0,both_squares=0,c2_detects_under_naturality=0,joint_detects_under_both=0)
    for cv in itertools.product([0,1],repeat=5):
        A=matrix(C,{0:list(cv)})
        if any(a.matmul(A,Cinc,5,6,1)):continue
        cnextvalues=[]
        for nv in itertools.product([0,1],repeat=Cnext['rows']):
            N=matrix(Cnext,{cnextj:list(nv)})
            if not any(a.matmul(N,A,Cnext['rows'],5,6)):cnextvalues.append(list(nv))
        for hv in itertools.product([0,1],repeat=2):
            B=matrix(H,{0:list(hv)})
            stats['total_central_completions']+=1
            hnextvalues=[]
            for nv in itertools.product([0,1],repeat=Hnext['rows']):
                N=matrix(Hnext,{hnextj:list(nv)})
                if not any(a.matmul(N,B,Hnext['rows'],2,2)):hnextvalues.append(list(nv))
            if not cnextvalues or not hnextvalues:continue
            stats['central_valid']+=1
            cnat=not any(a.matmul(A,F,5,6,2));hleib=not any(a.matmul(B,P,2,2,2))
            stats['c2_naturality']+=cnat;stats['h2_leibniz']+=hleib;stats['both_squares']+=cnat and hleib
            detected=[]
            for v in [(0,0),(0,1),(1,0),(1,1)]:
                f=a.matmul(F,v,6,2,1);p=a.matmul(P,v,2,2,1)
                cf=not any(a.matmul(A,f,5,6,1))
                hp=not any(a.matmul(B,p,2,2,1))
                cb=a.in_image(Cinc,6,1,f);hb=a.in_image(Hinc,2,0,p)
                detected.append(dict(input=v,c2_cycle=cf,h2_cycle=hp,c2_boundary=cb,h2_boundary=hb))
            cdetect=all(not any(v['input']) or v['c2_cycle'] and not v['c2_boundary'] for v in detected)
            joint=all(not any(v['input']) or v['c2_cycle'] and v['h2_cycle'] and not(v['c2_boundary'] and v['h2_boundary']) for v in detected)
            if cnat:stats['c2_detects_under_naturality']+=cdetect
            if cnat and hleib:stats['joint_detects_under_both']+=joint
            cases.append(dict(c2row2797=cv,h2row3094=hv,c2_next_admissible=cnextvalues,h2_next_admissible=hnextvalues,
                c2_naturality=cnat,h2_leibniz=hleib,c2_detects=cdetect,joint_detects=joint,classes=detected))
    assert stats['total_central_completions']==128
    assert stats['c2_naturality']==stats['c2_detects_under_naturality']
    assert stats['both_squares']==stats['joint_detects_under_both']
    constrained=[x for x in cases if x['c2_naturality'] and x['h2_leibniz']]
    assert constrained and all(x['c2row2797']==(0,0,0,0,0) and x['h2row3094']==(0,0) for x in constrained)
    source_c2=next(x for x in reports['maps'] if x['map']['name']=='S0__C2')['E4']['stages']['source'];assert source_c2['coordinates']==[]
    result=dict(schema='row2576_d4_local_completion_feasibility/v1',status='universal_finite_feasibility_under_explicit_squares',
        raw_row2576=[2576,4,132,'0',None,9000],templates=dict(c2=C,c2_incoming=Cin,c2_next=Cnext,h2=H,h2_incoming=Hin,h2_next=Hnext),
        source_E4_dimension=1,target_E4_dimension=2,target_E2_basis_indices=[2,1],
        c2_E3_target_basis_images=c2cols,h2_E3_target_basis_images=h2cols,
        statistics=stats,cases=cases,comparisons=comps,raw_staircases=raws,h2_products=products,
        conclusion='C2 alone detects every target class for every enumerated completion satisfying the C2 naturality square. Incoming d3 into C2(8,135) is zero, so no target image becomes a boundary. Naturality forces the only relevant unknown outgoing column2797 to zero. h2 is optional for detection.',
        proof_obligations=['Full actual C2 matrices and d2 compatibility at target and neighbors.',
          'Transport inherited S0(8,135) d3 zero through an explicit local naturality square, without treating C2 row2797 NULL as known.',
          'General kernel/image quotient map for the constrained arbitrary outgoing C2 matrix; zero incoming map and injectivity on the two source coordinates.',
          'Source map annihilation through the complete zero C2 E3/E4 source and local d4 naturality/zero preservation.'],
        limitations='This is exhaustive finite numerical evidence on named local matrices, not a Lean theorem or an Adams realization. Existing staircase-prefix interpretations and S0 row2796 conditional d3 proof remain premises. No missing matrix is selected as fact.',
        input_sha256={str(p.relative_to(ROOT)):h.digest(p) for p in [ROOT/'AggregateC2H2Conditional/source.json',HERE.parent/'lifted-search.json',ROOT/'AggregateC2H2Conditional/generate.py']},
        database_sha256={n:h.digest(base/objects) for n,objects in [('S0','S0_AdamsSS_t261.db'),('C2','C2_AdamsSS_t200.db')]},script_sha256=h.digest(Path(__file__)))
    (HERE/'enumeration.json').write_text(json.dumps(result,indent=2,sort_keys=True)+'\n')
    print(stats)
    print('C2 alone detects under all naturality-constrained completions; no countercompletion')
if __name__=='__main__':run()
