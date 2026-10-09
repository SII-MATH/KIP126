"""Run the exact Lean graph parser with positive and negative inputs."""
import hashlib
import json
import os
from pathlib import Path
import subprocess

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
TOOL=Path('/inspire/hdd/global_user/baokangjie-CZXS25250151/.elan/toolchains/leanprover--lean4---v4.32.2')
env=os.environ.copy()
env.update(LEAN_SYSROOT=str(TOOL),LAKE_HOME=str(TOOL),LD_PRELOAD='/tmp/lean_proc_shim.so')
env['LEAN_PATH']=':'.join(str(p) for p in [ROOT/'.lake/build/lib/lean',
    *sorted((ROOT/'../../KIP126/.lake/packages').resolve().glob('*/.lake/build/lib/lean'))])
run=subprocess.run([str(TOOL/'bin/lean'),'-j1','--run',
    'Fact713DC2h6ComparisonFamily/GraphParserTests.lean'],cwd=ROOT,env=env,capture_output=True,text=True)
log=HERE/'parser-tests.log'
log.write_text(run.stdout+run.stderr)
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
report=dict(observed_exit_code=run.returncode,source_sha256=sha(HERE/'GraphParserTests.lean'),
            graph_input_sha256=sha(HERE/'graph-proof.json'),parser_source_sha256=sha(HERE/'GraphData.lean'),
            log_sha256=sha(log),scope='Runtime parse checks; no theorem from execution.')
(HERE/'parser-tests.json').write_text(json.dumps(report,indent=2)+'\n')
print(run.stdout+run.stderr,end='')
raise SystemExit(run.returncode)
