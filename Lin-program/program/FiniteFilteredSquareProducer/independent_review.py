"""Independent row-tuple group oracle; never imports the producer's test code."""
import copy
import hashlib
import itertools
import json
from pathlib import Path
import random
import subprocess

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
encode = lambda x: json.dumps(x, sort_keys=True, separators=(',', ':'))
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()

def add(x, y):
    return tuple(a != b for a, b in zip(x, y))

def evaluate(raw, rows, cols, v):
    assert len(raw) == rows*cols and len(v) == cols
    return tuple(sum(raw[i*cols+j] and v[j] for j in range(cols)) % 2 == 1 for i in range(rows))

def span(raw, rows, cols):
    out = {tuple(False for _ in range(rows))}
    for j in range(cols):
        column = tuple(raw[i*cols+j] for i in range(rows))
        out |= {add(x, column) for x in out}
    return out

def context(d):
    spaces = {}
    for g in 'ABCD':
        rows, cols = d[g.lower()], d['h'+g.lower()]
        spaces[g] = [span(m, rows, cols) for m in d['source'+g]]
        spaces[g].append({tuple(False for _ in range(rows))})
    level = lambda g, i: spaces[g][min(i, d['depth'])]
    fs = {name: (lambda v, name=name, a=a, b=b: evaluate(d[name], d[b], d[a], v))
          for name, a, b in [('f','a','b'),('p','a','c'),('q','b','d'),('g','c','d')]}
    return level, fs

def oracle(query):
    d = query['data']; L, f = context(d)
    s, n, m, l = (d[k] for k in ['s','n','m','l'])
    if n > m+l:
        return False, False
    if any(not L(g,i+1) <= L(g,i) for g in 'ABCD' for i in range(d['depth'])):
        return False, False
    edges = [('f','A','B'),('p','A','C'),('q','B','D'),('g','C','D')]
    if any(not {f[e](v) for v in L(a,i)} <= L(b,i) for e,a,b in edges for i in range(d['depth'])):
        return False, False
    if any(f['q'](f['f'](v)) != f['g'](f['p'](v))
           for v in itertools.product([False,True],repeat=d['a'])):
        return False, False
    x,y,z,w = (tuple(d[k]) for k in 'xyzw')
    if any(v not in L(g,i) for g,i,v in zip('ABCD',[s,s+n,s+m,s+m+l],[x,y,z,w])):
        return False, False
    for e,a,b,i,j,u,v in [('f','A','B',s,s+n,x,y),('p','A','C',s,s+m,x,z),
                         ('g','C','D',s+m,s+m+l,z,w)]:
        if not any(add(f[e](add(u,h)),v) in L(b,j+1) for h in L(a,i+1)):
            return False, False
    sf = {f['f'](v) for v in L('A',s+1)} <= L('B',s+n+1)
    sp = {f['p'](v) for v in L('A',s+1)} <= L('C',s+m+1)
    branch = query['firstBranch']
    if not {'auto':sf or sp,'f':sf,'p':sp}[branch]:
        return False, False
    if not {f['g'](v) for v in L('C',s+m+1)} <= L('D',s+m+l+1):
        return False, False
    # Literal fourth source cycles and quotient relation, evaluated separately.
    Z = {v for v in L('B',s+n) if f['q'](v) in L('D',s+m+l)}
    H = {v for v in L('B',s+n+1) if f['q'](v) in L('D',s+m+l)}
    relations = {add(k,f['q'](h)) for k in L('D',s+m+l+1) for h in H}
    assert any(add(v,y) in L('B',s+n+1) and add(f['q'](v),w) in relations for v in Z)
    return True, f['q'](y) not in L('D',s+m+l)

