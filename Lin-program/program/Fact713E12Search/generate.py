"""Generate a small checked subset; retain all source/conditional obligations."""
import hashlib
import json
from pathlib import Path

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
report=json.loads((HERE/'search.json').read_text())
roots={x['target_predecessor'] for x in report['unknowns']
       if x['resolution'].startswith('complete_finite_zero_target')}
zero_roots=sorted(roots)
roots.update(['S0:9,132:d2','S0:9,132:d3'])
closure=set();pending=list(roots)
while pending:
    k=pending.pop()
    if k in closure:continue
    closure.add(k);pending.extend(report['graph'][k]['predecessors'])
assert len(closure)==78
keys=sorted(closure,key=lambda k:(report['graph'][k]['page'],k))
tag=lambda k:'b_'+k.replace(':','_').replace(',','_').replace('-','neg')
bits=lambda xs:'['+','.join('true' if x else 'false' for x in xs)+']'
wire_dir=HERE/'wires';wire_dir.mkdir(exist_ok=True)
lines=['import PageTransitionCertificates.Import','namespace Fact713E12Search.Data',
       'open LinearCertificates PageTransitionCertificates']
for k in keys:
    w=report['comparisons'][k]['wire'];name=tag(k)
    (wire_dir/(name+'.json')).write_text(json.dumps(w,separators=(',',':'),sort_keys=True)+'\n')
    lines.extend([f'def {name} : WireComparison := page_comparison% "Fact713E12Search/wires/{name}.json"',
                  f'theorem {name}_valid : {name}.Valid := by lin_cert using ()'])
    if report['graph'][k]['page']>2:
        a,b,c=report['graph'][k]['predecessors']
        lines.append(f'theorem {name}_dimensions : {tag(a)}.h = {name}.n ∧ {tag(b)}.h = {name}.m ∧ {tag(c)}.h = {name}.k := by decide')
lines.append('def all : List WireComparison := ['+','.join(tag(k) for k in keys)+']')
lines.extend(['theorem all_valid : ∀ w ∈ all, w.Valid := by',
              '  have checks : all.all checkWire = true := by decide',
              '  intro w hw',
              '  exact checkWire_sound w ((List.all_eq_true.mp checks) w hw)',
              '#print axioms all_valid','end Fact713E12Search.Data'])
(HERE/'Data.lean').write_text('\n'.join(lines)+'\n')
(HERE/'comparisons.jsonl').write_text(''.join((wire_dir/(tag(k)+'.json')).read_text() for k in keys))
lines=['import Fact713E12Search.Data','import AllClaimZeroTargetCertificates.Basic',
       'namespace Fact713E12Search.ZeroTargets','open LinearCertificates PageTransitionCertificates Data']
for k in zero_roots:
    name=tag(k);w=report['comparisons'][k]['wire'];assert w['h']==0
    lines.extend([f'theorem {name}_zero (x : Homology (matrixOf {w["k"]} {w["m"]} {name}.outgoing)',
        f'    (matrixOf {w["m"]} {w["n"]} {name}.incoming)) :',
        '    x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) :=',
        f'  AllClaimZeroTargetCertificates.zero_quotient {name}.comparison {name}_valid.2 x',
        f'theorem {name}_differential_zero {{X : Type}} (d : X → Homology',
        f'    (matrixOf {w["k"]} {w["m"]} {name}.outgoing) (matrixOf {w["m"]} {w["n"]} {name}.incoming)) (x : X) :',
        '    d x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) :=',
        f'  {name}_zero (d x)',f'#print axioms {name}_differential_zero'])
lines.append('end Fact713E12Search.ZeroTargets')
(HERE/'ZeroTargets.lean').write_text('\n'.join(lines)+'\n')
manifest=dict(keys=keys,zero_target_keys=zero_roots,
    raw_unknowns_with_zero_target=[x['key'] for x in report['unknowns'] if x['target_predecessor'] in zero_roots],
    conditional_uses=[x for x in report['conditional_uses'] if set(x['comparison_uses'])&closure],
    interpretation='Each validity theorem proves a finite matrix comparison only. Raw higher-page prefixes and conditional overrides still require independent actual meanings.',
    source_sha256=hashlib.sha256((HERE/'search.json').read_bytes()).hexdigest())
(HERE/'generated-manifest.json').write_text(json.dumps(manifest,indent=2)+'\n')
print('78 complete finite comparisons;13 zero-target quotient theorems;raw NULL obligations retained')
