"""Independent complete-coset oracle, stream failures, and import evidence."""
import copy
import hashlib
import importlib.util
import itertools
import json
from pathlib import Path
import random
import re
import subprocess

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
spec = importlib.util.spec_from_file_location('independent_square_semantics',
    ROOT/'RepresentativeSquareCertificates/independent-review.py')
sem = importlib.util.module_from_spec(spec)
spec.loader.exec_module(sem)
EXE = HERE/'representative-square-export'
encode = lambda x: json.dumps(x, sort_keys=True, separators=(',', ':')).encode()
def run(payload):
    return subprocess.run([str(EXE), '-'], input=payload, capture_output=True)
dimensions = ['a','b','c','d','ha','hb','hc','hd']
map_names = ['f','p','q','g','higherA','higherB','higherC','higherD']
name_fields = ['x','y','z','w']
cases = []
for matrix_bits, values, branch in itertools.product(itertools.product([False,True],repeat=8),
        itertools.product([False,True],repeat=4), ['auto','f','p']):
    data = dict.fromkeys(dimensions, 1)
    data.update({n:[x] for n,x in zip(map_names, matrix_bits)})
    data.update({n:[x] for n,x in zip(name_fields, values)})
    cases.append(dict(version=1, data=data, firstBranch=branch))
rng = random.Random(421764125)
for _ in range(1800):
    ds = [rng.randrange(4) for _ in dimensions]
    a,b,c,d,ha,hb,hc,hd = ds
    data = dict(zip(dimensions,ds))
    shapes = [(b,a),(c,a),(d,b),(d,c),(a,ha),(b,hb),(c,hc),(d,hd),
              (a,1),(b,1),(c,1),(d,1)]
    data.update({n:[bool(rng.randrange(2)) for _ in range(m*k)]
                 for n,(m,k) in zip(map_names+name_fields,shapes)})
    cases.append(dict(version=1,data=data,firstBranch=rng.choice(['auto','f','p'])))
oracles = [sem.semantic(x['data'],x['firstBranch']) for x in cases]
payload = b'\n'.join(encode(x) for x in cases) + b'\n'
result = run(payload)
assert result.returncode == 1
accepted = [(x,o) for x,o in zip(cases,oracles) if o[0]]
rejected_lines = [i for i,o in enumerate(oracles,1) if not o[0]]
outputs = result.stdout.splitlines()
diagnostics = result.stderr.decode().splitlines()
assert len(outputs) == len(accepted) and len(diagnostics) == len(rejected_lines)
for line,(source,oracle) in zip(outputs,accepted):
    wire = json.loads(line)
    assert line == encode(wire) and wire['data'] == source['data']
    assert wire['firstBranch'] == oracle[1] and sem.validate(wire) and oracle[2]
assert all(msg.startswith(f'stdin:{i}: ') for i,msg in zip(rejected_lines,diagnostics))
repeat = run(payload)
assert (repeat.returncode,repeat.stdout,repeat.stderr) == (result.returncode,result.stdout,result.stderr)

# Replay the exact imported fixture, without rewriting it or its producer audit.
fixture = (HERE/'valid.input.jsonl').read_bytes()
fixture_run = run(fixture)
assert fixture_run.returncode == 0 and not fixture_run.stderr
assert fixture_run.stdout == (HERE/'valid.jsonl').read_bytes()
assert len(fixture_run.stdout.splitlines()) == 1480
for line in fixture_run.stdout.splitlines():
    w = json.loads(line)
    assert sem.validate(w) and sem.semantic(w['data'], w['firstBranch'])[2]

base = json.loads(fixture.splitlines()[0])
good = encode(base)
negative = [('trailing NUL',good+b'\x00'),('trailing NUL suffix',good+b'\x00junk'),
    ('whitespace then NUL suffix',good+b' \t\x00junk'),('trailing object',good+b'{}'),
    ('duplicate version',good[:-1]+b',"version":1}'),('blank',b''),
    ('nested depth',b'['*34+b'0'+b']'*34),('record byte limit',b' '*10000001)]
for label,key,value in [('unknown outer','unknown',False),('version','version',2),
    ('unknown branch','firstBranch','unknown'),('external marker','firstBranch','external_input')]:
    x = copy.deepcopy(base)
    x[key] = value
    negative.append((label,encode(x)))
