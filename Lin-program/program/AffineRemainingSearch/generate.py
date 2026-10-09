"""Importable branch certificates and exact finite event witnesses."""
import json
from pathlib import Path
P=Path(__file__).resolve().parent;R=P.parent
report=json.loads((P/'audit.json').read_text());blocks=json.loads((R/'AggregateDC2h6Conditional/source.json').read_text())['blocks']
canonical=lambda x:json.dumps(x,sort_keys=True,separators=(',',':'))+'\n'
for name,key in [('d2source2697','S0:9,134:d2'),('d2target2697','S0:12,136:d2'),('d2source2708','S0:7,134:d2'),('d2target2708','S0:10,136:d2')]:
 (P/f'{name}.json').write_text(canonical(blocks[key]['wire']))
for b in [0,1]:
 wire=json.loads((P/f'branch2574-{b}.json').read_text())
 S=blocks['S0:9,134:d2']['wire'];T=blocks['S0:12,136:d2']['wire']
 finite=dict(version=1,rawSource=[False,True,False,False,False],rawTarget=[True,False,False,False,False],sourceStages=[dict(wire=S,representative=[False,True,False,False,False])],targetStages=[dict(wire=T,representative=[True,False,False,False,False])],event=wire,source=[False,False,True],target=[True])
 (P/f'event2697-branch{b}.json').write_text(canonical(finite))
lines=['import PageTransitionCertificates.Import','import AggregateTargetInventory.EventAudit.Executable','import Row2574Detector.Additional.Combined','namespace AffineRemainingSearch.Data','open PageTransitionCertificates']
for name,filename in [('branch0','branch2574-0'),('branch1','branch2574-1'),('choice0','branch2708-0'),('choice1','branch2708-1')]+[(x,x) for x in ['d2source2697','d2target2697','d2source2708','d2target2708']]:
 lines += [f'def {name} : WireComparison := page_comparison% "AffineRemainingSearch/{filename}.json"',f'theorem {name}_checked : {name}.Valid := by lin_cert using ()']
for b in [0,1]:
 lines += [f'def event{b} : AggregateTargetInventory.EventAudit.Executable.Wire := finite_event% "AffineRemainingSearch/event2697-branch{b}.json"',f'theorem event{b}_valid : event{b}.Valid := by lin_cert using ()',f'theorem event{b}_comparison : event{b}.event = branch{b} := rfl',f'theorem event{b}_source : (event{b}.sourceStages[0]).wire = d2source2697 := rfl',f'theorem event{b}_target : (event{b}.targetStages[0]).wire = d2target2697 := rfl']
lines+=['end AffineRemainingSearch.Data'];(P/'Data.lean').write_text('\n'.join(lines)+'\n')
print('Four branches, four exact d2 comparisons and two finite2697 event imports generated')
