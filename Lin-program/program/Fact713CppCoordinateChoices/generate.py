"""Regenerate the 39 coordinate-equivalence proofs from fixed wire bindings."""
import hashlib
import json
from pathlib import Path

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
BASE=ROOT/'Fact713ComparisonBatches'
manifest=json.loads((HERE/'manifest.json').read_text())
family=json.loads((BASE/'family.json').read_text())['entries']
cpp=[json.loads(line) for line in (BASE/'cpp-output.jsonl').read_text().splitlines()]
assert len(family)==len(cpp)==1234
changed=[i for i,(a,b) in enumerate(zip(family,cpp)) if a['wire']!=b]
assert changed==manifest['different_indices'] and len(changed)==39
lines=['import HomologyCoordinateChoice.Basic','import Fact713ComparisonBatches.Imported',
    'namespace Fact713CppCoordinateChoices','open LinearCertificates PageTransitionCertificates',
    'set_option maxRecDepth 100000','set_option maxHeartbeats 8000000']
inputs=[HERE/'manifest.json',BASE/'family.json',BASE/'cpp-output.jsonl']
for index in changed:
    path=HERE/f'case{index}.json';inputs.append(path)
    old,new=family[index]['wire'],json.loads(path.read_text())
    assert new==cpp[index]
    assert all(old[k]==new[k] for k in ['version','k','m','n','h','incoming','outgoing'])
    k,m,n,h=[old[x] for x in ['k','m','n','h']]
    batch,offset=divmod(index,40)
    lines += [
        f'def old{index} : WireComparison := (Fact713ComparisonBatches.batch{batch:02d}[{offset}]).wire',
        f'theorem old{index}_valid : old{index}.Valid :=',
        f'  (Fact713ComparisonBatches.batch{batch:02d}_valid _ (List.getElem_mem (show {offset} < Fact713ComparisonBatches.batch{batch:02d}.length from by decide))).2',
        f'def cpp{index} : WireComparison := page_comparison% "Fact713CppCoordinateChoices/case{index}.json"',
        f'theorem cpp{index}_valid : cpp{index}.Valid := by lin_cert using ()',
        f'theorem same_complex{index} : old{index}.outgoing = cpp{index}.outgoing ∧ old{index}.incoming = cpp{index}.incoming := by decide',
        f'def coordinates{index} : Vec {h} ≃ Vec {h} :=',
        f'  HomologyCoordinateChoice.equivalence (matrixOf {k} {m} old{index}.outgoing)',
        f'    (matrixOf {m} {n} old{index}.incoming) old{index}.comparison cpp{index}.comparison',
        f'    old{index}_valid.2 (by',
        f'      have hc := cpp{index}_valid.2',
        f'      change HomologyComparison (h := {h}) (matrixOf {k} {m} cpp{index}.outgoing)',
        f'        (matrixOf {m} {n} cpp{index}.incoming) cpp{index}.comparison at hc',
        f'      simpa only [← same_complex{index}.1,← same_complex{index}.2] using hc)',
        f'#print axioms coordinates{index}']
lines += ['end Fact713CppCoordinateChoices']
(HERE/'Data.lean').write_text('\n'.join(lines)+'\n')
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
(HERE/'generation.json').write_text(json.dumps(dict(count=39,source_sha256=sha(HERE/'Data.lean'),
    generator_sha256=sha(Path(__file__)),input_sha256={str(p.relative_to(ROOT)):sha(p) for p in inputs}),indent=2)+'\n')
print('Generated39 exact-complex coordinate equivalences')
