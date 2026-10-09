"""Direct serial regression build; run only after the root Lake build ends."""
import hashlib
import json
import os
import subprocess
from pathlib import Path

p = Path(__file__).resolve().parent
root = p.parent
env = os.environ.copy()
env["ELAN_HOME"] = "/inspire/hdd/global_user/baokangjie-CZXS25250151/.elan"
toolchain = Path(env["ELAN_HOME"]) / "toolchains/leanprover--lean4---v4.32.2"
env["LEAN_SYSROOT"] = str(toolchain)
env["LAKE_HOME"] = str(toolchain)
env["LEAN_PATH"] = ":".join(map(str, [root / ".lake/build/lib/lean", *sorted(
    (root / "../../KIP126/.lake/packages").glob("*/.lake/build/lib/lean"))]))
if Path("/tmp/lean_proc_shim.so").exists():
    env["LD_PRELOAD"] = "/tmp/lean_proc_shim.so"
modules = ["KervaireProgram/Checker", "KervaireProgram/Import",
           "KervaireProgram/KervaireClaims", "LinProgramCertificates/KervaireTactic",
           "LinProgramCertificates/Examples", "Step4ContractAudit/SemanticBridge",
           "Step4ContractAudit/FiniteBoundaryTests", "Step4ContractAudit/ImportTests",
           "Step4ContractAudit/ConditionalPremiseTests"]
inputs = [root / (name + ".lean") for name in modules]
inputs += [root / "examples/finite_sample.json",
           root / "FiniteEventProducer/ThreeProduct/indexed-event3744.json",
           root / "AggregateThreeProductConditional/Matches.lean"]
fingerprints = {str(f.relative_to(root)): hashlib.sha256(f.read_bytes()).hexdigest()
                for f in inputs}
report = []
for module in modules:
    source = root / (module + ".lean")
    output = root / ".lake/build/lib/lean" / (module + ".olean")
    output.parent.mkdir(parents=True, exist_ok=True)
    log_path = p / (module.replace("/", "_") + ".log")
    with log_path.open("w") as log:
        run = subprocess.run([str(toolchain / "bin/lean"), "-j1", str(source.relative_to(root)),
                              "-o", str(output.relative_to(root))],
                             cwd=root, env=env, stdout=log, stderr=subprocess.STDOUT)
    report.append(dict(file=str(source.relative_to(root)), exit_code=run.returncode,
                       input_sha256=fingerprints, log=str(log_path.relative_to(root)),
                       log_sha256=hashlib.sha256(log_path.read_bytes()).hexdigest()))
    (p / "compile-audit.json").write_text(json.dumps(report, indent=2) + "\n")
    print(module, run.returncode, flush=True)
    if run.returncode:
        raise SystemExit(run.returncode)
assert fingerprints == {str(f.relative_to(root)): hashlib.sha256(f.read_bytes()).hexdigest()
                        for f in inputs}, "input changed during direct compilation"
