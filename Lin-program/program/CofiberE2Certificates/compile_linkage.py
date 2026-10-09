"""Serial Lean compilation with content fingerprints; run only after shared build."""
import hashlib,json,os,pathlib,re,subprocess,sys,time
ROOT=pathlib.Path(__file__).resolve().parent.parent;HERE=ROOT/'CofiberE2Certificates';OUT=ROOT/'CofiberLinkageBatches'
paths=[ROOT/'.lake/build/lib/lean']+[p/'.lake/build/lib/lean' for p in (ROOT/'../../KIP126/.lake/packages').resolve().iterdir()]
env=dict(os.environ,LEAN_PATH=':'.join(map(str,paths)),LD_PRELOAD='/tmp/lean_proc_shim.so')
lean='/inspire/hdd/global_user/baokangjie-CZXS25250151/.elan/toolchains/leanprover--lean4---v4.32.2/bin/lean'
def digest(file):
 seen=set();h=hashlib.sha256()
 def visit(p):
  if p in seen:return
  seen.add(p);data=p.read_bytes();h.update(str(p.relative_to(ROOT)).encode());h.update(data)
  for imp in re.findall(r'^import ([\w.]+)',data.decode(),re.M):
   dep=ROOT/(imp.replace('.','/')+'.lean')
   if dep.exists():visit(dep)
   else:
    for base in paths+[pathlib.Path(lean).parent.parent/'lib/lean']:
     obj=base/(imp.replace('.','/')+'.olean')
     if obj.exists():h.update(str(obj).encode());h.update(obj.read_bytes());break
    else:raise FileNotFoundError('missing imported olean for '+imp)
  for path in re.findall(r'% "([^"]+\.json)"',data.decode()):h.update((ROOT/path).read_bytes())
 visit(file);h.update((ROOT/'lean-toolchain').read_bytes());return h.hexdigest()
def main():
 log=HERE/'linkage_compile_audit.json';records=json.loads(log.read_text()) if log.exists() else [];latest={r['file']:r for r in records}
 files=[HERE/(x+'.lean') for x in ['Linkage']]+sorted(OUT.glob('Batch*.lean'))
 if len(sys.argv)>1:files=[ROOT/x for x in sys.argv[1:]]
 for f in files:
  key=str(f.relative_to(ROOT));out=ROOT/'.lake/build/lib/lean'/f.relative_to(ROOT).with_suffix('.olean');fingerprint=digest(f)
  if key in latest and latest[key].get('digest')==fingerprint and latest[key]['exit_code']==0 and out.exists():print(key,'fresh',flush=True);continue
  out.parent.mkdir(parents=True,exist_ok=True);start=time.time();p=subprocess.run([lean,'-j1',key,'-o',str(out)],cwd=ROOT,env=env,capture_output=True,text=True,timeout=600)
  rec=dict(file=key,digest=fingerprint,exit_code=p.returncode,seconds=time.time()-start,output=p.stdout+p.stderr);records.append(rec);log.write_text(json.dumps(records,indent=2)+'\n');print(key,p.returncode,p.stdout+p.stderr,flush=True)
  if p.returncode:raise SystemExit(p.returncode)
if __name__=='__main__':main()
