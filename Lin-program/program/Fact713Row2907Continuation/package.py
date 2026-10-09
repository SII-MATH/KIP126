"""Keep every prior full-family entry, then append the three candidate continuations."""
import json
from pathlib import Path
HERE=Path(__file__).resolve().parent; ROOT=HERE.parent
load=lambda p:json.loads(p.read_text())
encode=lambda x:json.dumps(x,sort_keys=True,separators=(',',':'))+'\n'
cases=[('zero_b0','ZeroB0','zero_a0','ZeroA0'),('zero_b1','ZeroB1','zero_a0','ZeroA0'),('residual','Residual','residual_a0','ResidualA0')]
(HERE/'wire').mkdir(exist_ok=True)
merged={}
for label,scope,parentlabel,parentscope in cases:
    blocks=load(HERE/'branches'/f'{label}.json')['added_to_previous']
    for key,b in blocks.items():
        n=f'b_{scope}_S0_{b["center"][0]}_{b["center"][1]}_d{b["page"]}'.replace('-','neg')
        merged[n]=b
        (HERE/'wire'/f'{n}.json').write_text(encode(b['wire']))
    data=['import Fact713Row2916Continuation.Branches',f'namespace Fact713Row2907Continuation.{scope}',
      'open LinearCertificates PageTransitionCertificates IndexedFamilyCertificates',
      'set_option maxRecDepth 100000','set_option maxHeartbeats 16000000']
    entries=[];names=[]
    for key,b in sorted(blocks.items()):
        n=f'b_{scope}_S0_{b["center"][0]}_{b["center"][1]}_d{b["page"]}'.replace('-','neg')
        names.append(n)
        data += [f'def {n} : WireComparison := page_comparison% "Fact713Row2907Continuation/wire/{n}.json"',
                 f'theorem {n}_valid : {n}.Valid := by lin_cert using ()',f'#print axioms {n}_valid']
        entries.append(dict(key=dict(object='S0',page=b['page'],s=b['center'][0],t=b['center'][1]),wire=b['wire']))
    data += ['def extra : Family := [',',\n'.join(f'  ⟨⟨"S0",{e["key"]["page"]},{e["key"]["s"]},{e["key"]["t"]}⟩,{n}⟩' for e,n in zip(entries,names)),']',
        f'theorem extra_count : extra.length = {len(entries)} := rfl',
        'theorem extra_coherent : Coherent extra := checkFamily_sound extra (by decide)',
        '#print axioms extra_coherent',f'end Fact713Row2907Continuation.{scope}']
    (HERE/f'{scope}Data.lean').write_text('\n'.join(data)+'\n')
    old=load(ROOT/'Fact713Row2916Continuation'/f'{parentlabel}-family.json')['entries']
    key=lambda e:tuple(e['key'][k] for k in ['object','page','s','t'])
    assert not {key(e) for e in old}&{key(e) for e in entries}
    (HERE/f'{label}-family.json').write_text(encode(dict(version=1,entries=old+entries)))
    parent='Fact713Row2916Continuation.'+parentscope
    text=f'''import Fact713Row2907Continuation.{scope}Data
namespace Fact713Row2907Continuation.{scope}
open IndexedFamilyCertificates
set_option maxRecDepth 100000
set_option maxHeartbeats 16000000
theorem cross_checked : Fact713RefinedComparisonFamily.checkCross
    {parent}.family extra = true := by decide
def family : Family := {parent}.family ++ extra
theorem family_count : family.length = {len(old)+len(entries)} := by
  simp only [family,List.length_append,{parent}.family_count,extra_count]
theorem family_coherent : Coherent family :=
  Fact713RefinedComparisonFamily.coherent_append _ _ {parent}.family_coherent extra_coherent cross_checked
theorem previous_preserved (entry : Entry) (h : entry ∈ {parent}.family) : entry ∈ family :=
  List.mem_append_left _ h
#print axioms cross_checked
#print axioms family_count
#print axioms family_coherent
#print axioms previous_preserved
end Fact713Row2907Continuation.{scope}
'''
    (HERE/f'{scope}.lean').write_text(text)
print('Packaged',len(merged),'branch-labelled comparisons in three families')
