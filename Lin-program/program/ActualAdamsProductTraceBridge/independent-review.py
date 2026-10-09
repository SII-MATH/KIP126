"""Independent actual-trace contracts, raw names and nontrivial quotient replay."""
import hashlib
import itertools
import json
from pathlib import Path
import re
import sqlite3

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
db = ROOT / 'upstream/kervaire-49/S0_AdamsSS_t261.db'
sql = sqlite3.connect(f'file:{db}?mode=ro',uri=True)
targets = [(6,25),(7,26),(11,55),(12,56),(13,57)]
for degree in targets:
    assert list(sql.execute('SELECT id FROM S0_AdamsE2_basis WHERE s=? AND t=?',degree)) == []
names = {row:list(sql.execute('SELECT id,mon,d2,s,t FROM S0_AdamsE2_basis WHERE id=?',(row,)).fetchone())
         for row in [72,296,3994]}
assert names == {72:[72,'13,1','',4,24],296:[296,'51,1','',9,54],3994:[3994,'13,4,51,1','',25,150]}
incoming = list(sql.execute('SELECT id,base,diff,level,s,t FROM S0_AdamsE2_ss WHERE id=279').fetchone())
assert incoming == [279,'0',None,9000,6,52]
sql.close()
degrees = [((4,24),(4,24)),((8,48),(8,48)),((16,96),(9,54))]
assert [tuple(a+b for a,b in zip(*pair)) for pair in degrees] == [(8,48),(16,96),(25,150)]
assert len([(r,pair) for r in [2,3] for pair in degrees]) == 6

def mul(a,b,n):
    out=0
    for i in range(n):
        if (a>>i)&1:
            out ^= b<<i
    return out & ((1<<n)-1)

def power(a,k,n):
    out=1
    for _ in range(k):
        out=mul(out,a,n)
    return out

def ringmap(a,image,n):
    out=0
    bit=0
    while a:
        if a&1:
            out ^= power(image,bit,n)
        bit+=1
        a >>= 1
    return out

def onto_maps(m,n):
    values=[]
    for image in range(1<<n):
        if power(image,m,n) != 0:
            continue
        mapping=[ringmap(x,image,n) for x in range(1<<m)]
        if set(mapping) != set(range(1<<n)):
            continue
        for x,y in itertools.product(range(1<<m),repeat=2):
            assert mapping[x^y] == mapping[x]^mapping[y]
            assert mapping[mul(x,y,m)] == mul(mapping[x],mapping[y],n)
        values.append(mapping)
    return values

maps={(m,n):onto_maps(m,n) for m in [1,2,4] for n in [1,2,4] if n<=m}
towers=trace_pairs=named_pairs=killed=nontrivial=0
for middle in [1,2,4]:
    for last in [1,2,4]:
        if last>middle:
            continue
        for first,second in itertools.product(maps[4,middle],maps[middle,last]):
            towers+=1
            nontrivial += middle<4 or last<middle
            for x,y in itertools.product(range(16),repeat=2):
                product=mul(x,y,4)
                x1,y1=first[x],first[y]
                p1=first[product]
                assert p1==mul(x1,y1,middle)
                x2,y2=second[x1],second[y1]
                p2=second[p1]
                assert p2==mul(x2,y2,last)
                trace_pairs+=1
                initial_name=mul(power(x,4,4),y,4)
                advanced_name=second[first[initial_name]]
                final_product=mul(power(x2,4,last),y2,last)
                assert advanced_name==final_product
                named_pairs+=1
                killed += initial_name!=0 and advanced_name==0

def linear_map(cols,x):
    return (cols[0] if x&1 else 0) ^ (cols[1] if x&2 else 0)
