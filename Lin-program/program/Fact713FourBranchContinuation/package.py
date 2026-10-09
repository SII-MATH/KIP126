"""Reuse both frozen parents and prove only their new cross comparisons."""
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
load = lambda p: json.loads(p.read_text())
encode = lambda x: json.dumps(x, sort_keys=True, separators=(',', ':')) + '\n'
modules = []
for label, scope, branch in [('zero_a0', 'ZeroA0', 'Zero'), ('zero_a1', 'ZeroA1', 'Zero'),
                              ('residual_a0', 'ResidualA0', 'Residual'), ('residual_a1', 'ResidualA1', 'Residual')]:
    short = 'zero' if branch == 'Zero' else 'residual'
    parent1 = load(ROOT / 'Row3136FamilyBranches' / (label + '-family.json'))['entries']
    parent2 = load(ROOT / 'Fact713Row3143Continuation' / (short + '-family.json'))['entries']
    base = load(ROOT / 'Fact713Row2431Continuation' / (short + '-family.json'))['entries']
    extra = parent2[len(base):]
    key = lambda e: tuple(e['key'][k] for k in ['object', 'page', 's', 't'])
    assert not {key(e) for e in parent1} & {key(e) for e in extra}
    snapshot = load(HERE / 'branches' / (label + '.json'))
    assert len(snapshot['added_to_previous']) == len(extra)
    for e in extra:
        _, r, s, t = key(e)
        assert snapshot['added_to_previous'][f'S0:{s},{t}:d{r}']['wire'] == e['wire']
    count = len(parent1) + len(extra)
    (HERE / (label + '-family.json')).write_text(encode(dict(version=1, entries=parent1+extra)))
    parent = 'Row3136FamilyBranches.' + scope
    other = 'Fact713Row3143Continuation.' + branch
    old = 'Fact713Row2431Continuation.' + branch
    text = f'''import Row3136FamilyBranches.{scope}Cross
import Fact713Row3143Continuation.{branch}Coherence
namespace Fact713FourBranchContinuation.{scope}
open IndexedFamilyCertificates
set_option maxRecDepth 100000
set_option maxHeartbeats 16000000

theorem cross_checked : Fact713RefinedComparisonFamily.checkCross
    {parent}.family {other}.extra = true := by decide
def family : Family := {parent}.family ++ {other}.extra
theorem family_count : family.length = {count} := by
  simp only [family,List.length_append,{parent}.family_count,{other}.extra_count]
theorem family_coherent : Coherent family :=
  Fact713RefinedComparisonFamily.coherent_append _ _ {parent}.family_coherent
    {other}.extra_coherent cross_checked
theorem row3136_preserved (entry : Entry) (h : entry ∈ {parent}.family) : entry ∈ family :=
  List.mem_append_left _ h
theorem row3143_preserved (entry : Entry) (h : entry ∈ {other}.family) : entry ∈ family := by
  change entry ∈ {old}.family ++ {other}.extra at h
  rcases List.mem_append.mp h with h | h
  · exact row3136_preserved entry ({parent}.previous_preserved entry h)
  · exact List.mem_append_right _ h

#print axioms cross_checked
#print axioms family_count
#print axioms family_coherent
#print axioms row3136_preserved
#print axioms row3143_preserved
end Fact713FourBranchContinuation.{scope}
'''
    (HERE / (scope + '.lean')).write_text(text)
    modules.append(scope)
(HERE / 'package.json').write_text(json.dumps(dict(modules=modules), indent=2) + '\n')
