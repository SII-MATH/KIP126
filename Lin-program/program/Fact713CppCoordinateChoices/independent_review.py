"""Review exact C++ bindings and every vector in the 39 coordinate comparisons."""
from collections import Counter
from pathlib import Path
import hashlib
import json
import re
import sys

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
BASE = ROOT / 'Fact713ComparisonBatches'
GENERAL = ROOT / 'HomologyCoordinateChoice'
load = lambda p: json.loads(p.read_text())
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
canonical = lambda value: json.dumps(value, sort_keys=True, separators=(',', ':')) + '\n'
family = load(BASE / 'family.json')['entries']
cpp = [json.loads(line) for line in (BASE / 'cpp-output.jsonl').read_text().splitlines()]
reproduction = load(BASE / 'cpp-reproduction.json')
assert reproduction['observed_exit_codes'] == [0,0]
assert reproduction['byte_identical_between_runs']
for name,digest in reproduction['files_sha256'].items():
    assert sha(ROOT / name) == digest
manifest = load(HERE / 'manifest.json')
if (HERE / 'frozen-source.json').exists():
    frozen = load(HERE / 'frozen-source.json')
    generation = load(HERE / 'generation.json')
    assert generation['source_sha256'] == sha(HERE / 'Data.lean')
    assert generation['generator_sha256'] == sha(HERE / 'generate.py')
    for path,digest in generation['input_sha256'].items():
        assert sha(ROOT / path) == digest
changed = [i for i,(entry,wire) in enumerate(zip(family,cpp)) if entry['wire'] != wire]
assert len(cpp) == len(family) == 1234
assert changed == manifest['different_indices']
assert len(changed) == manifest['count'] == 39
assert len(cpp)-len(changed) == manifest['unchanged'] == reproduction['exact_imported_wires'] == 1195
assert [e['index'] for e in reproduction['different_homology_basis_choices']] == changed
for entry, wire in zip(family, cpp):
    assert all(entry['wire'][k] == wire[k] for k in ['version','k','m','n','h','incoming','outgoing'])
assert sorted(p.name for p in HERE.glob('case*.json')) == sorted(f'case{i}.json' for i in changed)
source = (HERE / 'Data.lean').read_text()
counts = Counter()
changes = []

def matrix(bits, rows, columns):
    assert len(bits) == rows*columns and all(type(x) is bool for x in bits)
    return [sum(int(bits[r*columns+c]) << r for r in range(rows)) for c in range(columns)]

def evaluate(columns, x):
    value = 0
    for c, column in enumerate(columns):
        if x & (1 << c):
            value ^= column
    return value

def decode(w):
    return {name:matrix(w[name],*shape) for name,shape in dict(
        outgoing=(w['k'],w['m']),incoming=(w['m'],w['n']),
        inclusion=(w['m'],w['h']),projection=(w['h'],w['m']),
        up=(w['n'],w['m']),down=(w['m'],w['k'])).items()}

