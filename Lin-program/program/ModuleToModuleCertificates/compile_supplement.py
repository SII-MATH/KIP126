"""Strict serial kernel compilation of bounded low-degree map batches."""
import json,os,pathlib,subprocess,time
ROOT=pathlib.Path(__file__).resolve().parent.parent;FOLDER=ROOT/'ModuleLowMapSupplement';OUTPUT=ROOT/'.lake/build/lib/lean/ModuleLowMapSupplement';OUTPUT.mkdir(exist_ok=True)
paths=[ROOT/'.lake/build/lib/lean']+[x/'.lake/build/lib/lean' for x in (ROOT/'../../KIP126/.lake/packages').resolve().iterdir()];results=[]
for file in sorted(FOLDER.glob('Batch*.lean')):
 start=time.time();p=subprocess.run(['/inspire/hdd/global_user/baokangjie-CZXS25250151/.elan/toolchains/leanprover--lean4---v4.32.2/bin/lean','-j1',str(file.relative_to(ROOT)),'-o',str(OUTPUT/(file.stem+'.olean'))],cwd=ROOT,env=dict(os.environ,LEAN_PATH=':'.join(map(str,paths)),LD_PRELOAD='/tmp/lean_proc_shim.so'),text=True,capture_output=True,timeout=180)
 results.append(dict(batch=file.name,exit_code=p.returncode,seconds=time.time()-start,output=p.stdout+p.stderr));(FOLDER/'compile_audit.json').write_text(json.dumps(results,indent=2)+'\n');print(file.name,p.returncode,flush=True)
 if p.returncode:raise SystemExit(p.returncode)
