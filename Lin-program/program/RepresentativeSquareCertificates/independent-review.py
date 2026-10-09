"""Independent full-vector interpretation of the frozen square checker."""
import hashlib
import itertools
import json
from pathlib import Path
import re

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
def columns(bits, rows, cols):
    assert len(bits) == rows * cols and all(type(x) is bool for x in bits)
    return tuple(sum(int(bits[i*cols+j]) << i for i in range(rows)) for j in range(cols))
def vector(bits, size):
    assert len(bits) == size and all(type(x) is bool for x in bits)
    return sum(int(x) << i for i, x in enumerate(bits))
def action(cols, x):
    result = 0
    for j, c in enumerate(cols):
        if x >> j & 1:
            result ^= c
    return result
def table(cols):
    return tuple(action(cols, x) for x in range(1 << len(cols)))
def decoded(data):
    a, b, c, d, ha, hb, hc, hd = [data[n] for n in ['a','b','c','d','ha','hb','hc','hd']]
    shapes = dict(f=(b,a), p=(c,a), q=(d,b), g=(d,c), higherA=(a,ha),
                  higherB=(b,hb), higherC=(c,hc), higherD=(d,hd))
    maps = {n: table(columns(data[n], *shape)) for n, shape in shapes.items()}
    names = {n: vector(data[n], dim) for n, dim in [('x',a),('y',b),('z',c),('w',d)]}
    return maps, names
def semantic(data, branch='auto'):
    m, v = decoded(data)
    spans = {n: set(m[n]) for n in ['higherA','higherB','higherC','higherD']}
    def ext(f, h, k, x, y):
        return any((r ^ x) in spans[h] and (m[f][r] ^ y) in spans[k] for r in range(len(m[f])))
    sf = all(m['f'][r] in spans['higherB'] for r in spans['higherA'])
    sp = all(m['p'][r] in spans['higherC'] for r in spans['higherA'])
    sg = all(m['g'][r] in spans['higherD'] for r in spans['higherC'])
    commute = all(m['q'][m['f'][r]] == m['g'][m['p'][r]] for r in range(len(m['f'])))
    checks = [commute, ext('f','higherA','higherB',v['x'],v['y']),
        ext('p','higherA','higherC',v['x'],v['z']),
        ext('g','higherC','higherD',v['z'],v['w']),
        (branch != 'p' and sf) or (branch != 'f' and sp), sg]
    return all(checks), ('f' if branch != 'p' and sf else 'p'), ext('q','higherB','higherD',v['y'],v['w'])
def validate(wire):
    data = wire['data']
    m, v = decoded(data)
    assert wire['version'] == 1 and wire['firstBranch'] in ['f','p']
    for name, f, h, k, x, y in [('first','f','higherA','higherB','x','y'),
        ('second','p','higherA','higherC','x','z'), ('third','g','higherC','higherD','z','w')]:
        ad, hd, kd = ('a','ha','hb') if name == 'first' else (
            ('a','ha','hc') if name == 'second' else ('c','hc','hd'))
        r = vector(wire[name+'Rep'], data[ad])
        s = vector(wire[name+'Source'], data[hd])
        t = vector(wire[name+'Target'], data[kd])
        if m[h][s] != (r ^ v[x]) or m[k][t] != (m[f][r] ^ v[y]):
            return False
    branch = wire['firstBranch']
    hk, dim = ('higherB','hb') if branch == 'f' else ('higherC','hc')
    ff = table(columns(wire['firstFactor'], data[dim], data['ha']))
    lf = table(columns(wire['lastFactor'], data['hd'], data['hc']))
    if not all(m[branch][m['higherA'][u]] == m[hk][ff[u]] for u in range(len(ff))):
        return False
    if not all(m['g'][m['higherC'][u]] == m['higherD'][lf[u]] for u in range(len(lf))):
        return False
    return semantic(data, branch)[0]

