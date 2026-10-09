"""Independent bitset subgroup semantics and exhaustive one-bit tampering audit.

This does not import the producer, its test oracle, or any elimination code.
Lean proof-record checks are kept in a separate, later audit.
"""
import copy
import hashlib
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
PRODUCER = ROOT / "FilteredExtensionProducer"


def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def bits_value(bits):
    return sum(int(bit) << i for i, bit in enumerate(bits))


def columns(matrix, rows, count):
    assert len(matrix) == rows * count
    return [sum(int(matrix[i * count + j]) << i for i in range(rows))
            for j in range(count)]


def image(columns, vector):
    value = 0
    for j, column in enumerate(columns):
        if vector & (1 << j):
            value ^= column
    return value


def subgroup(columns):
    result = {0}
    for column in columns:
        result |= {x ^ column for x in tuple(result)}
    return result


def model(wire):
    d = wire["data"]
    a, b, ha, hb = (d[k] for k in ("a", "b", "ha", "hb"))
    f = columns(d["f"], b, a)
    source = [columns(m, a, ha) for m in d["source"]]
    target = [columns(m, b, hb) for m in d["target"]]
    F = lambda i: source[i] if i < d["depth"] else [0] * ha
    G = lambda i: target[i] if i < d["depth"] else [0] * hb
    return d, f, F, G


def quotient_semantics(wire):
    d, f, F, G = model(wire)
    for i in range(d["depth"]):
        if not subgroup(F(i + 1)) <= subgroup(F(i)):
            return False
        if not subgroup(G(i + 1)) <= subgroup(G(i)):
            return False
        if not {image(f, x) for x in subgroup(F(i))} <= subgroup(G(i)):
            return False
    s, n = d["s"], d["n"]
    x, y = bits_value(d["x"]), bits_value(d["y"])
    target = subgroup(G(s + n))
    if x not in subgroup(F(s)) or image(f, x) not in target or y not in target:
        return False
    H = {h for h in subgroup(F(s + 1)) if image(f, h) in target}
    relation = {z ^ image(f, h) for z in subgroup(G(s + n + 1)) for h in H}
    return image(f, x) ^ y in relation


def witnesses_hold(wire):
    d, f, F, G = model(wire)
    ha, hb = d["ha"], d["hb"]
    for i in range(d["depth"]):
        sf = columns(wire["sourceFactors"][i], ha, ha)
        tf = columns(wire["targetFactors"][i], hb, hb)
        mf = columns(wire["mapFactors"][i], hb, ha)
        if [image(F(i), v) for v in sf] != F(i + 1):
            return False
        if [image(G(i), v) for v in tf] != G(i + 1):
            return False
        if [image(G(i), v) for v in mf] != [image(f, v) for v in F(i)]:
            return False
    s, n = d["s"], d["n"]
    x, y = bits_value(d["x"]), bits_value(d["y"])
    rep = bits_value(wire["representative"])
    return all([
        image(F(s), bits_value(wire["sourceMember"])) == x,
        image(G(s + n), bits_value(wire["imageMember"])) == image(f, x),
        image(G(s + n), bits_value(wire["targetMember"])) == y,
        image(F(s + 1), bits_value(wire["sourceCorrection"])) == rep ^ x,
        image(G(s + n + 1), bits_value(wire["targetCorrection"])) == image(f, rep) ^ y,
    ])


def bit_paths(value, path=()):
    if isinstance(value, bool):
        yield path
    elif isinstance(value, dict):
        for key, child in value.items():
            yield from bit_paths(child, path + (key,))
    elif isinstance(value, list):
        for i, child in enumerate(value):
            yield from bit_paths(child, path + (i,))


def category(path):
    return ".".join(str(x) for x in path[:2 if path[0] == "data" else 1])


def main():
    wires = [json.loads(line) for line in (PRODUCER / "valid.jsonl").read_text().splitlines()]
    assert len(wires) == 604
    assert all(witnesses_hold(w) and quotient_semantics(w) for w in wires)
    counts, selected = {}, {}
    for row, wire in enumerate(wires, 1):
        for path in bit_paths(wire):
            altered = copy.deepcopy(wire)
            current = altered
            for key in path[:-1]:
                current = current[key]
            current[path[-1]] = not current[path[-1]]
            accepted, semantic = witnesses_hold(altered), quotient_semantics(altered)
            assert not accepted or semantic, (row, path)
            kind = category(path)
            counts.setdefault(kind, {"total": 0, "accepted": 0, "rejected": 0,
                                     "semantically_false": 0})
            counts[kind]["total"] += 1
            counts[kind]["accepted" if accepted else "rejected"] += 1
            counts[kind]["semantically_false"] += not semantic
            if not accepted and len(selected.setdefault(kind, [])) < 8:
                selected[kind].append(altered)

    named = {name: json.loads((PRODUCER / f"case_{name}.json").read_text())
             for name in ("correction", "nonzero", "empty")}
    correction = named["correction"]
    d, f, F, G = model(correction)
    s, n = d["s"], d["n"]
    x = bits_value(d["x"])
    rep = bits_value(correction["representative"])
    assert image(f, x) == 1 and image(f, rep) == 0
    assert rep != x and rep ^ x in subgroup(F(s + 1))
    assert x not in subgroup(F(s + 1))
    nonzero = named["nonzero"]
    d, f, F, G = model(nonzero)
    s, n = d["s"], d["n"]
    target = subgroup(G(s + n))
    H = {h for h in subgroup(F(s + 1)) if image(f, h) in target}
    relation = {z ^ image(f, h) for z in subgroup(G(s + n + 1)) for h in H}
    assert target == {0, 1} and relation == {0}
    assert bits_value(d["y"]) == 1 and bits_value(d["y"]) not in relation

    negative = [w for key in sorted(selected) for w in selected[key]]
    canonical = lambda w: json.dumps(w, separators=(",", ":"), sort_keys=True)
    negative_path = HERE / "negative.jsonl"
    negative_path.write_text("".join(canonical(w) + "\n" for w in negative))
    report = {
        "status": "independent_bitset_semantics_and_tampering_passed",
        "valid_records": len(wires),
        "one_bit_mutations": sum(c["total"] for c in counts.values()),
        "accepted_mutations": sum(c["accepted"] for c in counts.values()),
        "rejected_mutations": sum(c["rejected"] for c in counts.values()),
        "semantically_false_mutations": sum(c["semantically_false"] for c in counts.values()),
        "mutation_categories": counts,
        "selected_negative_records": len(negative),
        "correction_has_nonzero_source_class_and_changes_actual_image": True,
        "nonzero_target_class_not_in_relations": True,
        "source_sha256": {str(p.relative_to(ROOT)): digest(p) for p in
            [Path(__file__), PRODUCER / "valid.jsonl", *sorted(PRODUCER.glob("case_*.json"))]},
        "negative_sha256": digest(negative_path),
        "limitations": "Python is a regression oracle, not a Lean proof. Mutations accepted with alternative valid witnesses are permitted.",
    }
    (HERE / "independent-review.json").write_text(json.dumps(report, indent=2, sort_keys=True) + "\n")
    print(json.dumps({k: v for k, v in report.items() if isinstance(v, (int, str, bool))}, sort_keys=True))


if __name__ == "__main__":
    main()
