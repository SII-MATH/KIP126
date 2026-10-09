"""Render new complete comparisons; no failed comparison is rendered."""
import json
from pathlib import Path
P=Path(__file__).resolve().parent
data=json.loads((P/'search.json').read_text())
lines=['import Fact764ConstrainedE5.Actual','import Fact762IncomingCertificates.ZeroPropagation',
       'namespace Fact764CycleFromProduct.Data','open LinearCertificates PageTransitionCertificates',
       'set_option maxRecDepth 10000','set_option maxHeartbeats 4000000']
fields=['version','k','m','n','h','outgoing','incoming','inclusion','projection','up','down']
for key,b in sorted(data['new_blocks'].items(),key=lambda x:(x[1]['page'],x[0])):
    name='b_'+key.replace(':','_').replace(',','_').replace('-','neg')
    lit=','.join(json.dumps(b['wire'][f],separators=(',',':')) for f in fields)
    lines += [f'def {name} : WireComparison := ⟨{lit}⟩',
              f'theorem {name}_complete : {name}.Valid := by lin_cert using ()']
lines += ['#print axioms b_S0_4_24_d4_complete','#print axioms b_S0_13_57_d3_complete',
          'end Fact764CycleFromProduct.Data']
(P/'Data.lean').write_text('\n'.join(lines)+'\n')
print(len(data['new_blocks']),'checked comparisons generated')
