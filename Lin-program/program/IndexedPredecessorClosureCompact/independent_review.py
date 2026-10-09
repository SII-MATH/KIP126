"""Root review of literal table binding and first-match checker equivalence."""
import hashlib
import itertools
import json
from pathlib import Path
import re

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
load = lambda p: json.loads(p.read_text())
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
frozen = load(HERE / 'frozen-source.json')['files']
for path, digest in frozen.items():
    assert sha(HERE / path) == digest
reports = empty = 0
for name in ['Basic', 'Diagnostics', 'Tactic', 'Tests']:
    record = load(HERE / (name + '-compile.json'))
    assert record['observed_exit_code'] == 0 and record['inputs_stable']
    assert sha(HERE / (name + '.lean')) == record['source_sha256']
    log = (HERE / record['log']).read_text()
    assert sha(HERE / record['log']) == record['log_sha256']
    assert not any(x in log for x in ['sorryAx', 'error:', 'warning:'])
    for axioms in re.findall(r'depends on axioms:\s*\[([^]]*)\]', log):
        assert {x.strip() for x in axioms.split(',')} <= {'propext', 'Classical.choice', 'Quot.sound'}
        reports += 1
    empty += log.count('does not depend on any axioms')


def project(family):
    return [(key, wire['n'], wire['m'], wire['k'], wire['h']) for key, wire in family]


def diagnose(family):
    for index, (key, wire) in enumerate(family, 1):
        obj, page, s, t = key
        if page <= 2:
            continue
        for role, ps, pt in [('n', s-page, t-page+1), ('m', s, t), ('k', s+page, t+page-1)]:
            match = next((w for k, w in family if k == (obj, page-1, ps, pt)), None)
            if match is None or match['h'] != wire[role]:
                return index, role
    return None


def compact_diagnose(table):
    first = {}
    for key, n, m, k, h in table:
        first.setdefault(key, h)
    for index, (key, n, m, k, h) in enumerate(table, 1):
        obj, page, s, t = key
        if page <= 2:
            continue
        for role, ps, pt, d in [('n', s-page, t-page+1, n), ('m', s, t, m),
                               ('k', s+page, t+page-1, k)]:
            if first.get((obj, page-1, ps, pt)) != d:
                return index, role
    return None


def wire(h=0):
    return dict(n=0, m=0, k=0, h=h, outgoing=[True] * 17)


families = mutations = duplicate_cases = 0
for obj, page, s, t in itertools.product(['S0', 'C2'], range(3, 8), range(-2, 3), range(-2, 3)):
    preds = [(obj, page-1, s-page, t-page+1), (obj, page-1, s, t),
             (obj, page-1, s+page, t+page-1)]
    family = [(p, wire()) for p in preds] + [((obj, page, s, t), wire())]
    candidates = [family]
    for slot in range(3):
        candidates += [family[:slot] + family[slot+1:],
                       family[:slot] + [(preds[slot], wire(1))] + family[slot+1:],
                       [(preds[slot], wire(1))] + family,
                       family + [(preds[slot], wire(1))]]
        mutations += 2
        duplicate_cases += 2
    for candidate in candidates:
        assert diagnose(candidate) == compact_diagnose(project(candidate))
        changed = [(key, {**w, 'outgoing': [], 'down': [False] * 19}) for key, w in candidate]
        assert project(candidate) == project(changed)
        assert diagnose(candidate) == diagnose(changed)
        families += 1

actual = []
for branch in range(2):
    entries = load(ROOT / 'Fact713Row2693Continuation' / f'zero_b{branch}-family.json')['entries']
    family = [(tuple(e['key'][f] for f in ['object', 'page', 's', 't']), e['wire']) for e in entries]
    assert len(family) == 1413 and diagnose(family) is None
    assert compact_diagnose(project(family)) is None
    actual.append(dict(branch=branch, entries=len(family)))
result = dict(status='passed', findings=[], modules=4, frozen_files=len(frozen),
    standard_axiom_reports=reports, empty_axiom_reports=empty,
    modeled_families=families, missing_or_dimension_mutations=mutations,
    duplicate_first_match_cases=duplicate_cases, actual_tables=actual,
    scope='Lean proves exact Boolean and diagnostic equality under full projection binding. '
          'Table certificates prove predecessor coverage only; Coherent remains separate. '
          'No claimed runtime improvement until the large kernel proof finishes.')
(HERE / 'independent-review.json').write_text(json.dumps(result, indent=2) + '\n')
print(json.dumps(result, indent=2))
