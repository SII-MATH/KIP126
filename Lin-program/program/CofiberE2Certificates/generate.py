"""Generate all dependency and finite exactness/obstruction kernel goals."""
import json,pathlib
HERE=pathlib.Path(__file__).resolve().parent;ROOT=HERE.parent;OUT=ROOT/'CofiberE2Batches';OUT.mkdir(exist_ok=True);EXACT=HERE/'exact';EXACT.mkdir(exist_ok=True)
a=json.loads((HERE/'audit.json').read_text());lines=[]
for i,e in enumerate(a['files']):
 k=e['kind'];typ,syntax=('DerivedMapCertificates.FactorWire','derived_factor%') if k=='factor' else ('ModuleToModuleCertificates.ShiftedWire','shifted_module_map%') if k=='direct_dependency' else ('DerivedMapCertificates.CompositionWire','derived_composition%')
 lines.append([f'def dependency{i} : {typ} := {syntax} "{e["path"]}"',f'theorem dependency{i}valid : dependency{i}.Valid := by lin_cert using ()'])
files={e['path']:json.loads((ROOT/e['path']).read_text()) for e in a['files']};exact=[];negative=[]
def entries(w):return w['algebra']['entries'] if 'algebra'in w else w['output']
for r in a['records']:
 for p in r['positions']:
  for b in p['blocks']:
   av,bv=entries(files[b['incoming']]),entries(files[b['outgoing']]);m,n,k=b['middle_dimension'],b['input_dimension'],b['output_dimension']
   if b['status']=='exact_candidate':
    i=len(exact);w=dict(version=1,name=r['name'],position=p['position'],middleS=b['s'],middleT=b['t'],inputS=b['input_s'],inputT=b['input_t'],outputS=b['output_s'],outputT=b['output_t'],incomingShiftS=p['incoming_shift'][0],incomingShiftT=p['incoming_shift'][1],outgoingShiftS=p['outgoing_shift'][0],outgoingShiftT=p['outgoing_shift'][1],inputDimension=n,middleDimension=m,outputDimension=k,incoming=av,outgoing=bv,up=b['contraction']['up'],down=b['contraction']['down']);path=EXACT/f'{i:05d}.json';path.write_text(json.dumps(w,sort_keys=True,separators=(',',':'))+'\n');exact.append(dict(path=str(path.relative_to(ROOT)),ordinal=r['ordinal'],position=p['position'],s=b['s'],t=b['t'],incoming=b['incoming'],outgoing=b['outgoing']));lines.append([f'def exact{i} : CofiberE2Certificates.Wire := cofiber_e2% "{path.relative_to(ROOT)}"',f'theorem exact{i}valid : exact{i}.Valid := by lin_cert using ()'])
   else:
    i=len(negative);q=b['nonzero_composite_coordinate'];bl=lambda xs:'['+','.join('true' if x else 'false' for x in xs)+']';lines.append([f'def badIn{i} : LinearCertificates.Matrix {m} {n} := fun i j => ({bl(av)} : List Bool)[i.val*{n}+j.val]?.getD false',f'def badOut{i} : LinearCertificates.Matrix {k} {m} := fun i j => ({bl(bv)} : List Bool)[i.val*{m}+j.val]?.getD false',f'theorem badComposite{i} : ResolutionCertificates.compose badOut{i} badIn{i} ⟨{q["row"]}, by decide⟩ ⟨{q["column"]}, by decide⟩ = true := by decide']);negative.append(dict(ordinal=r['ordinal'],position=p['position'],s=b['s'],t=b['t']))
for batch,start in enumerate(range(0,len(lines),80)):
 text=['import CofiberE2Certificates.Basic','set_option maxRecDepth 8192','set_option maxHeartbeats 4000000',f'namespace CofiberE2Batches.Batch{batch:03d}','open DerivedMapCertificates ModuleToModuleCertificates CofiberE2Certificates LinProgramCertificates']+[l for row in lines[start:start+80] for l in row]+[f'end CofiberE2Batches.Batch{batch:03d}'];(OUT/f'Batch{batch:03d}.lean').write_text('\n'.join(text)+'\n')
(HERE/'generation.json').write_text(json.dumps(dict(dependencies=len(a['files']),exact=exact,noncomplex=negative,batches=(len(lines)+79)//80),indent=2)+'\n');print(len(a['files']),len(exact),len(negative),(len(lines)+79)//80)

# Regenerate explicit not-a-complex propositions for every retained obstruction.
proofs=['import CofiberE2Certificates.Basic','namespace CofiberE2Certificates.Counterexamples','open LinearCertificates'];idx=0
for record in a['records']:
 for position in record['positions']:
  for block in position['blocks']:
   if block['status']!='not_a_complex':continue
   av,bv=entries(files[block['incoming']]),entries(files[block['outgoing']]);m,n,k=block['middle_dimension'],block['input_dimension'],block['output_dimension'];i,j=block['nonzero_composite_coordinate']['row'],block['nonzero_composite_coordinate']['column'];bl=lambda xs:'['+','.join('true' if x else 'false' for x in xs)+']'
   proofs += [f'-- {record["name"]}, position {position["position"]}, middle ({block["s"]},{block["t"]}).',f'def incoming{idx} : Matrix {m} {n} := fun i j => ({bl(av)} : List Bool)[i.val*{n}+j.val]?.getD false',f'def outgoing{idx} : Matrix {k} {m} := fun i j => ({bl(bv)} : List Bool)[i.val*{m}+j.val]?.getD false',f'theorem notComplex{idx} : ¬ IsComplex outgoing{idx} incoming{idx} := by',f'  intro h',f'  have hz := congrFun (h (fun j => decide (j.val = {j}))) ⟨{i}, by decide⟩','  change true = false at hz','  cases hz'];idx+=1
proofs+=['end CofiberE2Certificates.Counterexamples'];(HERE/'Counterexamples.lean').write_text('\n'.join(proofs)+'\n')

# Refresh the small actual regression fixture by its provenance key.
fixture=next(r for r in exact if r['ordinal']==0 and r['position']==1 and r['s']==3 and r['t']==12)
import re
test=HERE/'Tests.lean'
if test.exists():
 text=re.sub(r'def actualC2 : Wire := cofiber_e2% "[^"]+"',f'def actualC2 : Wire := cofiber_e2% "{fixture["path"]}"',test.read_text())
 if text!=test.read_text():test.write_text(text)
