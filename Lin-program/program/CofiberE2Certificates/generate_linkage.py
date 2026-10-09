"""Kernel-check numeric matrix identities to already certified dependencies.
Names and SQL hashes never prove an identity; every equality is reduced in Lean.
"""
import json,pathlib
HERE=pathlib.Path(__file__).resolve().parent;ROOT=HERE.parent;OUT=ROOT/'CofiberLinkageBatches';OUT.mkdir(exist_ok=True)
a=json.loads((HERE/'audit.json').read_text());g=json.loads((HERE/'generation.json').read_text());dep={e['path']:(i,e['kind']) for i,e in enumerate(a['files'])};certs={ (r['ordinal'],r['position'],r['s'],r['t']):i for i,r in enumerate(g['exact'])};chunks=[];records=[]
def depname(path):
 i,kind=dep[path];base=f'CofiberE2Batches.Batch{i//80:03d}.dependency{i}'
 mat=base+('.algebra.mat' if kind=='factor' else '.algebra.mat' if kind=='direct_dependency' else '.c')
 return i//80,base,mat
ordinal=0;negative=0
for r in a['records']:
 for pos in r['positions']:
  for b in pos['blocks']:
   ai,an,am=depname(b['incoming']);bi,bn,bm=depname(b['outgoing']);imports={ai,bi};lines=[]
   if b['status']=='exact_candidate':
    i=certs[r['ordinal'],pos['position'],b['s'],b['t']];event=len(a['files'])+ordinal;batch=event//80;imports.add(batch);wn=f'CofiberE2Batches.Batch{batch:03d}.exact{i}'
    lines=[f'theorem incomingLink{ordinal} : {am} = {wn}.a := by decide',f'theorem outgoingLink{ordinal} : {bm} = {wn}.b := by decide',f'theorem linkedExact{ordinal} : ResolutionCertificates.ExactAt {bm} {am} := by',f'  rw [incomingLink{ordinal}, outgoingLink{ordinal}]',f'  exact {wn}valid.2']
   else:
    i=negative;negative+=1;batch=(len(a['files'])+ordinal)//80;imports.add(batch);pre=f'CofiberE2Batches.Batch{batch:03d}';q=b['nonzero_composite_coordinate'];lines=[f'theorem incomingLink{ordinal} : {am} = {pre}.badIn{i} := by decide',f'theorem outgoingLink{ordinal} : {bm} = {pre}.badOut{i} := by decide',f'theorem linkedNonzero{ordinal} : ResolutionCertificates.compose {bm} {am} ⟨{q["row"]}, by decide⟩ ⟨{q["column"]}, by decide⟩ = true := by',f'  rw [incomingLink{ordinal}, outgoingLink{ordinal}]',f'  exact {pre}.badComposite{i}']
   # Referencing the existing valid proofs makes dependency checks explicit in the linkage module.
   lines += [f'theorem incomingValid{ordinal} : {an}.Valid := {an}valid',f'theorem outgoingValid{ordinal} : {bn}.Valid := {bn}valid']
   chunks.append((imports,lines));records.append(dict(ordinal=ordinal,cofiber=r['ordinal'],position=pos['position'],s=b['s'],t=b['t'],status=b['status'],incoming=b['incoming'],outgoing=b['outgoing']));ordinal+=1
for batch,start in enumerate(range(0,len(chunks),60)):
 selected=chunks[start:start+60];imports=sorted(set().union(*(x[0] for x in selected)));text=['import CofiberE2Certificates.Linkage']+[f'import CofiberE2Batches.Batch{i:03d}' for i in imports]+['set_option maxRecDepth 8192','set_option maxHeartbeats 4000000',f'namespace CofiberLinkageBatches.Batch{batch:03d}']+[l for _,ls in selected for l in ls]+[f'end CofiberLinkageBatches.Batch{batch:03d}'];(OUT/f'Batch{batch:03d}.lean').write_text('\n'.join(text)+'\n')
(HERE/'linkage_generation.json').write_text(json.dumps(dict(records=records,batches=(len(chunks)+59)//60,equality_theorems=2*len(chunks),dependency_validity_references=2*len(chunks),linked_exact=len(g['exact']),linked_nonzero=len(g['noncomplex'])),indent=2)+'\n');print(len(chunks),(len(chunks)+59)//60)
