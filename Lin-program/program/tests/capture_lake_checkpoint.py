"""Record an observed successful Lake run without rewriting direct-build history.

Pass the exit code and session id returned by the actual process tool. This
manifest records compiler evidence and provenance, not mathematical axioms.
Only Lean modules with explicit Built records in that run are captured.
"""
import argparse
import hashlib
import json
import re
from pathlib import Path

root = Path(__file__).resolve().parents[1]
parser = argparse.ArgumentParser()
parser.add_argument('--log', required=True, help='Path relative to program/')
parser.add_argument('--session', required=True, type=int)
parser.add_argument('--observed-exit', required=True, type=int)
parser.add_argument('--output', required=True, help='New path relative to program/')
parser.add_argument('--prior-module-log', action='append', default=[],
                    help='Earlier log with successful individual Built records; may have a failed overall run')
args = parser.parse_args()
assert args.observed_exit == 0, 'a failed build is not a successful checkpoint'
path = root / args.output
assert not path.exists(), 'preserve existing checkpoint history'
sha = lambda f: hashlib.sha256(f.read_bytes()).hexdigest()
log = root / args.log
text = log.read_text()
success = re.search(r'Build completed successfully \((\d+) jobs\)\.', text)
assert success and not re.search(r'\berror(?:\(|:)|Build failed', text)
evidence_logs = [args.log, *args.prior_module_log]
evidence = '\n'.join((root / name).read_text() for name in evidence_logs)
names = sorted(set(re.findall(r'\bBuilt ([A-Za-z0-9_.]+) \(', evidence)))
modules = []
for name in names:
    stem = name.replace('.', '/')
    source = root / (stem + '.lean')
    if not source.is_file():
        continue
    obj = root / '.lake/build/lib/lean' / (stem + '.olean')
    trace = obj.with_suffix('.trace')
    assert obj.is_file() and trace.is_file(), name
    details = json.loads(trace.read_text())
    assert details['synthetic'] is False, name
    assert str(source.resolve()) in {x[0] for x in details['inputs']}, name
    assert details['outputs'].get('o'), name
    assert not any(x.get('severity') == 'error' for x in details['log']), name
    modules.append(dict(module=name, source_sha256=sha(source),
                        olean_sha256=sha(obj), trace_sha256=sha(trace)))
assert modules, 'no explicit local Lean build evidence'
path.write_text(json.dumps(dict(schema='observed-lake-checkpoint/v1',
    scope='explicitly rebuilt local Lean modules; cached modules retain earlier evidence',
    session_id=args.session, observed_exit_code=args.observed_exit,
    jobs=int(success[1]), build_log=args.log, build_log_sha256=sha(log),
    individual_module_logs={name: sha(root / name) for name in evidence_logs},
    lakefile_sha256=sha(root / 'lakefile.lean'), modules=modules), indent=2) + '\n')
print(f'Recorded {len(modules)} rebuilt modules from actual successful session {args.session}')
