"""Read-only verification of completed batch inventory and current fingerprints.
Current hashes are a post-run audit, not a claim about historical hash identity.
"""
import hashlib,json,pathlib,re
ROOT=pathlib.Path(__file__).resolve().parent.parent;FOLDER=ROOT/'ModuleMapBatches'
def digest(path):return hashlib.sha256(path.read_bytes()).hexdigest()
def main():
 from current_progress import main as progress
 assert progress()["remaining"]==0,"current checker/input digest verification incomplete"
 generation=json.loads((FOLDER/'generation_audit.json').read_text());results=json.loads((FOLDER/'compile_audit.json').read_text());summary=json.loads((FOLDER/'verification_summary.json').read_text())
 batches=sorted(FOLDER.glob('Batch*.lean'));assert len(batches)==len(results)==148
 assert {r['batch'] for r in results}=={f.name for f in batches};assert all(r['exit_code']==0 for r in results)
 assert generation['resolved']==14989 and not generation['failed'] and generation['complete_matrices']==5588
 count=0;artifacts={}
 for file in batches:
  text=file.read_text();count+=len(re.findall(r'^theorem ',text,re.M));artifacts[str(file.relative_to(ROOT))]=digest(file)
  target=ROOT/'.lake/build/lib/lean/ModuleMapBatches'/(file.stem+'.olean');assert target.exists()
  for rel in re.findall(r'(?:module_map|module_matrix)% "([^"]+)"',text):
   path=ROOT/rel;assert path.exists();artifacts[rel]=digest(path)
 assert count==20577==summary['kernel_theorems']
 deps={};pending=['ModuleMapCertificates.MatrixImport'];seen=set()
 paths=[ROOT/'.lake/build/lib/lean']+[x/'.lake/build/lib/lean' for x in (ROOT/'../../KIP126/.lake/packages').resolve().iterdir()]+[pathlib.Path('/inspire/hdd/global_user/baokangjie-CZXS25250151/.elan/toolchains/leanprover--lean4---v4.32.2/lib/lean')]
 while pending:
  name=pending.pop()
  if name in seen:continue
  seen.add(name);rel=pathlib.Path(*name.split('.'));local=ROOT/rel.with_suffix('.lean')
  if local.exists():deps[str(local.relative_to(ROOT))]=digest(local);pending.extend(re.findall(r'^import\s+(\S+)',local.read_text(),re.M))
  else:
   file=next((p/rel.with_suffix('.olean') for p in paths if (p/rel.with_suffix('.olean')).exists()),None)
   assert file is not None,name;deps[str(file)]=digest(file)
 deps['lean-toolchain']=digest(ROOT/'lean-toolchain')
 audit=dict(status='post_run_current_content_audit_not_historical_digest_migration',verified_batches=148,theorems=20577,dependencies=deps,artifacts=artifacts)
 (FOLDER/'current_content_fingerprint.json').write_text(json.dumps(audit,indent=2,sort_keys=True)+'\n')
 print('PASS 148 batches; 20577 theorems = 14989 columns + 5588 matrices; current contents fingerprinted independently')
if __name__=='__main__':main()
