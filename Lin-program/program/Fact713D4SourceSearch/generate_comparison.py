"""Reproduce the frozen comparison source from recorded complete neighborhoods.

Default mode verifies byte identity and does not edit the Lean source. The
optional --output path receives the exact generated text for review.
"""
import argparse
import hashlib
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
data = json.loads((HERE/'comparison-source.json').read_text())
records = {item['tag']: item for item in data}
fields = ['version', 'k', 'm', 'n', 'h', 'outgoing', 'incoming', 'inclusion', 'projection', 'up', 'down']
def literal(x):
    if isinstance(x, list):
        return '['+','.join(literal(v) for v in x)+']'
    if isinstance(x, bool):
        return 'true' if x else 'false'
    return str(x)

lines = ['import Fact713D4SourceSearch.Maps', 'import PageTransitionCertificates.InducedMap',
    'import PageTransitionCertificates.Import', 'namespace Fact713D4SourceSearch.Comparison',
    'open LinearCertificates PageTransitionCertificates ResolutionCertificates']
for tag in ['si', 's', 'so', 'ti', 't', 'to']:
    for suffix in ['S', 'D']:
        item = records[tag+suffix]
        w = item['wire']
        lines += [f'def {tag+suffix} : WireComparison := '+chr(0x27e8)+','.join(literal(w[k]) for k in fields)+chr(0x27e9),
            f'theorem {tag+suffix}_valid : {tag+suffix}.Valid := by lin_cert using ()']
    s, t = records[tag+'S']['degree']
    assert records[tag+'D']['degree'] == [s,t]
    lines += [f'def {tag}Map := Maps.m{s}_{t}.algebra.mat',
        f'def {tag}Out := Maps.m{s+2}_{t+1}.algebra.mat',
        f'def {tag}In := Maps.m{s-2}_{t-1}.algebra.mat',
        f'theorem {tag}_compatible : CompatibleMap (matrixOf {tag}S.k {tag}S.m {tag}S.outgoing) (matrixOf {tag}S.m {tag}S.n {tag}S.incoming) (matrixOf {tag}D.k {tag}D.m {tag}D.outgoing) (matrixOf {tag}D.m {tag}D.n {tag}D.incoming) {tag}Map {tag}Out {tag}In := by lin_cert using ()',
        f'def {tag}E3 := coordinateMap {tag}S.comparison {tag}D.comparison {tag}Map',
        f'#print axioms {tag}_compatible']
lines += ['end Fact713D4SourceSearch.Comparison']
generated = ('\n'.join(lines)+'\n').encode()
parser = argparse.ArgumentParser()
parser.add_argument('--output', type=Path)
args = parser.parse_args()
if args.output:
    args.output.write_bytes(generated)
assert generated == (HERE/'Comparison.lean').read_bytes(), 'Comparison.lean differs from recorded generation inputs'
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
report = dict(status='byte_identical', bytes=len(generated), complete_quotients=len(records),
    sha256={p.name: sha(p) for p in [Path(__file__), HERE/'comparison-source.json', HERE/'Comparison.lean']})
(HERE/'comparison-replay.json').write_text(json.dumps(report,indent=2)+'\n')
print(json.dumps(report,indent=2))
