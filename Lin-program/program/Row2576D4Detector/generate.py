"""Actual E3 coordinate maps plus inherited finite source d3 matrices."""
import importlib.util
import json
from pathlib import Path
HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
spec=importlib.util.spec_from_file_location('h',ROOT/'Row3147MapSearch/search_lifted.py')
h=importlib.util.module_from_spec(spec);spec.loader.exec_module(h)
agg=json.loads((ROOT/'AggregateC2H2Conditional/source.json').read_text())['blocks']
comp=json.loads((ROOT/'Row2576D4Search/Completions/enumeration.json').read_text())
actual=json.loads((HERE/'source.json').read_text())
lines=['import Row2576D4Detector.Actual','import PageTransitionCertificates.InducedMap','import PageTransitionCertificates.Import',
       'namespace Row2576D4Detector.Comparison','open LinearCertificates PageTransitionCertificates ResolutionCertificates']
def bl(x):return '['+','.join('true' if b else 'false' for b in x)+']'
def emit(name,w):
    lines.append(f'def {name} : WireComparison := ⟨'+','.join(str(w[x]) for x in ['version','k','m','n','h'])+','+','.join(bl(w[x]) for x in ['outgoing','incoming','inclusion','projection','up','down'])+'⟩')
    lines.append(f'theorem {name}_complete : {name}.Valid := by lin_cert using ()')
records=[]
for tag,s,t in [('named',4,132),('lower',5,133),('center',8,135),('upper',11,137)]:
    sw=agg[f'S0:{s},{t}:d2']['wire']
    sc=h.alg.connection('S0_AdamsSS_t261.db');tc=h.alg.connection('C2_AdamsSS_t200.db')
    sr=h.comparison(sc,'S0',s,t,h.metadata(sc));tr=h.comparison(tc,'C2',s,t,h.metadata(tc))
    if f'C2:{s},{t}:d2' in comp['comparisons']:tw=comp['comparisons'][f'C2:{s},{t}:d2']['wire']
    else:tw=tr['wire']
    emit(tag+'S',sw);emit(tag+'T',tw)
    records += [dict(tag=tag+'S',object='S0',degree=[s,t],rows=sr['rows'],wire=sw),dict(tag=tag+'T',object='C2',degree=[s,t],rows=tr['rows'],wire=tw)]
    for suffix,a,b in [('Middle',s,t),('Out',s+2,t+1),('In',s-2,t-1)]:
        w=next(x['wire']['algebra'] for x in actual['matrices'] if x['source_degree']==[a,b])
        lines.append(f'def {tag}{suffix} : Matrix {w["rows"]} {w["cols"]} := Actual.m{a}_{b}.algebra.mat')
    lines += [f'theorem {tag}Compatible : CompatibleMap (matrixOf {tag}S.k {tag}S.m {tag}S.outgoing) (matrixOf {tag}S.m {tag}S.n {tag}S.incoming) (matrixOf {tag}T.k {tag}T.m {tag}T.outgoing) (matrixOf {tag}T.m {tag}T.n {tag}T.incoming) {tag}Middle {tag}Out {tag}In := by lin_cert using ()',
              f'def {tag}Map := coordinateMap {tag}S.comparison {tag}T.comparison {tag}Middle',
              f'theorem {tag}_all_classes (x : Homology (matrixOf {tag}S.k {tag}S.m {tag}S.outgoing) (matrixOf {tag}S.m {tag}S.n {tag}S.incoming)) :',
              f'    (homologyEquivalence _ _ {tag}T.comparison {tag}T_complete.2).toCoordinates (inducedMap {tag}Compatible x) =',
              f'      eval {tag}Map ((homologyEquivalence _ _ {tag}S.comparison {tag}S_complete.2).toCoordinates x) :=',
              f'  induced_coordinates_all {tag}Compatible _ _ {tag}S_complete.2 {tag}T_complete.2 x']
for tag,key in [('source3','S0:4,132:d3'),('target3','S0:8,135:d3')]:emit(tag,agg[key]['wire'])
lines += ['end Row2576D4Detector.Comparison']
(HERE/'Comparison.lean').write_text('\n'.join(lines)+'\n')
(HERE/'comparison-source.json').write_text(json.dumps(dict(blocks=records,inherited_d3={key:agg[key] for key in ['S0:4,132:d3','S0:8,135:d3']},raw_c2_incoming=comp['templates']['c2_incoming']),indent=2)+'\n')
print('8 complete E3 comparisons, 4 actual maps/all-class coordinate links; 2 inherited d3 comparisons')
