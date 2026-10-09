"""Replay the two f25 certificates and local semantic mutations through Lean."""
import copy
import hashlib
import json
import os
import subprocess
import tempfile
from pathlib import Path

P=Path(__file__).resolve().parent;R=P.parent
T=Path('/inspire/hdd/global_user/baokangjie-CZXS25250151/.elan/toolchains/leanprover--lean4---v4.32.2')
env=os.environ.copy();env.update(LEAN_SYSROOT=str(T),LD_PRELOAD='/tmp/lean_proc_shim.so')
env['LEAN_PATH']=':'.join(map(str,[R/'.lake/build/lib/lean',
    *sorted((R/'../../KIP126/.lake/packages').resolve().glob('*/.lake/build/lib/lean'))]))
canonical=lambda x:json.dumps(x,sort_keys=True,separators=(',',':'))
good=[(P/f'certificate{b}.json').read_text().strip() for b in [0,1]]
base=json.loads(good[0]);bad=[]
for field,value in [('named',[True,False,False]),('named',[False,False]),('version',2)]:
    row=copy.deepcopy(base);row[field]=value;bad.append(canonical(row))
for field,value in [('outgoing',[False,True,True]),('incoming',[True,False,False,False,False,False]),
                    ('projection',[False,False,False])]:
    row=copy.deepcopy(base);row['comparison'][field]=value;bad.append(canonical(row))
row=copy.deepcopy(base);row['unknown']=None;bad.append(canonical(row))
bad.append(good[0][:-1]+',"version":1}')
with tempfile.TemporaryDirectory(dir=P) as tmp:
    f=Path(tmp)/'mixed.jsonl';f.write_text('\n'.join([good[0],*bad,good[1]])+'\n')
    run=subprocess.run([str(T/'bin/lean'),'-j1','--run','UniqueHomologyCertificates/CheckFile.lean',str(f)],
        cwd=R,env=env,text=True,capture_output=True,timeout=120)
    assert run.returncode==1 and '2/10' in run.stdout,(run.returncode,run.stdout,run.stderr)
    for line in range(2,10):assert f'{f}:{line}:' in run.stderr
    stderr=run.stderr.replace(str(f),'mixed.jsonl')
    f.write_text('\n'.join(good)+'\n')
    success=subprocess.run([str(T/'bin/lean'),'-j1','--run','UniqueHomologyCertificates/CheckFile.lean',str(f)],
        cwd=R,env=env,text=True,capture_output=True,timeout=120)
    assert success.returncode==0 and '2/2' in success.stdout
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
report={'status':'passed','valid_records':2,'invalid_records':8,'mixed_exit':run.returncode,
    'all_valid_exit':success.returncode,'mixed_stdout':run.stdout,'diagnostics':stderr,
    'source_sha256':{str(p.relative_to(R)):sha(p) for p in [Path(__file__),
        R/'UniqueHomologyCertificates/Import.lean',R/'UniqueHomologyCertificates/CheckFile.lean',
        P/'certificate0.json',P/'certificate1.json']}}
(P/'import-test.json').write_text(json.dumps(report,indent=2,sort_keys=True)+'\n')
print('two valid; eight mutated records rejected with exact line diagnostics; batch recovery verified')
