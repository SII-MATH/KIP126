"""Validate current direct proof evidence without recompiling frozen leaves."""
import hashlib
import json
import re
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
allowed = {"propext", "Classical.choice", "Quot.sound"}
review_names = ["Import", *[f"Negative{i:02}" for i in range(14)], "Negative", "Nonzero"]
checker_names = ["Basic", "Import", *[f"Batch{i:02}" for i in range(16)], "Examples", "Direct"]


def evidence(folder, names):
    checked = {}
    for name in names:
        record_path = folder / (name + "-compile.json")
        record = json.loads(record_path.read_text())
        source, log = folder / (name + ".lean"), folder / (name + ".log")
        obj = ROOT / ".lake/build/lib/lean" / folder.name / (name + ".olean")
        assert record["observed_exit_code"] == 0, record_path
        assert record["source_sha256"] == sha(source), source
        assert record["log_sha256"] == sha(log), log
        assert record["olean_sha256"] == sha(obj), obj
        for path, digest in record["external_input_sha256"].items():
            candidates = [ROOT / path, folder / path, ROOT / "FilteredExtensionProducer" / path]
            candidate = next((p for p in candidates if p.is_file()), None)
            assert candidate is not None and sha(candidate) == digest, path
        text = log.read_text()
        assert not re.search(r"sorryAx|error:|error\(|warning:", text), log
        reports = re.findall(r"'([^']+)' (?:depends on axioms: \[([^]]*)\]|does not depend on any axioms)", text)
        for theorem, axioms in reports:
            observed = {s.strip() for s in axioms.split(",") if s.strip()}
            assert observed <= allowed, (theorem, observed)
        src = source.read_text()
        assert not re.search(r"\b(?:sorry|admit|native_decide|axiom)\b", src), source
        assert not re.search(r"\bunsafe\b", src), source
        checked[name] = {
            "record_sha256": sha(record_path), "source_sha256": sha(source),
            "object_sha256": sha(obj), "reports": len(reports),
        }
    return checked


def main():
    oracle = json.loads((HERE / "independent-review.json").read_text())
    for path, digest in oracle["source_sha256"].items():
        assert sha(ROOT / path) == digest, path
    assert sha(HERE / "negative.jsonl") == oracle["negative_sha256"]
    negative = (HERE / "negative.jsonl").read_text()
    chunks = [(HERE / f"negative{i:02}.jsonl").read_text() for i in range(14)]
    assert "".join(chunks) == negative
    for i, chunk in enumerate(chunks):
        assert "".join((HERE / f"negative{i:02}_{j}.json").read_text() for j in range(8)) == chunk
    checker = ROOT / "FilteredExtensionCertificates"
    assert "".join((checker / f"batch{i:02}.jsonl").read_text() for i in range(16)) == (
        ROOT / "FilteredExtensionProducer/valid.jsonl").read_text()
    reports = {"review": evidence(HERE, review_names), "checker": evidence(checker, checker_names)}
    counts = {key: sum(leaf["reports"] for leaf in leaves.values()) for key, leaves in reports.items()}
    assert counts["review"] == 146, counts
    report = {"status": "current_direct_proofs_and_standard_axioms_passed",
              "leaves": reports, "axiom_report_counts": counts,
              "oracle_review_sha256": sha(HERE / "independent-review.json"),
              "script_sha256": sha(Path(__file__)),
              "scope": "17 review leaves and 20 frozen checker leaves; optional Dimension64 has its own later record."}
    (HERE / "proof-audit.json").write_text(json.dumps(report, indent=2, sort_keys=True) + "\n")
    print(f"current direct proofs: {len(review_names)} review / {len(checker_names)} checker leaves; reports {counts}")


if __name__ == "__main__":
    main()
