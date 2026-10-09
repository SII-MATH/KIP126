from pathlib import Path
import json
r=Path(__file__).resolve().parents[1]
f=r/'ExtComplexCertificates'
rows=[json.loads(s) for s in (f/'actual-s0/resolution.jsonl').read_text().splitlines()]
assert len(rows)==16 and len({v['id'] for v in rows})==16
for name in ['ActualResolution','RawResolutionExample','FiniteExactness','ActualExactnessExamples','MinimalHom','MinimalHomDimensions']:
 s=f/(name+'.lean');o=r/'.lake/build/lib/lean/ExtComplexCertificates'/(name+'.olean')
 assert o.exists() and o.stat().st_mtime>=s.stat().st_mtime,name
assert (f/'ActualExactnessExamples.lean').read_text().count('theorem exactCase')==45
manifest=json.loads((f/'actual-s0/manifest.json').read_text())
assert manifest['source_is_paper_release'] is False
print('PASS actual S0 degree<=8:16 raw generators,45 finite exactness positions; not full Steenrod/Adams comparison')
