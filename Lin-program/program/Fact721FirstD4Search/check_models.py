"""Relabel every complete E4 carrier and test the actual detector square."""
import itertools
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
models = attempted = accepted = rejected = 0
for source in itertools.permutations(range(2)):
    for target in itertools.permutations(range(4)):
        for detector in itertools.permutations(range(4)):
            models += 1
            sphere_zero, target_zero, detector_zero = source[0], target[0], detector[0]
            lower = {element: 0 for element in source}
            upper = {target[i]: detector[i] for i in range(4)}
            assert len(set(upper.values())) == 4
            for value in target:
                attempted += 1
                ds = {sphere_zero: target_zero, source[1]: value}
                dt = {0: detector_zero}
                natural = all(dt[lower[x]] == upper[ds[x]] for x in source)
                if natural:
                    accepted += 1
                    assert all(ds[x] == target_zero for x in source)
                else:
                    rejected += 1
                    assert ds[source[1]] != target_zero
assert (models, attempted, accepted, rejected) == (1152, 4608, 1152, 3456)
report = dict(status='all_complete_E4_relabelings_passed', relabeled_models=models,
              differential_candidates=attempted, natural_candidates=accepted,
              rejected_nonzero_differentials=rejected,
              theorem_scope='full finite actual-carrier detector square; not an Adams realization')
(HERE / 'model-check.json').write_text(json.dumps(report, indent=2) + '\n')
print(json.dumps(report, sort_keys=True))
