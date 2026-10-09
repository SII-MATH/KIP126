"""Import every local complete candidate; no actual branch is selected."""
import json
from pathlib import Path
HERE=Path(__file__).resolve().parent
data=json.loads((HERE/'candidates.json').read_text())
(HERE/'wire').mkdir(exist_ok=True)
lines=['import PageTransitionCertificates.Import',
       'namespace Row3136SquareCandidates.Data',
       'open LinearCertificates PageTransitionCertificates',
       'set_option maxRecDepth 8192','set_option maxHeartbeats 4000000']
for st,block in data['comparisons'].items():
    name='d2_'+st.replace(',','_')
    (HERE/'wire'/f'{name}.json').write_text(json.dumps(block['wire'],sort_keys=True,separators=(',',':'))+'\n')
    lines += [f'def {name} : WireComparison := page_comparison% "Row3136SquareCandidates/wire/{name}.json"',
              f'theorem {name}_valid : {name}.Valid := by lin_cert using ()',f'#print axioms {name}_valid']
for case in data['candidates']:
    prefix=f'u{case["u"]}a{case["a"]}r{int(case["prior_row2994_branch"]=="residual_rebased")}'
    for role in ['source','target']:
        name=prefix+'_'+role
        (HERE/'wire'/f'{name}.json').write_text(json.dumps(case[role+'_d3_wire'],sort_keys=True,separators=(',',':'))+'\n')
        lines += [f'def {name} : WireComparison := page_comparison% "Row3136SquareCandidates/wire/{name}.json"',
                  f'theorem {name}_valid : {name}.Valid := by lin_cert using ()',f'#print axioms {name}_valid']
lines += ['end Row3136SquareCandidates.Data']
(HERE/'Data.lean').write_text('\n'.join(lines)+'\n')
print('4 complete d2 quotients and16 complete local d3 quotients')