for label,key,value in [('unknown matrix','f','?'),('NULL matrix','f','[NULL]'),
    ('possibly matrix','f','possibly'),('dimension65','a',65),('negative dimension','a',-1),
    ('boolean dimension','a',True),('numeric bit0','x',[0]),('numeric bit1','x',[1]),
    ('null bit','x',[None]),('wrong vector','x',[True]*65)]:
    x = copy.deepcopy(base)
    x['data'][key] = value
    negative.append((label,encode(x)))
negative_results = []
for label,line in negative:
    # Valid lines before and after the bad line check continued progress and physical numbering.
    r = run(good+b'\n'+line+b'\n'+good+b'\n')
    assert r.returncode == 1 and len(r.stdout.splitlines()) == 2, (label,r.returncode)
    assert len(r.stderr.splitlines()) == 1 and r.stderr.startswith(b'stdin:2: '), (label,r.stderr)
    assert r.stdout.splitlines()[0] == r.stdout.splitlines()[1]
    negative_results.append(dict(label=label,diagnostic=r.stderr.decode().strip()))
assert run(b'').returncode == 1
assert run(good).returncode == 0  # Final record need not end with a newline.
assert run(b' \t'+good+b'\r\n').returncode == 0

def large_validate(wire):
    data=wire['data']
    a,b,c,d,ha,hb,hc,hd=[data[n] for n in dimensions]
    shapes=[(b,a),(c,a),(d,b),(d,c),(a,ha),(b,hb),(c,hc),(d,hd)]
    matrices={n:sem.columns(data[n],*shape) for n,shape in zip(map_names,shapes)}
    names={n:sem.vector(data[n],size) for n,size in zip(name_fields,[a,b,c,d])}
    for name,f,h,k,x,y,aa,hh,kk in [('first','f','higherA','higherB','x','y',a,ha,hb),
        ('second','p','higherA','higherC','x','z',a,ha,hc),
        ('third','g','higherC','higherD','z','w',c,hc,hd)]:
        r=sem.vector(wire[name+'Rep'],aa)
        s=sem.vector(wire[name+'Source'],hh)
        t=sem.vector(wire[name+'Target'],kk)
        assert sem.action(matrices[h],s)==r^names[x]
        assert sem.action(matrices[k],t)==sem.action(matrices[f],r)^names[y]
    branch=wire['firstBranch']
    k,size=('higherB',hb) if branch=='f' else ('higherC',hc)
    ff=sem.columns(wire['firstFactor'],size,ha)
    lf=sem.columns(wire['lastFactor'],hd,hc)
    assert all(sem.action(matrices[branch],matrices['higherA'][j]) == sem.action(matrices[k],ff[j]) for j in range(ha))
    assert all(sem.action(matrices['g'],matrices['higherC'][j]) == sem.action(matrices['higherD'],lf[j]) for j in range(hc))

large_validate(json.loads((HERE/'case_dimension64.json').read_text()))
large = dict.fromkeys(dimensions,64)
identity=[i==j for i in range(64) for j in range(64)]
rank32=[i==j and i<32 for i in range(64) for j in range(64)]
for name in ['f','p','q','g']:
    large[name]=identity
for name in ['higherA','higherB','higherC','higherD']:
    large[name]=rank32
v=[bool(rng.randrange(2)) for _ in range(64)]
for name in name_fields:
    large[name]=v
r=run(encode(dict(version=1,data=large,firstBranch='auto')))
assert r.returncode==0 and not r.stderr
large_validate(json.loads(r.stdout))

rec=json.loads((HERE/'Imported-compile.json').read_text())
assert rec['observed_exit_code']==0
assert rec['source_sha256']==sha(HERE/'Imported.lean') and rec['log_sha256']==sha(HERE/'Imported.log')
for path,digest in rec['external_input_sha256'].items():
    assert sha(HERE/path)==digest
