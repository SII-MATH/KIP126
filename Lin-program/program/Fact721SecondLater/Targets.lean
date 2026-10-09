import Fact721SecondLater.Basic
namespace Fact721SecondLater.Targets
open LinearCertificates PageTransitionCertificates ManualInputObligations ManualInputObligations.Reference
open Row3151ActualTransport ActualAdamsHomologyCoordinates ActualAdamsHomologyCoordinates.Meaning
open Fact761ConstructedActual.Local
variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}

structure Stage2 (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S) where
  t8 : Chart ⟨20,141⟩ S 2 2
  t8Step : Step ⟨20,141⟩ S pages 2 Data.t8d2 t8
  i8 : Chart ⟨17,139⟩ S 2 2
  i8Step : Step ⟨17,139⟩ S pages 2 Data.i8d2 i8
  ii8 : Chart ⟨14,137⟩ S 2 3
  ii8Step : Step ⟨14,137⟩ S pages 2 Data.ii8d2 ii8
  o8 : Chart ⟨23,143⟩ S 2 1
  o8Step : Step ⟨23,143⟩ S pages 2 Data.o8d2 o8
  t4 : Chart ⟨24,144⟩ S 2 3
  t4Step : Step ⟨24,144⟩ S pages 2 Data.t4d2 t4
  o4 : Chart ⟨27,146⟩ S 2 1
  o4Step : Step ⟨27,146⟩ S pages 2 Data.o4d2 o4
  t9 : Chart ⟨21,142⟩ S 2 2
  t9Step : Step ⟨21,142⟩ S pages 2 Data.t9d2 t9
  i9 : Chart ⟨18,140⟩ S 2 3
  i9Step : Step ⟨18,140⟩ S pages 2 Data.i9d2 i9
  t10 : Chart ⟨22,143⟩ S 2 2
  t10Step : Step ⟨22,143⟩ S pages 2 Data.t10d2 t10
noncomputable def Stage2.t83 (I : Stage2 S pages) : Chart ⟨20,141⟩ S 3 1 :=
  I.t8Step.next (by decide)
noncomputable def Stage2.i83 (I : Stage2 S pages) : Chart ⟨17,139⟩ S 3 2 :=
  I.i8Step.next (by decide)
noncomputable def Stage2.ii83 (I : Stage2 S pages) : Chart ⟨14,137⟩ S 3 2 :=
  I.ii8Step.next (by decide)
noncomputable def Stage2.o83 (I : Stage2 S pages) : Chart ⟨23,143⟩ S 3 0 :=
  I.o8Step.next (by decide)
noncomputable def Stage2.t43 (I : Stage2 S pages) : Chart ⟨24,144⟩ S 3 2 :=
  I.t4Step.next (by decide)
noncomputable def Stage2.o43 (I : Stage2 S pages) : Chart ⟨27,146⟩ S 3 0 :=
  I.o4Step.next (by decide)
noncomputable def Stage2.t93 (I : Stage2 S pages) : Chart ⟨21,142⟩ S 3 1 :=
  I.t9Step.next (by decide)
noncomputable def Stage2.i93 (I : Stage2 S pages) : Chart ⟨18,140⟩ S 3 3 :=
  I.i9Step.next (by decide)
noncomputable def Stage2.t103 (I : Stage2 S pages) : Chart ⟨22,143⟩ S 3 0 :=
  I.t10Step.next (by decide)

/-- Only known d3 events are interpreted. Rows 3139 and 3476 remain unknown. -/
structure Known3 (I : Stage2 S pages) where
  ii8 : ∀ x, I.i83.coordinates.equivalence (S.differential 3 ⟨14,137⟩ x) = I.ii83.coordinates.equivalence x
  i9 : I.t93.coordinates.equivalence (S.differential 3 ⟨18,140⟩
    (I.i93.coordinates.equivalence.symm (fun i => i.val == 0))) = (fun _ => true)

namespace Known3
variable {I : Stage2 S pages} (K : Known3 I)
include K

theorem ii8_surjective : Function.Surjective (S.differential 3 ⟨14,137⟩) := by
  intro x
  refine ⟨I.ii83.coordinates.equivalence.symm (I.i83.coordinates.equivalence x),?_⟩
  apply I.i83.coordinates.equivalence.injective
  rw [K.ii8,I.ii83.coordinates.equivalence.apply_symm_apply]

theorem i9_surjective : Function.Surjective (S.differential 3 ⟨18,140⟩) :=
  one_dim_surjective 3 ⟨18,140⟩ I.t93.coordinates _ K.i9

theorem i8_zero (x : (S.element 3 ⟨17,139⟩).carrier) : S.differential 3 ⟨17,139⟩ x = 0 :=
  whole_image_cycles 3 ⟨14,137⟩ K.ii8_surjective x

theorem t9_zero (x : (S.element 3 ⟨21,142⟩).carrier) : S.differential 3 ⟨21,142⟩ x = 0 :=
  whole_image_cycles 3 ⟨18,140⟩ K.i9_surjective x

