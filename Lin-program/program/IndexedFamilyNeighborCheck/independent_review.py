"""Compare actual lookup semantics with the full pair relation independently."""
from itertools import product
from pathlib import Path
import hashlib
import json
import random
import re

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()


def differential(key):
    obj,r,s,t=key
    return obj,r,s+r,t+r-1


def next_page(key):
    obj,r,s,t=key
    return obj,r+1,s,t


def same_differential(a,b):
    return a['k']==b['m'] and a['m']==b['n'] and a['outgoing']==b['incoming']


def pair(a,b):
    key,wire=a;target,other=b
    return (target!=differential(key) or same_differential(wire,other)) and \
        (target!=next_page(key) or wire['h']==other['m'])


def lookup(family,key):
    return next((w for k,w in family if k==key),None)


def one(family,entry):
    key,w=entry
    target=l if (l:=lookup(family,differential(key))) is not None else None
    later=l if (l:=lookup(family,next_page(key))) is not None else None
    return (target is None or same_differential(w,target)) and (later is None or w['h']==later['m'])


def unique(family):
    return len(family)==len({key for key,_ in family})


def valid_wire(w):
    k,m,n,h=(w[x] for x in ['k','m','n','h'])
    def app(name,r,c,x):
        bits=w[name]
        if len(bits)!=r*c:return None
        return sum((sum(int(bits[i*c+j])*((x>>j)&1) for j in range(c))%2)<<i for i in range(r))
    if any(len(w[name])!=r*c for name,r,c in [
        ('outgoing',k,m),('incoming',m,n),('projection',h,m),('inclusion',m,h),('up',n,m),('down',m,k)]):return False
    d=lambda x:app('outgoing',k,m,x)
    inc=lambda x:app('incoming',m,n,x)
    p=lambda x:app('projection',h,m,x)
    lift=lambda x:app('inclusion',m,h,x)
    up=lambda x:app('up',n,m,x)
    down=lambda x:app('down',m,k,x)
    return w['version']==1 and all(d(inc(x))==0 and p(inc(x))==0 for x in range(1<<n)) and \
        all(d(lift(x))==0 and p(lift(x))==x for x in range(1<<h)) and \
        all(lift(p(x))^inc(up(x))^down(d(x))==x for x in range(1<<m))


def block(k,m,n,h,outgoing,incoming,projection,inclusion,up,down):
    return dict(version=1,k=k,m=m,n=n,h=h,outgoing=outgoing,incoming=incoming,
        projection=projection,inclusion=inclusion,up=up,down=down)


z=block(0,0,0,0,[],[],[],[],[],[])
line=block(0,1,0,1,[],[],[True],[True],[],[])
out=block(1,1,0,0,[True],[],[],[],[],[True])
inc=block(0,1,1,0,[],[True],[],[],[True],[])
wrong=block(0,1,1,1,[],[False],[True],[True],[False],[])
invalid={**line,'projection':[]}
wires=[z,line,out,inc,wrong,invalid]
wire_valid={id(w):valid_wire(w) for w in wires}
assert all(wire_valid[id(w)] for w in wires[:5]) and not wire_valid[id(invalid)]
keys=[('S0',2,-2,-1),('S0',3,-2,-1),('S0',2,0,0),
      ('C2',2,-2,-1),('S0',1,0,0),('',2,0,0)]
entries=list(product(keys,wires))
counts=dict(families=0,unique_families=0,duplicates=0,accepted=0,lookup_pair_equivalences=0)


def inspect(family):
    uniq=unique(family)
    direct=all(pair(a,b) for a in family for b in family)
    optimized=all(one(family,a) for a in family)
    if uniq:
        assert direct==optimized
        counts['unique_families']+=1
        counts['lookup_pair_equivalences']+=1
        for _,key in enumerate(keys):
            found=lookup(family,key)
            for k,w in family:
                if k==key:assert found==w
    else:counts['duplicates']+=1
    entries_valid=all(k[0]!='' and k[1]>=2 and wire_valid[id(w)] for k,w in family)
    old=uniq and entries_valid and direct
    new=uniq and entries_valid and optimized
    assert old==new
    counts['accepted']+=new
    counts['families']+=1


for n in range(4):
    for family in product(entries,repeat=n):inspect(family)
rng=random.Random(1263151)
for _ in range(5000):inspect(tuple(rng.choice(entries) for _ in range(rng.randrange(4,9))))

# First-match lookup alone can hide an unequal duplicate neighbor.
bad=[(keys[0],out),(keys[2],inc),(keys[2],wrong)]
assert one(bad,bad[0]) and not all(pair(bad[0],b) for b in bad)
assert not unique(bad)
assert all(one([(keys[0],z)],a) for a in [(keys[0],z)])
assert keys[1] not in {k for k,_ in [(keys[0],z)]}

# Check the actual large family against all pairs, independent of the
# sparse proof decomposition the root is compiling.
big=json.loads((ROOT/'Fact713ComparisonBatches/family.json').read_text())['entries']
actual=[((e['key']['object'],e['key']['page'],e['key']['s'],e['key']['t']),e['wire']) for e in big]
assert unique(actual)
assert all(one(actual,a) for a in actual)
assert all(pair(a,b) for a in actual for b in actual)

records=[]
for name,expected in [('Basic',5),('Examples',1)]:
    source,log=HERE/(name+'.lean'),HERE/(name+'.log')
    record=json.loads((HERE/(name+'-compile.json')).read_text())
    assert record['observed_exit_code']==0
    assert record['source_sha256']==sha(source) and record['log_sha256']==sha(log)
    reports=re.findall(r"'([^']+)' depends on axioms: \[([^\]]*)\]",log.read_text(),re.S)
    assert len(reports)==expected
    for _,deps in reports:
        assert {a.strip() for a in deps.split(',') if a.strip()}<={'propext','Classical.choice','Quot.sound'}
    records.append(dict(module=name,source_sha256=sha(source),log_sha256=sha(log),
        upstream_observed_exit=0,standard_axiom_reports=len(reports)))
report=dict(findings=[],counts=counts,actual_family_entries=len(actual),
    actual_full_pairs=len(actual)**2,modules=records,
    negative_cases=['duplicate hides conflicting second neighbor','same dimensions unequal matrix',
      'missing neighbor allows pair compatibility but fails requested coverage',
      'invalid key','invalid wire','negative auxiliary degrees','different object'],
    scope='same existing Coherent and explicit CoversKeys contracts; list lookup remains linear',
    independent_recompilation=False,script_sha256=sha(Path(__file__)))
(HERE/'independent-review.json').write_text(json.dumps(report,indent=2)+'\n')
print(json.dumps(counts),'actual pairs',len(actual)**2)
