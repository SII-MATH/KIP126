"""Require both successful current Lean checks; stale or partial logs fail."""
import hashlib
import json
import re
from pathlib import Path

p = Path(__file__).resolve().parent
root = p.parents[1]
records = json.loads((p / "compile-audit.json").read_text())
expected = {f"AggregateD5Conditional/Pipeline/{name}.lean" for name in
            ["Trace3391", "Executable3391"]}
assert len(records) == 2 and {r["file"] for r in records} == expected
axiom_count = 0
for record in records:
    assert record["exit_code"] == 0
    for filename, digest in record["input_sha256"].items():
        assert hashlib.sha256((root / filename).read_bytes()).hexdigest() == digest, filename
    log = (root / record["file"]).with_suffix(".log")
    assert hashlib.sha256(log.read_bytes()).hexdigest() == record["log_sha256"]
    output=root/".lake/build/lib/lean"/Path(record["file"]).with_suffix(".olean")
    assert hashlib.sha256(output.read_bytes()).hexdigest()==record["olean_sha256"]
    content = log.read_text()
    assert "error:" not in content
    printed = re.findall(r"depends on axioms: \[([^]]*)\]", content)
    assert len(printed) == 2, log
    for axioms in printed:
        assert set(x.strip() for x in axioms.split(",") if x.strip()) <= {
            "propext", "Classical.choice", "Quot.sound"}, axioms
    axiom_count += len(printed)
print(f"Two current successful Lean modules; {axiom_count} standard-only axiom reports")
