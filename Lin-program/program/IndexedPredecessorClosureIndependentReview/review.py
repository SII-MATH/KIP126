"""Independent replay of full-family predecessor closure and retained Lean evidence."""
import copy
import hashlib
import json
from pathlib import Path
import re

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
load = lambda p: json.loads(p.read_text())
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
FAMILY = ROOT / 'Fact713Row2693Continuation'
frozen = load(FAMILY / 'frozen-source.json')
for name, digest in frozen['files'].items():
    assert sha(ROOT / name) == digest


def key(entry):
    return tuple(entry['key'][f] for f in ['object', 'page', 's', 't'])


def diagnose(entries):
    by = {}
    for entry in entries:
        by.setdefault(key(entry), entry)
    count = 0
    for index, entry in enumerate(entries, 1):
        obj, page, s, t = key(entry)
        if page <= 2:
            continue
        for field, ps, pt in [('n', s-page, t-page+1), ('m', s, t),
                              ('k', s+page, t+page-1)]:
            predecessor = (obj, page-1, ps, pt)
            if predecessor not in by:
                return count, (index, field, predecessor, 'missing')
            if by[predecessor]['wire']['h'] != entry['wire'][field]:
                return count, (index, field, predecessor, 'dimension')
            count += 1
    return count, None


results = []
for branch in ['zero_b0', 'zero_b1']:
    entries = load(FAMILY / (branch + '-family.json'))['entries']
    assert len(entries) == len({key(e) for e in entries}) == 1413
    count, failure = diagnose(entries)
    assert failure is None and count == 2724
    missing = [e for e in entries if key(e) != ('S0', 3, 1, 127)]
    removed = diagnose(missing)[1]
    assert removed and removed[1:] == ('n', ('S0', 3, 1, 127), 'missing')
    changed = copy.deepcopy(entries)
    for e in changed:
        if key(e) == ('S0', 3, 1, 127):
            e['wire']['h'] = 1
    wrong = diagnose(changed)[1]
    assert wrong and wrong[1:] == ('n', ('S0', 3, 1, 127), 'dimension')
    results.append(dict(branch=branch, entries=len(entries), predecessor_dimensions=count,
                        removed_required_record_rejected=removed,
                        changed_required_dimension_rejected=wrong))

modules = ['IndexedPredecessorClosure.Basic', 'IndexedPredecessorClosure.Diagnostics',
           'IndexedPredecessorClosure.Tests', 'IndexedPredecessorClosureCompact.Basic',
           'IndexedPredecessorClosureCompact.Diagnostics', 'IndexedPredecessorClosureCompact.Tactic',
           'IndexedPredecessorClosureCompact.Tests', 'IndexedPredecessorClosureActual.Data',
           'IndexedPredecessorClosureActual.Fact713']
compact_source = (ROOT / 'IndexedPredecessorClosureActual/Data.lean').read_text()
for i, branch in enumerate(['zero_b0', 'zero_b1']):
    body = compact_source.split(f'def table{i} : Table := [', 1)[1].split(']', 1)[0]
    parsed = re.findall(r'⟨⟨"([^"]+)",(\d+),(-?\d+),(-?\d+)⟩,(\d+),(\d+),(\d+),(\d+)⟩', body)
    rows = [(obj, *map(int, values)) for obj, *values in parsed]
    entries = load(FAMILY / (branch + '-family.json'))['entries']
    expected = [(*key(e), *(e['wire'][field] for field in ['n', 'm', 'k', 'h'])) for e in entries]
    assert rows == expected
records = []
for module in modules:
    package, name = module.split('.')
    directory = ROOT / package
    record = load(directory / (name + '-compile.json'))
    assert record['observed_exit_code'] == 0 and record['inputs_stable']
    assert sha(directory / (name + '.lean')) == record['source_sha256']
    assert sha(directory / record['log']) == record['log_sha256']
    for path, digest in record['external_input_sha256'].items():
        assert sha(ROOT / path) == digest
    text = (directory / record['log']).read_text()
    assert 'sorryAx' not in text and 'error:' not in text
    axioms = re.findall(r'depends on axioms:\s*\[([^]]*)\]', text)
    for ax in axioms:
        assert set(a.strip() for a in ax.split(',') if a.strip()) <= {
            'propext', 'Classical.choice', 'Quot.sound'}
    assert not re.search(r'\b(sorry|admit|axiom|unsafe|native_decide)\b', (directory / (name + '.lean')).read_text())
    records.append(dict(module=module, source_sha256=record['source_sha256'],
                        log_sha256=record['log_sha256'],
                        axiom_reports=len(axioms)+text.count('does not depend on any axioms')))
result = dict(status='passed', source_sha256=sha(Path(__file__)), branches=results,
              modules=records, total_axiom_reports=sum(r['axiom_reports'] for r in records),
              family_manifest_sha256=sha(FAMILY / 'frozen-source.json'),
              binding='The theorem quantifies over every entry in Fact713Row2693Continuation.family b, not the named trajectory keys. Valid conjoins existing full-family Coherent with full predecessor closure.',
              limitation='This checks coverage and homology dimensions of each supplied higher-page block, not the original-spectrum meaning of imported matrices.')
(HERE / 'review.json').write_text(json.dumps(result, indent=2) + '\n')
print(json.dumps(result, indent=2))
