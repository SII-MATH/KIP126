"""Package all four separately coherent cases without merging their matrices."""
import json
from pathlib import Path
HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
load=lambda p:json.loads(p.read_text())
encode=lambda x:json.dumps(x,sort_keys=True,separators=(',',':'))+'\n'
cases=[('zero_a0','ZeroA0','Zero','zero'),('zero_a1','ZeroA1','Zero','zero'),
       ('residual_a0','ResidualA0','Residual','residual'),('residual_a1','ResidualA1','Residual','residual')]
data=['import Fact713Row2431Continuation.Branches','import Row3305H0Search.Assembly',
      'import Row3136SquareCandidates.Parameters','namespace Row3136FamilyBranches.Data',
      'open LinearCertificates PageTransitionCertificates',
      'set_option maxRecDepth 100000','set_option maxHeartbeats 8000000']
(HERE/'wire').mkdir(exist_ok=True)
modules=['Data']
counts={}
for label,namespace,oldnamespace,filename in cases:
    snapshot=load(HERE/'branches'/f'{label}.json')
    blocks=snapshot['added_to_previous']
    def name(block):
        s,t=block['center'];return f'{namespace}_S0_{s}_{t}_d{block["page"]}'.replace('-','neg')
    for key,block in sorted(blocks.items()):
        tag=name(block)
        (HERE/'wire'/f'{tag}.json').write_text(encode(block['wire']))
        data += [f'def {tag} : WireComparison := page_comparison% "Row3136FamilyBranches/wire/{tag}.json"',
                 f'theorem {tag}_valid : {tag}.Valid := by lin_cert using ()',f'#print axioms {tag}_valid']
    old=load(ROOT/'Fact713Row2431Continuation'/f'{filename}-family.json')['entries']
    entries=[dict(key=dict(object='S0',page=b['page'],s=b['center'][0],t=b['center'][1]),wire=b['wire']) for _,b in sorted(blocks.items())]
    (HERE/f'{label}-extra.json').write_text(encode(dict(version=1,entries=entries)))
    (HERE/f'{label}-family.json').write_text(encode(dict(version=1,entries=old+entries)))
    count=len(old)+len(entries);counts[label]=count
    base=f'Fact713Row2431Continuation.{oldnamespace}'
    extra=['import Row3136FamilyBranches.Data',f'namespace Row3136FamilyBranches.{namespace}',
           'open IndexedFamilyCertificates Row3136FamilyBranches.Data','def extra : Family := [',
           ',\n'.join(f'  ⟨⟨"S0",{b["page"]},{b["center"][0]},{b["center"][1]}⟩,{name(b)}⟩' for _,b in sorted(blocks.items())),']',
           f'theorem extra_count : extra.length = {len(entries)} := rfl',
           'theorem extra_coherent : Coherent extra := checkFamily_sound extra (by decide)',
           '#print axioms extra_coherent',f'end Row3136FamilyBranches.{namespace}']
    (HERE/f'{namespace}Extra.lean').write_text('\n'.join(extra)+'\n')
    cross=f'''import Row3136FamilyBranches.{namespace}Extra
namespace Row3136FamilyBranches.{namespace}
open IndexedFamilyCertificates
set_option maxRecDepth 100000
set_option maxHeartbeats 16000000
theorem cross_checked : Fact713RefinedComparisonFamily.checkCross {base}.family extra = true := by decide
def family : Family := {base}.family ++ extra
theorem family_count : family.length = {count} := by
  simp only [family,List.length_append,{base}.family_count,extra_count]
theorem family_unique : UniqueKeys family :=
  Fact713RefinedComparisonFamily.unique_append _ _ {base}.family_unique extra_coherent.unique
    (fun a ha b hb => (Fact713RefinedComparisonFamily.checkCross_sound _ _ cross_checked a ha b hb).1)
theorem previous_preserved (entry : Entry) (member : entry ∈ {base}.family) : entry ∈ family :=
  List.mem_append_left extra member
theorem family_coherent : Coherent family :=
  Fact713RefinedComparisonFamily.coherent_append _ _ {base}.family_coherent extra_coherent cross_checked
#print axioms cross_checked
#print axioms family_unique
#print axioms previous_preserved
#print axioms family_coherent
end Row3136FamilyBranches.{namespace}
'''
    (HERE/f'{namespace}Cross.lean').write_text(cross)
    modules += [namespace+'Extra',namespace+'Cross']
data += ['end Row3136FamilyBranches.Data']
(HERE/'Data.lean').write_text('\n'.join(data)+'\n')
(HERE/'package.json').write_text(json.dumps(dict(modules=modules,counts=counts),indent=2)+'\n')
print(counts)
