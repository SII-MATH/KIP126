"""Generate complete trace proofs and actual C++ import checks for two new events."""
import json
from pathlib import Path

p = Path(__file__).resolve().parent
root = p.parents[1]
source = json.loads((p.parent / "source.json").read_text())
dag = json.loads((p.parent / "dag.json").read_text())
producer = root / "FiniteEventProducer/HighD2"
provenance = json.loads((producer / "provenance.json").read_text())["records"]


def bits(values):
    return "[" + ",".join("true" if x else "false" for x in values) + "]"


def tag(key):
    return "b_" + key.replace(":", "_").replace(",", "_")


def evaluate(matrix, m, n, vector):
    return [sum(matrix[i * n + j] * vector[j] for j in range(n)) % 2
            for i in range(m)]


trace = []
for rid in [6651, 7007, 7162, 7247]:
    record = next(x for x in provenance if x["staircase_id"] == rid)
    iw = json.loads((producer / f"indexed-event{rid}.json").read_text())
    wire = iw["finite"]
    lines = ["import AggregateHighD2Conditional.Matches",
             "import AggregateTargetInventory.EventAudit.NonboundaryBasic",
             f"namespace AggregateHighD2Conditional.Pipeline.Trace{rid}",
             "open LinearCertificates PageTransitionCertificates Data Events",
             "open AggregateTargetInventory.EventAudit.NonboundaryBasic"]
    endpoints = []
    for label in ["source", "target"]:
        center = iw[label + "Degree"]
        ss, tt = center["s"], center["t"]
        vector = list(map(int, wire["raw" + label.capitalize()]))
        assert len(vector) == len(dag["degrees"][f"S0:{ss},{tt}"]["e2"])
        raw = vector[:]
        expr = f"(fun i => ({bits(vector)} : List Bool)[i.val]!)"
        steps = []
        for page in range(2, iw["eventPage"]):
            key = f"S0:{ss},{tt}:d{page}"
            w = source["blocks"][key]["wire"]
            name = f"{label}_d{page}"
            block = tag(key)
            value = evaluate(w["outgoing"], w["k"], w["m"], vector)
            projection = evaluate(w["projection"], w["h"], w["m"], vector)
            assert not any(value) and any(projection)
            lines += [
                f"theorem {name}_cycle : InKernel (matrixOf {w['k']} {w['m']} {block}.outgoing) {expr} := by funext i; exact (show ∀ i : Fin {w['k']}, eval (matrixOf {w['k']} {w['m']} {block}.outgoing) {expr} i = false from by decide) i",
                f"theorem {name}_nonzero_projection : eval {block}.comparison.projection {expr} ≠ zero := by intro h; have hi := congrFun h ⟨{next(i for i, x in enumerate(projection) if x)},by decide⟩; contradiction",
                f"theorem {name}_not_boundary : ¬ InImage (matrixOf {w['m']} {w['n']} {block}.incoming) {expr} := nonzero_projection_not_boundary {block}.comparison {block}_complete.2 {name}_cycle {name}_nonzero_projection",
            ]
            steps.append(dict(page=page, comparison=key, coordinates=vector,
                              outgoing_value=value, status="cycle", projection=projection))
            expr = f"(eval {block}.comparison.projection {expr})"
            vector = projection
        assert vector == wire[label]
        lines.append(f"theorem {label}_full_projection : {expr} = event{rid}{label.capitalize()} := by decide")
        lines.append(f"#print axioms {label}_full_projection")
        endpoints.append(dict(endpoint=label, degree=[ss, tt],
                              raw_local_indices=[i for i, x in enumerate(raw) if x],
                              raw_vector=raw, prior_stages=steps,
                              prior_cycles_verified=True, final_coordinates=vector))
    lines.append(f"end AggregateHighD2Conditional.Pipeline.Trace{rid}")
    (p / f"Trace{rid}.lean").write_text("\n".join(lines) + "\n")
    trace.append(dict(staircase_id=rid, event_page=iw["eventPage"],
                      endpoints=endpoints, all_prior_cycles=True,
                      conditional_uses=record["conditional_uses"]))

    lines = [f"import AggregateHighD2Conditional.Pipeline.Trace{rid}",
             "import AggregateTargetInventory.EventAudit.Indexed",
             f"namespace AggregateHighD2Conditional.Pipeline.Executable{rid}",
             "open LinearCertificates PageTransitionCertificates Data Events",
             "open AggregateTargetInventory.EventAudit",
             f'def finite : Executable.Wire := finite_event% "FiniteEventProducer/HighD2/event{rid}.json"',
             f'def indexed : Indexed.Wire := indexed_event% "FiniteEventProducer/HighD2/indexed-event{rid}.json"',
             "theorem finite_valid : finite.Valid := by lin_cert using ()",
             "theorem indexed_valid : indexed.Valid := by lin_cert using ()",
             "theorem same_finite : indexed.finite = finite := rfl",
             f"theorem event_comparison : finite.event = {tag(record['root'])} := rfl",
             f"theorem source_vector : finite.sourceVector = event{rid}Source := by decide",
             f"theorem target_vector : finite.targetVector = event{rid}Target := by decide",
             f"theorem raw_source : finite.rawSource = {bits(wire['rawSource'])} := rfl",
             f"theorem raw_target : finite.rawTarget = {bits(wire['rawTarget'])} := rfl"]
    for label in ["source", "target"]:
        for index, stage in enumerate(record[label + "_trace"]):
            lines.append(f"theorem {label}_d{index + 2}_comparison : (finite.{label}Stages[{index}]).wire = {tag(stage['comparison'])} := rfl")
    event = wire["event"]
    lines += [
        f"theorem source_not_kernel : ¬ InKernel (matrixOf {event['k']} {event['m']} {tag(record['root'])}.outgoing) event{rid}Source := finite_valid.source_not_kernel",
        f"example : Indexed.check {{ indexed with eventPage := {iw['eventPage']+1} }} = false := by decide",
        "example : Executable.check { finite with rawSource := [] } = false := by decide",
        f"example : Executable.check {{ finite with target := {bits([False] * event['k'])} }} = false := by decide",
        "#print axioms finite_valid", "#print axioms indexed_valid",
        f"end AggregateHighD2Conditional.Pipeline.Executable{rid}",
    ]
    (p / f"Executable{rid}.lean").write_text("\n".join(lines) + "\n")

(p / "trajectory-cycles.json").write_text(json.dumps(trace, indent=2) + "\n")
print("Four event traces: 6 cycle/nonboundary steps, 8 full projections, 8 executable checks")
