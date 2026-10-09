"""Read-only frozen-input audit and an independent finite-carrier oracle."""
from collections import Counter
import hashlib
import itertools
import json
from pathlib import Path
import re

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
load = lambda p: json.loads(p.read_text())
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
counts = Counter()
frozen = load(HERE / 'frozen-source.json')
for name, expected in frozen['files'].items():
    assert sha(HERE / name) == expected, name
    counts['frozen_files'] += 1

compiled = {}
for module in (HERE / 'modules.txt').read_text().splitlines():
    name = module.rsplit('.', 1)[1]
    source, log = HERE / (name + '.lean'), HERE / (name + '.log')
    record = load(HERE / (name + '-compile.json'))
    assert record['observed_exit_code'] == 0
    assert record['source_sha256'] == sha(source)
    assert record['log_sha256'] == sha(log)
    assert record['olean_sha256'] == sha(ROOT / '.lake/build/lib/lean' / (module.replace('.', '/') + '.olean'))
    for field in ['dependencies_sha256', 'external_input_sha256']:
        for path, expected in record[field].items():
            assert sha(ROOT / path) == expected, (module, field, path)
            counts[field] += 1
    assert not re.search(r'\b(sorry|admit|axiom|native_decide|unsafe)\b', source.read_text())
    assert not re.search(r'\b(sorryAx|Lean\.ofReduceBool|error)\b', log.read_text())
    reports = re.findall(r"'[^']+' depends on axioms: \[([^\]]*)\]", log.read_text())
    for report in reports:
        assert set(filter(None, map(str.strip, report.split(',')))) <= {'propext', 'Classical.choice', 'Quot.sound'}
    counts['axiom_reports'] += len(reports)
    compiled[name] = record
assert counts['axiom_reports'] == 11
example = (HERE / 'Examples.lean').read_text()
assert example.count('fail_if_success') == 6
assert example.count('#print axioms imported') == 4

runtime = load(HERE / 'runtime-checkpoint.json')
assert runtime['observed_exit_code'] == 0
assert runtime['log_sha256'] == sha(HERE / 'parser-runtime.log')
independent_runtime = load(HERE / 'independent-runtime.json')
assert independent_runtime['observed_exit_code'] == 0
assert independent_runtime['source_sha256'] == sha(HERE / 'IndependentRuntime.lean')
assert independent_runtime['log_sha256'] == sha(HERE / 'independent-runtime.log')
runtime_line = (HERE / 'independent-runtime.log').read_text().strip()
assert runtime_line == ('PASS: 16002 exact requests; 16000 rejected fields and line-2 locations; '
    '36 malformed records; 12 malformed batches; 12 parser line locations; 20 valid batches')

def ev(bits, rows, cols, x):
    assert len(bits) == rows * cols
    return sum((sum(int(bits[i * cols + j]) * ((x >> j) & 1)
                    for j in range(cols)) % 2) << i for i in range(rows))

def to_bits(x, n):
    return [bool((x >> i) & 1) for i in range(n)]

def padded(xs, n):
    return sum(bool(x) << i for i, x in enumerate(xs[:n]))

