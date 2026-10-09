"""Complete d2 homology comparisons and both squares for six maps."""
import json
from pathlib import Path

HERE=Path(__file__).resolve().parent
data=json.loads((HERE/'provenance.json').read_text())
(HERE/'quotient').mkdir(exist_ok=True)
lines=['import Fact713Row3247ProductSearch.Maps','import PageTransitionCertificates.Import',
       'import PageTransitionCertificates.InducedMap','namespace Fact713Row3247ProductSearch.Comparison',
       'open LinearCertificates PageTransitionCertificates',
       'set_option maxRecDepth 100000','set_option maxHeartbeats 8000000']
for name,block in data['comparisons'].items():
    (HERE/'quotient'/f'{name}.json').write_text(json.dumps(block['wire'],sort_keys=True,separators=(',',':'))+'\n')
    lines += [f'def {name} : WireComparison := page_comparison% "Fact713Row3247ProductSearch/quotient/{name}.json"',
              f'theorem {name}_valid : {name}.Valid := by lin_cert using ()',f'#print axioms {name}_valid']
for kind in ['factor']:
    for s,t in [(10,55),(13,57)]:
        target=f'Cnu_{s+12}_{t+108}'
        source=f'Cnu_{s}_{t}';tag=f'{kind}_{s}_{t}'
        lines += [f'theorem {tag}_compatible : CompatibleMap',
            f'    (matrixOf {source}.k {source}.m {source}.outgoing) (matrixOf {source}.m {source}.n {source}.incoming)',
            f'    (matrixOf {target}.k {target}.m {target}.outgoing) (matrixOf {target}.m {target}.n {target}.incoming)',
            f'    Maps.{tag}.algebra.mat Maps.{kind}_{s+2}_{t+1}.algebra.mat Maps.{kind}_{s-2}_{t-1}.algebra.mat := by lin_cert using ()',
            f'def {tag}_E3 := coordinateMap {source}.comparison {target}.comparison Maps.{tag}.algebra.mat',
            f'#print axioms {tag}_compatible']
lines += ['end Fact713Row3247ProductSearch.Comparison']
(HERE/'Comparison.lean').write_text('\n'.join(lines)+'\n')
print('12 complete d2 comparisons and six whole-map adjacent squares')
