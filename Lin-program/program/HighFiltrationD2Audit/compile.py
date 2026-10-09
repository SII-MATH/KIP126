"""Compile the four owned modules serially and record actual exits and digests."""
import hashlib
import json
import os
from pathlib import Path
import subprocess

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
TOOLCHAIN = Path('/inspire/hdd/global_user/baokangjie-CZXS25250151/.elan/toolchains/leanprover--lean4---v4.32.2')


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


env = os.environ.copy()
env['ELAN_HOME'] = str(TOOLCHAIN.parent.parent)
env['LEAN_SYSROOT'] = str(TOOLCHAIN)
env['LEAN_PATH'] = ':'.join([str(ROOT/'.lake/build/lib/lean'),
                           *map(str, sorted((ROOT/'../../KIP126/.lake/packages').glob('*/.lake/build/lib/lean')))])
if Path('/tmp/lean_proc_shim.so').exists():
    env['LD_PRELOAD'] = '/tmp/lean_proc_shim.so'
entries = []
for name in ['Basic','Data','Comparisons','Tests']:
    source = ROOT/f'HighFiltrationD2Certificates/{name}.lean'
    output = ROOT/f'.lake/build/lib/lean/HighFiltrationD2Certificates/{name}.olean'
    log = HERE/f'{name}.log'
    command = [str(TOOLCHAIN/'bin/lean'), '-j1', str(source.relative_to(ROOT)), '-o', str(output.relative_to(ROOT))]
    with log.open('w') as stream:
        proc = subprocess.run(command, cwd=ROOT, env=env, stdout=stream, stderr=subprocess.STDOUT)
    text = log.read_text()
    entry = dict(module=f'HighFiltrationD2Certificates.{name}',command=command,exit_code=proc.returncode,
                 source=str(source.relative_to(ROOT)),source_sha256=sha(source),
                 log=str(log.relative_to(ROOT)),log_sha256=sha(log),
                 output=str(output.relative_to(ROOT)),output_sha256=sha(output) if output.exists() else None)
    entries.append(entry)
    success = all(e['exit_code'] == 0 for e in entries) and len(entries) == 4
    manifest = dict(success=success,invocation='direct lean -j1, serial modules',modules=entries,
                    report_sha256=sha(HERE/'report.json'),review_sha256=sha(HERE/'review.json'),
                    lean_sources={str(p.relative_to(ROOT)):sha(p) for p in sorted((ROOT/'HighFiltrationD2Certificates').glob('*.lean'))},
                    certificate_inputs={str(p.relative_to(ROOT)):sha(p) for p in sorted((HERE/'wire').glob('*.json'))},
                    allowed_axioms=['propext','Classical.choice','Quot.sound'])
    (HERE/'compile-audit.json').write_text(json.dumps(manifest,indent=2)+'\n')
    print(name,proc.returncode,text,end='\n')
    assert proc.returncode == 0 and 'sorryAx' not in text, f'{name} did not pass'