all_vectors = [to_bits(x, n) for n in range(7) for x in range(1 << n)]
all_outputs = [to_bits(x, n) for n in range(3) for x in range(1 << n)]
sources = {}
for fact, name, degree, last, dim in [
    (715, 'conditional-higher-source', '11_136', 5, 5),
    (719, 'source', '8_130', 6, 1),
]:
    source_path = ROOT / f'Fact{fact}TrajectoryCertificates' / (name + '.json')
    sources[str(source_path.relative_to(ROOT))] = sha(source_path)
    blocks = load(source_path)['blocks']
    wires = {r: blocks[f'b{degree}_{r}']['wire'] for r in range(2, last)}
    dimensions = {2: dim, **{r + 1: w['h'] for r, w in wires.items()}}
    request_path = HERE / f'fact{fact}.json'
    request = load(request_path)
    assert request == {'claim': f'fact-7.{str(fact)[1:]}',
        'output': [True], 'source': to_bits(8 if fact == 715 else 1, dim), 'version': 1}
    canonical = json.dumps(request, separators=(',', ':'), sort_keys=True)
    assert request_path.read_text() == canonical + '\n'
    assert (HERE / f'fact{fact}.jsonl').read_text() == (canonical + '\n') * 2
    sources[str(request_path.relative_to(ROOT))] = sha(request_path)
    for shifts in itertools.product(range(2), repeat=last - 1):
        coordinates, inverse = {}, {}
        for r, shift in zip(range(2, last + 1), shifts):
            labels = list(range(1 << dimensions[r]))
            if dimensions[r] > 1:
                labels[1], labels[2] = labels[2], labels[1]
            coordinates[r] = [x ^ shift for x in labels]
            inverse[r] = {v: i for i, v in enumerate(coordinates[r])}
        actual_zero = {r: inverse[r][0] for r in inverse}
        raw = inverse[2][padded(request['source'], dim)]
        endpoint = raw
        for r, w in wires.items():
            assert ev(w['outgoing'], w['k'], w['m'], coordinates[r][endpoint]) == 0
            next_coordinates = ev(w['projection'], w['h'], w['m'], coordinates[r][endpoint])
            endpoint = inverse[r + 1][next_coordinates]
            counts['same_requested_raw_trace_steps'] += 1
        assert endpoint != actual_zero[last]
        assert coordinates[last][endpoint] == padded(request['output'], 1)
        for xs, ys in itertools.product(all_vectors, all_outputs):
            accepted = xs == request['source'] and ys == request['output']
            exact_lengths = len(xs) == dim and len(ys) == 1
            input = inverse[2][padded(xs, dim)]
            end = input
            trace_exists = True
            for r, w in wires.items():
                if ev(w['outgoing'], w['k'], w['m'], coordinates[r][end]):
                    trace_exists = False
                    break
                end = inverse[r + 1][ev(w['projection'], w['h'], w['m'], coordinates[r][end])]
            semantic = exact_lengths and trace_exists and end != actual_zero[last]
            semantic = semantic and coordinates[last][end] == padded(ys, 1)
            if accepted:
                assert semantic and input == raw and end == endpoint
                counts['accepted_same_trace_requests'] += 1
            if not exact_lengths and input == raw and padded(ys, 1) == padded(request['output'], 1):
                assert not accepted and not semantic
                counts['padding_truncation_aliases_rejected'] += 1
            counts['finite_semantic_requests'] += 1
        counts[f'fact{fact}_models'] += 1
assert counts['fact715_models'] == 16 and counts['fact719_models'] == 32
assert counts['accepted_same_trace_requests'] == 48

# Replay the adapter generator with an in-memory sink; frozen files stay read-only.
generated = {}
class Sink:
    def __init__(self, name): self.name = name
    def write_text(self, text): generated[self.name] = text
class Folder:
    def __truediv__(self, name): return Sink(name)
generator = (HERE / 'generate_adapters.py').read_text()
exec(generator[generator.index('for fact,'):], {'p': Folder()})
assert set(generated) == {'Fact715.lean', 'Fact719.lean'}
for name, text in generated.items():
    assert text == (HERE / name).read_text(), name

report = {
    'status': 'passed_no_findings', 'counts': dict(counts),
    'compiled': compiled, 'original_runtime': runtime,
    'independent_runtime': independent_runtime,
    'generator_byte_identical_in_memory': True,
    'frozen_sources_unchanged': all(sha(HERE / p) == h for p, h in frozen['files'].items()),
    'scope': 'Exact imported request binding to one conditional actual E5/E6 trace; no permanence or sphere realization.',
    'notes': [
        'The importer rejects an empty batch; checkBatch [] is true for the vacuous universal proposition.',
        'Batch soundness covers exactly its supplied list and does not claim paper-wide completeness.',
        'Tactic diagnostics refer callers to diagnose/diagnoseBatch; they do not automatically print an invalid field.',
        'The semantic prefix remains typed Lean input containing full differential and quotient premises.',
        'Standard Lean axioms are propext, Classical.choice and Quot.sound; no custom axioms or native reduction proof axiom.',
    ],
    'input_sha256': {**sources, 'ActualTraceRequests/frozen-source.json': sha(HERE / 'frozen-source.json'),
        'ActualTraceRequests/independent_review.py': sha(Path(__file__))},
}
(HERE / 'independent-review.json').write_text(json.dumps(report, indent=2) + '\n')
print(json.dumps({k: v for k, v in report.items() if k != 'compiled'}, indent=2))
