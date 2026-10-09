"""Check the disjoint union of direct-map finite certificate coverage."""
import json
from pathlib import Path

root = Path(__file__).resolve().parents[1]


def read(path):
    return json.loads((root / path).read_text())


inventory = read('RealMapCertificates/all_maps_readiness.json')['maps']
expected = {m['name'] for m in inventory}
assert len(expected) == len(inventory) == 180
module = {m['name'] for m in read('ModuleLowMapBatches/generation_audit.json')['records']}
ring = {m['name'] for m in read('ModuleRingLowBatches/generation_audit.json')['records']}
semi = {read('SemilinearMapCertificates/audit.json')['map']}
groups = [module, ring, semi, {'S0__tmf'}]
assert list(map(len, groups)) == [135, 43, 1, 1]
for i, group in enumerate(groups):
    for other in groups[i + 1:]:
        assert not group & other
assert set.union(*groups) == expected
union = read('ModuleLowMapSupplement/current_union_audit.json')
assert union['unresolved'] == 0 and union['blocks'] == 3085
assert read('ModuleRingLowBatches/verification_summary.json')['unresolved_blocks'] == 0
for folder, count in [('ModuleLowMapBatches', 29), ('ModuleLowMapSupplement', 2),
                      ('ModuleRingLowBatches', 11), ('RealMapCertificates', 235)]:
    batches = read(folder + '/compile_audit.json')
    assert len(batches) == count and all(b['exit_code'] == 0 for b in batches), folder
assert len(read('SemilinearMapCertificates/audit.json')['columns']) == 21
print('PASS disjoint inventory coverage:180 direct maps at t<=12 finite algebra scope;'
      ' source audits and kernel runs remain separately required; no topology claim')
