import json
from pathlib import Path
p=Path(__file__).resolve().parent;r=p.parent
s0=json.loads((r/'AggregateTwoDetectorConditional/source.json').read_text())['blocks'];cw=json.loads((r/'Row2796D4/map-e4.json').read_text())['comparisons'];actual=json.loads((p/'source.json').read_text());maps={(x['s'],x['t']):x['wire'] for x in actual}
lines=['import Row2796D4Detector.Actual','import PageTransitionCertificates.InducedMap','import PageTransitionCertificates.Import','namespace Row2796D4Detector.Comparison','open LinearCertificates PageTransitionCertificates ResolutionCertificates Actual']
def bl(xs):return '['+','.join('true' if x else 'false' for x in xs)+']'
def wire(name,w):
 args=[str(w[x]) for x in ['version','k','m','n','h']]+[bl(w[x]) for x in ['outgoing','incoming','inclusion','projection','up','down']]
 lines.append(f'def {name} : WireComparison := ⟨'+','.join(args)+'⟩')
 lines.append(f'theorem {name}_complete : {name}.Valid := by lin_cert using ()')
for name,s,t in [('lower',9,136),('center',12,138),('upper',15,140),('named',8,135)]:
 sw=s0[f'S0:{s},{t}:d2']['wire'];tw=cw[f'CW_nu_eta:{s+1},{t+7}:d2']['wire'];wire(name+'S',sw);wire(name+'T',tw)
 for suffix,(a,b) in [('Middle',(s,t)),('Out',(s+2,t+1)),('In',(s-2,t-1))]:
  w=maps[a,b];lines.append(f'def {name}{suffix} : Matrix {w["rows"]} {w["cols"]} := matrixOf _ _ m{a}_{b}.entries')
 lines.append(f'theorem {name}Compatible : CompatibleMap (matrixOf {name}S.k {name}S.m {name}S.outgoing) (matrixOf {name}S.m {name}S.n {name}S.incoming) (matrixOf {name}T.k {name}T.m {name}T.outgoing) (matrixOf {name}T.m {name}T.n {name}T.incoming) {name}Middle {name}Out {name}In := by lin_cert using ()')
 lines.append(f'def {name}Map := coordinateMap {name}S.comparison {name}T.comparison {name}Middle')
wire('source',s0['S0:12,138:d3']['wire']);wire('target',cw['CW_nu_eta:13,145:d3']['wire'])
lines.append('theorem compatible : CompatibleMap (matrixOf source.k source.m source.outgoing) (matrixOf source.m source.n source.incoming) (matrixOf target.k target.m target.outgoing) (matrixOf target.m target.n target.incoming) centerMap upperMap lowerMap := by lin_cert using ()')
wire('namedSource',s0['S0:8,135:d3']['wire'])
lines.append('end Row2796D4Detector.Comparison')
(p/'Comparison.lean').write_text('\n'.join(lines)+'\n')
