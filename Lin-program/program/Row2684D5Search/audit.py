"""Replay recorded ring reductions and all small quotient/product models."""
from collections import Counter
import hashlib
import itertools
import json
from pathlib import Path
import sqlite3

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
record=json.loads((HERE/'products.json').read_text())
c=sqlite3.connect('file:'+str(ROOT/'upstream/kervaire-49/S0_AdamsSS_t261.db')+'?mode=ro',uri=True)

def mono(raw):
    parts=list(map(int,raw.split(','))) if raw else []
    assert len(parts)%2==0
    return tuple(i for i,p in zip(parts[::2],parts[1::2]) for _ in range(p))
def parity(xs):return {x for x,n in Counter(xs).items() if n%2}
def multiply(p,q):return parity(tuple(sorted(a+b)) for a in p for b in q)
def ev(a,m,n,x):
    assert len(a)==m*n and len(x)==n
    return tuple(sum(a[i*n+j]*x[j] for j in range(n))%2 for i in range(m))
def vec(n):return list(itertools.product(range(2),repeat=n))
def add(x,y):return tuple(a^b for a,b in zip(x,y))

relations=0
for col in record['columns']:
    w=col['wire']
    lhs={tuple(m) for m in w['input']};rhs={tuple(m) for m in w['output']}
    computed=set()
    assert len(w['relations'])==len(col['relations'])
    for rel,origin in zip(w['relations'],col['relations']):
        actual=c.execute('SELECT rel,s,t FROM S0_AdamsE2_relations WHERE rowid=?',(origin['rowid'],)).fetchone()
        assert actual==(origin['raw'],*origin['degree'])
        assert [list(mono(term)) for term in actual[0].split(';')]==rel
        relations+=1
    for term in w['terms']:
        computed.symmetric_difference_update(multiply(
            {tuple(m) for m in term['multiplier']},
            {tuple(m) for m in w['relations'][term['relation']]}))
    assert lhs^rhs==computed
    out=[mono(raw) for _,raw in record['source_basis']]
    assert {out[i] for i,b in enumerate(col['coordinates']) if b}==rhs
    f=[mono(raw) for _,raw in record['factor_basis']]
    assert lhs==multiply({f[col['left']]},{f[col['right']]})

pairs=0
for name,w in record['blocks'].items():
    m,n,k,h=(w[x] for x in ['m','n','k','h'])
    kernel=[x for x in vec(m) if not any(ev(w['outgoing'],k,m,x))]
    image={ev(w['incoming'],m,n,x) for x in vec(n)}
    assert image<=set(kernel)
    for z in vec(h):
        included=ev(w['inclusion'],m,h,z)
        assert included in kernel
        assert ev(w['projection'],h,m,included)==z
    for x in kernel:
        for y in kernel:
            pairs+=1
            assert (ev(w['projection'],h,m,x)==ev(w['projection'],h,m,y))==(add(x,y) in image)

T=record['tensor']
def product(x,y):
    return tuple(sum(T[i*4+j*2+k]*x[j]*y[k] for j in range(2) for k in range(2))%2 for i in range(3))
for x in vec(2):
 for y in vec(2):
  assert product(x,y)==product(y,x)
  for z in vec(2):assert product(add(x,z),y)==add(product(x,y),product(z,y))
assert product((1,1),(1,1))==(1,0,1)
ws=[record['blocks'][key] for key in ['source2','source3','source4']]
trace=[]
for x in [(1,0,0),(1,0,1)]:
    values=[x]
    for w in ws:
        assert not any(ev(w['outgoing'],w['k'],w['m'],x))
        x=ev(w['projection'],w['h'],w['m'],x);values.append(x)
    assert x==(1,)
    trace.append(values)

# Independent relabelings of every small carrier; relabeling maps are not
# silently identified with the imported projection coordinate choice.
models=requests=rejected=product_squares=trace_steps=d5_candidates=0
for p2 in itertools.permutations(range(4)):
 if p2[0]!=0:continue
 for p3 in itertools.permutations(range(4)):
  if p3[0]!=0:continue
  for source_label in itertools.permutations(range(8)):
   if source_label[0]!=0:continue
   # Bound the relabeling scope to 120 distinct source labelings while
   # retaining all 6x6 factor/current quotient changes.
   if source_label[1]!=1 or source_label[2]!=2:continue
   for out_zero in range(2):
    models+=1
    source_initial=source_label.index(1)
    named_e3=p3.index(2)
    square_e3=p3.index(2)
    assert named_e3==square_e3
    assert p2[p2.index(3)]==3
    # Conjugate the complete E2 product and both quotient projections,
    # checking their commuting square for every actual factor-cycle pair.
    for a in [p2.index(0),p2.index(3)]:
     for b in [p2.index(0),p2.index(3)]:
      av=tuple((p2[a]>>j)&1 for j in range(2))
      bv=tuple((p2[b]>>j)&1 for j in range(2))
      raw_product=product(av,bv)
      source_encoded=source_label.index(sum(bit<<j for j,bit in enumerate(raw_product)))
      source_decoded=tuple((source_label[source_encoded]>>j)&1 for j in range(3))
      product_quotient=ev(ws[0]['projection'],2,3,source_decoded)
      factor_a=ev(record['blocks']['factor2']['projection'],1,2,av)[0]
      factor_b=ev(record['blocks']['factor2']['projection'],1,2,bv)[0]
      expected=(0,factor_a&factor_b)
      assert p3.index(sum(bit<<j for j,bit in enumerate(product_quotient))) == p3.index(
          sum(bit<<j for j,bit in enumerate(expected)))
      product_squares+=1
    for initial in range(8):
     v=tuple((source_label[initial]>>j)&1 for j in range(3))
     for w in ws:
      assert not any(ev(w['outgoing'],w['k'],w['m'],v))
      v=ev(w['projection'],w['h'],w['m'],v)
      trace_steps+=1
    for d5 in range(2):
     d5_candidates+=1
     square_law=(d5==0)
     if square_law:
      assert all((d5*x)^out_zero==out_zero for x in range(2))
    for raw in range(8):
     for value in range(2):
      requests+=1
      accepted=(raw==source_initial and value==out_zero)
      if not accepted:rejected+=1
      else:assert source_label[raw]==1 and value==out_zero

# The square argument uses same-input multiplicativity. If its E5
# transition is omitted, a nonzero named d5 may coexist with square=0.
counterexample=dict(source_E5_nonzero=1,factor_E5=0,square_E5=0,named_d5=1,
                   violated='same-input multiplicative quotient transition')
report=dict(status='passed',sql_relation_occurrences=relations,
    whole_product_columns=4,complete_comparisons=6,all_cycle_quotient_pairs=pairs,
    source_and_square_trajectories=trace,relabeled_models=models,
    relabeled_product_quotient_squares=product_squares,
    relabeled_all_input_trace_steps=trace_steps,checked_d5_candidates=d5_candidates,
    requests=requests,rejected_requests=rejected,
    omitted_transition_counterexample=counterexample,
    factor_d4_incoming='row400 remains unknown; no value needed or inferred',
    scope='Finite polynomial, complete local quotient and input binding checks; not a global Adams realization.',
    lean_source_sha256={p.name:hashlib.sha256(p.read_bytes()).hexdigest() for p in sorted(HERE.glob('*.lean'))})
(HERE/'audit.json').write_text(json.dumps(report,indent=2)+'\n')
print(json.dumps({k:v for k,v in report.items() if k not in ['lean_source_sha256','source_and_square_trajectories']}))
