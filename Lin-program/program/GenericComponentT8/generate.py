"""Reproducibly extract all sixteen S0 generators and the complete 81-cell square."""
import json,pathlib,subprocess
HERE=pathlib.Path(__file__).resolve().parent;ROOT=HERE.parent;PROD=ROOT/'GenericFreeComplexProducer'
raw=[json.loads(x) for x in (ROOT/'ExtComplexCertificates/actual-s0/resolution.jsonl').read_text().splitlines()];rows=[r for r in raw if r['t']<=8];lookup={(r['s'],r['local_id']):i for i,r in enumerate(rows)};n=len(rows);edges=[[] for _ in range(n*n)]
for i,r in enumerate(rows):
 for q in r['differential']:
  assert not any(q['milnor'][3:]);edges[i*n+lookup[r['s']-1,q['target_local_id']]].append(q['milnor'][:3])
w=dict(version=1,rank=3,n=n,homological=[r['s'] for r in rows],internal=[r['t'] for r in rows],edges=edges);(PROD/'actual_t8.input.jsonl').write_text(json.dumps(w,sort_keys=True,separators=(',',':'))+'\n')
for executable,args,target in [('generic-free-export',[str(PROD/'actual_t8.input.jsonl')],'actual_t8.json'),('generic-components',[str(PROD/'actual_t8.input.jsonl'),'0','8','0','8'],'actual_t8_components.jsonl')]:
 p=subprocess.run([str(PROD/executable)]+args,capture_output=True,text=True,check=True);(PROD/target).write_text(p.stdout)
records=[json.loads(x) for x in (PROD/'actual_t8_components.jsonl').read_text().splitlines()];assert len(records)==81
for b,start in enumerate(range(0,81,9)):
 ls=['import GenericComponentT8.Data','import ExtComplexCertificates.GenericComponentExactness',f'namespace GenericComponentT8.Batch{b:02d}','open ExtComplexCertificates.GenericFreeComplex','set_option maxRecDepth 100000','set_option maxHeartbeats 0']
 for i,r in enumerate(records[start:start+9],start):
  ls += [f'def component{i} : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", {i+1}']
  if r['status']=='exact':ls += [f'theorem exact{i} : ComponentExact bundle.data {r["s"]} {r["t"]} := checkExactComponent_sound _ component{i} (by decide)']
  else:ls += [f'theorem reject{i} : checkExactComponent bundle.data component{i} = false := by decide']
 ls += [f'end GenericComponentT8.Batch{b:02d}'];(HERE/f'Batch{b:02d}.lean').write_text('\n'.join(ls)+'\n')
print(n,'generators',len(records),'components')

# Source-sliced checker proofs; no second monolithic decide in Data.lean.
sub=HERE/'Sliced';sub.mkdir(exist_ok=True)
(sub/'DataOnly.lean').write_text('import ExtComplexCertificates.GenericCheckDecomposition\nnamespace GenericComponentT8.Sliced\nopen ExtComplexCertificates.GenericFreeComplex\nset_option maxRecDepth 100000\nset_option maxHeartbeats 0\ndef bundle : Wire := generic_complex_bundle% "GenericFreeComplexProducer/actual_t8.json"\nend GenericComponentT8.Sliced\n')
for i in range(16):
 text=['import GenericComponentT8.Sliced.DataOnly','namespace GenericComponentT8.Sliced','open ExtComplexCertificates.GenericFreeComplex','set_option maxRecDepth 100000','set_option maxHeartbeats 0',f'theorem products{i} : SourceProducts bundle.data bundle.certificate ⟨{i}, by decide⟩ := by','  unfold SourceProducts','  decide',f'theorem cancellation{i} : SourceCancellation bundle.certificate ⟨{i}, by decide⟩ := by','  unfold SourceCancellation','  decide','end GenericComponentT8.Sliced'];(sub/f'Source{i:02d}.lean').write_text('\n'.join(text)+'\n')
def join(prefix):
 term='(fun i : Fin 0 => Fin.elim0 i)'
 for i in reversed(range(16)):term=f'(Fin.cases {prefix}{i} {term})'
 return term
text=[f'import GenericComponentT8.Sliced.Source{i:02d}' for i in range(16)]+['namespace GenericComponentT8.Sliced','open ExtComplexCertificates.GenericFreeComplex','set_option maxRecDepth 100000','set_option maxHeartbeats 0','theorem valid : bundle.Valid :=','  wire_valid_of_sources bundle (by decide) (by decide)',f'    {join("products")}',f'    {join("cancellation")}','end GenericComponentT8.Sliced'];(sub/'Verified.lean').write_text('\n'.join(text)+'\n')

(HERE/'Data.lean').write_text('import GenericComponentT8.Sliced.Verified\nnamespace GenericComponentT8\nopen ExtComplexCertificates.GenericFreeComplex\nabbrev bundle := Sliced.bundle\ntheorem valid : bundle.Valid := Sliced.valid\ntheorem square_zero : (differential bundle.data).comp (differential bundle.data) = 0 := valid.2.2.2.2.2.2.2\n#print axioms valid\nend GenericComponentT8\n')
