"""Read-only review evidence for the two certificate-to-naturality leaves."""
import hashlib
import json
import re
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sha = lambda path: hashlib.sha256(path.read_bytes()).hexdigest()
compiled = {}
reports = []
for name in ['Basic','Examples']:
    record = json.loads((HERE / f'{name}-compile.json').read_text())
    source = HERE / f'{name}.lean'
    log = HERE / f'{name}.log'
    assert record['observed_exit_code'] == 0
    assert record['source_sha256'] == sha(source)
    assert record['log_sha256'] == sha(log)
    assert not re.search(r'\b(sorry|admit|axiom|native_decide)\b', source.read_text())
    assert 'sorryAx' not in log.read_text()
    reports += [line for line in log.read_text().splitlines()
        if line.startswith("'FilteredSquareNaturalityCertificate.")]
    current = ROOT / '.lake/build/lib/lean/FilteredSquareNaturalityCertificate' / f'{name}.olean'
    compiled[name] = dict(record, current_olean_sha256=sha(current) if current.exists() else None)
assert len(reports) == 4

producer = ROOT / 'FiniteFilteredSquareProducer'
batches = []
for index in range(22):
    name = f'batch{index:02d}'
    path = producer / f'{name}.jsonl'
    wires = [json.loads(line) for line in path.read_text().splitlines()]
    module = producer / f'Batch{index:02d}.lean'
    source = module.read_text()
    assert f'FiniteFilteredSquareProducer/{name}.jsonl' in source
    assert f'checkBatch_sound {name} (by decide)' in source
    batches.append(dict(batch=name,rows=len(wires),wire_sha256=sha(path),module_sha256=sha(module)))
assert sum(batch['rows'] for batch in batches) == 863
imported = (producer / 'Imported.lean').read_text()
assert 'theorem batch_count : allWires.length = 863 := by decide' in imported
for index in range(22):
    assert f'batch{index:02d}_valid' in imported

inputs = [
    'FilteredSquareNaturalityCertificate/Basic.lean',
    'FilteredSquareNaturalityCertificate/Examples.lean',
    'FiniteFilteredSquareCertificateCompleteness/Basic.lean',
    'FiniteFilteredSquareCertificates/Basic.lean',
    'FiniteFilteredSquareCertificates/Import.lean',
    'FiniteFilteredSquareProducer/Imported.lean',
    'FilteredTwoTermNaturality/Basic.lean',
]
result = dict(status='no_correctness_findings_in_two_reviewed_leaves',
    reviewed_modules=['Basic','Examples'],compiled=compiled,axiom_reports=reports,
    input_sha256={name:sha(ROOT/name) for name in inputs},batches=batches,total_wires=863,
    independent_recompilation=False,
    generic_quotient_naturality='Separate agent reviews the generic construction; this review checks its exact instantiation and certificate link.',
    limitations=[
        'Full existing square certificate is sufficient but not necessary for naturality.',
        'All pages concern the finite data-derived filtered two-term sequence, not an Adams realization.',
        'Batch transport reuses existing Lean-valid certificates and exact decode; this script does not replace their mathematical checks.',
    ])
(HERE/'independent-review.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps(dict(status=result['status'],leaves=2,axiom_reports=len(reports),wires=863),indent=2))