noncomputable def t8Step3 (zeros : ActualAdamsSystemBridge.ZeroMeaning S pages)
    (add : LocalAddMeaning pages 3 ⟨20,141⟩) :
    Step ⟨20,141⟩ S pages 3 Data.t8d3 I.t83 where
  outgoingTarget := I.o83.coordinates
  outgoing := by
    intro x; funext i; exact Fin.elim0 i
  incomingSource := (ActualAdamsIncomingBridge.sourceEquiv S 3 ⟨20,141⟩ (by decide)).trans
    I.i83.coordinates.equivalence
  incoming := by
    intro x
    change I.t83.coordinates.equivalence (S.differential 3 ⟨17,139⟩ (x (by decide))) = _
    erw [K.i8_zero,I.t83.coordinates.zero_value]
    exact (show ∀ v : Vec 2, eval (matrixOf 1 2 Data.t8d3.incoming) v = zero from by decide) _ |>.symm
  zeroMeaning := zeros 3 ⟨20,141⟩
  addMeaning := add

noncomputable def t4Step3 (zeros : ActualAdamsSystemBridge.ZeroMeaning S pages)
    (add : LocalAddMeaning pages 3 ⟨24,144⟩) :
    Step ⟨24,144⟩ S pages 3 Data.t4d3 I.t43 where
  outgoingTarget := I.o43.coordinates
  outgoing := by
    intro x; funext i; exact Fin.elim0 i
  incomingSource := (ActualAdamsIncomingBridge.sourceEquiv S 3 ⟨24,144⟩ (by decide)).trans
    I.t93.coordinates.equivalence
  incoming := by
    intro x
    change I.t43.coordinates.equivalence (S.differential 3 ⟨21,142⟩ (x (by decide))) = _
    erw [K.t9_zero,I.t43.coordinates.zero_value]
    exact (show ∀ v : Vec 1, eval (matrixOf 2 1 Data.t4d3.incoming) v = zero from by decide) _ |>.symm
  zeroMeaning := zeros 3 ⟨24,144⟩
  addMeaning := add

end Known3

structure Stage3 (I : Stage2 S pages) where
  known : Known3 I
  zeros : ActualAdamsSystemBridge.ZeroMeaning S pages
  add8 : LocalAddMeaning pages 3 ⟨20,141⟩
  add4 : LocalAddMeaning pages 3 ⟨24,144⟩

noncomputable def Stage3.t84 {I : Stage2 S pages} (T : Stage3 I) : Chart ⟨20,141⟩ S 4 1 :=
  (T.known.t8Step3 T.zeros T.add8).next (by decide)
noncomputable def Stage3.t44 {I : Stage2 S pages} (T : Stage3 I) : Chart ⟨24,144⟩ S 4 2 :=
  (T.known.t4Step3 T.zeros T.add4).next (by decide)

/-- Row3242 d4=[1], interpreted after both complete d3 quotients. -/
structure Known4 {I : Stage2 S pages} (T : Stage3 I) where
  recorded : T.t44.coordinates.equivalence (S.differential 4 ⟨20,141⟩
    (T.t84.coordinates.equivalence.symm (fun _ => true))) = (fun i => i.val == 1)

namespace Known4
variable {I : Stage2 S pages} {T : Stage3 I} (D : Known4 T)
include D

theorem death4 : S.differential 4 ⟨20,141⟩ (T.t84.coordinates.equivalence.symm (fun _ => true)) ≠ 0 := by
  intro hz
  have h := D.recorded
  erw [hz,T.t44.coordinates.zero_value] at h
  exact (show (zero : Vec 2) ≠ (fun i => i.val == 1) from by decide) h

theorem target8_zero (x : (S.element 8 ⟨20,141⟩).carrier) : x = 0 :=
  Fact715IncomingTail.empty_later S pages T.zeros ⟨20,141⟩ 5
    (next_zero_of_one_dim_death T.zeros 4 ⟨20,141⟩ T.t84.coordinates D.death4) 8 (by decide) x
end Known4

theorem Stage3.target9_zero {I : Stage2 S pages} (T : Stage3 I)
    (x : (S.element 9 ⟨21,142⟩).carrier) : x = 0 :=
  Fact715IncomingTail.empty_later S pages T.zeros ⟨21,142⟩ 4
    (next_zero_of_full_image T.zeros 3 ⟨18,140⟩ T.known.i9_surjective) 9 (by decide) x

theorem Stage3.target10_zero {I : Stage2 S pages} (T : Stage3 I)
    (x : (S.element 10 ⟨22,143⟩).carrier) : x = 0 :=
  Fact715IncomingTail.empty_later S pages T.zeros ⟨22,143⟩ 3
    (empty_zero I.t103.coordinates) 10 (by decide) x

#print axioms Known3.ii8_surjective
#print axioms Known3.i9_surjective
#print axioms Known3.i8_zero
#print axioms Known3.t9_zero
#print axioms Known3.t8Step3
#print axioms Known3.t4Step3
#print axioms Stage3.t84
#print axioms Stage3.t44
#print axioms Known4.death4
#print axioms Known4.target8_zero
#print axioms Stage3.target9_zero
#print axioms Stage3.target10_zero
end Fact721SecondLater.Targets
