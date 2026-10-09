"""Package the separately preserved branches and emit all finite Lean leaves."""
import json
from pathlib import Path

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
load=lambda p:json.loads(p.read_text())
canonical=lambda x:json.dumps(x,sort_keys=True,separators=(',',':'))+'\n'
data=['import Fact713Row3247Boundaries.Actual','import Fact713D4ComparisonBranches.Branches',
      'namespace Fact713Row3247ConditionalBranches.Data',
      'open LinearCertificates PageTransitionCertificates',
      'set_option maxRecDepth 100000','set_option maxHeartbeats 8000000']
merged={}
for label in ['zero','residual_rebased']:
    blocks=load(HERE/'branches'/f'{label}.json')['added_to_previous']
    for key,block in blocks.items():
        assert key not in merged or merged[key]['wire']==block['wire']
        merged[key]=block
(HERE/'wire').mkdir(exist_ok=True)
def name(block):
    s,t=block['center'];return f'b_S0_{s}_{t}_d{block["page"]}'
for key,block in sorted(merged.items()):
    n=name(block)
    (HERE/'wire'/f'{n}.json').write_text(canonical(block['wire']))
    data += [f'def {n} : WireComparison := page_comparison% "Fact713Row3247ConditionalBranches/wire/{n}.json"',
             f'theorem {n}_valid : {n}.Valid := by lin_cert using ()',f'#print axioms {n}_valid']
data += ['def stage8 : Stage := ⟨b_S0_9_132_d8,[true]⟩',
         'def stages : List Stage := Fact713Row2994Branches.Data.residualStages ++ [stage8]',
         'theorem finite_E9 : TrajectoryValid stages := by lin_cert using ()',
         '#print axioms finite_E9', 'end Fact713Row3247ConditionalBranches.Data']
(HERE/'Data.lean').write_text('\n'.join(data)+'\n')
for label,ns,base,count in [('zero','Zero','Fact713D4ComparisonBranches.Zero',1300),
                           ('residual_rebased','Residual','Fact713D4ComparisonBranches.Residual',1302)]:
    filename='zero' if label=='zero' else 'residual'
    old=load(ROOT/'Fact713D4ComparisonBranches'/f'{filename}-family.json')['entries']
    blocks=load(HERE/'branches'/f'{label}.json')['added_to_previous']
    entries=[dict(key=dict(object='S0',page=b['page'],s=b['center'][0],t=b['center'][1]),wire=b['wire']) for _,b in sorted(blocks.items())]
    assert len(old)+len(entries)==count
    (HERE/f'{filename}-extra.json').write_text(canonical(dict(version=1,entries=entries)))
    (HERE/f'{filename}-family.json').write_text(canonical(dict(version=1,entries=old+entries)))
    extra=[ 'import Fact713Row3247ConditionalBranches.Data',f'namespace Fact713Row3247ConditionalBranches.{ns}',
        'open IndexedFamilyCertificates Fact713Row3247ConditionalBranches.Data',
        'def extra : Family := [',
        ',\n'.join(f'  ⟨⟨"S0",{b["page"]},{b["center"][0]},{b["center"][1]}⟩,{name(b)}⟩' for _,b in sorted(blocks.items())),']',
        f'theorem extra_count : extra.length = {len(entries)} := rfl',
        'theorem extra_coherent : Coherent extra := checkFamily_sound extra (by decide)',
        '#print axioms extra_coherent',f'end Fact713Row3247ConditionalBranches.{ns}']
    (HERE/f'{ns}Extra.lean').write_text('\n'.join(extra)+'\n')
    cross=f'''import Fact713Row3247ConditionalBranches.{ns}Extra
namespace Fact713Row3247ConditionalBranches.{ns}
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
#print axioms cross_checked
#print axioms family_unique
#print axioms previous_preserved
end Fact713Row3247ConditionalBranches.{ns}
'''
    (HERE/f'{ns}Cross.lean').write_text(cross)
    coherence=f'''import Fact713Row3247ConditionalBranches.{ns}Cross
namespace Fact713Row3247ConditionalBranches.{ns}
open IndexedFamilyCertificates
theorem family_coherent : Coherent family :=
  Fact713RefinedComparisonFamily.coherent_append _ _ {base}.family_coherent extra_coherent cross_checked
#print axioms family_coherent
end Fact713Row3247ConditionalBranches.{ns}
'''
    (HERE/f'{ns}Coherence.lean').write_text(coherence)
print('10 distinct conditional comparisons; preserved branch families 1300 and 1302')
