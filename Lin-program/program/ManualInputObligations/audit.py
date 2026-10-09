"""Query the kernel dependencies of every declaration in the seven modules."""
import hashlib
import json
import os
from pathlib import Path
import subprocess

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
TOOL = Path('/inspire/hdd/global_user/baokangjie-CZXS25250151/.elan/toolchains/leanprover--lean4---v4.32.2')
MODULES = ['ManualInputObligations.Reference.' + n for n in [
    'Foundations', 'AlgebraTopology', 'CohomologySteenrod', 'SteenrodAdams',
    'AdamsHomology', 'AdamsRules']] + ['ManualInputObligations.Typed']
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
inputs = {m: dict(source_sha256=sha(ROOT / (m.replace('.', '/') + '.lean')),
                  olean_sha256=sha(ROOT / '.lake/build/lib/lean' /
                                   (m.replace('.', '/') + '.olean')))
          for m in MODULES}
directory = ROOT / 'tests/manual-input-audit'
directory.mkdir(exist_ok=True)
source = directory / 'Query.lean'
body = '\n'.join('import ' + m for m in MODULES)
body += '\nimport Lean.Util.CollectAxioms\nopen Lean Elab Command\n'
body += 'private def auditedModules : List Name := [' + ', '.join('`' + m for m in MODULES) + ']\n'
body += '''set_option maxHeartbeats 0 in
run_cmd do
  let env := (\u2190 getEnv).setExporting false
  let names := env.constants.toList.filterMap fun (name, _) => do
    let index \u2190 env.getModuleIdxFor? name
    let owner := env.header.moduleNames[index.toNat]!
    if auditedModules.contains owner then some name else none
  let mut reports : Array Json := #[]
  for name in names do
    let axioms \u2190 collectAxioms name
    for axiomName in axioms do
      unless [``propext, ``Classical.choice, ``Quot.sound].contains axiomName do
        throwError "undeclared axiom {axiomName} used by {name}"
    reports := reports.push <| Json.mkObj [
      ("declaration", toJson name.toString),
      ("axioms", toJson (axioms.map Name.toString))]
  unless reports.size > 0 do
    throwError "no local declarations audited"
  liftIO <| IO.FS.writeFile "ManualInputObligations/declaration-axioms.json" <|
    (Json.mkObj [("modules", toJson (auditedModules.map Name.toString)),
      ("declarations", Json.arr reports)]).pretty
  logInfo m!"PASS: {reports.size} declarations in {auditedModules.length} modules; standard axioms only"
'''
source.write_text(body)
env = os.environ.copy()
env.update(LEAN_SYSROOT=str(TOOL), LD_PRELOAD='/tmp/lean_proc_shim.so')
env['LEAN_PATH'] = ':'.join(map(str, [ROOT / '.lake/build/lib/lean', *sorted(
    (ROOT / '../../KIP126/.lake/packages').resolve().glob('*/.lake/build/lib/lean'))]))
log = HERE / 'declaration-axioms.log'
with log.open('w') as stream:
    run = subprocess.run([str(TOOL / 'bin/lean'), '-j1', str(source)],
        cwd=ROOT, env=env, stdout=stream, stderr=subprocess.STDOUT)
record = dict(observed_exit_code=run.returncode, inputs=inputs,
              source=str(source.relative_to(ROOT)), source_sha256=sha(source),
              log_sha256=sha(log))
if run.returncode == 0:
    report = HERE / 'declaration-axioms.json'
    record['report_sha256'] = sha(report)
    record['declaration_count'] = len(json.loads(report.read_text())['declarations'])
(HERE / 'axiom-audit.json').write_text(json.dumps(record, indent=2) + '\n')
print(log.read_text(), end='')
raise SystemExit(run.returncode)
