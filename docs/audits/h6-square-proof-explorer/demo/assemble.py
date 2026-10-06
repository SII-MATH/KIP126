#!/usr/bin/env python3
"""Assemble reviewed prose and independent annotations without changing propositions."""
import copy
import hashlib
import json
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parent


def read(name):
    return json.loads((ROOT / name).read_text())


def write(name, value):
    (ROOT / name).write_text(json.dumps(value, ensure_ascii=False, indent=2) + "\n")


def assemble():
    math = read("data/math-reviewed.json")
    data = {"metadata": read("data/metadata.json"), **copy.deepcopy(math)}
    formal_path = ROOT / "data/formal-reviewed.json"
    formal = read("data/formal-reviewed.json") if formal_path.exists() else {"dependencies": []}
    annotations = {item["id"]: item for item in formal["dependencies"]}
    for dep in data["dependencies"]:
        audit = annotations.get(dep["id"])
        if audit:
            assert audit["version"] == dep["version"], f"Version mismatch: {dep['id']}"
            if "statement" in audit:
                assert audit["statement"] == dep["statement"], f"Statement changed: {dep['id']}"
            for key in ["rounds", "semantic_status", "proof_status", "evidence", "limitations", "checker_summary"]:
                if key in audit:
                    dep[key] = copy.deepcopy(audit[key])
        else:
            dep.update(semantic_status="pending", rounds=[], proof_status=["依赖待审计"])
    step_ids = {step["id"] for step in data["steps"]}
    deps = {dep["id"]: dep for dep in data["dependencies"]}
    assert len(step_ids) == len(data["steps"])
    assert len(deps) == len(data["dependencies"])
    for step in data["steps"]:
        assert set(step["prerequisites"]) <= step_ids, step["id"]
        assert set(step["dependencies"]) <= deps.keys(), step["id"]
        refs = re.findall(r"\[\[(EXT-\d+)\]\]", step["body"])
        assert set(refs) == set(step["dependencies"]), (step["id"], refs)
        assert step["review"]["status"] != "pending", step["id"]
    for dep in deps.values():
        actual = [step["id"] for step in data["steps"] if dep["id"] in step["dependencies"]]
        assert set(actual) == set(dep["used_in"]), (dep["id"], actual, dep["used_in"])
        if dep["semantic_status"] == "failed":
            assert len(dep["rounds"]) == 3, dep["id"]
            assert dep["rounds"][-1]["checker"]["status"] == "rejected"
        if dep["semantic_status"] == "passed":
            assert dep["rounds"][-1]["checker"]["status"] == "passed"
        if dep["semantic_status"] == "not_found":
            assert all(not r["candidates"] for r in dep["rounds"])
        assert all(r["dependency_version"] == dep["version"] for r in dep["rounds"])
    statuses = ["passed", "not_found", "failed", "pending", "incomplete"]
    data["statistics"] = {
        "total_dependencies": len(deps),
        "status_counts": {status: sum(d["semantic_status"] == status for d in deps.values()) for status in statuses},
        "reference_occurrences": sum(len(re.findall(r"\[\[EXT-\d+\]\]", s["body"])) for s in data["steps"]),
        "rounds": sum(len(d["rounds"]) for d in deps.values()),
        "steps": len(data["steps"]),
    }
    data["metadata"]["math_reviewed_sha256"] = hashlib.sha256((ROOT / "data/math-reviewed.json").read_bytes()).hexdigest()
    write("data/explorer.json", data)
    (ROOT / "web/data.js").write_text("window.EXPLORER_DATA = " + json.dumps(data, ensure_ascii=False) + ";\n")
    prose = ["# " + data["metadata"]["title"], "", "> " + data["metadata"]["boundary"], ""]
    chapter = None
    for step in data["steps"]:
        if step["chapter"] != chapter:
            chapter = step["chapter"]
            prose += ["## " + chapter, ""]
        locators = [f"{p.get('path', '')} · {p.get('label', '')} · L{p.get('lines', '')}" for p in step["paper"]]
        prose += ["### " + step["id"] + " · " + step["title"], "", step["body"], "",
                  "论文位置：" + "；".join(locators), "",
                  "数学审查：" + step["review"]["status"], ""]
    prose += ["## 外部依赖（数学命题；对应核查见网页批注）", ""]
    for dep in deps.values():
        prose += ["### " + dep["id"] + " · " + dep["name"], "", dep["statement"], ""]
        prose += ["来源：" + "；".join(f"{p.get('path', '')} · {p.get('locator', '')}" for p in dep["sources"]), ""]
    prose += ["## 范围与未展开环节", ""]
    for issue in data.get("issues", []):
        prose += ["### " + issue.get("id", "") + " · " + issue.get("title", ""), "",
                  issue.get("body", issue.get("description", "")), ""]
    (ROOT / "proof.zh.md").write_text("\n".join(prose))
    graph = {
        "nodes": [{"id": s["id"], "kind": "step", "title": s["title"]} for s in data["steps"]]
        + [{"id": d["id"], "kind": "external", "version": d["version"], "title": d["name"]} for d in deps.values()],
        "edges": [{"from": p, "to": s["id"], "kind": "prerequisite"} for s in data["steps"] for p in s["prerequisites"]]
        + [{"from": d, "to": s["id"], "kind": "external_input"} for s in data["steps"] for d in s["dependencies"]],
    }
    write("data/proof-graph.json", graph)
    print(json.dumps(data["statistics"], ensure_ascii=False, indent=2))


if __name__ == "__main__":
    assemble()
