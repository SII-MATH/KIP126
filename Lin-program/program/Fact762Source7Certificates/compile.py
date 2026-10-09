"""Compile Fact7.6(2) page7 full-source modules sequentially with digest evidence."""
import hashlib
import json
import os
import subprocess
import sys
from pathlib import Path
HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
MODULES=['Finite','Propagation','Semantics','Inputs']

def sha(path):return hashlib.sha256(path.read_bytes()).hexdigest()

def run():
    env=os.environ.copy()
    toolchain=Path('/inspire/hdd/global_user/baokangjie-CZXS25250151/.elan/toolchains/leanprover--lean4---v4.32.2')
    env['ELAN_HOME']=str(toolchain.parents[1]);env['LEAN_SYSROOT']=str(toolchain)
    paths=[ROOT/'.lake/build/lib/lean']+list((ROOT/'../../KIP126/.lake/packages').resolve().glob('*/.lake/build/lib/lean'))
    env['LEAN_PATH']=':'.join(map(str,paths))
    if Path('/tmp/lean_proc_shim.so').exists():env['LD_PRELOAD']='/tmp/lean_proc_shim.so'
    output=ROOT/'.lake/build/lib/lean/Fact762Source7Certificates';output.mkdir(exist_ok=True)
    selected=([x for x in MODULES if x in sys.argv[1:]] if len(sys.argv)>1 else MODULES)
    previous=json.loads((HERE/'compile-audit.json').read_text()) if (HERE/'compile-audit.json').exists() else []
    audit=[row for row in previous if row['module'] not in selected]
    for name in selected:
        source=HERE/f'{name}.lean';log=HERE/f'{name}.log';target=output/f'{name}.olean'
        with log.open('w') as out:
            proc=subprocess.run([str(toolchain/'bin/lean'),'-j1',str(source.relative_to(ROOT)),'-o',str(target)],cwd=ROOT,env=env,stdout=out,stderr=subprocess.STDOUT)
        entry=dict(module=name,source_sha256=sha(source),exit_code=proc.returncode,log_sha256=sha(log))
        if proc.returncode==0:entry['olean_sha256']=sha(target)
        audit.append(entry)
        (HERE/'compile-audit.json').write_text(json.dumps(audit,indent=2)+'\n')
        print(name,proc.returncode,flush=True)
        if proc.returncode:raise SystemExit(log.read_text())

if __name__=='__main__':run()
