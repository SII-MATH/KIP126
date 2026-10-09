"""Recheck exact successful builds and finite semantic regressions."""
import hashlib
import itertools
import json
from pathlib import Path
import re

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
NAMES = ['Basic', 'Certificate', 'Import', 'Examples']
EXPECTED_REPORTS = [6, 6, 2, 5]

# All Boolean page/incoming/outgoing types, with distinguished zero False.
# Incoming preserves its distinguished zero as required by System. We allow
# every outgoing and advance function satisfying the exact homology-zero law.
systems = []
for incoming in [(False, False), (False, True)]:
    for outgoing in itertools.product([False, True], repeat=2):
        for advance in itertools.product([False, True], repeat=2):
            if all(outgoing[x] or ((not advance[x]) == (x in incoming))
                   for x in [False, True]):
                systems.append((incoming, outgoing, advance))
map_tails = [s for s in systems if s[0] == (False, False) and s[1] == (False, False)]
outgoing_tails = [s for s in systems if s[1] == (False, False)]
assert map_tails
strong_cases = cycle_cases = positive_strong = killed_cycles = 0
for prefix in itertools.product(systems, repeat=2):
    for initial in [False, True]:
        x = initial
        strong = cycle = True
        for incoming, outgoing, advance in prefix:
            strong &= not outgoing[x] and x not in incoming
            cycle &= not outgoing[x]
            x = advance[x]
        if strong:
            assert x
            for incoming, outgoing, advance in map_tails:
                value = x
                for _ in range(8):
                    assert not outgoing[value] and value not in incoming
                    value = advance[value]
                strong_cases += 1
                positive_strong += initial
        if cycle:
            for incoming, outgoing, advance in outgoing_tails:
                value = x
                killed = False
                for _ in range(8):
                    assert not outgoing[value]
                    killed |= value in incoming
                    value = advance[value]
                cycle_cases += 1
                killed_cycles += killed and initial

build = []
for name, count in zip(NAMES, EXPECTED_REPORTS):
    record = json.loads((HERE / (name + '-compile.json')).read_text())
    assert record['observed_exit_code'] == 0
    assert record['source_sha256'] == sha(HERE / (name + '.lean'))
    assert record['log_sha256'] == sha(HERE / (name + '.log'))
    log = (HERE / (name + '.log')).read_text()
    axioms = re.findall(r'depends on axioms: \[([^]]*)\]', log)
    assert all({a.strip() for a in ax.split(',')} <= {
        'propext', 'Classical.choice', 'Quot.sound'} for ax in axioms)
    assert len(axioms) + log.count('does not depend on any axioms') == count
    assert 'error:' not in log and 'sorryAx' not in log
    build.append(dict(module=name, source_sha256=record['source_sha256'],
        log_sha256=record['log_sha256'], observed_exit_code=0,
        standard_or_no_axiom_reports=count,
        current_olean_matches_direct=record['olean_sha256'] == sha(
            ROOT / '.lake/build/lib/lean/PermanentMapTailCertificates' / (name + '.olean'))))
files = [HERE / (name + '.lean') for name in NAMES] + [HERE / 'README.md',
    ROOT / 'PermanentCycleCertificates/System.lean',
    ROOT / 'PermanentCycleCertificates/Finite.lean',
    ROOT / 'OutgoingCycleCertificates/Basic.lean',
    ROOT / 'PermanentCycleCertificates/Import.lean',
    ROOT / 'OutgoingCycleCertificates/Import.lean',
    ROOT / 'PermanentCycleCertificates/stable-prefix.json']
report = dict(status='implementation_review_passed',
    reviewer='/root/map_search_next',
    note='Implementation author review; any independent review is recorded separately.',
    modules=build,
    semantic_replay=dict(boolean_systems=len(systems), map_tail_systems=len(map_tails),
        outgoing_tail_systems=len(outgoing_tails),
        strong_prefix_tail_cases=strong_cases, outgoing_prefix_tail_cases=cycle_cases,
        nonzero_strong_cases=positive_strong, nonzero_initial_killed_cycle_cases=killed_cycles,
        method='All Boolean maps satisfying System incoming-zero and cycle-restricted homology-zero laws, all two-page prefixes, constant valid tails, eight sampled tail transitions.'),
    preserved_checks=['Full comparison', 'Dimensions', 'Outgoing cycle', 'Strong nonboundary',
        'Canonical imported wire and page links'],
    proof_inputs=['Actual System homology-zero law', 'Full PrefixMeaning',
        'All actual incoming/outgoing maps zero at every tail page'],
    inputs_sha256={str(p.relative_to(ROOT)): sha(p) for p in files},
    not_claimed=['Specific paper tail equations', 'Topology-to-E2 identification',
        'Convergence', 'Outgoing-only implies nonzero or strong permanence'])
(HERE / 'review.json').write_text(json.dumps(report, indent=2) + '\n')
print(f'4 direct successes, 19 standard/no-axiom reports; {len(systems)} Boolean systems; '
      f'{strong_cases} strong and {cycle_cases} outgoing prefix-tail cases')
