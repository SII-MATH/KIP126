#!/usr/bin/env python3
"""Automatic local replay extraction; generated Lean checks polynomial identities only.

No target-specific monomials or reduction paths are embedded. This does not
certify page states, basis completeness, d2 seeds, or a DifferentialStatement.
"""
import argparse
from collections import defaultdict
import csv
import io
import json
from pathlib import Path
import re
import sqlite3
import time

from replay152098 import pinned, mon, mul, polynomial

EQ = r"`(\w+) \((\d+),(\d+)\) d_(\d+)\[([\d,]*)\]=\[([\d,]*)\]`"
STEP = re.compile(r"Get " + EQ + r"\. Apply the Leibniz rule with " + EQ +
                  r" and get " + EQ + r"\.")
BOUNDARY = re.compile(r"However, `(\w+) \((\d+),(\d+)\) \[([\d,]*)\]` is not in B_(\d+)\.")


def label(groups):
    name, stem, s, r, x, dx = groups
    s, stem, r = int(s), int(stem), int(r)
    return dict(name=name, s=s, t=s+stem, r=r,
                x=list(map(int, x.split(','))) if x else [],
                dx=list(map(int, dx.split(','))) if dx else [])


def divides(a, b):
    b = dict(b)
    return all(b.get(g, 0) >= n for g, n in a)


def quotient(b, a):
    a = dict(a)
    return tuple((g, n-a.get(g, 0)) for g, n in b if n>a.get(g, 0))


def lean_mon(m):
    return ' * '.join(f'X {g}' + (f' ^ {n}' if n != 1 else '') for g,n in m) or '1'


