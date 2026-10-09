"""Append the same checked row2916 continuation to four frozen families."""
import json
from pathlib import Path
HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
load=lambda p:json.loads(p.read_text())
encode=lambda x:json.dumps(x,sort_keys=True,separators=(',',':'))+'\n'
names=[('zero_b0','ZeroB0'),('zero_b1','ZeroB1')]
blocks=load(HERE/'branches/zero_b0.json')['added_to_previous']
for label,_ in names:
    assert load(HERE/'branches'/f'{label}.json')['added_to_previous']==blocks
(HERE/'wire').mkdir(exist_ok=True)
def name(b):
    return f'b_S0_{b["center"][0]}_{b["center"][1]}_d{b["page"]}'.replace('-', 'neg')
data=['import Fact713Ctheta4Continuation.Branches',
      'namespace Fact713SquareContinuation.Data',
      'open LinearCertificates PageTransitionCertificates',
      'set_option maxRecDepth 100000','set_option maxHeartbeats 8000000']
entries=[]
for key,b in sorted(blocks.items()):
    n=name(b)
    (HERE/'wire'/f'{n}.json').write_text(encode(b['wire']))
    data += [f'def {n} : WireComparison := page_comparison% "Fact713SquareContinuation/wire/{n}.json"',
             f'theorem {n}_valid : {n}.Valid := by lin_cert using ()',f'#print axioms {n}_valid']
    entries.append(dict(key=dict(object='S0',page=b['page'],s=b['center'][0],t=b['center'][1]),wire=b['wire']))
data.append('end Fact713SquareContinuation.Data')
(HERE/'Data.lean').write_text('\n'.join(data)+'\n')
(HERE/'extra.json').write_text(encode(dict(version=1,entries=entries)))
extra=['import Fact713SquareContinuation.Data','namespace Fact713SquareContinuation',
       'open IndexedFamilyCertificates Data','def extra : Family := [',
       ',\n'.join(f'  ⟨⟨"S0",{b["page"]},{b["center"][0]},{b["center"][1]}⟩,{name(b)}⟩' for _,b in sorted(blocks.items())),']',
       'theorem extra_count : extra.length = 16 := rfl',
       'theorem extra_coherent : Coherent extra := checkFamily_sound extra (by decide)',
       '#print axioms extra_coherent','end Fact713SquareContinuation']
(HERE/'Extra.lean').write_text('\n'.join(extra)+'\n')
for label,scope in names:
    old=load(ROOT/'Fact713Ctheta4Continuation'/f'{label}-family.json')['entries']
    key=lambda e:tuple(e['key'][k] for k in ['object','page','s','t'])
    assert not {key(e) for e in old}&{key(e) for e in entries}
    (HERE/f'{label}-family.json').write_text(encode(dict(version=1,entries=old+entries)))
    parent='Fact713Ctheta4Continuation.'+scope
    text=f'''import Fact713SquareContinuation.Extra
namespace Fact713SquareContinuation.{scope}
open IndexedFamilyCertificates
set_option maxRecDepth 100000
set_option maxHeartbeats 16000000

theorem cross_checked : Fact713RefinedComparisonFamily.checkCross
    {parent}.family extra = true := by decide
def family : Family := {parent}.family ++ extra
theorem family_count : family.length = {len(old)+16} := by
  simp only [family,List.length_append,{parent}.family_count,extra_count]
theorem family_coherent : Coherent family :=
  Fact713RefinedComparisonFamily.coherent_append _ _ {parent}.family_coherent
    extra_coherent cross_checked
theorem previous_preserved (entry : Entry) (h : entry ∈ {parent}.family) : entry ∈ family :=
  List.mem_append_left _ h
#print axioms cross_checked
#print axioms family_count
#print axioms family_coherent
#print axioms previous_preserved
end Fact713SquareContinuation.{scope}
'''
    (HERE/f'{scope}.lean').write_text(text)
print('16 distinct comparisons; both previous families preserved exactly')
