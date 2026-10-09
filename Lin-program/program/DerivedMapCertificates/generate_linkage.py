"""Kernel links for all generated derived composition and commutativity wires."""
import json,pathlib
HERE=pathlib.Path(__file__).resolve().parent;ROOT=HERE.parent;OUT=ROOT/'DerivedLinkageBatches';OUT.mkdir(exist_ok=True)
a=json.loads((HERE/'generation_audit.json').read_text());by={e['path']:(i,e) for i,e in enumerate(a['files'])};chunks=[];records=[]
def name(path):
 i,e=by[path];n=f'DerivedMapBatches.Batch{i//80:03d}.certificate{i}';mat=n+('.algebra.mat' if e['kind'] in ('factor','direct_dependency') else '.c');return i//80,n,mat
for i,e in enumerate(a['files']):
 if e['kind'] not in ('composition','commutativity'):continue
 o=e['origin'];ai,an,am=name(o['first']);bi,bn,bm=name(o['second']);ci,cn,cm=name(e['path']);n=len(records);imports={ai,bi,ci};lines=[f'theorem firstLink{n} : {am} = {cn}.a := by decide',f'theorem secondLink{n} : {bm} = {cn}.b := by decide',f'theorem firstValid{n} : {an}.Valid := {an}valid',f'theorem secondValid{n} : {bn}.Valid := {bn}valid',f'theorem outputValid{n} : {cn}.Valid := {cn}valid',f'theorem linkedComposition{n} (x : LinearCertificates.Vec {cn}.cols) :',f'    LinearCertificates.eval {cm} x = LinearCertificates.eval {bm} (LinearCertificates.eval {am} x) := by',f'  rw [firstLink{n}, secondLink{n}]',f'  exact {cn}valid.2 x']
 if e['kind']=='commutativity':
  if o['rhs']:
   ri,rn,rm=name(o['rhs']);imports.add(ri);lines += [f'theorem rhsLink{n} : {cm} = {rm} := by decide',f'theorem rhsValid{n} : {rn}.Valid := {rn}valid',f'theorem linkedCommutativity{n} (x : LinearCertificates.Vec {cn}.cols) :',f'    LinearCertificates.eval {bm} (LinearCertificates.eval {am} x) = LinearCertificates.eval {rm} x := by',f'  exact (linkedComposition{n} x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink{n})']
  else:
   lines += [f'theorem outputZero{n} : {cm} = (fun _ _ => false) := by decide',f'theorem linkedZero{n} (x : LinearCertificates.Vec {cn}.cols) :',f'    LinearCertificates.eval {bm} (LinearCertificates.eval {am} x) = LinearCertificates.zero := by',f'  rw [← linkedComposition{n}, outputZero{n}]',f'  funext i',f'  exact LinearCertificates.zero_dot x']
 chunks.append((imports,lines));records.append(dict(ordinal=n,path=e['path'],kind=e['kind'],first=o['first'],second=o['second'],rhs=o.get('rhs')))
for batch,start in enumerate(range(0,len(chunks),50)):
 selected=chunks[start:start+50];imports=sorted(set().union(*(c[0] for c in selected)));text=['import DerivedMapCertificates.Linkage']+[f'import DerivedMapBatches.Batch{i:03d}' for i in imports]+['set_option maxRecDepth 8192','set_option maxHeartbeats 4000000',f'namespace DerivedLinkageBatches.Batch{batch:03d}']+[l for _,ls in selected for l in ls]+[f'end DerivedLinkageBatches.Batch{batch:03d}'];(OUT/f'Batch{batch:03d}.lean').write_text('\n'.join(text)+'\n')
(HERE/'linkage_generation.json').write_text(json.dumps(dict(records=records,batches=(len(chunks)+49)//50),indent=2)+'\n');print(len(records),(len(chunks)+49)//50)
