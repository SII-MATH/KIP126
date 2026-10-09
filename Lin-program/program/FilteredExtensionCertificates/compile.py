"""Compile new leaves serially; preserve evidence of failures separately."""
import hashlib
import json
import os
from pathlib import Path
import subprocess
import sys

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
TOOL = Path('/inspire/hdd/global_user/baokangjie-CZXS25250151/.elan/toolchains/leanprover--lean4---v4.32.2')
env = os.environ.copy()
env.update(ELAN_HOME=str(TOOL.parents[1]), LEAN_SYSROOT=str(TOOL),
           LAKE_HOME=str(TOOL), LD_PRELOAD='/tmp/lean_proc_shim.so')
env['LEAN_PATH'] = ':'.join(str(p) for p in [ROOT / '.lake/build/lib/lean',
    *sorted((ROOT / '../../KIP126/.lake/packages').resolve().glob('*/.lake/build/lib/lean'))])
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
names = sys.argv[1:] or ['Basic', 'Import', *[f'Batch{i:02d}' for i in range(16)], 'Examples', 'Direct']
output = ROOT / '.lake/build/lib/lean/FilteredExtensionCertificates'
output.mkdir(exist_ok=True)
for name in names:
    source = HERE / (name + '.lean')
    log = HERE / (name + '.log')
    external_names = {'Examples': ['case_correction.json', 'case_nonzero.json', 'case_empty.json',
                                  'case_dimension64.json', 'valid.jsonl'],
                      'Direct': ['case_correction.json'],
                      'Dimension64': ['case_dimension64.json']}.get(name, [])
    external = [ROOT / 'FilteredExtensionProducer' / n for n in external_names]
    if name.startswith('Batch'):
        external.append(HERE / (name.lower() + '.jsonl'))
    record = {'source_sha256': sha(source),
              'external_input_sha256': {str(p.relative_to(ROOT)): sha(p) for p in external}}
    with log.open('w') as stream:
        run = subprocess.run([str(TOOL / 'bin/lean'), '-j1',
            f'FilteredExtensionCertificates/{name}.lean', '-o', str(output / (name + '.olean'))],
            cwd=ROOT, env=env, stdout=stream, stderr=subprocess.STDOUT)
    record.update(observed_exit_code=run.returncode, log_sha256=sha(log))
    if run.returncode == 0:
        record['olean_sha256'] = sha(output / (name + '.olean'))
    else:
        failed = HERE / (name + '.failed-' + sha(log)[:12] + '.log')
        failed.write_bytes(log.read_bytes())
    (HERE / (name + '-compile.json')).write_text(json.dumps(record, indent=2) + '\n')
    assert record['source_sha256'] == sha(source)
    assert record['external_input_sha256'] == {str(p.relative_to(ROOT)): sha(p) for p in external}
    print(name, run.returncode, flush=True)
    if run.returncode:
        raise SystemExit(log.read_text())