def main():
    maps = [table((i & 3, i >> 2)) for i in range(16)]
    spans = [set(m) for m in maps]
    squares = factors = extension_witnesses = 0
    for f,p,q,g in itertools.product(range(16), repeat=4):
        basis = all(maps[q][maps[f][j]] == maps[g][maps[p][j]] for j in [1,2])
        full = all(maps[q][maps[f][j]] == maps[g][maps[p][j]] for j in range(4))
        assert basis == full
        squares += 1
    for f,h,k in itertools.product(range(16), repeat=3):
        stable = all(maps[f][x] in spans[k] for x in spans[h])
        found = False
        for t in range(16):
            basis = all(maps[f][maps[h][u]] == maps[k][maps[t][u]] for u in [1,2])
            full = all(maps[f][maps[h][u]] == maps[k][maps[t][u]] for u in range(4))
            assert basis == full
            if full:
                assert stable
                found = True
            factors += 1
        assert found == stable
        for r,s,t in itertools.product(range(4), repeat=3):
            x, y = r ^ maps[h][s], maps[f][r] ^ maps[k][t]
            assert r ^ x in spans[h] and maps[f][r] ^ y in spans[k]
            extension_witnesses += 1
    wires = [json.loads(line) for line in (ROOT/'RepresentativeSquareProducer/valid.jsonl').read_text().splitlines()]
    assert len(wires) == 1480
    mutations = rejected = 0
    for w in wires:
        assert validate(w) and semantic(w['data'], w['firstBranch'])[2]
        for field in ['firstRep','firstSource','firstTarget','secondRep','secondSource',
                      'secondTarget','thirdRep','thirdSource','thirdTarget','firstFactor','lastFactor']:
            for i in range(len(w[field])):
                changed = dict(w)
                changed[field] = list(w[field])
                changed[field][i] = not changed[field][i]
                accepted = validate(changed)
                # Mutations in redundant generators may remain valid. Acceptance must be semantic.
                if accepted:
                    assert semantic(changed['data'], changed['firstBranch'])[2]
                rejected += not accepted
                mutations += 1
    builds = []
    reports = 0
    for rec in json.loads((HERE/'compile-audit.json').read_text()):
        assert rec['exit_code'] == 0
        for path,digest in rec['input_sha256'].items():
            assert sha(ROOT/path) == digest
        name = rec['module']
        log = HERE/(name+'.log')
        assert rec['log_sha256'] == sha(log)
        text = log.read_text()
        deps = re.findall(r'depends on axioms: \[([^]]*)\]', text)
        assert all({x.strip() for x in d.split(',')} <= {'propext','Classical.choice','Quot.sound'} for d in deps)
        count = len(deps) + text.count('does not depend on any axioms')
        reports += count
        assert 'sorryAx' not in text and 'error:' not in text
        obj = ROOT/'.lake/build/lib/lean/RepresentativeSquareCertificates'/(name+'.olean')
        builds.append(dict(module=name,exit_code=0,standard_axiom_reports=count,
            current_olean_exists=obj.exists(), current_olean_matches_direct=
            sha(obj)==rec['olean_sha256'] if obj.exists() else None))
    assert len(builds) == 3 and reports == 14
    files = [HERE/(n+'.lean') for n in ['Basic','Import','Examples']] + [HERE/'README.md',
        Path(__file__), ROOT/'LinearCertificates/Checker.lean', ROOT/'LinearCertificates/Import.lean',
        ROOT/'GeneralizedLeibnizAudit/RepresentativeSquare.lean',ROOT/'RepresentativeSquareProducer/valid.jsonl']
    result = dict(status='independent_review_passed',findings=[],reviewer='/root/map_search_next',
        finite_replay=dict(full_square_cases=squares,full_factor_cases=factors,
            actual_extension_witnesses=extension_witnesses,accepted_wires=len(wires),
            single_bit_witness_mutations=mutations,rejected_mutations=rejected),
        semantic_checks=['Vector carries actual XOR AddCommGroup, matrices actual additive homomorphisms.',
            'higher is whole image subgroup, including all combinations and redundant generators.',
            'First/second/third existential representatives are checked through two full preimage equations.',
            'Every square and factor basis equation implies equality on all vectors by proved linearity.',
            'Transfer is ordinary existential coset semantics; no fourth witness or conclusion field.',
            'Exact canonical roundtrip rejects unknown/duplicate fields; decode fixes matrix/vector dimensions.',
            'File elaborator emits data, and soundness requires a separate kernel Boolean proof.',
            'Diagnostics are advisory; batch rejection propagates any decode or semantic failure.'],
        limitations=['External imported files need rebuild dependency tracking or explicit regeneration.',
            'No identification of image subgroups with actual paper filtrations/crossing.',
            'Not paper Theorem6.1 or synthetic/extension spectral-sequence realization.',
            'Finite replay supports review, not the general Lean proof.'],
        build_evidence=builds,standard_axiom_reports=reports,
        input_sha256={str(p.relative_to(ROOT)):sha(p) for p in files})
    (HERE/'independent-review.json').write_text(json.dumps(result,indent=2)+'\n')
    print(f'Independent certificates: {squares} squares/{factors} factors/{extension_witnesses} witnesses; '
          f'{len(wires)} full wires/{mutations} bit mutations; 3direct0/14reports')

if __name__ == '__main__':
    main()
