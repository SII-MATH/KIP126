import Fact721FirstD6DC2h6.Data
import Fact721FirstD6DC2h6.ModuleAction
import Fact721SecondLater.Basic

namespace Fact721FirstD6DC2h6.ExtraSource
open LinearCertificates ManualInputObligations ManualInputObligations.Reference
open Row3151ActualTransport ActualAdamsHomologyCoordinates ActualAdamsHomologyCoordinates.Meaning
open Fact761ConstructedActual.Local ActualAdamsProductCycleBridge

abbrev d0Degree : Bidegree := ⟨4,18⟩
abbrev yDegree : Bidegree := ⟨9,117⟩
abbrev zDegree : Bidegree := ⟨13,120⟩
abbrev sourceDegree : Bidegree := ⟨13,135⟩
abbrev targetDegree : Bidegree := ⟨17,138⟩

/-- Every E3 coordinate chart is obtained from a complete actual d2 quotient. -/
structure Stage2 (S T : AdamsSpectralSequence) (sp : CertifiedAdamsPages S)
    (tp : CertifiedAdamsPages T) where
  d0 : Chart d0Degree S 2 1
  d0Step : Step d0Degree S sp 2 Data.d0 d0
  d0Out3 : Chart ⟨7,20⟩ S 2 0
  d0Out3Step : Step ⟨7,20⟩ S sp 2 Data.d0Out3 d0Out3
  d0Out4 : Chart ⟨8,21⟩ S 2 0
  d0Out4Step : Step ⟨8,21⟩ S sp 2 Data.d0Out4 d0Out4
  y : Chart yDegree T 2 2
  yStep : Step yDegree T tp 2 Data.y y
  yOut3 : Chart ⟨12,119⟩ T 2 1
  yOut3Step : Step ⟨12,119⟩ T tp 2 Data.yOut3 yOut3
  yOutOut3 : Chart ⟨15,121⟩ T 2 3
  yOutOut3Step : Step ⟨15,121⟩ T tp 2 Data.yOutOut3 yOutOut3
  z : Chart zDegree T 2 1
  zStep : Step zDegree T tp 2 Data.z z
  source : Chart sourceDegree T 2 3
  sourceStep : Step sourceDegree T tp 2 Data.source source
  target : Chart targetDegree T 2 5
  targetStep : Step targetDegree T tp 2 Data.target target

variable {S T : AdamsSpectralSequence} {sp : CertifiedAdamsPages S} {tp : CertifiedAdamsPages T}

noncomputable def Stage2.d03 (I : Stage2 S T sp tp) := I.d0Step.next (by decide)
noncomputable def Stage2.d0Out33 (I : Stage2 S T sp tp) := I.d0Out3Step.next (by decide)
noncomputable def Stage2.d0Out43 (I : Stage2 S T sp tp) := I.d0Out4Step.next (by decide)
noncomputable def Stage2.y3 (I : Stage2 S T sp tp) := I.yStep.next (by decide)
noncomputable def Stage2.yOut33 (I : Stage2 S T sp tp) := I.yOut3Step.next (by decide)
noncomputable def Stage2.yOutOut33 (I : Stage2 S T sp tp) := I.yOutOut3Step.next (by decide)
noncomputable def Stage2.z3 (I : Stage2 S T sp tp) := I.zStep.next (by decide)
noncomputable def Stage2.source3 (I : Stage2 S T sp tp) := I.sourceStep.next (by decide)
noncomputable def Stage2.target3 (I : Stage2 S T sp tp) := I.targetStep.next (by decide)

/-- Row1966 is a recorded nonzero d3. The unknown rows1893 and2953 do not
supply cycle premises: their relevant zero differentials are derived. -/
structure Meaning (I : Stage2 S T sp tp) (A : ModuleAction.Action S T) where
  recorded : I.yOutOut33.coordinates.equivalence
    (T.differential 3 ⟨12,119⟩ (I.yOut33.coordinates.equivalence.symm (fun _ => true))) =
      (fun _ => true)
  sourceAction : ∀ y, I.source3.coordinates.equivalence
    (A.multiply 3 d0Degree yDegree (I.d03.coordinates.equivalence.symm (fun _ => true)) y) =
      eval Data.sourceAction3 (I.y3.coordinates.equivalence y)
  targetAction : ∀ z, I.target3.coordinates.equivalence
    (A.multiply 3 d0Degree zDegree (I.d03.coordinates.equivalence.symm (fun _ => true)) z) =
      eval Data.targetAction3 (I.z3.coordinates.equivalence z)

namespace Meaning
variable {I : Stage2 S T sp tp} {A : ModuleAction.Action S T} (M : Meaning I A)
include M

theorem y_target_death : T.differential 3 ⟨12,119⟩
    (I.yOut33.coordinates.equivalence.symm (fun _ => true)) ≠ 0 := by
  intro hz
  have h := M.recorded
  erw [hz,I.yOutOut33.coordinates.zero_value] at h
  exact (show (zero : Vec 2) ≠ (fun _ => true) from by decide) h

