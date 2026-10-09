import hashlib
import json
import re
from pathlib import Path

p = Path(__file__).resolve().parent
root = p.parent
records = json.loads((p / "compile-audit.json").read_text())
expected = {name + ".lean" for name in ["KervaireProgram/Checker", "KervaireProgram/Import",
    "KervaireProgram/KervaireClaims", "LinProgramCertificates/KervaireTactic",
    "LinProgramCertificates/Examples", "Step4ContractAudit/SemanticBridge",
    "Step4ContractAudit/FiniteBoundaryTests", "Step4ContractAudit/ImportTests",
    "Step4ContractAudit/ConditionalPremiseTests"]}
assert len(records) == 9 and {r["file"] for r in records} == expected
count = 0
for record in records:
    assert record["exit_code"] == 0, record["file"]
    for filename, digest in record["input_sha256"].items():
        assert hashlib.sha256((root / filename).read_bytes()).hexdigest() == digest, filename
    log = root / record["log"]
    assert hashlib.sha256(log.read_bytes()).hexdigest() == record["log_sha256"]
    content = log.read_text()
    assert "error:" not in content
    for axiom_set in re.findall(r"depends on axioms: \[([^]]*)\]", content):
        assert set(x.strip() for x in axiom_set.split(",") if x.strip()) <= {
            "propext", "Classical.choice", "Quot.sound"}, axiom_set
        count += 1
assert count >= 15
print(f"Nine current successful modules; {count} standard-only axiom reports")
