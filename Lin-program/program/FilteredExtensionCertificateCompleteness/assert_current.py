"""Validate the observed direct compilation and its current input hashes."""
from pathlib import Path
import hashlib
import json
import re

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
ALLOWED = {"propext", "Classical.choice", "Quot.sound"}
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
reports = []
for name, expected in [("Linear", 8), ("Basic", 5), ("Search", 7), ("Examples", 8)]:
    source = HERE / (name + ".lean")
    log = HERE / (name + ".log")
    obj = ROOT / ".lake/build/lib/lean/FilteredExtensionCertificateCompleteness" / (name + ".olean")
    observation = json.loads((HERE / (name + "-compile.json")).read_text())
    assert observation["observed_exit_code"] == 0, name
    assert observation["source_sha256"] == sha(source), name
    assert observation["log_sha256"] == sha(log), name
    assert observation["olean_sha256"] == sha(obj), name
    code = re.sub(r"/\-.*?\-/", "", source.read_text(), flags=re.S)
    code = re.sub(r"--[^\n]*", "", code)
    assert not re.search(r"\b(sorry|admit|axiom|native_decide)\b", code), name
    assert "error:" not in log.read_text(), name
    printed = re.findall(r"'([^']+)' depends on axioms: \[([^\]]*)\]", log.read_text(), re.S)
    assert len(printed) == expected, (name, len(printed))
    for theorem, axioms in printed:
        dependencies = {a.strip() for a in axioms.split(",") if a.strip()}
        assert dependencies <= ALLOWED, (theorem, dependencies)
    reports.append({"module": "FilteredExtensionCertificateCompleteness." + name,
                    "axiom_reports": len(printed), **observation})
result = {
    "modules": reports,
    "observed_successful_direct_compilations": len(reports),
    "standard_only_axiom_reports": sum(r["axiom_reports"] for r in reports),
    "scope": "witness completeness for exact FilteredExtensionCertificates.ResultValid",
    "search": "explicit exponential reference search, success iff ResultValid",
    "efficient_cpp_completeness_claimed": False,
    "excluded": ["topological convergence", "identification of actual Adams filtrations"],
    "failed_attempts": [p.name for p in sorted(HERE.glob("*.failed-*.log"))],
}
(HERE / "proof-review.json").write_text(json.dumps(result, indent=2) + "\n")
print(f"{len(reports)} direct exit0 modules; {result['standard_only_axiom_reports']} standard-only axiom reports")
