"""Check every stored result against current exact input/dependency digest."""
import hashlib,json,pathlib,re
ROOT=pathlib.Path(__file__).resolve().parent.parent;FOLDER=ROOT/'ModuleMapBatches'
def main():
 paths=[ROOT/'.lake/build/lib/lean']+[x/'.lake/build/lib/lean' for x in (ROOT/'../../KIP126/.lake/packages').resolve().iterdir()]+[pathlib.Path('/inspire/hdd/global_user/baokangjie-CZXS25250151/.elan/toolchains/leanprover--lean4---v4.32.2/lib/lean')]
 deps=hashlib.sha256();seen=set();pending=['ModuleMapCertificates.MatrixImport']
 while pending:
  module=pending.pop()
  if module in seen:continue
  seen.add(module);relative=pathlib.Path(*module.split('.'));local=ROOT/relative.with_suffix('.lean')
  if local.exists():
   text=local.read_text();deps.update(module.encode());deps.update(text.encode());pending.extend(re.findall(r'^import\s+(\S+)',text,re.M))
  else:
   found=next((base/relative.with_suffix('.olean') for base in paths if (base/relative.with_suffix('.olean')).exists()),None)
   if found is not None:deps.update(module.encode());deps.update(found.read_bytes())
 deps.update((ROOT/'lean-toolchain').read_bytes());dep_digest=deps.hexdigest()
 results={r['batch']:r for r in json.loads((FOLDER/'compile_audit.json').read_text())};fresh=[];stale=[]
 for f in sorted(FOLDER.glob('Batch*.lean')):
  h=hashlib.sha256(f.read_bytes());h.update(dep_digest.encode())
  for rel in re.findall(r'(?:module_map|module_matrix)% "([^"]+)"',f.read_text()):h.update((ROOT/rel).read_bytes())
  r=results.get(f.name,{})
  (fresh if r.get('exit_code')==0 and r.get('sha256')==h.hexdigest() else stale).append(f.name)
 out=dict(dependency_digest=dep_digest,status='complete' if not stale else 'incomplete',verified_current=len(fresh),total=len(fresh)+len(stale),remaining=len(stale),stale=stale)
 (FOLDER/'current_run_progress.json').write_text(json.dumps(out,indent=2)+'\n');print(len(fresh),'fresh;',len(stale),'remaining');return out
if __name__=='__main__':main()
