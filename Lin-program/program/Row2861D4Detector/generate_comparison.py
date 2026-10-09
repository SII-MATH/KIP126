"""Full actual d2 map neighborhoods and complete d3 coordinate comparisons."""
import json
from pathlib import Path
P=Path(__file__).resolve().parent;R=P.parent
source=json.loads((R/'AggregateCW2EtaConditional/source.json').read_text())['blocks']
extra=json.loads((R/'Row2861D4Search/comparisons.json').read_text())['blocks']
allblocks=dict(source);allblocks.update(extra)
centers=[('sourceLower',6,134),('source',9,136),('sourceUpper',12,138),('targetLower',10,137),('target',13,139),('targetUpper',16,141)]
bits=lambda xs:'['+','.join('true' if v else 'false' for v in xs)+']'
def definition(name,w):
 return [f'def {name} : WireComparison := ⟨1,'+','.join(str(w[f]) for f in ['k','m','n','h'])+','+','.join(bits(w[f]) for f in ['outgoing','incoming','inclusion','projection','up','down'])+'⟩',f'theorem {name}_complete : {name}.Valid := by lin_cert using ()']
lines=['import Row2861D4Detector.Actual','import PageTransitionCertificates.InducedMap','import PageTransitionCertificates.Import','namespace Row2861D4Detector.Comparison','open LinearCertificates PageTransitionCertificates ResolutionCertificates']
used=[]
for tag,s,t in centers:
 for suffix,obj in [('S','S0'),('T','DC2h6')]:
  b=allblocks[f'{obj}:{s},{t}:d2'];used.append(b);lines+=definition(tag+suffix,b['wire'])
 for label,ds,dt in [('Map',0,0),('Upper',2,1),('Lower',-2,-1)]:
  lines += [f'def {tag}{label} := Actual.m{s+ds}_{t+dt}.algebra.mat']
 S,T=tag+'S',tag+'T'
 lines += [f'theorem {tag}Compatible : CompatibleMap (matrixOf {S}.k {S}.m {S}.outgoing) (matrixOf {S}.m {S}.n {S}.incoming) (matrixOf {T}.k {T}.m {T}.outgoing) (matrixOf {T}.m {T}.n {T}.incoming) {tag}Map {tag}Upper {tag}Lower := by lin_cert using ()',
  f'def {tag}E3 := coordinateMap {S}.comparison {T}.comparison {tag}Map',
  f'theorem {tag}_all_coordinates (x : Homology (matrixOf {S}.k {S}.m {S}.outgoing) (matrixOf {S}.m {S}.n {S}.incoming)) : (homologyEquivalence _ _ {T}.comparison {T}_complete.2).toCoordinates (inducedMap {tag}Compatible x) = eval {tag}E3 ((homologyEquivalence _ _ {S}.comparison {S}_complete.2).toCoordinates x) := induced_coordinates_all {tag}Compatible _ _ {S}_complete.2 {T}_complete.2 x']
lines+=['end Row2861D4Detector.Comparison'];(P/'Comparison.lean').write_text('\n'.join(lines)+'\n')
lines=['import Row2861D4Detector.Comparison','namespace Row2861D4Detector.Higher','open LinearCertificates PageTransitionCertificates ResolutionCertificates']
higher=[]
for tag,obj,s,t in [('source','S0',9,136),('target','DC2h6',9,136),('upperSource','S0',13,139),('upperTarget','DC2h6',13,139)]:
 b=allblocks[f'{obj}:{s},{t}:d3'];higher.append(dict(tag=tag,**b));lines+=definition(tag,b['wire'])
for prefix,base,S,T in [('', 'source','source','target'),('upper','target','upperSource','upperTarget')]:
 lines += [f'def {prefix}MiddleMap := Comparison.{base}E3',f'def {prefix}OutMap := Comparison.{base}UpperE3',f'def {prefix}InMap := Comparison.{base}LowerE3',
  f'theorem {prefix}compatible : CompatibleMap (matrixOf {S}.k {S}.m {S}.outgoing) (matrixOf {S}.m {S}.n {S}.incoming) (matrixOf {T}.k {T}.m {T}.outgoing) (matrixOf {T}.m {T}.n {T}.incoming) {prefix}MiddleMap {prefix}OutMap {prefix}InMap := by lin_cert using ()']
lines+=['end Row2861D4Detector.Higher'];(P/'Higher.lean').write_text('\n'.join(lines)+'\n')
(P/'comparison-source.json').write_text(json.dumps(dict(d2=used,d3=higher),indent=2)+'\n')
print('12 complete d2 comparisons, six actual E3 maps, four full imported d3 comparisons and two E4 maps')
