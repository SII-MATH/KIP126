"""Regenerate every matrix witness with the existing untrusted C++ exporter."""
import hashlib
import json
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
root = here.parent
family = json.loads((here / 'family.json').read_text())['entries']
batch = here / 'cpp-input.txt'
bits = lambda xs: ''.join('1' if x else '0' for x in xs) or '-'
batch.write_text(''.join(
    f'{w["k"]} {w["m"]} {w["n"]} {bits(w["outgoing"])} {bits(w["incoming"])}\n'
    for w in (e['wire'] for e in family)))
exe = root / 'PageTransitionCertificates/page-transition-export'
outputs = []
different_choices = []
for attempt in range(2):
    process = subprocess.run([str(exe), '--batch', str(batch)], capture_output=True)
    (here / f'cpp-run{attempt}.stderr').write_bytes(process.stderr)
    assert process.returncode == 0, process.stderr.decode()
    lines = process.stdout.splitlines()
    assert len(lines) == len(family)
    for index, (line, entry) in enumerate(zip(lines, family)):
        generated = json.loads(line)
        assert all(generated[k] == entry['wire'][k] for k in
                   ['version', 'k', 'm', 'n', 'h', 'outgoing', 'incoming']), (index, entry['key'])
        assert line.decode() == json.dumps(generated, sort_keys=True, separators=(',', ':'))
        if attempt == 0 and generated != entry['wire']:
            different_choices.append(dict(index=index, key=entry['key'], fields=[
                k for k in generated if generated[k] != entry['wire'][k]]))
    outputs.append(process.stdout)
assert outputs[0] == outputs[1]
(here / 'cpp-output.jsonl').write_bytes(outputs[0])
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
record = dict(records=len(family), observed_exit_codes=[0, 0],
              byte_identical_between_runs=True, same_dimensions_and_differentials=True,
              exact_imported_wires=len(family)-len(different_choices),
              different_homology_basis_choices=different_choices,
              files_sha256={str(p.relative_to(root)): sha(p) for p in
                            [batch, here/'family.json', here/'cpp-output.jsonl',
                             exe, exe.with_name('export.cpp'), Path(__file__)]},
              trust='C++ output is untrusted; matching output demonstrates reproduction, not mathematical soundness.')
(here / 'cpp-reproduction.json').write_text(json.dumps(record, indent=2) + '\n')
print(f'PASS: {len(family)} same complexes, two byte-identical runs; '
      f'{len(different_choices)} alternative homology witness choices require separate comparison')
