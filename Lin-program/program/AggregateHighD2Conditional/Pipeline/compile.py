"""Serial direct Lean build with source and certificate fingerprints."""
import hashlib
import json
import os
import subprocess
from pathlib import Path

p = Path(__file__).resolve().parent
root = p.parents[1]
env = os.environ.copy()
env["ELAN_HOME"] = "/inspire/hdd/global_user/baokangjie-CZXS25250151/.elan"
toolchain = Path(env["ELAN_HOME"]) / "toolchains/leanprover--lean4---v4.32.2"
env["LEAN_SYSROOT"] = str(toolchain)
env["LAKE_HOME"] = str(toolchain)
env["LEAN_PATH"] = ":".join(map(str, [root / ".lake/build/lib/lean", *sorted(
    (root / "../../KIP126/.lake/packages").glob("*/.lake/build/lib/lean"))]))
if Path("/tmp/lean_proc_shim.so").exists():
    env["LD_PRELOAD"] = "/tmp/lean_proc_shim.so"
files = ["Trace6651", "Executable6651", "Trace7007", "Executable7007", "Trace7162", "Executable7162", "Trace7247", "Executable7247"]
inputs = [p.parent / f for f in ["Data.lean", "Events.lean", "Matches.lean", "source.json"]]
inputs += sorted((root / "FiniteEventProducer/HighD2").glob("*.json"))
inputs += sorted((root / "FiniteEventProducer/HighD2").glob("*.jsonl"))
inputs += sorted(p.glob("*.lean"))
fingerprints = {str(f.relative_to(root)): hashlib.sha256(f.read_bytes()).hexdigest()
                for f in inputs}
report = []
for name in files:
    source = p / f"{name}.lean"
    output = root / ".lake/build/lib/lean/AggregateHighD2Conditional/Pipeline" / f"{name}.olean"
    output.parent.mkdir(parents=True, exist_ok=True)
    with (p / f"{name}.log").open("w") as log:
        run = subprocess.run([str(toolchain / "bin/lean"), "-j1", str(source.relative_to(root)),
                              "-o", str(output.relative_to(root))],
                             cwd=root, env=env, stdout=log, stderr=subprocess.STDOUT)
    report.append(dict(file=str(source.relative_to(root)), exit_code=run.returncode,
                       input_sha256=fingerprints,
                       log_sha256=hashlib.sha256((p / f"{name}.log").read_bytes()).hexdigest(),
                       olean_sha256=hashlib.sha256(output.read_bytes()).hexdigest() if run.returncode==0 else None))
    (p / "compile-audit.json").write_text(json.dumps(report, indent=2) + "\n")
    print(name, run.returncode, flush=True)
    if run.returncode:
        raise SystemExit(run.returncode)
assert fingerprints == {str(f.relative_to(root)): hashlib.sha256(f.read_bytes()).hexdigest()
                        for f in inputs}, "input changed during direct compilation"
