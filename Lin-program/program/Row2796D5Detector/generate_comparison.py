"""Three-stage actual target quotient maps and unchanged exact source pages."""
import json
from pathlib import Path
P=Path(__file__).resolve().parent;R=P.parent
probe=json.loads((R/'Row2796D5Search/Probe/comparison-audit.json').read_text());blocks=probe['blocks']
bits=lambda xs:'['+','.join('true' if v else 'false' for v in xs)+']'
def definition(name,w):return [f'def {name} : WireComparison := ⟨1,'+','.join(str(w[f]) for f in ['k','m','n','h'])+','+','.join(bits(w[f]) for f in ['outgoing','incoming','inclusion','projection','up','down'])+'⟩',f'theorem {name}_complete : {name}.Valid := by lin_cert using ()']
lines=['import Row2796D5Detector.Actual','import PageTransitionCertificates.InducedMap','import PageTransitionCertificates.Import','namespace Row2796D5Detector.Comparison','open LinearCertificates PageTransitionCertificates ResolutionCertificates']
for s,t in probe['centers']:
 tag=f'c{s}_{t}'
 for suffix,obj in [('S','S0'),('T','DC2h6')]:lines+=definition(tag+suffix,blocks[f'{obj}:{s},{t}:d2']['wire'])
 for label,ds,dt in [('Map',0,0),('Upper',2,1),('Lower',-2,-1)]:lines+=[f'def {tag}{label} := Actual.m{s+ds}_{t+dt}.algebra.mat']
 S,T=tag+'S',tag+'T'
 lines += [f'theorem {tag}Compatible : CompatibleMap (matrixOf {S}.k {S}.m {S}.outgoing) (matrixOf {S}.m {S}.n {S}.incoming) (matrixOf {T}.k {T}.m {T}.outgoing) (matrixOf {T}.m {T}.n {T}.incoming) {tag}Map {tag}Upper {tag}Lower := by lin_cert using ()',f'def {tag}E3 := coordinateMap {S}.comparison {T}.comparison {tag}Map',f'theorem {tag}_all_coordinates (x : Homology (matrixOf {S}.k {S}.m {S}.outgoing) (matrixOf {S}.m {S}.n {S}.incoming)) : (homologyEquivalence _ _ {T}.comparison {T}_complete.2).toCoordinates (inducedMap {tag}Compatible x) = eval {tag}E3 ((homologyEquivalence _ _ {S}.comparison {S}_complete.2).toCoordinates x) := induced_coordinates_all {tag}Compatible _ _ {S}_complete.2 {T}_complete.2 x']
lines+=['end Row2796D5Detector.Comparison'];(P/'Comparison.lean').write_text('\n'.join(lines)+'\n')
lines=['import Row2796D5Detector.Comparison','namespace Row2796D5Detector.Higher','open LinearCertificates PageTransitionCertificates ResolutionCertificates']
for s,t in [(9,136),(13,139),(17,142)]:
 tag=f'p{s}_{t}'
 for suffix,obj in [('S','S0'),('T','DC2h6')]:lines+=definition(tag+suffix,blocks[f'{obj}:{s},{t}:d3']['wire'])
 S,T=tag+'S',tag+'T';F=f'Comparison.c{s}_{t}E3';U=f'Comparison.c{s+3}_{t+2}E3';L=f'Comparison.c{s-3}_{t-2}E3'
 lines += [f'theorem {tag}Compatible : CompatibleMap (matrixOf {S}.k {S}.m {S}.outgoing) (matrixOf {S}.m {S}.n {S}.incoming) (matrixOf {T}.k {T}.m {T}.outgoing) (matrixOf {T}.m {T}.n {T}.incoming) {F} {U} {L} := by lin_cert using ()',f'def {tag}E4 := coordinateMap {S}.comparison {T}.comparison {F}',f'theorem {tag}_all_coordinates (x : Homology (matrixOf {S}.k {S}.m {S}.outgoing) (matrixOf {S}.m {S}.n {S}.incoming)) : (homologyEquivalence _ _ {T}.comparison {T}_complete.2).toCoordinates (inducedMap {tag}Compatible x) = eval {tag}E4 ((homologyEquivalence _ _ {S}.comparison {S}_complete.2).toCoordinates x) := induced_coordinates_all {tag}Compatible _ _ {S}_complete.2 {T}_complete.2 x']
for tag,key in [('source3','S0:8,135:d3'),('source4','S0:8,135:d4'),('targetS','S0:13,139:d4'),('targetT','DC2h6:13,139:d4')]:lines+=definition(tag,blocks[key]['wire'])
lines+=['def targetMap := p13_139E4','theorem targetCompatible : CompatibleMap (matrixOf targetS.k targetS.m targetS.outgoing) (matrixOf targetS.m targetS.n targetS.incoming) (matrixOf targetT.k targetT.m targetT.outgoing) (matrixOf targetT.m targetT.n targetT.incoming) targetMap p17_142E4 p9_136E4 := by lin_cert using ()','end Row2796D5Detector.Higher'];(P/'Higher.lean').write_text('\n'.join(lines)+'\n')
(P/'comparison-source.json').write_text(json.dumps(probe,indent=2,sort_keys=True)+'\n')
print('20 d2,6 target d3,2 target d4,2 source d3/d4;all actual coordinate identities generated')