assert set(rec['external_input_sha256'])=={'case_f.json','case_p.json','case_zero.json','valid.jsonl'}
imported=(HERE/'Imported.lean').read_text()
assert 'contents.trimAscii' not in imported
assert 'if contents.endsWith "\\n" then lines.dropLast else lines' in imported
assert 'if line.isEmpty then throw s!"line {i+1}: blank JSONL record"' in imported
assert imported.count('#guard ')==17
log=(HERE/'Imported.log').read_text()
deps=re.findall(r'depends on axioms: \[([^]]*)\]',log)
assert all({x.strip() for x in d.split(',')} <= {'propext','Classical.choice','Quot.sound'} for d in deps)
reports=len(deps)+log.count('does not depend on any axioms')
assert reports==6 and 'sorryAx' not in log and 'error:' not in log
obj=ROOT/'.lake/build/lib/lean/RepresentativeSquareProducer/Imported.olean'
audit=json.loads((HERE/'audit.json').read_text())
for path,digest in audit['input_sha256'].items():
    assert sha(ROOT/path)==digest
assert audit['executable_sha256']==sha(EXE)
before=json.loads((HERE/'nul-fix-before.json').read_text())
assert before['valid.jsonl']==sha(HERE/'valid.jsonl')
files=[HERE/'export.cpp',HERE/'Imported.lean',HERE/'README.md',HERE/'valid.input.jsonl',HERE/'valid.jsonl',
    HERE/'case_f.json',HERE/'case_p.json',HERE/'case_zero.json',HERE/'case_dimension64.json',
    HERE/'audit.json',HERE/'nul-fix-before.json',HERE/'nul-fix-audit.json',Path(__file__),
    ROOT/'IndexedFamilyProducer/json.hpp',ROOT/'RepresentativeSquareCertificates/independent-review.py']
report=dict(status='independent_review_passed_after_parser_and_batch_line_fixes',findings=[],reviewer='/root/map_search_next',
    resolved_findings=[dict(issue='Trailing NUL was treated as EOF by Parser.peek, accepting trailing garbage.',
        fix='Current produce skips JSON whitespace then compares parser.p with line.size().',
        independently_retested=['NUL','NUL+junk','whitespace+NUL+junk'],
        mathematical_impact='No Lean soundness impact; invalid JSON transport acceptance fixed.'),
        dict(issue='Batch trimAscii hid leading blank records and shifted physical line diagnostics.',
        fix='physicalLines removes only one terminal LF; parseBatch preserves and rejects blank/CR records.',
        compiled_regression_guards=17,
        mathematical_impact='No Lean soundness impact; strict import and failure location corrected.')],
    independent_replay=dict(all_scalar_all_branch_cases=12288,random_dim0_to3_cases=1800,
        total_cases=len(cases),accepted=len(accepted),rejected=len(rejected_lines),
        mixed_runs_byte_identical=True,physical_rejection_rows_checked=len(rejected_lines),
        exact_imported_fixture_records=1480,fixture_byte_identical=True,
        streaming_negative_cases=negative_results,dimension64_fullrank=True,dimension64_rank32=True),
    semantic_checks=['Independent oracle enumerates entire image subgroups and all representatives, not elimination.',
        'Every emitted witness and full factor equation checked; actual fourth extension checked independently.',
        'Auto selects f first exactly when its full factor exists; explicit branches are respected.',
        'Mixed streams continue after errors and return exit1 with physical line diagnostics.',
        'Imported theorem includes count1480 and kernel reduction plus proved batch soundness.',
        'Elaborators construct literal wire data only, and do not provide semantic proof assumptions.'],
    limitations=['C++ resource cap is64 while Lean finite types are not restricted to64.',
        'Batch certificates contain no input line provenance; stderr and exit status must be retained.',
        'External file inputs must be included in rebuild dependency tracking.',
        'Actual paper filtrations, essential no-crossing, synthetic ESS and Theorem6.1 not instantiated.'],
    build_evidence=dict(module='Imported',exit_code=0,standard_axiom_reports=reports,
        current_olean_exists=obj.exists(),current_olean_matches_direct=sha(obj)==rec['olean_sha256'] if obj.exists() else None),
    input_sha256={str(p.relative_to(ROOT)):sha(p) for p in files})
(HERE/'independent-review.json').write_text(json.dumps(report,indent=2)+'\n')
print(f'Independent producer: {len(cases)} cases/{len(accepted)} accepted/{len(rejected_lines)} rejected; '
      f'1480 exact imports; {len(negative)} stream negatives; NUL fixed; direct0/6reports')
