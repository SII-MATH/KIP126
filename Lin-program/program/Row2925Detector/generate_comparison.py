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
tc = sqlite3.connect(f'file:{r}/upstream/kervaire-49/Cnu_AdamsSS_t200.db?mode=ro',uri=True)
blocks = []
lines = ['import Row2925Detector.Actual','import PageTransitionCertificates.InducedMap',
         'import PageTransitionCertificates.Import','namespace Row2925Detector.Comparison',
         'open LinearCertificates PageTransitionCertificates ResolutionCertificates']
def bits(values):
    return '['+','.join('true' if v else 'false' for v in values)+']'
for tag,c,obj,s,t in [('source',sc,'S0',11,137),('target',tc,'Cnu',12,143),
                      ('upperSource',sc,'S0',14,139),('upperTarget',tc,'Cnu',15,145)]:
    result = helper.comparison(c,obj,s,t,helper.metadata(c))
    w = result['wire']
    k,m,n,h = (w[x] for x in ['k','m','n','h'])
    lines += [f'def {tag} : WireComparison := ⟨1,{k},{m},{n},{h},'+
              ','.join(bits(w[field]) for field in ['outgoing','incoming','inclusion','projection','up','down'])+'⟩',
              f'theorem {tag}_complete : {tag}.Valid := by lin_cert using ()']
    blocks.append(dict(tag=tag,object=obj,degree=[s,t],**result))
data = json.loads((p/'source.json').read_text())
for tag,s,t in [('middleMap',11,137),('outMap',13,138),('inMap',9,136),
                ('upperMiddleMap',14,139),('upperOutMap',16,140),('upperInMap',12,138)]:
    wire = next(b['wire']['algebra'] for b in data['matrices'] if b['source_degree']==[s,t])
    lines += [f'def {tag} : Matrix {wire["rows"]} {wire["cols"]} := Actual.m{s}_{t}.algebra.mat']
for prefix,S,T,F,U,L in [('', 'source','target','middleMap','outMap','inMap'),
                        ('upper','upperSource','upperTarget','upperMiddleMap','upperOutMap','upperInMap')]:
    lines += [f'theorem {prefix}compatible : CompatibleMap (matrixOf {S}.k {S}.m {S}.outgoing) '
              f'(matrixOf {S}.m {S}.n {S}.incoming) (matrixOf {T}.k {T}.m {T}.outgoing) '
              f'(matrixOf {T}.m {T}.n {T}.incoming) {F} {U} {L} := by lin_cert using ()']
lines += ['end Row2925Detector.Comparison']
(p/'Comparison.lean').write_text('\n'.join(lines)+'\n')
(p/'comparison-source.json').write_text(json.dumps(blocks,indent=2)+'\n')
print('four complete d2 quotients, two actual chain maps')
