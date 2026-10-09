"""Export six complete d2 neighborhoods and their full induced E3 maps."""
import importlib.util
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
spec = importlib.util.spec_from_file_location('helper', ROOT / 'Row3147MapSearch/search_lifted.py')
h = importlib.util.module_from_spec(spec)
spec.loader.exec_module(h)
centers = [('si', 8, 131), ('s', 11, 133), ('so', 14, 135),
           ('ti', 12, 134), ('t', 15, 136), ('to', 18, 138)]
lines = ['import Fact721FirstD4Search.Maps', 'import PageTransitionCertificates.InducedMap',
         'import PageTransitionCertificates.Import', 'namespace Fact721FirstD4Search.Comparison',
         'open LinearCertificates PageTransitionCertificates ResolutionCertificates']
records = []
fields = ['version', 'k', 'm', 'n', 'h', 'outgoing', 'incoming', 'inclusion', 'projection', 'up', 'down']
def literal(value):
    if isinstance(value, list):
        return '[' + ','.join(literal(v) for v in value) + ']'
    return ('true' if value else 'false') if isinstance(value, bool) else str(value)
for tag, s, t in centers:
    for suffix, name, filename in [('S', 'S0', 'S0_AdamsSS_t261.db'),
                                    ('D', 'C2h6', 'C2h6_AdamsSS_t200.db')]:
        c = h.alg.connection(filename)
        block = h.comparison(c, name, s, t, h.metadata(c))
        block.update(tag=tag+suffix, object=name, degree=[s, t])
        records.append(block)
        lines += [f'def {tag+suffix} : WireComparison := ' + chr(0x27e8) +
                  ','.join(literal(block['wire'][key]) for key in fields) + chr(0x27e9),
                  f'theorem {tag+suffix}_valid : {tag+suffix}.Valid := by lin_cert using ()',
                  f'#print axioms {tag+suffix}_valid']
    lines += [f'def {tag}Map := Maps.m{s}_{t}.algebra.mat',
        f'def {tag}Out := Maps.m{s+2}_{t+1}.algebra.mat',
        f'def {tag}In := Maps.m{s-2}_{t-1}.algebra.mat',
        f'theorem {tag}_compatible : CompatibleMap (matrixOf {tag}S.k {tag}S.m {tag}S.outgoing) '
        f'(matrixOf {tag}S.m {tag}S.n {tag}S.incoming) (matrixOf {tag}D.k {tag}D.m {tag}D.outgoing) '
        f'(matrixOf {tag}D.m {tag}D.n {tag}D.incoming) {tag}Map {tag}Out {tag}In := by lin_cert using ()',
        f'def {tag}E3 := coordinateMap {tag}S.comparison {tag}D.comparison {tag}Map',
        f'#print axioms {tag}_compatible']
lines += ['end Fact721FirstD4Search.Comparison']
(HERE / 'Comparison.lean').write_text('\n'.join(lines) + '\n')
(HERE / 'comparison-source.json').write_text(json.dumps(records, indent=2) + '\n')
print('12 complete d2 quotients; six full compatible E3 maps')
