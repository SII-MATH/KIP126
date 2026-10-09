import Fact721FirstD6DC2h6.ExtraSource
import Fact721FirstD6DC2h6.PageMap
import Fact713Ctheta4Continuation.Incoming

namespace Fact721FirstD6DC2h6.Incoming4
open LinearCertificates ManualInputObligations ManualInputObligations.Reference
open ActualAdamsHomologyCoordinates ActualAdamsHomologyCoordinates.Meaning
open ExtraSource

variable {S T : AdamsSpectralSequence} {sp : CertifiedAdamsPages S} {tp : CertifiedAdamsPages T}
  {A : ModuleAction.Action S T} {P : CertifiedAdamsProduct S}

/-- The sphere class and the extra product account for the entire kernel.
The only remaining source basis vector has the recorded nonzero d3 row2954. -/
structure Input (I : ExtraSource.Stage2 S T sp tp) (M : ExtraSource.Meaning I A) where
  sphere : Fact713Ctheta4Continuation.Incoming.Input S sp P
  map : PageMap.Map S T sp tp
  sphereBinding : I.source3.coordinates.equivalence (map.map 3 sourceDegree sphere.source) =
    (fun i => i.val == 2)
  known : T.differential 3 sourceDegree
    (I.source3.coordinates.equivalence.symm (fun i => i.val == 1)) ≠ 0
  sourceTransition : ModuleAction.Transition S T sp tp A 3 d0Degree yDegree
  targetTransition : ModuleAction.Transition S T sp tp A 3 d0Degree zDegree
  sphereZeros : ActualAdamsSystemBridge.ZeroMeaning S sp
  targetZero : LocalZeroMeaning tp 3 targetDegree
  sourceZero : LocalZeroMeaning tp 3 sourceDegree
  sourceAdd : LocalAddMeaning tp 3 sourceDegree

namespace Input
variable {I : ExtraSource.Stage2 S T sp tp} {M : ExtraSource.Meaning I A} (D : Input (P := P) I M)
include D

noncomputable def sphereCycle : PageCycle T 3 sourceDegree :=
  D.map.cycle 3 sourceDegree D.sphere.cycle3

theorem sphereCycle_binding : I.source3.coordinates.equivalence D.sphereCycle.val =
    (fun i => i.val == 2) := D.sphereBinding

theorem sphere_d4_zero : T.differential 4 sourceDegree
    ((tp.nextPage 3 sourceDegree).toNext (Quotient.mk _ D.sphereCycle)) = 0 := by
  unfold sphereCycle
  rw [← D.map.quotient_cycle]
  rw [D.map.naturality]
  have hz : S.differential 4 sourceDegree
      ((sp.nextPage 3 sourceDegree).toNext (Quotient.mk _ D.sphere.cycle3)) = 0 :=
    Fact713Ctheta4Continuation.Incoming.named_d4_zero D.sphere
  rw [hz,D.map.map_zero]

theorem source_decomposition (x : (T.element 3 sourceDegree).carrier) :
    x = (if I.source3.coordinates.equivalence x ⟨0,by decide⟩ then M.sourceCycle.val else 0) +
      (if I.source3.coordinates.equivalence x ⟨1,by decide⟩ then
        I.source3.coordinates.equivalence.symm (fun i => i.val == 1) else 0) +
      (if I.source3.coordinates.equivalence x ⟨2,by decide⟩ then D.sphereCycle.val else 0) := by
  apply I.source3.coordinates.equivalence.injective
  rw [I.source3.map_add,I.source3.map_add]
  have coord_ite (b : Bool) (y : (T.element 3 sourceDegree).carrier) :
      I.source3.coordinates.equivalence (if b then y else 0) =
        if b then I.source3.coordinates.equivalence y else zero := by
    cases b <;> simp only [Bool.false_eq_true,if_false,if_true,I.source3.coordinates.zero_value]
  simp only [coord_ite,
    show I.source3.coordinates.equivalence M.sourceCycle.val = (fun i => i.val == 0) from
      I.source3.coordinates.equivalence.apply_symm_apply _,
    I.source3.coordinates.equivalence.apply_symm_apply,D.sphereCycle_binding]
  exact (show ∀ v : Vec 3,
    v = add (add (if v ⟨0,by decide⟩ then (fun i => i.val == 0) else zero)
      (if v ⟨1,by decide⟩ then (fun i => i.val == 1) else zero))
      (if v ⟨2,by decide⟩ then (fun i => i.val == 2) else zero) from by decide) _

