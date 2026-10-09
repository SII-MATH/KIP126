"""Split whole-family neighbor checking into bounded kernel batches."""
import json
from pathlib import Path
here=Path(__file__).resolve().parent
manifest=json.loads((here/'manifest.json').read_text())
count=sum(n.startswith('Batch') for n in manifest['modules'])
names=[]
for i in range(count):
    name=f'Neighbors{i:02}';names.append(name)
    lines=['import Fact713ComparisonBatches.Imported','import IndexedFamilyNeighborCheck.Basic',
           'namespace Fact713ComparisonBatches','open IndexedFamilyCertificates IndexedFamilyNeighborCheck',
           'set_option maxRecDepth 100000','set_option maxHeartbeats 16000000',
           f'theorem neighbors{i:02} : batch{i:02}.all (checkOne family) = true := by decide',
           f'#print axioms neighbors{i:02}','end Fact713ComparisonBatches']
    (here/(name+'.lean')).write_text('\n'.join(lines)+'\n')
lines=[f'import Fact713ComparisonBatches.{name}' for name in names]
lines+=['namespace Fact713ComparisonBatches','open IndexedFamilyCertificates IndexedFamilyNeighborCheck',
        'set_option maxRecDepth 100000','set_option maxHeartbeats 8000000',
        'theorem all_neighbors : ∀ e ∈ family, checkOne family e = true := by',
        '  unfold family','  simp only [List.forall_mem_append]',
        '  exact '+'⟨'*(count-1)+'(List.all_eq_true.mp neighbors00)'+''.join(f',List.all_eq_true.mp neighbors{i:02}⟩' for i in range(1,count))]
lines += ['theorem family_coherent : Coherent family :=',
          '  coherent_of_entries family family_unique all_valid all_neighbors',
          '#print axioms family_coherent','end Fact713ComparisonBatches']
(here/'Coherence.lean').write_text('\n'.join(lines)+'\n')
(here/'neighbor-modules.json').write_text(json.dumps(names+['Coherence'],indent=2)+'\n')
print(f'Generated {count} neighbor batches; no compilation claimed')
