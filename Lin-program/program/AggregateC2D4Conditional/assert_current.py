import hashlib
import json
import re
from pathlib import Path

p = Path(__file__).resolve().parent
root = p.parent
rows = json.loads((p / "compile-audit.json").read_text())
assert len(rows) == 4 and {r["module"] for r in rows} == {"Basic", "Data", "Events", "Matches"}
sha = lambda f: hashlib.sha256(f.read_bytes()).hexdigest()
axioms = 0
for row in rows:
    name = row["module"]
    assert row["exit_code"] == 0
    for path, digest in row["input_sha256"].items():
        assert sha(root / path) == digest, path
    log = p / (name + ".log")
    assert sha(log) == row["log_sha256"]
    assert sha(root / ".lake/build/lib/lean/AggregateC2D4Conditional" / (name + ".olean")) == row["olean_sha256"]
    assert "error:" not in log.read_text()
    for values in re.findall(r"depends on axioms: \[([^]]*)\]", log.read_text()):
        assert {v.strip() for v in values.split(",") if v.strip()} <= {
            "propext", "Classical.choice", "Quot.sound"}
        axioms += 1
assert axioms >= 2
review = json.loads((p / "review.json").read_text())
for path, digest in review["generated_sha256"].items():
    assert sha(p / path) == digest
for path, digest in review["dependency_sha256"].items():
    assert sha(root / path) == digest
print(f"Four current aggregate modules; {axioms} standard-only axiom reports; review current")