invertible=[]
nonmultiplicative=[]
for cols in itertools.product(range(4),repeat=2):
    if len({linear_map(cols,x) for x in range(4)})!=4:
        continue
    invertible.append(cols)
    assert linear_map(cols,0)==0
    if any(linear_map(cols,mul(x,y,2))!=mul(linear_map(cols,x),linear_map(cols,y),2)
           for x,y in itertools.product(range(4),repeat=2)):
        nonmultiplicative.append(cols)
assert len(invertible)==6 and len(nonmultiplicative)==5

build=[]
reports=0
records=json.loads((HERE/'compile-audit.json').read_text())
assert {row['module'] for row in records}=={'Basic','Factors','Named','Assembly'}
for row in records:
    assert row['exit_code']==0
    for path,expected in row['input_sha256'].items():
        assert sha(ROOT/path)==expected,path
    name=row['module']
    assert sha(HERE/(name+'.log'))==row['log_sha256']
    log=(HERE/(name+'.log')).read_text()
    dependencies=re.findall(r'depends on axioms: \[([^]]*)\]',log)
    assert all({x.strip() for x in group.split(',')}<={'propext','Classical.choice','Quot.sound'}
               for group in dependencies)
    count=len(dependencies)+log.count('does not depend on any axioms')
    reports+=count
    build.append(dict(module=name,observed_exit_code=0,standard_axiom_reports=count))
assert reports==14
files=[HERE/(row['module']+'.lean') for row in records]+[HERE/'README.md',
    ROOT/'ManualInputObligations/Typed.lean',ROOT/'ManualInputObligations/Reference/AdamsRules.lean',
    ROOT/'ActualAdamsProductCycleBridge/Basic.lean',ROOT/'ActualAdamsProductCycleBridge/Zero.lean',
    ROOT/'ActualAdamsProductCycleBridge/Finite.lean',ROOT/'ActualAdamsSystemBridge/Trace.lean']
result=dict(status='independent_review_passed',findings=[],reviewer='/root/map_search_next',
    source=dict(empty_E2_target_degrees=targets,raw_named_basis_rows=names,
        unknown_incoming_row279=incoming,local_squares=6),
    nontrivial_replay=dict(rings='F2[t]/t^m for m=4,2,1',
        all_surjective_unital_ring_maps={f'{m}->{n}':len(v) for (m,n),v in maps.items()},
        two_transition_towers=towers,dimension_decreasing_towers=nontrivial,
        product_trace_pairs=trace_pairs,named_fourth_product_trace_pairs=named_pairs,
        nonzero_named_products_killed_by_quotient=killed,
        zero_preserving_linear_equivalences=len(invertible),
        nonmultiplicative_counterexamples=len(nonmultiplicative)),
    semantics=[
        'Transition is a full local cycle-pair multiplicativity equation; it does not contain any named trace.',
        'trace_product inducts over two actual traces with endpoint alignment and only uses pages 2 <= q < r.',
        'Factor traces are derived from full actual empty-target interpretations and actual homology identifications.',
        'namedTrace composes squares at exactly the three degree pairs on pages2 and3.',
        'True E2 name equality is used before constructing the named E4 trace.',
        'Actual endpoint is identified with System.at initialName 2; its d4-cycle is independently derived from the fifth zero target.',
        'Finite kernel transport uses the full actual differential equation and exact named coordinate condition.'],
    not_claimed=['Derivation of multiplicativity from type/additive equivalences',
        'Nonzero or nonboundary factor/endpoint', 'Proof of unknown incoming row279',
        'Automatic actual faithfulness from five empty SQL queries',
        'Actual all-cycle uniqueness without WholeMeaning', 'Cross-page generalized differential rule',
        'Specific topology or convergence'],
    build_evidence=build,
    inputs_sha256={str(p.relative_to(ROOT)):sha(p) for p in files})
(HERE/'independent-review.json').write_text(json.dumps(result,indent=2)+'\n')
print(f'Independent review passed: {towers} quotient-product towers, {trace_pairs} product traces, '
      f'{named_pairs} named traces, {killed} killed nonzero products;4direct0/14reports')
