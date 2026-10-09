"""Serial direct builds for the actual whole-page semantic transport leaves."""
import hashlib
import json
import os
from pathlib import Path
import re
import subprocess

here = Path(__file__).resolve().parent
root = here.parent
tool = Path('/inspire/hdd/global_user/baokangjie-CZXS25250151/.elan/toolchains/leanprover--lean4---v4.32.2')
names = ['Meaning', 'MeaningExamples', 'MeaningCounterexamples']
inputs = [here / (name + '.lean') for name in names] + [
    here / 'Basic.lean', here / 'D2.lean', root / 'SemanticTrajectoryCertificates/Page.lean',
    root / 'PageTransitionCertificates/Basic.lean', root / 'PageTransitionCertificates/Quotient.lean',
    root / 'PageTransitionCertificates/AdditiveQuotient.lean', root / 'PageTransitionCertificates/Import.lean']
sha = lambda path: hashlib.sha256(path.read_bytes()).hexdigest()
fingerprints = {str(path.relative_to(root)): sha(path) for path in inputs}
env = os.environ.copy()
env.update(LEAN_SYSROOT=str(tool), LD_PRELOAD='/tmp/lean_proc_shim.so')
env['LEAN_PATH'] = ':'.join(map(str, [root / '.lake/build/lib/lean', *sorted(
    (root / '../../KIP126/.lake/packages').resolve().glob('*/.lake/build/lib/lean'))]))
audit = []
for name in names:
    log = here / (name + '.log')
    olean = root / '.lake/build/lib/lean/Stem125HomologyCertificates' / (name + '.olean')
    with log.open('w') as stream:
        run = subprocess.run([str(tool / 'bin/lean'), '-j1',
            'Stem125HomologyCertificates/' + name + '.lean', '-o', str(olean)],
            cwd=root, env=env, stdout=stream, stderr=subprocess.STDOUT)
    row = {'module': name, 'exit_code': run.returncode, 'input_sha256': fingerprints,
           'log_sha256': sha(log)}
    if run.returncode == 0:
        row['olean_sha256'] = sha(olean)
        text = log.read_text()
        assert 'sorryAx' not in text and 'error:' not in text and 'error(' not in text
        values = re.findall(r'depends on axioms: \[([^]]*)\]', text)
        assert all({part.strip() for part in value.split(',')} <=
            {'propext', 'Classical.choice', 'Quot.sound'} for value in values)
        row['standard_axiom_reports'] = len(values)
    audit.append(row)
    (here / 'meaning-compile-audit.json').write_text(json.dumps(audit, indent=2) + '\n')
    print(name, run.returncode, flush=True)
    if run.returncode:
        raise SystemExit(log.read_text())
assert fingerprints == {str(path.relative_to(root)): sha(path) for path in inputs}
