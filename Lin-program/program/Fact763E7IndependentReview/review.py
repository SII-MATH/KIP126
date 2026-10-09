"""Read-only proof and SQL replay for the named row2917 target collapse."""
import hashlib
import itertools
import json
from pathlib import Path
import re
import sqlite3

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
PACKAGE=ROOT/'Fact763E7'
load=lambda p:json.loads(p.read_text())
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
db=ROOT/'upstream/kervaire-49/S0_AdamsSS_t261.db'
assert sha(db)=='518a2ed86af6d4f7bcdc5db135ab6252bd50df34492ae208663aa1c140a820ed'
sql=sqlite3.connect(f'file:{db}?mode=ro',uri=True)
metadata=dict(sql.execute('select name,value from version'))
assert metadata['t_max']==261 and metadata['d2_t_max']==177


def bits(raw,dimension):
    assert raw is not None
    indices=[] if raw=='' else list(map(int,raw.split(',')))
    assert len(set(indices))==len(indices) and all(0<=i<dimension for i in indices)
    return sum(1<<i for i in indices)


def columns(w,name,rows,cols):
    data=w[name];assert len(data)==rows*cols and all(type(v) is bool for v in data)
    return tuple(sum(int(data[i*cols+j])<<i for i in range(rows)) for j in range(cols))


def apply(matrix,value):
    answer=0
    for j,v in enumerate(matrix):
        if value>>j&1:answer^=v
    return answer


wires={}
records=[]
pairs=raw_columns=0
for name,(s,t) in [('source2',(13,137)),('target2',(16,139))]:
    w=load(PACKAGE/'wire'/(name+'.json'));wires[name]=w
    rows=[sql.execute('select id,mon,d2 from S0_AdamsE2_basis where s=? and t=? order by id',degree).fetchall()
          for degree in [(s-2,t-1),(s,t),(s+2,t+1)]]
    k,m,n,h=(w[f] for f in ['k','m','n','h'])
    assert [len(xs) for xs in rows]==[n,m,k]
    A,B,U,P,Q,R=[columns(w,f,r,c) for f,r,c in [('outgoing',k,m),('incoming',m,n),
                  ('inclusion',m,h),('projection',h,m),('up',n,m),('down',m,k)]]
    assert A==tuple(bits(row[2],k) for row in rows[1])
    assert B==tuple(bits(row[2],m) for row in rows[0])
    raw_columns+=m+n
    boundary={apply(B,x) for x in range(1<<n)}
    cycles={x for x in range(1<<m) if apply(A,x)==0}
    assert boundary<=cycles
    for j,col in enumerate(U):assert col in cycles and apply(P,col)==1<<j
    for j in range(m):assert apply(U,P[j])^apply(B,Q[j])^apply(R,A[j])==1<<j
    for x,y in itertools.product(cycles,repeat=2):
        assert (apply(P,x)==apply(P,y))==((x^y) in boundary);pairs+=1
    records.append(dict(name=name,degree=[s,t],raw_rows=rows,dimensions=[k,m,n,h]))

event=sql.execute('select s,t,base,diff,level from S0_AdamsE2_ss where id=2917').fetchone()
assert event==(13,137,'2','0',9997)
source_basis=records[0]['raw_rows'][1]
assert source_basis[2]==(2916,'7,1,275,1','')
unknown=sql.execute('select base,diff,level from S0_AdamsE2_ss where id=2916').fetchone()
assert unknown==('1',None,9000)
source,target=wires['source2'],wires['target2']
assert apply(columns(source,'projection',3,4),4)==4
assert apply(columns(target,'projection',1,3),1)==1
assert apply(columns(source,'outgoing',source['k'],4),4)==0

# All full maps with the fixed nonzero third column hit the whole target.
# The other source columns remain arbitrary, and all coordinate changes
# preserve this whole-image statement and the resulting zero quotient.
changes=[cols for cols in itertools.product(range(8),repeat=3)
         if len({apply(cols,v) for v in range(8)})==8]
assert len(changes)==168
maps=0
for a,b in itertools.product(range(2),repeat=2):
    matrix=(a,b,1)
    assert {apply(matrix,x) for x in range(8)}=={0,1}
    for change in changes:
        inverse={apply(change,x):x for x in range(8)}
        transported=tuple(apply(matrix,inverse[1<<j]) for j in range(3))
        witness=apply(change,4)
        assert apply(transported,witness)==1
        assert {apply(transported,x) for x in range(8)}=={0,1}
        # d^2=0 forces every possible next outgoing map to kill this image.
        for outgoing in range(4):
            if all(apply((outgoing,),apply(transported,x))==0 for x in range(8)):
                assert outgoing==0
        maps+=1
assert maps==672

compile_records=[]
for name in ['Data','Actual','Tactic']:
    r=load(PACKAGE/(name+'-compile.json'))
    assert r['observed_exit_code']==0 and r['inputs_stable']
    assert sha(PACKAGE/(name+'.lean'))==r['source_sha256']
    assert sha(PACKAGE/r['log'])==r['log_sha256']
    for path,digest in r['external_input_sha256'].items():assert sha(ROOT/path)==digest
    text=(PACKAGE/r['log']).read_text();assert 'sorryAx' not in text and 'error:' not in text
    axioms=re.findall(r'depends on axioms:\s*\[([^]]*)\]',text)
    for ax in axioms:assert set(a.strip() for a in ax.split(',') if a.strip())<={'propext','Classical.choice','Quot.sound'}
    compile_records.append(dict(module='Fact763E7.'+name,reports=len(axioms)+text.count('does not depend on any axioms')))
frozen_count=None
if (PACKAGE/'frozen-source.json').exists():
    frozen=load(PACKAGE/'frozen-source.json')
    for path,digest in frozen['files'].items():
        file=ROOT/path if (ROOT/path).exists() else PACKAGE/path
        assert sha(file)==digest
    frozen_count=len(frozen['files'])
result=dict(status='passed',comparisons=2,quotient_pairs=pairs,SQL_d2_columns=raw_columns,
            row2917_event=list(event),raw_source_basis=list(source_basis[2]),
            SS_row2916_remains_unknown=list(unknown),full_map_coordinate_changes=maps,
            compilation=compile_records,frozen_files=frozen_count,source_records=records,
            reviewed_logic='Complete E3 target dimension1 plus one recorded nonzero d3 witness yields every target class a boundary; complete E4 zero follows from quotient surjectivity, then E6 zero. Same original E2 trace extends previous nonzeroE6 to nonzeroE7 using whole incoming source zero.',
            no_circular_premise='No desired d6 value, E7 existence/nonzero, targetE4 zero, or unknown row2916 differential is supplied.',
            review_sha256=sha(Path(__file__)))
(HERE/'review.json').write_text(json.dumps(result,indent=2)+'\n');print(json.dumps(result,indent=2))
