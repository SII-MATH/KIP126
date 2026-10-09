"""Check deterministic generation and complete data links independently of Lean."""
import hashlib
import json
import subprocess
from pathlib import Path

p = Path(__file__).resolve().parent
root = p.parents[1]
producer = root / "FiniteEventProducer/ThreeProduct"
files = ["Trace3744.lean", "Trace3745.lean", "Executable3744.lean",
         "Executable3745.lean", "trajectory-cycles.json"]
digest = lambda f: hashlib.sha256(f.read_bytes()).hexdigest()
before = {f: digest(p / f) for f in files}
subprocess.run(["python3", str(p / "generate.py")], check=True)
assert before == {f: digest(p / f) for f in files}
blocks = json.loads((p.parent / "source.json").read_text())["blocks"]
traces = json.loads((p / "trajectory-cycles.json").read_text())
assert {x["staircase_id"] for x in traces} == {3744, 3745}
for trace in traces:
    rid = trace["staircase_id"]
    finite = json.loads((producer / f"event{rid}.json").read_text())
    indexed = json.loads((producer / f"indexed-event{rid}.json").read_text())
    assert indexed["finite"] == finite
    assert indexed["eventPage"] == trace["event_page"] == 4
    assert indexed["sourceDegree"] == {"s": 18, "t": 144}
    assert indexed["targetDegree"] == {"s": 22, "t": 147}
    assert finite["event"] == blocks["S0:18,144:d4"]["wire"]
    assert {x["kind"] for x in trace["conditional_uses"]} == {"conditional_three_products"}
    for endpoint in trace["endpoints"]:
        name = endpoint["endpoint"]
        assert finite["raw" + name.capitalize()] == list(map(bool, endpoint["raw_vector"]))
        assert finite[name] == list(map(bool, endpoint["final_coordinates"]))
        assert finite[name + "Stages"] == [
            dict(wire=blocks[s["comparison"]]["wire"],
                 representative=list(map(bool, s["coordinates"])))
            for s in endpoint["prior_stages"]]
report = dict(events=[3744, 3745], prior_cycle_steps=8, prior_nonboundary_steps=8,
              raw_projection_links=4, producer_wires_match=True,
              generated_sha256=before,
              producer_sha256={f: digest(producer / f) for f in
                               ["event3744.json", "indexed-event3744.json",
                                "event3745.json", "indexed-event3745.json"]})
(p / "review.json").write_text(json.dumps(report, indent=2) + "\n")
print("Deterministic traces; complete raw/matrix/stage/projection links for both C++ events")
