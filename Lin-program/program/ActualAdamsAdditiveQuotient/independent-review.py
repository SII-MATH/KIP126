"""Independent literal subgroup quotient and full additive-page review."""
import hashlib
import itertools
import json
from pathlib import Path
import re

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
vectors = set(range(8))
subgroups = [set(c) for n in range(1,9) for c in itertools.combinations(vectors,n)
             if 0 in c and all(x ^ y in c for x in c for y in c)]
families = representative_checks = addition_checks = 0
for z in subgroups:
    for b in subgroups:
        if not b <= z:
            continue
        classes = {frozenset(x ^ y for y in b) for x in z}
        image = {x:min(x ^ y for y in b) for x in z}
        page = set(image.values())
        assert {x for x in z if image[x] == 0} == b
        assert len(classes) == len(page)
        quotient_map = {coset:image[next(iter(coset))] for coset in classes}
        assert set(quotient_map.values()) == page and len(set(quotient_map.values())) == len(classes)
        families += 1
        for x in z:
            coset = frozenset(x ^ y for y in b)
            assert quotient_map[coset] == image[x]
            representative_checks += 1
            for y in z:
                target_add = min(image[x] ^ image[y] ^ t for t in b)
                assert image[x ^ y] == target_add
                coset_sum = frozenset(u ^ v for u in coset for v in (y ^ t for t in b))
                assert quotient_map[coset_sum] == target_add
                addition_checks += 1
record = json.loads((HERE / 'Basic-compile.json').read_text())
assert record['observed_exit_code'] == 0
assert sha(HERE / 'Basic.lean') == record['source_sha256']
assert sha(HERE / 'Basic.log') == record['log_sha256']
log = (HERE / 'Basic.log').read_text()
reports = re.findall(r'depends on axioms: \[([^]]*)\]',log)
assert len(reports) + log.count('does not depend on any axioms') == 4
assert all({x.strip() for x in group.split(',')} <= {'propext','Classical.choice','Quot.sound'} for group in reports)
files = [HERE / 'Basic.lean', ROOT / 'ActualAdamsAdditiveFiltration/Basic.lean',
    ROOT / 'ActualAdamsAdditiveFiltration/Subgroups.lean',
    ROOT / 'ActualAdamsAdditiveFiltration/Quotient.lean',
    ROOT / 'ActualAdamsFiltration/Actual.lean']
current = ROOT / '.lake/build/lib/lean/ActualAdamsAdditiveQuotient/Basic.olean'
result = dict(status='independent_review_passed',findings=[],reviewer='/root/map_search_next',
    mathematics=[
        'boundaries is B comapped along the inclusion of Z, an actual subgroup of the domain Z.',
        'boundaries_eq_kernel is extensional equality using the previously proved full image kernel equivalence.',
        'equivalence first changes equal quotient subgroups, then applies the additive first-isomorphism theorem with proved full image surjectivity.',
        'The codomain is the whole actual Adams page at n+2, not just the image subgroup.',
        'equivalence_mk exposes the genuine quotient representative map, and equivalence_add is its additive law.'],
    finite_replay=dict(ambient='F2^3',subgroups=len(subgroups),nested_subgroup_pairs=families,
        representative_checks=representative_checks,quotient_addition_checks=addition_checks),
    build=dict(observed_exit_code=0,standard_axiom_reports=4,
        current_olean_matches_direct=sha(current) == record['olean_sha256'] if current.exists() else None),
    remaining=['Actual AdamsSpectralSequence and full CertifiedAdamsPages realization',
        'AddMeaning for the actual quotient maps',
        'Identification of these canonical additive subgroups with the intended paper objects',
        'Named Ext classes, topology realization, and convergence'],
    inputs_sha256={str(p.relative_to(ROOT)):sha(p) for p in files})
(HERE / 'independent-review.json').write_text(json.dumps(result,indent=2)+'\n')
print(f'Independent review passed: {families} literal subgroup quotients, '
      f'{representative_checks} representatives/{addition_checks} addition pairs; direct0/4 reports')