theorem middle_false (x : PageCycle T 3 sourceDegree) :
    I.source3.coordinates.equivalence x.val ⟨1,by decide⟩ = false := by
  cases h : I.source3.coordinates.equivalence x.val ⟨1,by decide⟩ with
  | false => rfl
  | true =>
    have eq := congrArg (T.differential 3 sourceDegree) (D.source_decomposition x.val)
    rw [(T.differential 3 sourceDegree).map_add',(T.differential 3 sourceDegree).map_add',h] at eq
    simp only [ite_true,apply_ite,(T.differential 3 sourceDegree).map_zero',
      M.sourceCycle.property,D.sphereCycle.property,T.zero_is_zero,ite_self,zero_add,add_zero] at eq
    exact False.elim (D.known (eq.symm.trans (x.property.trans (T.zero_is_zero _ _))))

theorem kernel_decomposition (x : PageCycle T 3 sourceDegree) :
    x.val = (if I.source3.coordinates.equivalence x.val ⟨0,by decide⟩ then M.sourceCycle.val else 0) +
      (if I.source3.coordinates.equivalence x.val ⟨2,by decide⟩ then D.sphereCycle.val else 0) := by
  have h := D.source_decomposition x.val
  rw [D.middle_false x] at h
  simpa only [Bool.false_eq_true,if_false,add_zero] using h

/-- Every actual E4 source is the quotient of a cycle in the two proven
summands. No separate E4 dimension or unknown differential is assumed. -/
theorem whole_d4_zero (x : (T.element 4 sourceDegree).carrier) :
    T.differential 4 sourceDegree x = 0 := by
  obtain ⟨q,rfl⟩ := Row2773D4Leibniz.Descent.next_surjective T tp 3 sourceDegree x
  let a : PageCycle T 3 sourceDegree :=
    if I.source3.coordinates.equivalence q.val ⟨0,by decide⟩ then M.sourceCycle
    else ActualAdamsSystemBridge.zeroCycle T 3 sourceDegree
  let b : PageCycle T 3 sourceDegree :=
    if I.source3.coordinates.equivalence q.val ⟨2,by decide⟩ then D.sphereCycle
    else ActualAdamsSystemBridge.zeroCycle T 3 sourceDegree
  have same : q = cycleAdd a b := by
    apply Subtype.ext
    simpa only [a,b,cycleAdd,apply_ite,ActualAdamsSystemBridge.zeroCycle] using D.kernel_decomposition q
  rw [same,D.sourceAdd,(T.differential 4 sourceDegree).map_add']
  have za : T.differential 4 sourceDegree ((tp.nextPage 3 sourceDegree).toNext (Quotient.mk _ a)) = 0 := by
    dsimp only [a]
    split
    · exact M.source_d4_zero D.sourceTransition D.targetTransition D.sphereZeros D.targetZero
    · rw [D.sourceZero,T.zero_is_zero,(T.differential 4 sourceDegree).map_zero']
  have zb : T.differential 4 sourceDegree ((tp.nextPage 3 sourceDegree).toNext (Quotient.mk _ b)) = 0 := by
    dsimp only [b]
    split
    · exact D.sphere_d4_zero
    · rw [D.sourceZero,T.zero_is_zero,(T.differential 4 sourceDegree).map_zero']
  rw [za,zb,add_zero]

end Input
#print axioms Input.sphere_d4_zero
#print axioms Input.source_decomposition
#print axioms Input.middle_false
#print axioms Input.kernel_decomposition
#print axioms Input.whole_d4_zero
end Fact721FirstD6DC2h6.Incoming4
