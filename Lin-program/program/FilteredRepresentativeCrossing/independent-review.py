"""Independent exhaustive filtered Z/4 leading-image and square replay."""
import hashlib
import itertools
import json
from pathlib import Path
import re

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
V = range(4)
groups = [frozenset([0]), frozenset([0, 2]), frozenset(V)]
filtrations = [f for f in itertools.product(groups, repeat=4)
               if all(f[i+1] <= f[i] for i in range(3))]
assert len(filtrations) == 15
def image(a, x):
    return a * x % 4
def higher(a, h, k):
    return all(image(a, x) in k for x in h)
def exact_at(f, p, x):
    return x in f[p] and x not in f[p+1]
def no_crossing(a, h, f, low, high):
    return all(not exact_at(f, p, image(a, x)) for x in h for p in range(low, high))
def extension(a, h, k, x, y):
    return any((v-x) % 4 in h and (image(a, v)-y) % 4 in k for v in V)

intervals = equivalent = lower_missing = empty = representatives = reversed_intervals = 0
for f, a, h, low, high in itertools.product(filtrations, V, groups, range(4), range(4)):
    none = no_crossing(a, h, f, low, high)
    high_image = higher(a, h, f[high])
    assert not high_image or none
    if low <= high and higher(a, h, f[low]):
        assert none == high_image
        equivalent += 1
        # Direct all-representative equivalence whenever an extension exists.
        for x, y in itertools.product(V, repeat=2):
            if extension(a, h, f[high], x, y):
                stable = all((image(a, v)-y) % 4 in f[high]
                             for v in V if (v-x) % 4 in h)
                assert stable == none
                representatives += 1
    if low <= high and none and not high_image:
        assert not higher(a, h, f[low])
        lower_missing += 1
    if low == high:
        assert none
        empty += 1
    if low > high:
        assert none
        reversed_intervals += 1
    intervals += 1
assert lower_missing > 0
# The frozen Lean counterexample has F0=top and all later subgroups=bottom.
counter = [groups[2], groups[0], groups[0], groups[0]]
assert no_crossing(1, groups[2], counter, 1, 2)
assert not higher(1, groups[2], counter[1]) and not higher(1, groups[2], counter[2])

extensions = {(a, hi, ki, x, y): extension(a, h, k, x, y)
              for a, (hi, h), (ki, k), x, y in
              itertools.product(V, enumerate(groups), enumerate(groups), V, V)}
preserves = {(a, hi, ki): higher(a, h, k) for a, (hi, h), (ki, k) in
             itertools.product(V, enumerate(groups), enumerate(groups))}
commuting = square_hypotheses = square_transfers = last_missing = 0
for f, p, q, g in itertools.product(V, repeat=4):
    if any(image(q, image(f, x)) != image(g, image(p, x)) for x in V):
        continue
    commuting += 1
    for ha, hb, hc, hd in itertools.product(range(3), repeat=4):
        # Nonconstant actual filtrations with the checked endpoint subgroup.
        fb = [groups[2], groups[hb], groups[hb], groups[0]]
        fc = [groups[2], groups[hc], groups[hc], groups[0]]
        fd = [groups[2], groups[hd], groups[hd], groups[0]]
        first_none = no_crossing(f, groups[ha], fb, 0, 2) or no_crossing(p, groups[ha], fc, 0, 2)
        last_none = no_crossing(g, groups[hc], fd, 0, 2)
        assert first_none == (preserves[f, ha, hb] or preserves[p, ha, hc])
        assert last_none == preserves[g, hc, hd]
        for x, y, z, w in itertools.product(V, repeat=4):
            if not (extensions[f, ha, hb, x, y] and extensions[p, ha, hc, x, z]
                    and extensions[g, hc, hd, z, w]):
                continue
            square_hypotheses += 1
            conclusion = extensions[q, hb, hd, y, w]
            if first_none and last_none:
                assert conclusion
                square_transfers += 1
            if first_none and not last_none and not conclusion:
                last_missing += 1
assert square_transfers > 0 and last_missing > 0

builds = []
reports = 0
for name in ['Basic', 'Counterexamples']:
    rec = json.loads((HERE / (name + '-compile.json')).read_text())
    source, log = HERE / (name + '.lean'), HERE / (name + '.log')
    assert rec['observed_exit_code'] == 0
    assert rec['source_sha256'] == sha(source) and rec['log_sha256'] == sha(log)
    text = log.read_text()
    deps = re.findall(r'depends on axioms: \[([^]]*)\]', text)
    assert all({x.strip() for x in d.split(',')} <= {'propext', 'Classical.choice', 'Quot.sound'} for d in deps)
    count = len(deps) + text.count('does not depend on any axioms')
    reports += count
    assert 'sorryAx' not in text and 'error:' not in text
    obj = ROOT / '.lake/build/lib/lean/FilteredRepresentativeCrossing' / (name + '.olean')
    builds.append(dict(module=name, exit_code=0, standard_axiom_reports=count,
        current_olean_exists=obj.exists(),
        current_olean_matches_direct=sha(obj) == rec['olean_sha256'] if obj.exists() else None))
assert reports == 6
files = [HERE / (n + '.lean') for n in ['Basic', 'Counterexamples']] + [
    HERE / 'README.md', Path(__file__), ROOT / 'GeneralizedLeibnizAudit/RepresentativeSquare.lean']
result = dict(status='independent_review_passed', findings=[], reviewer='/root/map_search_next',
    finite_replay=dict(group='Z/4', decreasing_four_level_filtrations=len(filtrations),
        interval_cases=intervals, ordered_lower_valid_equivalences=equivalent,
        all_representative_checks=representatives, missing_lower_counterexamples=lower_missing,
        empty_intervals=empty, reversed_intervals=reversed_intervals,
        commuting_squares=commuting, extension_triples=square_hypotheses,
        full_square_transfers=square_transfers, missing_last_counterexamples=last_missing),
    semantic_checks=['ExactAt is actual subgroup membership at p and nonmembership at p+1.',
        'NoCrossing quantifies all higher-source corrections and every p in the half-open interval.',
        'Reverse implication requires only decreasingness; forward needs order and lower-image premise.',
        'No infinite stabilization or convergence is used in the finite induction.',
        'Representative equivalence uses one supplied genuine extension and all representative stability.',
        'Square transfer supplies three extensions plus either first-map condition and final-map condition.',
        'Empty and reversed intervals are vacuous; lower premise cannot be silently dropped.'],
    limitations=['Finite Z/4 replay supports review and is not the proof of arbitrary groups.',
        'Not identified with any of the paper essential extension-ESS/classical crossing definitions.',
        'Detection, essentiality and boundary quotient comparison remain missing.',
        'No claim that this is paper Theorem6.1, no new C++ certificate schema.'],
    build_evidence=builds, standard_axiom_reports=reports,
    inputs_sha256={str(p.relative_to(ROOT)): sha(p) for p in files})
(HERE / 'independent-review.json').write_text(json.dumps(result, indent=2) + '\n')
print(f'Independent filtered review: {intervals} intervals/{representatives} representative cases; '
      f'{square_transfers} transfers/{last_missing} missing-last counterexamples; 2direct0/6reports')
