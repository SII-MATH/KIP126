"""Verify every inherited record and the exact scope of the new NULL rule."""
import hashlib
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
load = lambda path: json.loads(path.read_text())
sha = lambda path: hashlib.sha256(path.read_bytes()).hexdigest()
branches = []
for label in ['zero', 'residual_rebased']:
    report = load(HERE / 'branches' / (label + '.json'))
    previous = load(ROOT / 'Fact713Row3247ConditionalBranches/branches' / (label + '.json'))
    assert all(report['new_comparisons'][key] == value
               for key, value in previous['new_comparisons'].items())
    uses = [use for block in report['added_to_previous'].values() for use in block['uses']
            if use.get('kind', '').startswith('conditional_row2622')]
    assert uses and all(use['row'] == [2622, '1', None, 9000] and use['page'] == 4 for use in uses)
    assert all(use['theorem'] == 'Fact721FirstD4Search.Actual.actual_row2622_d4_zero' for use in uses)
    unknowns = []
    for key, block in report['added_to_previous'].items():
        for use in block['uses']:
            if use['row'][2] is None and use['row'][3] == 9000:
                assert use['kind'].startswith('conditional_') or use['kind'] in [
                    'explicit_two_candidate_branch', 'checked_zero_codomain']
                unknowns.append(dict(comparison=key, use=use))
    filename = 'zero-family.json' if label == 'zero' else 'residual-family.json'
    old_family = load(ROOT / 'Fact713Row3247ConditionalBranches' / filename)['entries']
    new_family = load(HERE / filename)['entries']
    assert new_family[:len(old_family)] == old_family
    branches.append(dict(branch=label, exact_old_records=len(previous['new_comparisons']),
                         exact_family_prefix=len(old_family), new_comparisons=len(report['added_to_previous']),
                         row2622_uses=len(uses), new_unknown_uses=unknowns))
signature = load(HERE / 'conditional_signature.json')
old_signature = ROOT / 'Fact713Row3247ConditionalBranches/conditional_signature.json'
assert signature['parent_signature_sha256'] == sha(old_signature)
assert signature['named_actual_E3_cycle_representatives'] == load(old_signature)['named_actual_E3_cycle_representatives']
assert signature['requirements'] == load(old_signature)['requirements']
result = dict(status='all_inherited_provenance_and_new_unknown_rules_checked', branches=branches,
              inherited_actual_cycle_inputs_preserved=True,
              sha256={str(path.relative_to(ROOT)): sha(path)
                      for path in [Path(__file__), HERE/'conditional_signature.json', old_signature]})
(HERE / 'provenance-audit.json').write_text(json.dumps(result, indent=2) + '\n')
print('Both original families and all inherited actual cycle premises preserved exactly')
print('Every new level-9000 NULL use has an explicit rule and actual theorem premise')
