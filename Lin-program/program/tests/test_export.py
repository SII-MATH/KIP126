import csv
import hashlib
import json
from pathlib import Path
import subprocess

root = Path(__file__).resolve().parents[1]
out = root / 'tests/output'
out.mkdir(exist_ok=True)


def run(*args, ok=True):
    p = subprocess.run([str(root / 'lin-cert-export'), *map(str, args)],
                       cwd=root, text=True, capture_output=True)
    assert (p.returncode == 0) == ok, p.stderr
    return p


for mode, source in [('claims', '../doc_data/kervaire_claims.csv'),
                     ('adams', 'examples/adams_sample.csv'),
                     ('proofs', 'examples/proof_sample.csv')]:
    first = run(mode, source).stdout
    assert first == run(mode, source).stdout
    records = [json.loads(line) for line in first.splitlines()]
    assert records[0]['input_sha256'] == hashlib.sha256((root / source).read_bytes()).hexdigest()
    for line, record in zip(first.splitlines(), records):
        original = line.rsplit(',"sha256":', 1)[0] + '}'
        assert record['sha256'] == hashlib.sha256(original.encode()).hexdigest()

claims = [json.loads(s) for s in run('claims', '../doc_data/kervaire_claims.csv').stdout.splitlines()][1:]
with (root / '../doc_data/kervaire_claims.csv').open() as f:
    original = list(csv.DictReader(f))
assert [c['claim_id'] for c in claims] == [c['id'] for c in original]
assert len(claims) == 17
manifest = [json.loads(s) for s in run('manifest').stdout.splitlines()]
assert len(manifest) == 295
assert manifest[0]['input_sha256']
assert sum(r.get('status') == 'external_input' for r in manifest) == 3

for text in ['id,id\n1,2\n', 'id,x\n1,"broken\n', 'id,x\n1,ab"cd"\n', 'id,x\n1,"a"b\n']:
    bad = out / 'bad.csv'
    bad.write_text(text)
    run('proofs', bad, ok=False)

multiline = out / 'multiline.csv'
multiline.write_bytes(b'id,x\r\n1,"first\r\n\r\nlast ""quoted"""\r\n2,plain\r\n')
records = [json.loads(s) for s in run('proofs', multiline).stdout.splitlines()][1:]
assert [r['source_row'] for r in records] == [2, 5]
assert records[0]['fields']['x'] == 'first\n\nlast "quoted"'
assert records[1]['fields']['x'] == 'plain'
multiline.write_text('id,x\n1,"first\nsecond\n')
assert ':2: unterminated CSV quote' in run('proofs', multiline, ok=False).stderr
multiline.write_text('id,x\n1,"first\nsecond"oops\n')
assert ':2: characters after closing CSV quote' in run('proofs', multiline, ok=False).stderr

manual = out / 'manual.csv'
manual.write_text('id,reason,x,dx,info\n1,M,0,1,[NULL]\n2,M,0,1,source theorem\n')
records = [json.loads(s) for s in run('proofs', manual).stdout.splitlines()][1:]
assert all(r['status'] == 'external_input' for r in records)
assert '[NULL]' in records[0]['unknown_markers']

unknown = out / 'unknown.csv'
unknown.write_text('id,d2\n1,\n2,unknown\n3,?\n4,[NULL]\n5,possibly x\n')
assert all(json.loads(s)['status'] == 'unknown'
           for s in run('adams', unknown).stdout.splitlines()[1:])
sample = root / 'examples/finite_sample.json'
first = run('finite', 'examples/finite_sample.csv').stdout
assert first == run('finite', 'examples/finite_sample.csv').stdout
sample.write_text(first)
assert len(json.loads(first)['bundle']['certificates']) == 6
print('Exporter: hashes, reproducibility, 17 claims, inventory, unknowns, malformed CSV, six finite result kinds passed')
