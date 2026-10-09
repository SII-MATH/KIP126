"""Generate kernel goals only for certificates with explicit mathematical checks."""
import json,pathlib
HERE=pathlib.Path(__file__).resolve().parent;ROOT=HERE.parent;OUT=ROOT/'DerivedMapBatches';OUT.mkdir(exist_ok=True)
audit=json.loads((HERE/'generation_audit.json').read_text());lines=[]
for i,entry in enumerate(audit['files']):
 kind=entry['kind'];typ,syntax=('FactorWire','derived_factor%') if kind=='factor' else ('ModuleToModuleCertificates.ShiftedWire','shifted_module_map%') if kind=='direct_dependency' else ('CompositionWire','derived_composition%')
 lines.append([f'def certificate{i} : {typ} := {syntax} "{entry["path"]}"',f'theorem certificate{i}valid : certificate{i}.Valid := by lin_cert using ()'])
for batch,start in enumerate(range(0,len(lines),80)):
 chunk=lines[start:start+80];text=['import DerivedMapCertificates.Import','set_option maxRecDepth 8192','set_option maxHeartbeats 4000000',f'namespace DerivedMapBatches.Batch{batch:03d}','open DerivedMapCertificates ModuleToModuleCertificates LinProgramCertificates']+[l for pair in chunk for l in pair]+[f'end DerivedMapBatches.Batch{batch:03d}'];(OUT/f'Batch{batch:03d}.lean').write_text('\n'.join(text)+'\n')
print(len(lines),'kernel goals',(len(lines)+79)//80,'batches')

# Pin the actual nonzero E2 example by semantic lookup rather than numeric file names.
claim=next(r for r in audit['commutativity'] if r['name']=='2*sigmasq')
block=next(b for b in claim['blocks'] if b['s']==0 and b['t']==0)
assert block['status']=='page_level_obligation'
text=(HERE/'Counterexample.lean').read_text()
import re
text=re.sub(r'def first : FactorWire := derived_factor% "[^"]+"',f'def first : FactorWire := derived_factor% "{block["first"]}"',text)
text=re.sub(r'def second : FactorWire := derived_factor% "[^"]+"',f'def second : FactorWire := derived_factor% "{block["second"]}"',text)
if text!=(HERE/'Counterexample.lean').read_text():(HERE/'Counterexample.lean').write_text(text)
