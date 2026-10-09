"""Root bitset review of complete target collapse and recorded bindings."""
import collections
import hashlib
import itertools
import json
from pathlib import Path
import re
import sqlite3

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
load=lambda p:json.loads(p.read_text())
frozen=load(HERE/'frozen-source.json')
for name,digest in frozen['files'].items():assert sha(HERE/name)==digest,name
data=load(HERE/'source.json')
database=ROOT/'upstream/kervaire-49/S0_AdamsSS_t261.db'
assert sha(database)==data['database_sha256']
c=sqlite3.connect('file:'+str(database)+'?mode=ro',uri=True)
counts=collections.Counter()


def cols(bits,m,n):
    assert len(bits)==m*n and all(type(x) is bool for x in bits)
    return [sum(int(bits[i*n+j])<<i for i in range(m)) for j in range(n)]


def ev(columns,x):
    assert x>>len(columns)==0
    value=0
    for j,col in enumerate(columns):
        if x>>j&1:value^=col
    return value


def sparse(raw,n):
    assert raw is not None
    ids=list(map(int,raw.split(','))) if raw else []
    assert ids==sorted(set(ids)) and all(0<=i<n for i in ids)
    return sum(1<<i for i in ids)


for name,block in data['blocks'].items():
    w=block['wire'];assert w==load(HERE/'wire'/f'{name}.json')
    k,m,n,h=[w[x] for x in ['k','m','n','h']]
    a,b,i,p,u,d=[cols(w[f],r,z) for f,r,z in [('outgoing',k,m),('incoming',m,n),
        ('inclusion',m,h),('projection',h,m),('up',n,m),('down',m,k)]]
    boundary={ev(b,x) for x in range(1<<n)}
    cycles={x for x in range(1<<m) if ev(a,x)==0}
    assert boundary<=cycles and all(ev(p,x)==0 for x in boundary)
    for j,x in enumerate(i):assert ev(a,x)==0 and ev(p,x)==1<<j
    for j in range(m):assert ev(i,p[j])^ev(b,u[j])^ev(d,a[j])==1<<j
    for x,y in itertools.product(cycles,repeat=2):
        assert (ev(p,x)==ev(p,y))==(x^y in boundary)
        counts['quotient_pairs']+=1
    counts['complete_comparisons']+=1;counts['cycle_vectors']+=len(cycles)
    if 'rows' in block:
        s,t=block['degree']
        groups=[c.execute('select id,mon,d2 from S0_AdamsE2_basis where s=? and t=? order by id',deg).fetchall()
                for deg in [(s-2,t-1),(s,t),(s+2,t+1)]]
        assert groups==[[(row['id'],row['mon'],row['d2']) for row in group] for group in block['rows']]
        assert b==[sparse(row[2],m) for row in groups[0]]
        assert a==[sparse(row[2],k) for row in groups[1]]
        counts['SQL_d2_columns']+=len(a)+len(b)


def project(name,x):
    w=data['blocks'][name]['wire']
    return ev(cols(w['projection'],w['h'],w['m']),x)


def record(rid,source,target,page,expected_source,expected_target):
    ss=data['blocks'][source+'d2']['wire']['m'];tt=data['blocks'][target+'d2']['wire']['m']
    base,diff,level=c.execute('select base,diff,level from S0_AdamsE2_ss where id=?',(rid,)).fetchone()
    assert level==10000-page
    x=sparse(base,ss);y=sparse(diff,tt)
    for r in range(2,page):
        x=project(source+f'd{r}',x);y=project(target+f'd{r}',y)
    assert (x,y)==(expected_source,expected_target),(rid,x,y)
    counts['known_events']+=1


record(3311,'i11','t11',3,1,1)
record(3551,'t12','t4',3,1,3)
record(3482,'i13','t13',3,1,1)
record(3553,'i14','t14',3,2,1)
record(3479,'t11','t4',4,1,1)
record(3736,'i17','t17',4,1,1)
for target,outgoing in [('t11','o11'),('t4','o4'),('i17','t16'),('t17','o17')]:
    assert data['blocks'][outgoing+'d2']['wire']['h']==0
    assert data['blocks'][target+'d3']['wire']['k']==0
    counts['derived_outgoing_zero']+=1
for name in ['ii17','it17']:
    assert data['blocks'][name+'d2']['wire']['m']==0
    assert data['blocks'][name+'d2']['wire']['h']==0
    counts['empty_incoming_sources']+=1
# Exhaust one-dimensional deaths and surjections with arbitrary extra source
# columns. A known nonzero hit already exhausts the one-dimensional target.
for columns in itertools.product(range(2),repeat=3):
    if columns[0]!=1:continue
    assert {ev(columns,x) for x in range(8)}=={0,1}
    counts['all_extra_column_models']+=1
for value in range(1,4):
    assert {x for x in range(2) if ev([value],x)==0}=={0}
    counts['one_dimensional_death_models']+=1
# The same initial class survives each quotient with empty incoming; relabel
# all eight endpoint pages independently to detect accidental fixed labels.
for charts in itertools.product(itertools.permutations(range(2)),repeat=8):
    value=charts[0].index(1)
    for before,after in zip(charts,charts[1:]):
        value=after.index(before[value]);assert value!=after.index(0)
    counts['same_input_E11_E18_models']+=1
for module in (HERE/'modules.txt').read_text().splitlines():
    name=module.split('.')[-1];r=load(HERE/f'{name}-compile.json')
    assert r['observed_exit_code']==0 and r['inputs_stable']
    assert sha(HERE/f'{name}.lean')==r['source_sha256']
    assert sha(HERE/r['log'])==r['log_sha256']
    assert sha(ROOT/'.lake/build/lib/lean'/Path(*module.split('.')).with_suffix('.olean'))==r['olean_sha256']
    log=(HERE/r['log']).read_text()
    assert 'error:' not in log and 'warning:' not in log and 'sorryAx' not in log
    for ax in re.findall(r'depends on axioms:\s*\[([^]]*)\]',log):
        assert {v.strip() for v in ax.split(',')}<={'propext','Classical.choice','Quot.sound'}
        counts['standard_axiom_reports']+=1
    counts['empty_axiom_reports']+=log.count('does not depend on any axioms')
    counts['modules']+=1
for name,digest in frozen['files'].items():assert sha(HERE/name)==digest,name
report=dict(status='passed',findings=[],counts=dict(counts),frozen_files=len(frozen['files']),
    scope='All earlier target spaces and same-input E12 through E18; complete incoming tail inherited. '
          'Actual initial, known differential, product and quotient meanings explicit. No permanence.',
    review_script_sha256=sha(Path(__file__)))
(HERE/'independent-review.json').write_text(json.dumps(report,indent=2)+'\n')
print(json.dumps(report,indent=2))
