"""Reproduce the NULL-state audit without importing any log as a theorem."""
import bisect
import collections
import hashlib
import json
import re
import sqlite3
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
rows = [json.loads(line) for line in (HERE / "matches.jsonl").read_text().splitlines()]
scan = json.loads((HERE / "scan.json").read_text())
db = ROOT / "upstream/kervaire-49/S0_AdamsSS_t261.db"
connection = sqlite3.connect(f"file:{db}?mode=ro", uri=True)
stairs = collections.defaultdict(list)
for row in connection.execute("SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss ORDER BY id"):
    stairs[row[1:3]].append(row)
for degree, staircase in stairs.items():
    assert [r[5] for r in staircase] == sorted(r[5] for r in staircase), degree

def possible_target(s, t, rmax):
    for r in range(2, min(s, rmax) + 1):
        earlier = stairs.get((s-r, t-r+1), [])
        null_levels = [row[5] for row in earlier if row[4] is None]
        if null_levels and max(null_levels) >= 10000-r:
            return True
    return False

def fixed_first(s, t, minimum):
    staircase = stairs[s, t]
    result = len(staircase)
    for i in reversed(range(len(staircase))):
        row = staircase[i]
        if row[4] is None or row[5] < minimum:
            break
        if i == 0 or staircase[i-1][5] != row[5]:
            r = 10000-row[5]
            if possible_target(s+r, t+r-1, r-1):
                break
            result = i
    return result

def current_window(s, t, r):
    staircase = stairs[s, t]
    first = bisect.bisect_left([row[5] for row in staircase], r)
    last = fixed_first(s, t, 10000-r)
    vectors = [[int(i) for i in row[3].split(',')] for row in staircase[first:last]]
    candidates = []
    for bits in range(1 << len(vectors)):
        support = set()
        for j, vector in enumerate(vectors):
            if bits & (1 << j):
                support.symmetric_difference_update(vector)
        candidates.append(sorted(support))
    return dict(first=first,last=last,basis_rows=staircase[first:last],candidates=candidates,
        includes_zero=[] in candidates,
        scope="Current pinned staircase search window only; not a historical candidate list or Adams page computation.")

def classify(row):
    f = row['fields']
    if f['reason'] in ['T','TI']:
        return 'hypothetical_trial_surviving_log_rollback'
    if f['reason'] == '[NULL]':
        return 'grey_hint_not_deduction'
    if int(f['depth']):
        return 'inside_hypothetical_branch'
    return 'depth0_recorded_rule_requires_mathematical_interpretation'

result = {}
for ident,s,t,r,hint in [(2696,9,134,7,2422885),(2852,11,136,5,2423248)]:
    raw = next(row for row in stairs[s,t] if row[0] == ident)
    assert raw[3:] == ('3',None,10000-r)
    direct = [dict(entry, classification=classify(entry)) for entry in rows
        if entry['fields']['name'] == 'S0' and
        (int(entry['fields']['s']),int(entry['fields']['t'])) == (s,t)]
    exact = [entry for entry in direct if entry['fields']['x'] == '3']
    outgoing = re.compile(rf'S0\s*\(125,\s*{s}\)\s*d_{r}\[3\]')
    info = [entry for entry in rows if outgoing.search(entry['fields']['info'])]
    hints = [entry for entry in exact if int(entry['fields']['id']) == hint]
    assert len(hints) == 1 and hints[0]['fields']['dx'] == '[NULL]'
    actual_page = [entry for entry in exact if int(entry['fields']['r']) == r]
    assert all(entry['fields']['reason'] == '[NULL]' for entry in actual_page)
    assert not info
    (HERE / f"source{ident}.json").write_text(json.dumps(dict(raw=raw,direct=direct,exact_source=exact,
        requested_page_info=info),indent=2)+'\n')
    result[str(ident)] = dict(raw=raw,exact_source_rows=len(exact),all_degree_rows=len(direct),
        requested_page_rows=actual_page,requested_page_info_count=len(info),
        current_target_window=current_window(s+r,t+r-1,r),
        conclusion='next_unresolved_page; no_nonzero_value_or_eventual_death_inferred')

source_refs = {
    'ss/main.h': [[20,25],[1156,1162]],
    'ss/ss.cpp': [[13,38],[58,70],[314,328]],
    'ss/staircase.cpp': [[58,61],[86,94],[115,130]],
    'ss/mylog.cpp': [[55,58],[132,135],[150,164],[209,225]],
    'ss/deduce.cpp': [[332,386],[412,445],[523,540]],
}
source = {}
for name,ranges in source_refs.items():
    path = ROOT / 'upstream/release-source/SSeqCpp-master' / name
    lines = path.read_text().splitlines()
    source[name] = dict(sha256=hashlib.sha256(path.read_bytes()).hexdigest(), excerpts=[
        dict(start=start,end=end,lines=lines[start-1:end]) for start,end in ranges])
result.update(proof_scan=scan,source=source,source_database_sha256=hashlib.sha256(db.read_bytes()).hexdigest(),
    audit_sha256=hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
    trust='CSV records and source-code behavior are provenance, not Lean mathematical proofs.',
    historical_state_replayed=False,
    semantic_regression=dict(zero_d4_stores_null_level=10000-(4+1),
        zero_d6_stores_null_level=10000-(6+1),null_and_zero_are_distinct=True))
(HERE / 'audit.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps({key:value for key,value in result.items() if key in ['2696','2852']},indent=2))
