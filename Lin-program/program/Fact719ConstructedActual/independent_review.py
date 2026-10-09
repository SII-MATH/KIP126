"""Root review: exact SQL names, all finite quotients and actual input binding."""
import hashlib
import itertools
import json
from pathlib import Path
import re
import sqlite3

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
load = lambda p: json.loads(p.read_text())
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
source = load(ROOT / 'Fact719TrajectoryCertificates/source.json')
db = ROOT / 'upstream/kervaire-49/S0_AdamsSS_t261.db'
assert sha(db) == source['database_sha256']
with sqlite3.connect(f'file:{db}?mode=ro', uri=True) as sql:
    assert sql.execute('SELECT s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=2433').fetchone() == (8,130,'0',None,9994)
    assert sql.execute('SELECT mon,d2 FROM S0_AdamsE2_basis WHERE id=2433').fetchone() == ('1,1,323,1','')
    assert sql.execute('SELECT name,s,t FROM S0_AdamsE2_generators WHERE id=1').fetchone()[1:] == (1,2)

def evaluate(bits, rows, cols, vector):
    assert len(bits) == rows * cols
    return tuple(sum(int(bits[i*cols+j]) * vector[j] for j in range(cols)) % 2
                 for i in range(rows))

def vectors(n):
    return list(itertools.product((0,1), repeat=n))

cycle_pairs = 0
for r in range(2,6):
    w = source['blocks'][f'b8_130_{r}']['wire']
    n,m,k,h = (w[f] for f in ['n','m','k','h'])
    assert (n,m,k,h) == (0,1,0 if r == 3 else 1,1)
    inc = lambda v: evaluate(w['incoming'],m,n,v)
    out = lambda v: evaluate(w['outgoing'],k,m,v)
    proj = lambda v: evaluate(w['projection'],h,m,v)
    inclusion = lambda v: evaluate(w['inclusion'],m,h,v)
    boundaries = {inc(v) for v in vectors(n)}
    cycles = [v for v in vectors(m) if out(v) == (0,)*k]
    assert (1,) in cycles and (1,) not in boundaries and proj((1,)) == (1,)
    assert all(inclusion(v) in cycles and proj(inclusion(v)) == v for v in vectors(h))
    for x,y in itertools.product(cycles,repeat=2):
        assert (proj(x) == proj(y)) == (tuple(a^b for a,b in zip(x,y)) in boundaries)
        cycle_pairs += 1

reports = {}
for leaf in ['Basic','Trace','Tactic']:
    rec = load(HERE / (leaf + '-compile.json'))
    src, log = HERE / (leaf + '.lean'), HERE / (leaf + '.log')
    assert rec['observed_exit_code'] == 0 and rec['source_sha256'] == sha(src)
    assert rec['log_sha256'] == sha(log)
    assert not re.search(r'error:|sorryAx|Lean\.ofReduceBool', log.read_text())
    axioms = re.findall(r'depends on axioms: \[([^\]]*)\]', log.read_text())
    for values in axioms:
        assert set(filter(None,map(str.strip,values.split(',')))) <= {'propext','Classical.choice','Quot.sound'}
    reports[leaf] = len(axioms) + log.read_text().count('does not depend on any axioms')
assert sum(reports.values()) == 21
inputs = [HERE / (leaf+'.lean') for leaf in reports] + [ROOT / 'Fact719TrajectoryCertificates/source.json']
report = dict(status='no_correctness_findings',findings=[],axiom_reports=reports,
    complete_quotient_pairs=cycle_pairs, fixed_bidegree=[8,130], raw_id=2433,
    unknown_d6_preserved=True,
    reviewed_meanings=['Only initial tracked coordinates supplied',
      'Full incoming source equivalence and differential equation at every stage',
      'Faithful full outgoing coordinates and differential equation at every stage',
      'Next coordinates and additivity derived through actual homology quotient',
      'Exact supplied input identified by injective initial coordinates',
      'Tactic calls soundness theorem with typed mathematical prefix and naming proof'],
    unproved=['Sphere initial E2 and neighboring differential interpretations',
              'Lemma7.20 multiplicative extension', 'Any d6 value'],
    source_sha256={str(p.relative_to(ROOT)):sha(p) for p in inputs})
(HERE / 'independent-review.json').write_text(json.dumps(report,indent=2)+'\n')
print(json.dumps({k:v for k,v in report.items() if k!='source_sha256'}))
