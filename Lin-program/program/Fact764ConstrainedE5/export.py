"""Export both unchosen E5 witnesses using the existing untrusted C++ producer."""
import hashlib
import json
import subprocess
from pathlib import Path

P = Path(__file__).resolve().parent
R = P.parent
producer = R / 'UniqueHomologyCertificates/unique-export'
requests = ['1 3 2 000 100101 010', '1 3 2 000 110101 010']
(P / 'requests.txt').write_text('\n'.join(requests) + '\n')
batch = subprocess.run([str(producer), '--batch', str(P / 'requests.txt')],
                       capture_output=True, text=True, check=True)
lines = batch.stdout.splitlines()
assert len(lines) == 2
for bit, request in enumerate(requests):
    single = subprocess.run([str(producer), *request.split()], capture_output=True,
                            text=True, check=True).stdout
    assert single == lines[bit] + '\n'
    (P / f'certificate{bit}.json').write_text(single)
(P / 'certificates.jsonl').write_text(batch.stdout)
sha = lambda path: hashlib.sha256(path.read_bytes()).hexdigest()
(P / 'export-audit.json').write_text(json.dumps({
    'producer': str(producer.relative_to(R)), 'producer_sha256': sha(producer),
    'source_sha256': {str(p.relative_to(R)): sha(p) for p in [
        R / 'UniqueHomologyCertificates/export.cpp',
        R / 'PageTransitionCertificates/export.cpp', Path(__file__)]},
    'requests': requests,
    'outputs_sha256': {p.name: sha(p) for p in [P / 'certificate0.json',
        P / 'certificate1.json', P / 'certificates.jsonl', P / 'requests.txt']},
    'scope': 'Finite matrices only; untrusted producer, Lean rechecks full quotient.'
}, indent=2, sort_keys=True) + '\n')
print('two deterministic C++ witnesses; batch equals individual outputs')
