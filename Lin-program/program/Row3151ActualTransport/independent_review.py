"""Validate the read-only review snapshot and already observed direct evidence."""
from pathlib import Path
import hashlib
import json
import re

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
records = []
for name, expected in [('Basic', 7), ('Transport', 6)]:
    source, log = HERE / (name + '.lean'), HERE / (name + '.log')
    observed = json.loads((HERE / (name + '-compile.json')).read_text())
    assert observed['observed_exit_code'] == 0
    assert observed['source_sha256'] == sha(source)
    assert observed['log_sha256'] == sha(log)
    code = re.sub(r'/\-.*?\-/', '', source.read_text(), flags=re.S)
    code = re.sub(r'--[^\n]*', '', code)
    assert not re.search(r'\b(sorry|admit|axiom|native_decide)\b', code)
    reports = re.findall(r"'([^']+)' depends on axioms: \[([^\]]*)\]", log.read_text(), re.S)
    assert len(reports) == expected
    for theorem, deps in reports:
        assert {a.strip() for a in deps.split(',') if a.strip()} <= {
            'propext', 'Classical.choice', 'Quot.sound'}, theorem
    obj = ROOT / '.lake/build/lib/lean/Row3151ActualTransport' / (name + '.olean')
    records.append(dict(module=name, source_sha256=sha(source), log_sha256=sha(log),
        upstream_recorded_exit=0, standard_axiom_reports=len(reports),
        historical_direct_object=observed['olean_sha256'], current_object=sha(obj),
        object_still_matches_direct=sha(obj)==observed['olean_sha256']))
oracle = json.loads((HERE / 'independent-oracle.json').read_text())
assert oracle['script_sha256'] == sha(HERE / 'independent_oracle.py')
report = dict(findings=[], modules=records, total_standard_axiom_reports=13,
    reviewed_mathematical_properties=[
        'single S and pages throughout actual coordinates, products, differential and traces',
        'full source carrier equivalence and universally quantified actual incoming values',
        'd3 quotient correspondence to a-dependent d4 carrier, not just selected prefixes',
        'actual d4 complex follows from S.differentialSq',
        'actual boundary iff entire matrix image',
        'zero quotient requires explicit ZeroMeaning',
        'eta restricts unknown coordinate; stored known event remains explicit',
        'actual source/target endpoints bind to supplied raw E2 values by Trace',
        'nonzero incoming kernel class is killed exactly in001/011',
        'final combined theorem includes full actual boundary equivalence'],
    scope_limits=[
        'Coordinates are zero-preserving carrier bijections, not claimed linear equivalences',
        'actual carrier dimensions and quotient matrix identification are supplied meanings',
        'raw E2 endpoints and coordinate identities are premises, not decoded topological names',
        'no realization of all9finite-family keys in actual S is asserted',
        'no C++ or hash supplies a mathematical interpretation hypothesis'],
    oracle_sha256=sha(HERE / 'independent-oracle.json'),
    independent_recompilation=False,
    script_sha256=sha(Path(__file__)))
(HERE / 'independent-review.json').write_text(json.dumps(report, indent=2)+'\n')
print('2 reviewed modules,13 standard-only reports; independent local semantic oracle passed')
