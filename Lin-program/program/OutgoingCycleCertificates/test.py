"""Exercise real C++ production and Lean batch import; no Python certificate producer."""
import copy
import hashlib
import json
import os
import subprocess
import tempfile
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
TOOL = Path('/inspire/hdd/global_user/baokangjie-CZXS25250151/.elan/toolchains/leanprover--lean4---v4.32.2')
env = os.environ.copy()
env.update(ELAN_HOME=str(TOOL.parents[1]), LEAN_SYSROOT=str(TOOL), LD_PRELOAD='/tmp/lean_proc_shim.so')
env['LEAN_PATH'] = ':'.join(map(str, [ROOT / '.lake/build/lib/lean',
    *sorted((ROOT / '../../KIP126/.lake/packages').resolve().glob('*/.lake/build/lib/lean'))]))
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()


def producer(*args):
    return subprocess.run([str(HERE / 'outgoing-prefix-export'), *map(str, args)], capture_output=True, text=True)


def checker(path):
    return subprocess.run([str(TOOL / 'bin/lean'), '-j1', '--run',
        'OutgoingCycleCertificates/CheckFile.lean', str(path)], cwd=ROOT,
        env=env, capture_output=True, text=True, timeout=120)


produced = producer(HERE / 'killed-prefix.input')
assert produced.returncode == 0, produced.stderr
assert produced.stdout == producer(HERE / 'killed-prefix.input').stdout
assert produced.stdout == (HERE / 'killed-prefix.json').read_text()
good = json.loads(produced.stdout)
canonical = lambda x: json.dumps(x, sort_keys=True, separators=(',', ':'))
assert canonical(good) + '\n' == produced.stdout
cases = []
for field, value, expected in [('schema', 'inventory_only', 'schema:'),
    ('version', 2, 'version:'), ('firstPage', 3, 'firstPage:'), ('stages', [], 'prefix:')]:
    row = copy.deepcopy(good); row[field] = value
    cases.append((field, canonical(row), expected))
row = copy.deepcopy(good); row['extra'] = False
cases.append(('unknown_top', canonical(row), 'unknown/duplicate'))
cases.append(('duplicate_top', produced.stdout.strip().replace('"version":1}', '"version":1,"version":1}', 1), 'unknown/duplicate'))
row = copy.deepcopy(good); row['stages'][0]['extra'] = False
cases.append(('unknown_stage', canonical(row), 'unknown/duplicate'))
row = copy.deepcopy(good); row['stages'][0]['wire']['extra'] = False
cases.append(('unknown_wire', canonical(row), 'unknown/duplicate'))
cases.append(('duplicate_representative', produced.stdout.strip().replace('"representative":[true]', '"representative":[true],"representative":[true]'), 'unknown/duplicate'))
for name, rep in [('dimension', []), ('unknown', [None])]:
    row = copy.deepcopy(good); row['stages'][0]['representative'] = rep
    cases.append((name, canonical(row), 'prefix[0]' if name != 'unknown' else ''))
row = copy.deepcopy(good); row['stages'][0]['wire']['up'] = [False]
cases.append(('false_comparison', canonical(row), 'prefix[0]'))
cases.append(('blank', '', 'blank prefix'))
cases.append(('nul', produced.stdout.strip() + '\0', ''))

with tempfile.TemporaryDirectory(dir=HERE) as tmp:
    tmp = Path(tmp)
    # Metacharacters remain literal path bytes through exec, including batch mode.
    stages = tmp / 'stages $x `literal` file.txt'
    stages.write_text((HERE / 'killed-prefix.input').read_text())
    assert producer(stages).stdout == produced.stdout
    bad = tmp / 'bad-stage.txt'; bad.write_text('0 1 0 - - ?\n')
    manifest = tmp / 'paths.txt'
    manifest.write_text(str(stages) + '\n' + str(bad) + '\n' + str(stages) + '\n')
    batch = producer('--batch', manifest)
    assert batch.returncode == 1 and batch.stdout == produced.stdout * 2
    assert f'{manifest}:2:' in batch.stderr and 'stage 0' in batch.stderr
    manifest.write_bytes(str(stages).encode() + b'\0suffix\n')
    assert producer('--batch', manifest).returncode == 1
    empty = tmp / 'empty.txt'; empty.write_text('')
    assert producer('--batch', empty).returncode == 1
    with open('/dev/full', 'w') as stream:
        failed_write = subprocess.run([str(HERE / 'outgoing-prefix-export'), str(stages)], stdout=stream, stderr=subprocess.PIPE, text=True)
    assert failed_write.returncode == 1 and 'write failed' in failed_write.stderr
    valid = tmp / 'valid.jsonl'; valid.write_text(produced.stdout * 2)
    accepted = checker(valid)
    assert accepted.returncode == 0 and '2/2 finite prefixes accepted' in accepted.stdout, accepted.stderr
    mixed = tmp / 'mixed.jsonl'
    mixed.write_text(produced.stdout + '\n'.join(text for _, text, _ in cases) + '\n' + produced.stdout)
    rejected = checker(mixed)
    assert rejected.returncode == 1 and f'2/{len(cases)+2} finite prefixes accepted' in rejected.stdout, (rejected.stdout, rejected.stderr)
    for i, (name, _, expected) in enumerate(cases, 2):
        diagnostics = [line for line in rejected.stderr.splitlines() if line.startswith(f'{mixed}:{i}:')]
        assert diagnostics and expected in diagnostics[0], (name, rejected.stderr)
    empty_result = checker(empty)
    assert empty_result.returncode == 1 and 'empty prefix batch' in empty_result.stderr
    missing_result = checker(tmp / 'absent.jsonl')
    assert missing_result.returncode == 1 and 'input/output failure' in missing_result.stderr
    # Valid stages with incompatible homology dimensions must fail the link check.
    linked = copy.deepcopy(good)
    linked['stages'].append(dict(representative=[True, False], wire=dict(version=1,k=0,m=2,n=0,h=2,
        outgoing=[],incoming=[],inclusion=[True,False,False,True],projection=[True,False,False,True],up=[],down=[])))
    links = tmp / 'link.jsonl'; links.write_text(canonical(linked) + '\n')
    bad_link = checker(links)
    assert bad_link.returncode == 1 and 'next representative mismatch' in bad_link.stderr
    results = dict(status='C++_producer_and_Lean_outgoing_cycle_import_passed', valid_lines=2,
        rejected_cases=[name for name, _, _ in cases], rejected_link=True,
        batch_recovery=True, literal_metacharacter_path=True, output_write_failure=True,
        producer_stderr=batch.stderr.replace(str(tmp), '<temporary>'),
        lean_mixed_stdout=rejected.stdout.strip(),
        inputs={str(p.relative_to(ROOT)): sha(p) for p in [HERE / 'export.cpp', HERE / 'outgoing-prefix-export',
            HERE / 'killed-prefix.input', HERE / 'killed-prefix.json', HERE / 'Import.lean', HERE / 'CheckFile.lean',
            Path(__file__), ROOT / 'PermanentCycleCertificates/prefix_export.cpp',
            ROOT / 'PageTransitionCertificates/trajectory_export.cpp',
            ROOT / 'PageTransitionCertificates/trajectory-export']})
    (HERE / 'import-regression.json').write_text(json.dumps(results, indent=2) + '\n')
print('C++ deterministic prefix export; Lean strict import and line diagnostics; 14 malformed records plus link rejection; proof fields remain external Lean terms')
