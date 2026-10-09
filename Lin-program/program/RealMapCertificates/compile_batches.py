"""Serial kernel compilation with persistent per-batch results."""
import json,os,pathlib,subprocess,time
root=pathlib.Path(__file__).resolve().parent.parent
folder=root/'RealMapCertificates'
paths=[root/'.lake/build/lib/lean']+[x/'.lake/build/lib/lean' for x in (root/'../../KIP126/.lake/packages').resolve().iterdir()]
env=dict(os.environ,LEAN_PATH=':'.join(map(str,paths)),LD_PRELOAD='/tmp/lean_proc_shim.so')
lean='/inspire/hdd/global_user/baokangjie-CZXS25250151/.elan/toolchains/leanprover--lean4---v4.32.2/bin/lean'
output=root/'.lake/build/lib/lean/RealMapCertificates/batches';output.mkdir(parents=True,exist_ok=True)
results=json.loads((folder/'compile_audit.json').read_text()) if (folder/'compile_audit.json').exists() else []
results=[r for r in results if r['exit_code']==0]
(folder/'compile_audit.json').write_text(json.dumps(results,indent=2)+'\n')
for file in sorted((folder/'batches').glob('*.lean')):
    if any(r['batch']==file.name for r in results) and (output/(file.stem+'.olean')).exists() and (output/(file.stem+'.olean')).stat().st_mtime >= file.stat().st_mtime: continue
    results=[r for r in results if r['batch']!=file.name]
    start=time.time()
    try:
        proc=subprocess.run([lean,'-j1',str(file.relative_to(root)),'-o',str(output/(file.stem+'.olean'))],cwd=root,env=env,text=True,capture_output=True,timeout=180)
        record=dict(batch=file.name,exit_code=proc.returncode,seconds=time.time()-start,output=proc.stdout+proc.stderr)
    except subprocess.TimeoutExpired as e:
        record=dict(batch=file.name,exit_code=124,seconds=time.time()-start,output='180-second per-batch limit')
    results.append(record)
    (folder/'compile_audit.json').write_text(json.dumps(results,indent=2)+'\n')
    print(file.name,record['exit_code'],flush=True)
    if record['exit_code'] != 0:
        raise SystemExit(record['exit_code'])
