"""Serial, resumable kernel verification of full module-map batches."""
import hashlib,json,os,pathlib,re,subprocess,time
ROOT=pathlib.Path(__file__).resolve().parent.parent
FOLDER=ROOT/'ModuleMapBatches';OUTPUT=ROOT/'.lake/build/lib/lean/ModuleMapBatches';OUTPUT.mkdir(parents=True,exist_ok=True)
paths=[ROOT/'.lake/build/lib/lean']+[x/'.lake/build/lib/lean' for x in (ROOT/'../../KIP126/.lake/packages').resolve().iterdir()]+[pathlib.Path('/inspire/hdd/global_user/baokangjie-CZXS25250151/.elan/toolchains/leanprover--lean4---v4.32.2/lib/lean')]
env=dict(os.environ,LEAN_PATH=':'.join(map(str,paths)),LD_PRELOAD='/tmp/lean_proc_shim.so')
lean='/inspire/hdd/global_user/baokangjie-CZXS25250151/.elan/toolchains/leanprover--lean4---v4.32.2/bin/lean'
log=FOLDER/'compile_audit.json';results=json.loads(log.read_text()) if log.exists() else []
failures=[r for r in results if r['exit_code']!=0]
if failures:
 history=FOLDER/'compile_failure_history.json';old=json.loads(history.read_text()) if history.exists() else [];history.write_text(json.dumps(old+failures,indent=2)+'\n')
results=[r for r in results if r['exit_code']==0]
# Follow actual imports; content hashing ignores unrelated rebuild timestamps.
deps=hashlib.sha256();seen=set();pending=['ModuleMapCertificates.MatrixImport']
while pending:
 module=pending.pop()
 if module in seen:continue
 seen.add(module);relative=pathlib.Path(*module.split('.'))
 local=ROOT/relative.with_suffix('.lean')
 if local.exists():
  text=local.read_text();deps.update(module.encode());deps.update(text.encode())
  pending.extend(re.findall(r'^import\s+(\S+)',text,re.M))
 else:
  found=next((base/relative.with_suffix('.olean') for base in paths if (base/relative.with_suffix('.olean')).exists()),None)
  if found is None:raise FileNotFoundError(f"missing checker dependency {module}")
  deps.update(module.encode());deps.update(found.read_bytes())
deps.update((ROOT/'lean-toolchain').read_bytes())
dep_digest=deps.hexdigest()
progress=FOLDER/'current_run_progress.json'
progress.write_text(json.dumps(dict(dependency_digest=dep_digest,status='running',verified_current=0,total=148,remaining=148),indent=2)+'\n')
verified_current=0
for f in sorted(FOLDER.glob('Batch*.lean')):
 hasher=hashlib.sha256(f.read_bytes());hasher.update(dep_digest.encode())
 for rel in re.findall(r'(?:module_map|module_matrix)% \"([^\"]+)\"',f.read_text()):hasher.update((ROOT/rel).read_bytes())
 digest=hasher.hexdigest();target=OUTPUT/(f.stem+'.olean')
 if any(r['batch']==f.name and r.get('sha256')==digest for r in results) and target.exists() and target.stat().st_mtime>=f.stat().st_mtime:
  verified_current+=1;continue
 results=[r for r in results if r['batch']!=f.name];start=time.time()
 try:
  p=subprocess.run([lean,'-j1',str(f.relative_to(ROOT)),'-o',str(target)],cwd=ROOT,env=env,text=True,capture_output=True,timeout=180)
  row=dict(batch=f.name,sha256=digest,exit_code=p.returncode,seconds=time.time()-start,output=p.stdout+p.stderr)
 except subprocess.TimeoutExpired:row=dict(batch=f.name,sha256=digest,exit_code=124,seconds=time.time()-start,output='180 second limit')
 results.append(row);verified_current+=int(row['exit_code']==0)
 progress.write_text(json.dumps(dict(dependency_digest=dep_digest,status='running' if row['exit_code']==0 else 'failed',verified_current=verified_current,total=148,remaining=148-verified_current),indent=2)+'\n')
 log.write_text(json.dumps(results,indent=2)+'\n');print(f.name,row['exit_code'],flush=True)
 if row['exit_code']:raise SystemExit(row['exit_code'])
progress.write_text(json.dumps(dict(dependency_digest=dep_digest,status='complete',verified_current=verified_current,total=148,remaining=148-verified_current),indent=2)+'\n')
print('all',len(results),'batches verified')