rng = random.Random(1262026)
queries = [json.loads(x) for x in (HERE/'valid.input.jsonl').read_text().splitlines()]
original_count = len(queries)
# Mutate mathematical input, not only witnesses, and probe both alternatives.
for q in queries[:original_count]:
    for field in ['f','p','q','g','x','y','z','w']:
        if q['data'][field]:
            c = copy.deepcopy(q); j = rng.randrange(len(c['data'][field]))
            c['data'][field][j] = not c['data'][field][j]
            queries.append(c)
    for branch in ['f','p']:
        c = copy.deepcopy(q); c['firstBranch'] = branch; queries.append(c)
for _ in range(1800):
    d = {k:rng.randrange(4) for k in ['a','b','c','d','ha','hb','hc','hd']}
    d.update(depth=rng.randrange(4),s=rng.randrange(4),n=rng.randrange(4),m=rng.randrange(4),l=rng.randrange(4))
    bitlist = lambda n:[bool(rng.randrange(2)) for _ in range(n)]
    for e,a,b in [('f','a','b'),('p','a','c'),('q','b','d'),('g','c','d')]:
        d[e] = bitlist(d[a]*d[b])
    for g,v in zip('ABCD','xyzw'):
        d['source'+g] = [bitlist(d[g.lower()]*d['h'+g.lower()]) for _ in range(d['depth'])]
        d[v] = bitlist(d[g.lower()])
    queries.append(dict(version=1,data=d,firstBranch=rng.choice(['auto','f','p'])))
answers = [oracle(q) for q in queries]
expected = [q for q,a in zip(queries,answers) if a[0]]
run = subprocess.run([str(HERE/'finite-filtered-square-export')],
    input=''.join(encode(q)+'\n' for q in queries),text=True,capture_output=True)
assert run.returncode == 1
outputs = run.stdout.splitlines()
assert len(outputs) == len(expected)
for line,q in zip(outputs,expected):
    w = json.loads(line)
    assert line == encode(w) and w['data'] == q['data']
    assert q['firstBranch'] == 'auto' or w['firstBranch'] == q['firstBranch']
    assert oracle(dict(q,firstBranch=w['firstBranch']))[0]
badrows = [i for i,a in enumerate(answers,1) if not a[0]]
assert len(run.stderr.splitlines()) == len(badrows)
assert all(line.startswith(f'stdin:{i}:') for i,line in zip(badrows,run.stderr.splitlines()))
base = encode(expected[0])
malformed = [base+'\x00',base+'\x00junk',base+'{}','',base[:-1]+',"version":1}',
             base.replace('"version":1','"version":01'),base.replace('"version":1','"version":1.0'),
             base.replace('"version":1','"version":true')]
for field in ['a','b','c','d','ha','hb','hc','hd','s','n','m','l','depth']:
    for value in [-1,65,True,None]:
        c=copy.deepcopy(expected[0]);c['data'][field]=value;malformed.append(encode(c))
for marker in ['external_input','?','possibly','[NULL]',None,0,1]:
    c=copy.deepcopy(expected[0]);c['data']['f'][0]=marker;malformed.append(encode(c))
for line in malformed:
    r=subprocess.run([str(HERE/'finite-filtered-square-export')],input=base+'\n'+line+'\n'+base+'\n',
        text=True,capture_output=True)
    assert r.returncode==1 and len(r.stdout.splitlines())==2
    assert len(r.stderr.splitlines())==1 and r.stderr.startswith('stdin:2:')
report=dict(status='independent_actual_quotient_oracle_passed',queries=len(queries),accepted=len(expected),
    rejected=len(badrows),accepted_noncycle_fourth_inputs=sum(a[1] for a in answers),strict_negative_cases=len(malformed),
    source_sha256=sha(HERE/'export.cpp'),review_sha256=sha(Path(__file__)),
    parser_sha256=sha(ROOT/'IndexedFamilyProducer/json.hpp'),valid_fixture_sha256=sha(HERE/'valid.jsonl'))
(HERE/'independent-review.json').write_text(json.dumps(report,indent=2)+'\n')
print(report)