def lean_poly(p):
    return ' + '.join(lean_mon(m) for m in sorted(p)) or '0'


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--row', type=int, default=152098)
    parser.add_argument('--output-dir', type=Path, required=True)
    args = parser.parse_args()
    start = time.perf_counter()
    times = {}
    paths = {}; hashes = {}; tables = {}
    for name in ['proofs.db', 'S0_AdamsE2_basis.csv', 'S0_AdamsE2_relations.csv']:
        path, data, digest = pinned(name)
        paths[name] = path; hashes[name] = digest
        if name.endswith('.csv'):
            tables[name] = list(csv.DictReader(io.StringIO(data.decode('utf-16'))))
    times['input_load_and_hash_s'] = time.perf_counter()-start
    conn = sqlite3.connect(f"file:{paths['proofs.db']}?mode=ro", uri=True)
    conn.row_factory = sqlite3.Row
    target = dict(conn.execute('select * from log where id=?', (args.row,)).fetchone())
    trial = None
    for row in conn.execute('select * from log where id<? order by id desc limit 100', (args.row,)):
        if row['reason']=='T' and row['depth']==target['depth']+1 and all(
                row[k]==target[k] for k in ['name','s','t','r','x']):
            trial = dict(row); break
    if trial is None: raise ValueError('no matching nearby trial')
    step = STEP.search(trial['info'] or '')
    boundary = BOUNDARY.search(trial['info'] or '')
    if step is None or boundary is None: raise ValueError('unsupported log grammar')
    steps = [label(step.groups()[i:i+6]) for i in range(0,18,6)]
    times['trial_lookup_and_parse_s'] = time.perf_counter()-start-sum(times.values())
    prefix = defaultdict(list); reasons = defaultdict(int); count = 0
    for row in conn.execute('select * from log where id<? order by id', (trial['id'],)):
        count += 1; reasons[row['reason']] += 1
        if row['depth']==0:
            prefix[row['name'],row['s'],row['t']].append(dict(row))
    times['prefix_index_s'] = time.perf_counter()-start-sum(times.values())
    basis = defaultdict(dict)
    for row in tables['S0_AdamsE2_basis.csv']:
        basis[int(row['s']),int(row['s'])+int(row['stem'])][int(row['index'])] = row
    def vector(s,t,indices):
        p = set()
        for i in indices: p.symmetric_difference_update({mon(basis[s,t][i]['mon'])})
        return p
    a,x,ax = steps[1],steps[0],steps[2]
    if {v['name'] for v in steps}!={'S0'}: raise ValueError('sphere slice only')
    def product(p,q):
        result = set()
        for u in p:
            for v in q: result.symmetric_difference_update({mul(u,v)})
        return result
    av = vector(a['s'],a['t'],a['x'])
    inputs = [product(av, vector(x['s'],x['t'],x['x'])),
              product(av, vector(x['s']+x['r'],x['t']+x['r']-1,x['dx']))]
    expected = [vector(ax['s'],ax['t'],ax['x']),
                vector(ax['s']+ax['r'],ax['t']+ax['r']-1,ax['dx'])]
    max_t = ax['t']+ax['r']-1
    relations = []
    for row in tables['S0_AdamsE2_relations.csv']:
        if int(row['s'])+int(row['stem']) <= max_t:
            relations.append((mon(row['rel'].split(';')[0]), polynomial(row['rel']), row['rel']))
    checks = 0; certificates = []
    for original,wanted in zip(inputs,expected):
        pending = set(original); remainder = set(); trace = []
        while pending:
            term = max(pending); found = None
            for lead,rel,code in relations:
                checks += 1
                if divides(lead,term): found=(lead,rel,code); break
            if found is None:
                pending.remove(term); remainder.symmetric_difference_update({term}); continue
            lead,rel,code = found; factor=quotient(term,lead)
            pending.symmetric_difference_update({mul(factor,m) for m in rel})
            trace.append(dict(factor=factor,relation=code))
            if len(trace)>1000: raise ValueError('reduction does not terminate')
        if remainder!=wanted: raise ValueError('reduced product differs from log')
        certificates.append(dict(input=sorted(original),output=sorted(remainder),trace=trace))
    times['local_algebra_s'] = time.perf_counter()-start-sum(times.values())
    lean = ['import Mathlib.RingTheory.MvPolynomial.Basic',
            'import Mathlib.Data.ZMod.Basic', 'import Mathlib.Tactic.Ring',
            '-- Generated from log products. Polynomial identities only, not a row proof.',
            'open MvPolynomial', 'namespace Replay152098',
            'abbrev P := MvPolynomial (Fin 4096) (ZMod 2)']
    for i,c in enumerate(certificates):
        rhs = ' + '.join('('+lean_mon(t['factor'])+') * ('+
                        lean_poly(polynomial(t['relation']))+')' for t in c['trace']) or '0'
        lean += [f'theorem productWitness{i} :',
                 f'    ({lean_poly(c["input"])} : P) = ({lean_poly(c["output"])}) + ({rhs}) := by',
                 '  have htwo : (2 : P) = 0 := by',
                 '    simpa only [map_ofNat, map_zero] using',
                 '      congrArg (C : ZMod 2 →+* P) (show (2 : ZMod 2) = 0 from rfl)',
                 '  ring_nf <;> simp only [htwo, mul_zero, add_zero]',
                 f'#print axioms productWitness{i}']
    lean += ['end Replay152098']
    args.output_dir.mkdir(parents=True,exist_ok=True)
    (args.output_dir/'GeneratedProductWitnesses.lean').write_text('\n'.join(lean)+'\n')
    related_degrees = {(x['s'],x['t']), (x['s']+x['r'],x['t']+x['r']-1),
                       (ax['s']+ax['r'],ax['t']+ax['r']-1)}
    for s,t in list(related_degrees):
        related_degrees.update((s-r,t-r+1) for r in range(2,x['r']))
    evidence = {f'{s},{t}':prefix['S0',s,t] for s,t in sorted(related_degrees)}
    report = dict(status='automatic-local-extraction; full-semantic-replay-not-implemented',
                  target=target,trial=trial,parsed_steps=steps,boundary=boundary.groups(),
                  source_hashes=hashes,timings=times,prefix_rows_read=count,
                  prefix_degree_keys=len(prefix),prefix_reason_counts=dict(reasons),
                  low_degree_relations=len(relations),divisibility_checks=checks,
                  certificates=certificates,local_history=evidence,
                  unresolved=['Historical page state and exhaustive candidate set',
                              'd2 seed correctness and actual E4 Leibniz',
                              'Basis independence and nonzero modulo earlier boundaries'],
                  total_s=time.perf_counter()-start)
    (args.output_dir/'benchmark.json').write_text(json.dumps(report,indent=2)+'\n')
    print(json.dumps({k:report[k] for k in ['timings','prefix_rows_read','prefix_degree_keys',
                                         'low_degree_relations','divisibility_checks','total_s']}))


if __name__=='__main__': main()
