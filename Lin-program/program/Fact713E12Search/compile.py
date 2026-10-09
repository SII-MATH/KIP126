"""Compile only the three new modules, serially, against existing dependencies."""
import hashlib
import json
import os
from pathlib import Path
import subprocess

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
TOOL=Path('/inspire/hdd/global_user/baokangjie-CZXS25250151/.elan/toolchains/leanprover--lean4---v4.32.2')
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
env=os.environ.copy()
env.update(LEAN_SYSROOT=str(TOOL),LD_PRELOAD='/tmp/lean_proc_shim.so')
env['LEAN_PATH']=':'.join(map(str,[ROOT/'.lake/build/lib/lean',*sorted(
    (ROOT/'../../KIP126/.lake/packages').resolve().glob('*/.lake/build/lib/lean'))]))
names=['Data','Prefix','ZeroTargets']
inputs={str(p.relative_to(ROOT)):sha(p) for p in [*[HERE/(n+'.lean') for n in names],
    *sorted((HERE/'wires').glob('*.json')),HERE/'search.json',HERE/'generated-manifest.json']}
out=ROOT/'.lake/build/lib/lean/Fact713E12Search';out.mkdir(exist_ok=True)
audit=[]
for n in names:
    log=HERE/(n+'.log')
    with log.open('w') as stream:
        run=subprocess.run([str(TOOL/'bin/lean'),'-j1',f'Fact713E12Search/{n}.lean','-o',str(out/(n+'.olean'))],cwd=ROOT,env=env,stdout=stream,stderr=subprocess.STDOUT)
    row=dict(module=n,exit_code=run.returncode,input_sha256=inputs,log_sha256=sha(log))
    if not run.returncode:row['olean_sha256']=sha(out/(n+'.olean'))
    else:(HERE/(n+'.failed-'+sha(log)[:12]+'.log')).write_bytes(log.read_bytes())
    audit.append(row)
    (HERE/'compile-audit.json').write_text(json.dumps(audit,indent=2)+'\n')
    print(n,run.returncode,flush=True)
    if run.returncode:raise SystemExit(log.read_text())
assert all(sha(ROOT/p)==h for p,h in inputs.items())