theorem y_d3_zero (y : (T.element 3 yDegree).carrier) : T.differential 3 yDegree y = 0 := by
  have cases : ∀ v : Vec 1, v = zero ∨ v = (fun _ => true) := by decide
  rcases cases (I.yOut33.coordinates.equivalence (T.differential 3 yDegree y)) with hz | hn
  · exact I.yOut33.coordinates.equivalence.injective (hz.trans I.yOut33.coordinates.zero_value.symm)
  · have same : T.differential 3 yDegree y = I.yOut33.coordinates.equivalence.symm (fun _ => true) :=
      I.yOut33.coordinates.equivalence.injective
        (hn.trans (I.yOut33.coordinates.equivalence.apply_symm_apply _).symm)
    exact False.elim (M.y_target_death ((congrArg (T.differential 3 ⟨12,119⟩) same).symm.trans
      (T.differentialSq 3 yDegree y)))

theorem target_action_zero (z : (T.element 3 zDegree).carrier) :
    A.multiply 3 d0Degree zDegree (I.d03.coordinates.equivalence.symm (fun _ => true)) z = 0 :=
  I.target3.coordinates.equivalence.injective
    ((M.targetAction z).trans ((Data.target_action3 _).trans I.target3.coordinates.zero_value.symm))

theorem source_factor : I.source3.coordinates.equivalence.symm (fun i => i.val == 0) =
    A.multiply 3 d0Degree yDegree (I.d03.coordinates.equivalence.symm (fun _ => true))
      (I.y3.coordinates.equivalence.symm (fun _ => true)) := by
  apply I.source3.coordinates.equivalence.injective
  rw [M.sourceAction,I.y3.coordinates.equivalence.apply_symm_apply,
    I.source3.coordinates.equivalence.apply_symm_apply]
  exact (show eval Data.sourceAction3 (fun _ => true) = (fun i => i.val == 0) from by decide).symm

end Meaning

theorem Stage2.d0_d3_zero (I : Stage2 S T sp tp) (a : (S.element 3 d0Degree).carrier) :
    S.differential 3 d0Degree a = 0 := empty_zero I.d0Out33.coordinates _

theorem Stage2.d0_d4_zero (I : Stage2 S T sp tp)
    (zeros : ActualAdamsSystemBridge.ZeroMeaning S sp) (a : (S.element 4 d0Degree).carrier) :
    S.differential 4 d0Degree a = 0 :=
  empty_zero (emptyNext sp I.d0Out43.coordinates (zeros 3 ⟨8,21⟩)) _

namespace Meaning
variable {I : Stage2 S T sp tp} {A : ModuleAction.Action S T} (M : Meaning I A)

noncomputable def d0Cycle : PageCycle S 3 d0Degree :=
  ⟨I.d03.coordinates.equivalence.symm (fun _ => true),
    (I.d0_d3_zero _).trans (S.zero_is_zero _ _).symm⟩
noncomputable def yCycle : PageCycle T 3 yDegree :=
  ⟨I.y3.coordinates.equivalence.symm (fun _ => true),
    (M.y_d3_zero _).trans (T.zero_is_zero _ _).symm⟩
noncomputable def sourceCycle : PageCycle T 3 sourceDegree :=
  ⟨I.source3.coordinates.equivalence.symm (fun i => i.val == 0),by
    rw [M.source_factor]
    exact (ModuleAction.product_cycle S T A 3 d0Degree yDegree _ _
      (I.d0_d3_zero _) (M.y_d3_zero _)).trans (T.zero_is_zero _ _).symm⟩

/-- The extra DC2h6 d4 source dies neither by assumption nor by a NULL row.
Its potential right Leibniz term vanishes by ring relation d0*gen268=0. -/
theorem source_d4_zero
    (sourceTransition : ModuleAction.Transition S T sp tp A 3 d0Degree yDegree)
    (targetTransition : ModuleAction.Transition S T sp tp A 3 d0Degree zDegree)
    (sphereZeros : ActualAdamsSystemBridge.ZeroMeaning S sp)
    (targetZero : LocalZeroMeaning tp 3 targetDegree) :
    T.differential 4 sourceDegree ((tp.nextPage 3 sourceDegree).toNext
      (Quotient.mk _ M.sourceCycle)) = 0 := by
  have factor := ModuleAction.named_next S T sp tp A 3 d0Degree yDegree sourceTransition
    (d0Cycle (I := I)) M.yCycle M.sourceCycle M.source_factor
  change T.differential 4 (Bidegree.add d0Degree yDegree)
    ((tp.nextPage 3 (Bidegree.add d0Degree yDegree)).toNext (Quotient.mk _ M.sourceCycle)) = 0
  rw [factor]
  apply (cast_zero_iff T 4 (adamsTarget_add_left 4 d0Degree yDegree) _).mp
  rw [A.leibniz,I.d0_d4_zero sphereZeros,A.zero_left,zero_add]
  apply (cast_zero_iff T 4 (adamsTarget_product_degree 4 d0Degree yDegree).symm _).mpr
  exact ModuleAction.fixed_zero_next S T sp tp A 3 d0Degree zDegree targetTransition
    targetZero (d0Cycle (I := I)) M.target_action_zero _

end Meaning
#print axioms Meaning.y_target_death
#print axioms Meaning.y_d3_zero
#print axioms Meaning.target_action_zero
#print axioms Meaning.source_factor
#print axioms Stage2.d0_d3_zero
#print axioms Stage2.d0_d4_zero
#print axioms Meaning.source_d4_zero
end Fact721FirstD6DC2h6.ExtraSource
