"""Record full d3 matrices in the canonical d2 quotient coordinates.

The two sphere source NULLs retain their existing conditional theorem
premises. C2h6 uses only recorded events and their strict earlier prefixes.
"""
import json
import subprocess
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
(HERE / 'd3wire').mkdir(exist_ok=True)
specs = [
    ('sourceS', 1, 2, 1, [0, 0], [1, 1]),
    ('sourceD', 1, 1, 2, [0], [1, 1]),
    ('targetS', 1, 2, 2, [0, 0], [0, 0, 0, 0]),
    ('targetD', 3, 2, 1, [0] * 6, [0, 0]),
]
records = {}
lines = ['import Fact721FirstD4Search.Comparison',
         'namespace Fact721FirstD4Search.D3',
         'open LinearCertificates PageTransitionCertificates Comparison']
for name, k, m, n, outgoing, incoming in specs:
    args = [str(k), str(m), str(n), ''.join(map(str, outgoing)) or '-',
            ''.join(map(str, incoming)) or '-']
    run = subprocess.run([str(ROOT / 'PageTransitionCertificates/page-transition-export'), *args],
                         capture_output=True, text=True, check=True)
    wire = json.loads(run.stdout)
    records[name] = wire
    (HERE / 'd3wire' / (name + '.json')).write_text(
        json.dumps(wire, sort_keys=True, separators=(',', ':')) + '\n')
    lines += [f'def {name} : WireComparison := page_comparison% "Fact721FirstD4Search/d3wire/{name}.json"',
              f'theorem {name}_valid : {name}.Valid := by lin_cert using ()',
              f'#print axioms {name}_valid']
for tag, prefix, middle, upper, lower in [('source', 'source', 'sE3', 'soE3', 'siE3'),
                                        ('target', 'target', 'tE3', 'toE3', 'tiE3')]:
    S, D = prefix + 'S', prefix + 'D'
    lines += [f'theorem {tag}_compatible : CompatibleMap '
        f'(matrixOf {S}.k {S}.m {S}.outgoing) (matrixOf {S}.m {S}.n {S}.incoming) '
        f'(matrixOf {D}.k {D}.m {D}.outgoing) (matrixOf {D}.m {D}.n {D}.incoming) '
        f'{middle} {upper} {lower} := by lin_cert using ()', f'#print axioms {tag}_compatible']
lines += ['end Fact721FirstD4Search.D3']
(HERE / 'D3.lean').write_text('\n'.join(lines) + '\n')
(HERE / 'd3-source.json').write_text(json.dumps(dict(
    wires=records,
    conditional_sphere_columns=[
        dict(row=2622, degree=[11, 133], page=3,
             theorem='Fact713DC2h6Source.Actual.actual_row2622_d3_zero'),
        dict(row=2684, degree=[12, 134], page=3,
             theorem='Fact713NextSourceSearch.Actual.actual_row2684_d3_zero')],
    coordinate_note='S0 source incoming column is (1,1) in canonical E2 order. '
        'C2h6 incoming staircase vectors (1,1),(0,1) have d3 values 0,1, '
        'so BOTH canonical source columns are 1.',
    status='conditional_finite_complexes_only'), indent=2) + '\n')
print('four full d3 quotients, source E4 dimensions1/0, target E4 dimensions2/2')
