"""Full d2 quotients and exact links to the checked actual shifted matrices."""
import importlib.util
import json
import sqlite3
from pathlib import Path

p = Path(__file__).resolve().parent
r = p.parent
spec = importlib.util.spec_from_file_location('helper',r/'Row3147MapSearch/search_lifted.py')
helper = importlib.util.module_from_spec(spec)
spec.loader.exec_module(helper)
sc = sqlite3.connect(f'file:{r}/upstream/kervaire-49/S0_AdamsSS_t261.db?mode=ro',uri=True)
tc = sqlite3.connect(f'file:{r}/upstream/kervaire-49/CW_nu_eta_2_AdamsSS_t200.db?mode=ro',uri=True)
blocks = []
lines = ['import Fact713Row2994Constraint.Maps','import PageTransitionCertificates.InducedMap',
         'import PageTransitionCertificates.Import','namespace Fact713Row2994Constraint.Comparison',
         'open LinearCertificates PageTransitionCertificates ResolutionCertificates']
def bits(values):
    return '['+','.join('true' if v else 'false' for v in values)+']'
for tag,c,obj,s,t in [('source',sc,'S0',17,138),('target',tc,'CW_nu_eta_2',17,138),
                      ('upperSource',sc,'S0',20,140),('upperTarget',tc,'CW_nu_eta_2',20,140)]:
    result = helper.comparison(c,obj,s,t,helper.metadata(c))
    w = result['wire']
    k,m,n,h = (w[x] for x in ['k','m','n','h'])
    lines += [f'def {tag} : WireComparison := ⟨1,{k},{m},{n},{h},'+
              ','.join(bits(w[field]) for field in ['outgoing','incoming','inclusion','projection','up','down'])+'⟩',
              f'theorem {tag}_complete : {tag}.Valid := by lin_cert using ()']
    blocks.append(dict(tag=tag,object=obj,degree=[s,t],**result))
data = json.loads((p/'source.json').read_text())
for tag,s,t in [('middleMap',17,138),('outMap',19,139),('inMap',15,137),
                ('upperMiddleMap',20,140),('upperOutMap',22,141),('upperInMap',18,139)]:
    wire = next(b['wire']['algebra'] for b in data['matrices'] if b['source_degree']==[s,t])
    lines += [f'def {tag} : Matrix {wire["rows"]} {wire["cols"]} := Maps.m{s}_{t}.algebra.mat']
for prefix,S,T,F,U,L in [('', 'source','target','middleMap','outMap','inMap'),
                        ('upper','upperSource','upperTarget','upperMiddleMap','upperOutMap','upperInMap')]:
    lines += [f'theorem {prefix}compatible : CompatibleMap (matrixOf {S}.k {S}.m {S}.outgoing) '
              f'(matrixOf {S}.m {S}.n {S}.incoming) (matrixOf {T}.k {T}.m {T}.outgoing) '
              f'(matrixOf {T}.m {T}.n {T}.incoming) {F} {U} {L} := by lin_cert using ()']
lines += ['#print axioms compatible','#print axioms uppercompatible',
          'end Fact713Row2994Constraint.Comparison']
(p/'Comparison.lean').write_text('\n'.join(lines)+'\n')
(p/'comparison-source.json').write_text(json.dumps(blocks,indent=2)+'\n')
print('four complete d2 quotients, two actual chain maps')
