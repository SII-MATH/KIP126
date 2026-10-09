"""Exercise real Lake cache invalidation in an isolated, core-only package."""
import hashlib
import json
import os
from pathlib import Path
import subprocess
import tempfile

import track_certificate_inputs

ROOT = Path(__file__).resolve().parents[1]
RUNS = ROOT / 'tests/lake-input-cache-runs'
RUNS.mkdir(exist_ok=True)
HERE = Path(tempfile.mkdtemp(prefix='run-', dir=RUNS))
TOOL = Path('/inspire/hdd/global_user/baokangjie-CZXS25250151/.elan/toolchains/leanprover--lean4---v4.32.2')
ENV = os.environ.copy()
ENV.update(ELAN_HOME=str(TOOL.parents[1]), LEAN_SYSROOT=str(TOOL),
           LAKE_HOME=str(TOOL), LD_PRELOAD='/tmp/lean_proc_shim.so')

config = '''import Lake
open Lake DSL
package CertificateCacheRegression

@[default_target]
lean_lib CacheCertificate where
  globs := #[.one `CacheCertificate]

@[default_target]
lean_lib Independent where
  globs := #[.one `Independent]
'''
source = '''import Lean
open Lean Elab Term
elab "certificate_nat" : term => do
  let contents ← IO.FS.readFile "certificate.txt"
  match contents.trimAscii.toString.toNat? with
  | some n => return toExpr n
  | none => throwError "invalid certificate natural"
def imported : Nat := certificate_nat
theorem checked : imported = 7 := by decide
#print axioms checked
'''
(HERE / 'lean-toolchain').write_text('leanprover/lean4:v4.32.2\n')
# Long arrays exercise Lake's elaboration path used by real batch libraries.
padding = [f'padding{i:02}.json' for i in range(80)]
source += '\ndef paddingInputs : List String := [' + ','.join(map(json.dumps, padding)) + ']\n'
for name in padding:
    (HERE / name).write_text('{}\n')
(HERE / 'CacheCertificate.lean').write_text(source)
(HERE / 'Independent.lean').write_text('theorem independent : 2 + 2 = 4 := rfl\n')
INPUT = HERE / 'certificate.txt'
INPUT.write_bytes(b'7\n')
track_certificate_inputs.ROOT = HERE
config, manifest = track_certificate_inputs.generate(config)
(HERE / 'lakefile.lean').write_text(config)
(HERE / 'certificate-inputs.json').write_text(manifest)
records = []


def run(name, contents, expected, rebuilt):
    if contents is None:
        INPUT.rename(HERE / 'certificate.missing-backup')
    else:
        INPUT.write_bytes(contents)
    obj = HERE / '.lake/build/lib/lean/Independent.olean'
    before = obj.stat().st_mtime_ns if obj.exists() else None
    process = subprocess.run([str(TOOL / 'bin/lake'), 'build'], cwd=HERE, env=ENV,
                             text=True, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
    log = HERE / (name + '.log')
    log.write_text(process.stdout)
    observed = 'Built CacheCertificate' in process.stdout
    record = dict(name=name, observed_exit_code=process.returncode,
                  rebuilt=observed, expected_rebuilt=rebuilt,
                  input_sha256=hashlib.sha256(contents).hexdigest() if contents is not None else None,
                  log_sha256=hashlib.sha256(log.read_bytes()).hexdigest())
    records.append(record)
    (HERE / 'actual-runs.json').write_text(json.dumps(records, indent=2) + '\n')
    assert (process.returncode == 0) == expected, process.stdout
    if rebuilt is not None:
        assert observed == rebuilt, process.stdout
    if before is not None:
        assert obj.stat().st_mtime_ns == before, 'unrelated library rebuilt'
    print(name, process.returncode, flush=True)


run('01-valid', b'7\n', True, True)
run('02-cached', b'7\n', True, False)
run('03-changed-value-rejected', b'8\n', False, None)
run('04-restored', b'7\n', True, True)
run('05-crlf-binary-change', b'7\r\n', True, True)
(HERE / 'unrelated.txt').write_text('this is not a dependency\n')
run('06-unrelated-change', b'7\r\n', True, False)
run('07-missing-input', None, False, None)
run('08-final-valid', b'7\n', True, True)
(RUNS / 'latest.json').write_text(json.dumps(dict(
    run=str(HERE.relative_to(ROOT)), cases=records,
    generator_sha256=hashlib.sha256((ROOT / 'tests/track_certificate_inputs.py').read_bytes()).hexdigest(),
    fixture_lakefile_sha256=hashlib.sha256((HERE / 'lakefile.lean').read_bytes()).hexdigest()), indent=2) + '\n')
print('PASS: real cache, changed-value rejection, byte-level invalidation, missing input, unrelated library')
