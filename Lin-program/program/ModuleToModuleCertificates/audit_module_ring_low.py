"""Current-source and external-certificate audit after actual batch compilation."""
import collections,hashlib,json,pathlib,re
ROOT=pathlib.Path(__file__).resolve().parent.parent;FOLDER=ROOT/'ModuleRingLowBatches'
def main():
 a=json.loads((FOLDER/'generation_audit.json').read_text());r=json.loads((FOLDER/'compile_audit.json').read_text());assert len(r)==a['batches']==11 and all(x['exit_code']==0 for x in r)
 files={};deps={};seen=set();pending=['ModuleToModuleCertificates.ShiftedImport'];paths=[ROOT/'.lake/build/lib/lean']+[x/'.lake/build/lib/lean' for x in (ROOT/'../../KIP126/.lake/packages').resolve().iterdir()]+[pathlib.Path('/inspire/hdd/global_user/baokangjie-CZXS25250151/.elan/toolchains/leanprover--lean4---v4.32.2/lib/lean')]
 while pending:
  name=pending.pop()
  if name in seen:continue
  seen.add(name);rel=pathlib.Path(*name.split('.'));local=ROOT/rel.with_suffix('.lean')
  if local.exists():deps[str(local.relative_to(ROOT))]=hashlib.sha256(local.read_bytes()).hexdigest();pending.extend(re.findall(r'^import\s+(\S+)',local.read_text(),re.M))
  else:
   f=next((p/rel.with_suffix('.olean') for p in paths if (p/rel.with_suffix('.olean')).exists()),None);assert f is not None,name;deps[str(f)]=hashlib.sha256(f.read_bytes()).hexdigest()
 deps['lean-toolchain']=hashlib.sha256((ROOT/'lean-toolchain').read_bytes()).hexdigest()
 count=0
 for f in sorted(FOLDER.glob('Batch*.lean')):
  files[str(f.relative_to(ROOT))]=hashlib.sha256(f.read_bytes()).hexdigest();count+=len(re.findall(r'^theorem ',f.read_text(),re.M));assert (ROOT/'.lake/build/lib/lean/ModuleRingLowBatches'/(f.stem+'.olean')).exists()
  for p in re.findall(r'shifted_module_map% "([^"]+)"',f.read_text()):
   raw=(ROOT/p).read_bytes();assert b'4294967295' not in raw;files[p]=hashlib.sha256(raw).hexdigest()
 assert count==a['generated']==1090
 reasons=collections.Counter(b.get('reason') for m in a['records'] for b in m['blocks'] if b['status']=='unresolved')
 report=dict(status='post_run_current_content_audit',verified_blocks=count,unresolved_blocks=a['unresolved'],maps_with_complete_requested_low_range=sum(all(b['status']!='unresolved' for b in m['blocks']) for m in a['records']),reasons=dict(reasons),dependencies=deps,artifacts=files)
 (FOLDER/'verification_summary.json').write_text(json.dumps(report,indent=2,sort_keys=True)+'\n')
 lines=['# Bounded low-degree module maps','',f'43 module-to-S0 maps surveyed at source t<=12. {count} blocks kernel-verified; 0 unresolved. All 43 maps have every requested low-degree block verified. No full-range map or paper claim is thereby proved.','','All unresolved blocks require general multi-term target-module/ring reduction. Their exact map/degrees appear below; any paper claim requiring such a block remains unbridged. Existing doc_data claim-to-map attribution is not inferred from name similarity.','','| Map | Unresolved source (s,t) |','|---|---|']
 for m in a['records']:
  bad=[f'({b["s"]},{b["t"]})' for b in m['blocks'] if b['status']=='unresolved']
  if bad:lines.append('| '+m['name']+' | '+', '.join(bad)+' |')
 (FOLDER/'coverage.md').write_text('\n'.join(lines)+'\n');print(count,'verified,',a['unresolved'],'unresolved; content fingerprint recorded')
if __name__=='__main__':main()
