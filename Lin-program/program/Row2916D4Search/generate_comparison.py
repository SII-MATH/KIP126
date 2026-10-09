"""Complete d2 homology comparisons and both squares for six maps."""
import json
from pathlib import Path

HERE=Path(__file__).resolve().parent
data=json.loads((HERE/'map-provenance.json').read_text())
(HERE/'quotient').mkdir(exist_ok=True)
lines=['import Row2916D4Search.Maps','import PageTransitionCertificates.Import',
       'import PageTransitionCertificates.InducedMap','namespace Row2916D4Search.Comparison',
       'open LinearCertificates PageTransitionCertificates',
       'set_option maxRecDepth 100000','set_option maxHeartbeats 8000000']
for name,block in data['comparisons'].items():
    (HERE/'quotient'/f'{name}.json').write_text(json.dumps(block['wire'],sort_keys=True,separators=(',',':'))+'\n')
    lines += [f'def {name} : WireComparison := page_comparison% "Row2916D4Search/quotient/{name}.json"',
              f'theorem {name}_valid : {name}.Valid := by lin_cert using ()',f'#print axioms {name}_valid']
jobs=[('top',(13,139)),('source',(5,38)),('right',(8,40)),('left0',(5,38)),('left1',(5,38))]
for kind,(s,t) in jobs:
        ds,dt=(11,103) if kind.startswith('left') else (8,101)
        target=f'S0_{s}_{t-2}' if kind=='top' else f'Ceta_{s+ds}_{t+dt}'
        source=f'Ceta_{s}_{t}';tag=f'{kind}_{s}_{t}'
        lines += [f'theorem {tag}_compatible : CompatibleMap',
            f'    (matrixOf {source}.k {source}.m {source}.outgoing) (matrixOf {source}.m {source}.n {source}.incoming)',
            f'    (matrixOf {target}.k {target}.m {target}.outgoing) (matrixOf {target}.m {target}.n {target}.incoming)',
            f'    Maps.{tag}.algebra.mat Maps.{kind}_{s+2}_{t+1}.algebra.mat Maps.{kind}_{s-2}_{t-1}.algebra.mat := by lin_cert using ()',
            f'def {tag}_E3 := coordinateMap {source}.comparison {target}.comparison Maps.{tag}.algebra.mat',
            f'#print axioms {tag}_compatible']
lines += ['end Row2916D4Search.Comparison']
(HERE/'Comparison.lean').write_text('\n'.join(lines)+'\n')
print(len(data['comparisons']),'complete d2 comparisons and',len(jobs),'whole-map adjacent square pairs')
