"""Save ten additional comparisons and the exact named finite E6 prefix."""
import hashlib
import json
from pathlib import Path
HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
report=json.loads((HERE/'refined.json').read_text())
old=json.loads((ROOT/'Fact713RefinedSourceSearch/refined.json').read_text())
assert len(report['new_comparison_keys'])==10
lines=['import Fact713E12Search.Prefix','import Row2773Leibniz.Actual',
       'namespace Fact713Row2773Refinement.Data',
       'open LinearCertificates PageTransitionCertificates',
       'set_option maxRecDepth 100000','set_option maxHeartbeats 8000000']
tag=lambda key:'b_'+key.replace(':','_').replace(',','_')
(HERE/'wires').mkdir(exist_ok=True)
for key in report['new_comparison_keys']:
    name=tag(key);wire=report['comparisons'][key]['wire']
    (HERE/'wires'/(name+'.json')).write_text(json.dumps(wire,sort_keys=True,separators=(',',':'))+'\n')
    lines += [f'def {name} : WireComparison := page_comparison% "Fact713Row2773Refinement/wires/{name}.json"',
              f'theorem {name}_valid : {name}.Valid := by lin_cert using ()']
lines += ['''
def stage4 : Stage := ⟨b_S0_9_132_d4, [true]⟩
def stage5 : Stage := ⟨b_S0_9_132_d5, [true]⟩
def stages : List Stage := [Fact713E12Search.Prefix.stage2,
  Fact713E12Search.Prefix.stage3,stage4,stage5]

/-- This is a finite coordinate trajectory through d5. The inherited raw
prefix meanings and the new Leibniz interpretation remain explicit. -/
theorem finite_E6 : TrajectoryValid stages := by lin_cert using ()

theorem named_E6_coordinate :
    eval b_S0_9_132_d5.comparison.projection stage5.vector =
      (fun _ : Fin 1 => true) := by
  funext i
  exact (show ∀ i, eval b_S0_9_132_d5.comparison.projection stage5.vector i = true from by decide) i

theorem row2773_zero_column :
    (fun i : Fin 2 => matrixOf 2 2 b_S0_13_135_d3.outgoing i 0) = zero := by
  funext i
  exact (show ∀ i, matrixOf 2 2 b_S0_13_135_d3.outgoing i 0 = zero i from by decide) i

theorem same_incoming_d3 : b_S0_13_135_d3.outgoing = b_S0_16_137_d3.incoming := by decide

theorem row2773_actual_column (S : ManualInputObligations.Reference.AdamsSpectralSequence)
    (P : ManualInputObligations.Reference.CertifiedAdamsProduct S)
    (M : Row2773Leibniz.Actual.Meaning S P)
    (a : (S.element 3 Row2773Leibniz.Actual.etaDegree).carrier)
    (b : (S.element 3 Row2773Leibniz.Actual.rightDegree).carrier)
    (x : (S.element 3 Row2773Leibniz.Actual.sourceDegree).carrier)
    (namedA : M.eta a = Row2773Leibniz.namedEta)
    (namedB : M.right b = Row2773Leibniz.namedRight)
    (namedX : M.source x = Row2773Leibniz.namedSource)
    (coordinates : (S.element 3 Row2773Leibniz.Actual.targetDegree).carrier → Vec 2)
    (zeroMeaning : coordinates 0 = zero) :
    coordinates (S.differential 3 Row2773Leibniz.Actual.sourceDegree x) =
      (fun i => matrixOf 2 2 b_S0_13_135_d3.outgoing i 0) := by
  exact (congrArg coordinates (Row2773Leibniz.Actual.actual_row2773_d3_zero
    S P M a b x namedA namedB namedX)).trans (zeroMeaning.trans row2773_zero_column.symm)

#print axioms finite_E6
#print axioms named_E6_coordinate
#print axioms row2773_actual_column
end Fact713Row2773Refinement.Data
''']
(HERE/'Data.lean').write_text('\n'.join(lines))
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
(HERE/'manifest.json').write_text(json.dumps(dict(additional_keys=report['new_comparison_keys'],
    baseline_e12_comparisons=1236,baseline_all_comparisons=1239,e12_comparisons=1246,
    e12_unresolved=174,all_distinct_comparisons=len(report['comparisons']|report['successor_closure']),
    named_finite_last_page=6,actual_last_page_claimed=False,
    input_sha256={str(p.relative_to(ROOT)):sha(p) for p in [HERE/'refined.json',Path(__file__)]}),indent=2)+'\n')
print('10 additional wires; named finite E6 trajectory; explicit actual source-column transport')
