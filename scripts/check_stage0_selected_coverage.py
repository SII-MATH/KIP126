#!/usr/bin/env python3
"""Read-only finite C coverage/coordinate check; NOT spectral-sequence certification.

Queries raw SQLite databases with mode=ro. Writes only the requested JSON report.
No regeneration, Lean build, or source/data mutation is performed.
"""
import argparse
from collections import Counter
import hashlib
import json
from pathlib import Path
import sqlite3
import subprocess

parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument('--repo', type=Path, default=Path(__file__).resolve().parents[1])
parser.add_argument('--output', type=Path, required=True)
args = parser.parse_args()
repo = args.repo.resolve()
selected_path = repo / 'KIP126/LinProgram/Route/selected.json'
raw = repo / 'KIP126/LinProgram/Raw'
data = json.loads(selected_path.read_text())
degrees = {(d['spectrum'], d['s'], d['t']): d for d in data['degrees']}
assert len(degrees) == len(data['degrees']), 'duplicate selected degree'
db = {}
for name, filename in [('S0', 'S0_AdamsSS_t261.db'), ('Cnu', 'Cnu_AdamsSS_t200.db'), ('proofs', 'proofs.db')]:
    conn = sqlite3.connect((raw / filename).as_uri() + '?mode=ro', uri=True)
    conn.row_factory = sqlite3.Row
    db[name] = conn

def coord(spectrum, s, t, indices):
    d = degrees.get((spectrum, s, t))
    return bool(d is not None and all(isinstance(i, int) and 0 <= i < len(d['basis']) for i in indices)
                and all(i < j for i, j in zip(indices, indices[1:])))

coordinate_failures = []
for c in data['claims']:
    errs = []
    if not coord(c['spectrum'], c['s'], c['t'], c['x']):
        errs.append('source coordinate invalid')
    if c['r'] < 2:
        errs.append('page below 2')
    if c['kind'] in ('equation', 'refutation'):
        if (c['ts'], c['tt']) != (c['s'] + c['r'], c['t'] + c['r'] - 1):
            errs.append('wrong differential degree')
        if not coord(c['spectrum'], c['ts'], c['tt'], c['y']):
            errs.append('target coordinate invalid')
    if errs:
        coordinate_failures.append({'origin': c['origin'], 'record': c['record']['id'], 'errors': errs})

def local_degree(spectrum, s, t):
    d = degrees.get((spectrum, s, t))
    rows = [dict(r) for r in db[spectrum].execute(
        f'SELECT id,base,diff,level FROM {spectrum}_AdamsE2_ss WHERE s=? AND t=? ORDER BY id', (s, t))]
    pivots = {}
    invalid = []
    for row in rows:
        indices = [] if row['base'] == '' else [int(x) for x in row['base'].split(',')]
        if not coord(spectrum, s, t, indices):
            invalid.append(row['id'])
        v = sum(1 << i for i in indices)
        while v:
            k = v.bit_length() - 1
            if k not in pivots:
                pivots[k] = v
                break
            v ^= pivots[k]
    dim = len(d['basis']) if d else None
    return {'spectrum': spectrum, 's': s, 't': t, 'selected': d is not None,
            'core': bool(d and d['core']), 'basis_dimension': dim,
            'ss_row_count': len(rows), 'ss_rank_over_f2': len(pivots),
            'ss_basis_ids': [r['id'] for r in rows], 'invalid_ss_coordinates': invalid,
            'complete_finite_staircase_syntax': d is not None and dim == len(rows) == len(pivots) and not invalid}

named = {'U': (10,134), 'correction': (13,137), 'P': (11,133), 'Q': (12,134),
         'V': (9,132), 'X': (8,130), 'Y': (11,136), 'T': (14,139), 'h6_square': (2,128)}
incoming = {}
for name, (s, t) in named.items():
    incoming[name] = [{'r': r, **local_degree('S0', s-r, t-r+1)} for r in range(2, s+1)]
high = []
for s in range(15,65):
    high.extend({'target_s': s, 'r': r, **local_degree('S0', s-r, s+125-r+1)} for r in range(2,5))
cnu = [{'r': r, **local_degree('Cnu', 14-r, 139-r+1)} for r in range(2,6)]
all_incoming = [v for values in incoming.values() for v in values] + high + cnu
incoming_failures = [d for d in all_incoming if not d['core'] or not d['complete_finite_staircase_syntax']]

trial_ids = [2047477,2047478,*range(154532,154538)]
trials = []
for rowid in trial_ids:
    row = dict(db['proofs'].execute('SELECT * FROM log WHERE id=?', (rowid,)).fetchone())
    claim = next(c for c in data['claims'] if c['origin'] == 'proofs.db/log' and c['record']['id'] == rowid)
    trials.append({'id': rowid, 'raw': row, 'selected_kind': claim['kind'],
                   'selected_source': [claim['s'],claim['t'],claim['x']],
                   'selected_target': [claim['ts'],claim['tt'],claim['y']],
                   'syntax_is_root_trial_refutation': row['depth'] == 1 and row['reason'] == 'T'
                     and claim['kind'] == 'refutation' and 'However,' in (row['info'] or '')})

out = {'purpose': 'finite incoming-source coverage and coordinate syntax; not page semantics, soundness, or mathematical certification',
       'git_head': subprocess.check_output(['git','-C',str(repo),'rev-parse','HEAD'], text=True).strip(),
       'selected_file': str(selected_path), 'selected_sha256': hashlib.sha256(selected_path.read_bytes()).hexdigest(),
       'declared_data_hashes_not_rehashed_by_this_script': data['sha256'],
       'counts': {'degrees': len(data['degrees']), 'basis': sum(len(d['basis']) for d in data['degrees']),
                  'claims': len(data['claims']), 'claim_kinds': dict(Counter(c['kind'] for c in data['claims'])),
                  'products': len(data['products']), 'incoming_checks': len(all_incoming)},
       'coordinate_failures': coordinate_failures, 'named_incoming_sources': incoming,
       'high125_e5_incoming_sources': high, 'cnu_target_incoming_sources_r2_to_5': cnu,
       'incoming_coverage_failures': incoming_failures, 'root_trial_records': trials,
       'limitations': ['No actual spectral-sequence equations or nonzero page classes are proved.',
          'Complete finite staircase syntax does not identify a staircase with the actual tower.',
          'No proofs.db replay or soundness argument is attempted.',
          'Archive identity hashes are copied from selected.json; this script does not rehash the large databases.',
          'No claim that the tested incoming families cover every future tool or certification dependency.']}
args.output.write_text(json.dumps(out,ensure_ascii=False,indent=2) + '\n')
for conn in db.values():
    conn.close()
print(json.dumps({'output': str(args.output), 'counts': out['counts'],
                  'coordinate_failures': len(coordinate_failures), 'incoming_coverage_failures': len(incoming_failures),
                  'root_trial_syntax_passed': all(r['syntax_is_root_trial_refutation'] for r in trials)}, ensure_ascii=False))
assert not coordinate_failures and not incoming_failures
assert all(r['syntax_is_root_trial_refutation'] for r in trials)