for i in changed:
    old = family[i]['wire']
    new = load(HERE / f'case{i}.json')
    assert (HERE / f'case{i}.json').read_text() == canonical(new)
    assert new == cpp[i]
    assert f'(Fact713ComparisonBatches.batch{i//40:02}[{i%40}]).wire' in source
    assert f'page_comparison% "Fact713CppCoordinateChoices/case{i}.json"' in source
    assert f'def coordinates{i} : Vec {old["h"]} ≃ Vec {old["h"]}' in source
    a, b = decode(old), decode(new)
    ev = lambda w,name,x: evaluate(w[name],x)
    boundaries = {ev(a,'incoming',x) for x in range(1<<old['n'])}
    cycles = [x for x in range(1<<old['m']) if ev(a,'outgoing',x) == 0]
    assert all(ev(a,'outgoing',x) == 0 for x in boundaries)
    for w in [a,b]:
        assert all(ev(w,'projection',x) == 0 for x in boundaries)
        for x in range(1<<old['h']):
            rep = ev(w,'inclusion',x)
            assert ev(w,'outgoing',rep) == 0
            assert ev(w,'projection',rep) == x
            counts['comparison_coordinate_vectors'] += 1
        for x in range(1<<old['m']):
            assert ev(w,'inclusion',ev(w,'projection',x)) ^ ev(w,'incoming',ev(w,'up',x)) ^ ev(w,'down',ev(w,'outgoing',x)) == x
            counts['whole_homotopy_vectors'] += 1
        for x in cycles:
            for y in cycles:
                assert (ev(w,'projection',x) == ev(w,'projection',y)) == (x^y in boundaries)
                counts['quotient_pairs'] += 1
    forward = lambda x: ev(b,'projection',ev(a,'inclusion',x))
    backward = lambda x: ev(a,'projection',ev(b,'inclusion',x))
    moved = []
    for x in range(1<<old['h']):
        assert backward(forward(x)) == x and forward(backward(x)) == x
        if forward(x) != x:
            moved.append(x)
        counts['two_sided_inverse_vectors'] += 1
        for y in range(1<<old['h']):
            assert forward(x^y) == forward(x)^forward(y)
            assert backward(x^y) == backward(x)^backward(y)
            counts['additive_pairs'] += 1
    for x in cycles:
        assert forward(ev(a,'projection',x)) == ev(b,'projection',x)
        assert backward(ev(b,'projection',x)) == ev(a,'projection',x)
        counts['cycle_coordinate_compatibility'] += 1
    changes.append(dict(index=i, h=old['h'], nonidentity_vectors=moved,
                        changed_fields=[k for k in old if old[k] != new[k]]))
assert len(changes) == 39
assert any(e['nonidentity_vectors'] for e in changes)

proofs = {}
if '--data-only' not in sys.argv:
    for directory, name in [(GENERAL,'Basic'),(HERE,'Data')]:
        record = load(directory / (name + '-compile.json'))
        assert record['observed_exit_code'] == 0
        assert record['source_sha256'] == sha(directory / (name + '.lean'))
        for path,digest in record['external_input_sha256'].items():
            assert sha(ROOT / path) == digest
        log = directory / (name + '.log')
        assert record['log_sha256'] == sha(log)
        reports = re.findall(r"'[^']+' depends on axioms: \[([^\]]*)\]", log.read_text())
        reports += [''] * len(re.findall(r"'[^']+' does not depend on any axioms",log.read_text()))
        assert reports
        assert not re.search(r'\b(sorryAx|error|Lean\.ofReduceBool)\b', log.read_text())
        for report in reports:
            assert set(filter(None,map(str.strip,report.split(',')))) <= {'propext','Classical.choice','Quot.sound'}
        assert not re.search(r'\b(sorry|axiom|native_decide|unsafe)\b',(directory / (name + '.lean')).read_text())
        proofs[directory.name+'.'+name] = dict(reports=len(reports),record=record,
            current_olean_matches=record['olean_sha256'] == sha(
                ROOT / f'.lake/build/lib/lean/{directory.name}/{name}.olean'))

report = dict(status='pass',findings=[],counts=dict(counts),changes=changes,
              wire_count=1234,exact_old_wires=1195,alternative_wires=39,
              nonidentity_coordinate_maps=sum(bool(e['nonidentity_vectors']) for e in changes),
              proof_evidence=proofs,
              limitation='Same complexes and coordinate-compatible quotient equivalence. '
                         'The complete 1234-wire package is not byte-identical to the old family. '
                         'No existing family coordinate is replaced.',
              source_sha256={str(p.relative_to(ROOT)):sha(p) for p in
                  [GENERAL/'Basic.lean',HERE/'Data.lean',BASE/'reproduce_cpp.py']})
name='independent-data-review.json' if '--data-only' in sys.argv else 'independent-review.json'
(HERE / name).write_text(json.dumps(report,indent=2)+'\n')
print(json.dumps(dict(status='pass',counts=dict(counts),proof_leaves=len(proofs),
                     nonidentity_coordinate_maps=report['nonidentity_coordinate_maps'])))
