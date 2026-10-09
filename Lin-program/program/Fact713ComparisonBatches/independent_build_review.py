"""Review the final key-order/neighbor build separately from the original snapshot."""
from pathlib import Path
import hashlib
import json
import re

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
load = lambda p: json.loads(p.read_text())
historical = HERE / 'independent-review.json'
history_hash = sha(historical)
history = load(historical)
batches = [f'Batch{i:02}' for i in range(31)]
neighbors = [f'Neighbors{i:02}' for i in range(31)]
names = batches + ['Imported'] + neighbors + ['Coherence', 'Coverage']
family = load(HERE / 'family.json')['entries']
assert family == sum([load(HERE / (name + '.json'))['entries'] for name in batches], [])
assert len(family) == 1234
key = lambda e: tuple(e['key'][k] for k in ['object', 'page', 's', 't'])
keys = [key(e) for e in family]
assert len(set(keys)) == len(keys)
codes = [(e['key']['page']*256+max(e['key']['s']+64,0))*256+max(e['key']['t'],0)
         for e in family]
assert all(a < b for a,b in zip(codes,codes[1:]))
imported = (HERE / 'Imported.lean').read_text()
imports = [line.removeprefix('import ') for line in imported.splitlines() if line.startswith('import ')]
assert imports == [f'Fact713ComparisonBatches.{name}' for name in batches] + ['FamilyKeyOrder.Basic']
assert 'FamilyKeyOrder.check_key_order_sound keyCode family (by decide)' in imported
assert 'def family : Family := ' + ' ++ '.join(f'batch{i:02}' for i in range(31)) in imported
for i,name in enumerate(neighbors):
    source = (HERE / (name + '.lean')).read_text()
    assert f'theorem neighbors{i:02} : batch{i:02}.all (checkOne family) = true := by decide' in source
coherence = (HERE / 'Coherence.lean').read_text()
assert [line.removeprefix('import ') for line in coherence.splitlines() if line.startswith('import ')] == [
    'Fact713ComparisonBatches.' + name for name in neighbors]
assert all(f'List.all_eq_true.mp neighbors{i:02}' in coherence for i in range(31))
assert 'coherent_of_entries family family_unique all_valid all_neighbors' in coherence

table = {key(e):e['wire'] for e in family}
counts = dict(adjacent=0, consecutive=0, missing_differential_neighbors=0, missing_next_neighbors=0)
for entry in family:
    obj,r,s,t = key(entry)
    wire = entry['wire']
    differential = table.get((obj,r,s+r,t+r-1))
    next_page = table.get((obj,r+1,s,t))
    if differential is None:
        counts['missing_differential_neighbors'] += 1
    else:
        assert wire['k'] == differential['m'] and wire['m'] == differential['n']
        assert wire['outgoing'] == differential['incoming']
        counts['adjacent'] += 1
    if next_page is None:
        counts['missing_next_neighbors'] += 1
    else:
        assert wire['h'] == next_page['m']
        counts['consecutive'] += 1
assert counts['adjacent'] == 933 and counts['consecutive'] == 735
assert ('S0',2,9,132) in table and ('S0',3,9,132) in table and ('S0',4,9,132) not in table

proofs = {}
for name in names:
    record = load(HERE / (name + '-compile.json'))
    assert record['observed_exit_code'] == 0
    assert record['source_sha256'] == sha(HERE / (name + '.lean'))
    for path,digest in record['external_input_sha256'].items():
        assert sha(ROOT / path) == digest
    log = HERE / (name + '.log')
    assert record['log_sha256'] == sha(log)
    reports = re.findall(r"'[^']+' depends on axioms: \[([^\]]*)\]", log.read_text())
    reports += [''] * len(re.findall(r"'[^']+' does not depend on any axioms", log.read_text()))
    assert reports
    assert not re.search(r'\b(sorryAx|error|Lean\.ofReduceBool)\b', log.read_text())
    for report in reports:
        assert set(filter(None, map(str.strip, report.split(',')))) <= {
            'propext', 'Classical.choice', 'Quot.sound'}
    assert not re.search(r'\b(sorry|axiom|native_decide|unsafe)\b', (HERE / (name + '.lean')).read_text())
    proofs[name] = dict(reports=len(reports), record=record,
                       current_olean_matches=record['olean_sha256'] == sha(
                           ROOT / f'.lake/build/lib/lean/{HERE.name}/{name}.olean'))
interrupted = load(HERE / 'Imported-interrupted-unique-compile.json')
assert interrupted['observed_exit_code'] != 0
assert sha(historical) == history_hash
report = dict(status='pass', findings=[], initial_independent_review_sha256=history_hash,
              reviewed_final_modules=names, comparison_count=len(family), counts=counts,
              direct_build_evidence=proofs,
              axiom_reports=sum(p['reports'] for p in proofs.values()),
              interrupted_attempt_is_success_evidence=False,
              interrupted_attempt=interrupted,
              source_sha256={name:sha(HERE / (name + '.lean')) for name in names},
              limitations=['Neighbor coherence does not imply coverage.',
                           'Key encoding is proved ordered only for the supplied family.',
                           'Lookup scans the family; no globally subquadratic complexity claim.',
                           'The original initial-source review remains a separate historical snapshot.'])
(HERE / 'independent-build-review.json').write_text(json.dumps(report, indent=2) + '\n')
print(json.dumps(dict(status='pass', modules=len(names), axiom_reports=report['axiom_reports'],counts=counts)))
