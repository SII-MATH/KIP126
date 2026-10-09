"""Independent finite replay and read-only review of key-order proof evidence."""
import hashlib
import itertools
import json
from pathlib import Path
import re

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()

def checked(xs):
    return all(a < b for a, b in zip(xs, xs[1:]))

def diagnose(xs, start=0):
    return next((start+i for i, (a,b) in enumerate(zip(xs, xs[1:])) if a >= b), None)

list_cases = accepted_lists = rejected_lists = 0
for length in range(8):
    for xs in itertools.product(range(5), repeat=length):
        accepted = checked(xs)
        pairwise = all(xs[i] < xs[j] for i in range(length) for j in range(i+1,length))
        assert accepted == pairwise
        assert not accepted or len(set(xs)) == length
        failure = diagnose(xs)
        assert (failure is None) == accepted
        if failure is not None:
            assert all(xs[i] < xs[i+1] for i in range(failure))
            assert xs[failure] >= xs[failure+1]
            assert diagnose(xs, 9) == failure+9
        list_cases += 1
        accepted_lists += accepted
        rejected_lists += not accepted

mapped_cases = mapped_accepts = unique_rejected = noninjective_accepts = 0
keys_lists = [xs for length in range(6) for xs in itertools.product(range(4),repeat=length)]
for mapping in itertools.product(range(3), repeat=4):
    for keys in keys_lists:
        codes = tuple(mapping[key] for key in keys)
        accepted = checked(codes)
        unique = len(set(keys)) == len(keys)
        assert not accepted or unique
        mapped_cases += 1
        mapped_accepts += accepted
        unique_rejected += unique and not accepted
        noninjective_accepts += accepted and len(set(mapping)) < len(mapping)
assert unique_rejected > 0 and noninjective_accepts > 0

family_dir = ROOT/'Fact713ComparisonBatches'
entries = []
inputs = []
for i in range(31):
    path = family_dir/f'Batch{i:02}.json'
    wire = json.loads(path.read_text())
    assert set(wire) == {'entries','version'} and wire['version'] == 1
    entries.extend(wire['entries'])
    inputs.append(path)
assert entries == json.loads((family_dir/'family.json').read_text())['entries']
assert len(entries) == 1234
keys = [e['key'] for e in entries]
snapshot = json.loads((ROOT/'Fact713E12Search/successor-search.json').read_text())['comparisons']
for e in entries:
    k=e['key'];lookup=f"{k['object']}:{k['s']},{k['t']}:d{k['page']}"
    assert e['wire'] == snapshot[lookup]['wire']
assert len(snapshot) == len(entries)
code = lambda k: (k['page']*256 + max(k['s']+64,0))*256 + max(k['t'],0)
codes = [code(k) for k in keys]
assert checked(codes) and len(set(codes)) == 1234
assert len({(k['object'],k['page'],k['s'],k['t']) for k in keys}) == 1234
assert all(k['object']=='S0' and 0<=k['s']+64<256 and 0<=k['t']<256 for k in keys)
assert [(k['page'],k['s'],k['t']) for k in keys] == sorted((k['page'],k['s'],k['t']) for k in keys)
source=(family_dir/'Imported.lean').read_text()
assert 'def keyCode (key : Key) : Nat := (key.page*256+(key.s+64).toNat)*256+key.t.toNat' in source
assert 'FamilyKeyOrder.check_key_order_sound keyCode family (by decide)' in source

evidence = []
for directory,name,expected in [(HERE,'Basic',4),(HERE,'Examples',0),(family_dir,'Imported',2)]:
    src=directory/(name+'.lean');log=directory/(name+'.log');record_path=directory/(name+'-compile.json')
    record=json.loads(record_path.read_text())
    assert record['observed_exit_code']==0
    assert record['source_sha256']==sha(src) and record['log_sha256']==sha(log)
    assert not re.search(r'sorryAx|error:|Lean.ofReduceBool',log.read_text())
    assert not re.search(r'\bsorry\b|\baxiom\b|native_decide',src.read_text())
    reports=re.findall(r'depends on axioms: \[([^]]*)\]',log.read_text())
    assert len(reports)==expected
    assert all(set(x.strip() for x in report.split(',')) <= {'propext','Classical.choice','Quot.sound'} for report in reports)
    obj=ROOT/'.lake/build/lib/lean'/directory.name/(name+'.olean')
    evidence.append(dict(module=directory.name+'.'+name,observed_exit_code=0,
        source_sha256=sha(src),log_sha256=sha(log),standard_reports=len(reports),
        current_object_matches_direct=obj.exists() and sha(obj)==record['olean_sha256']))
    inputs.extend([src,log,record_path])

report=dict(status='independent_review_passed_no_findings',
    finite_lists=dict(cases=list_cases,accepted=accepted_lists,rejected=rejected_lists),
    arbitrary_encoding_cases=dict(cases=mapped_cases,accepted=mapped_accepts,
        unique_but_rejected=unique_rejected,noninjective_encoding_accepted=noninjective_accepts),
    fact713=dict(entries=1234,adjacent_checks=1233,strictly_increasing=True,
        first_code=codes[0],last_code=codes[-1],minimum_gap=min(b-a for a,b in zip(codes,codes[1:])),
        page_range=[min(k['page'] for k in keys),max(k['page'] for k in keys)],
        s_range=[min(k['s'] for k in keys),max(k['s'] for k in keys)],
        t_range=[min(k['t'] for k in keys),max(k['t'] for k in keys)]),
    compile_evidence=evidence,
    scope='Sufficient uniqueness check only. No global encoding injectivity, converse uniqueness completeness, matrix validity, coverage or actual Adams realization is claimed.',
    input_sha256={str(p.relative_to(ROOT)):sha(p) for p in inputs+[Path(__file__),family_dir/'family.json',ROOT/'Fact713E12Search/successor-search.json']})
(HERE/'independent-review.json').write_text(json.dumps(report,indent=2)+'\n')
print(json.dumps({k:report[k] for k in ['status','finite_lists','arbitrary_encoding_cases','fact713','compile_evidence']},indent=2))
