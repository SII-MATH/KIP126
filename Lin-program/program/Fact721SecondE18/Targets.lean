import Fact721SecondE18.Data
import Fact721SecondLater.Tactic
namespace Fact721SecondE18.Targets
open LinearCertificates PageTransitionCertificates ManualInputObligations ManualInputObligations.Reference
open Row3151ActualTransport ActualAdamsHomologyCoordinates ActualAdamsHomologyCoordinates.Meaning
open Fact761ConstructedActual.Local Fact721SecondLater
variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}

structure Stage2 (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S) where
  t11 : Chart ⟨23,144⟩ S 2 4
  t11Step : Step ⟨23,144⟩ S pages 2 Data.t11d2 t11
  i11 : Chart ⟨20,142⟩ S 2 3
  i11Step : Step ⟨20,142⟩ S pages 2 Data.i11d2 i11
  o11 : Chart ⟨26,146⟩ S 2 2
  o11Step : Step ⟨26,146⟩ S pages 2 Data.o11d2 o11
  t4 : Chart ⟨27,147⟩ S 2 3
  t4Step : Step ⟨27,147⟩ S pages 2 Data.t4d2 t4
  t12 : Chart ⟨24,145⟩ S 2 2
  t12Step : Step ⟨24,145⟩ S pages 2 Data.t12d2 t12
  o4 : Chart ⟨30,149⟩ S 2 1
  o4Step : Step ⟨30,149⟩ S pages 2 Data.o4d2 o4
  t13 : Chart ⟨25,146⟩ S 2 2
  t13Step : Step ⟨25,146⟩ S pages 2 Data.t13d2 t13
  i13 : Chart ⟨22,144⟩ S 2 3
  i13Step : Step ⟨22,144⟩ S pages 2 Data.i13d2 i13
  t14 : Chart ⟨26,147⟩ S 2 3
  t14Step : Step ⟨26,147⟩ S pages 2 Data.t14d2 t14
  i14 : Chart ⟨23,145⟩ S 2 2
  i14Step : Step ⟨23,145⟩ S pages 2 Data.i14d2 i14
  t15 : Chart ⟨27,148⟩ S 2 1
  t15Step : Step ⟨27,148⟩ S pages 2 Data.t15d2 t15
  t16 : Chart ⟨28,149⟩ S 2 1
  t16Step : Step ⟨28,149⟩ S pages 2 Data.t16d2 t16
  i17 : Chart ⟨25,147⟩ S 2 2
  i17Step : Step ⟨25,147⟩ S pages 2 Data.i17d2 i17
  ii17 : Chart ⟨22,145⟩ S 2 0
  ii17Step : Step ⟨22,145⟩ S pages 2 Data.ii17d2 ii17
  t17 : Chart ⟨29,150⟩ S 2 2
  t17Step : Step ⟨29,150⟩ S pages 2 Data.t17d2 t17
  it17 : Chart ⟨26,148⟩ S 2 0
  it17Step : Step ⟨26,148⟩ S pages 2 Data.it17d2 it17
  o17 : Chart ⟨32,152⟩ S 2 1
  o17Step : Step ⟨32,152⟩ S pages 2 Data.o17d2 o17
noncomputable def Stage2.t113 (I : Stage2 S pages) : Chart ⟨23,144⟩ S 3 2 :=
  I.t11Step.next (by decide)
noncomputable def Stage2.i113 (I : Stage2 S pages) : Chart ⟨20,142⟩ S 3 1 :=
  I.i11Step.next (by decide)
noncomputable def Stage2.o113 (I : Stage2 S pages) : Chart ⟨26,146⟩ S 3 0 :=
  I.o11Step.next (by decide)
noncomputable def Stage2.t43 (I : Stage2 S pages) : Chart ⟨27,147⟩ S 3 2 :=
  I.t4Step.next (by decide)
noncomputable def Stage2.t123 (I : Stage2 S pages) : Chart ⟨24,145⟩ S 3 1 :=
  I.t12Step.next (by decide)
noncomputable def Stage2.o43 (I : Stage2 S pages) : Chart ⟨30,149⟩ S 3 0 :=
  I.o4Step.next (by decide)
noncomputable def Stage2.t133 (I : Stage2 S pages) : Chart ⟨25,146⟩ S 3 1 :=
  I.t13Step.next (by decide)
noncomputable def Stage2.i133 (I : Stage2 S pages) : Chart ⟨22,144⟩ S 3 2 :=
  I.i13Step.next (by decide)
noncomputable def Stage2.t143 (I : Stage2 S pages) : Chart ⟨26,147⟩ S 3 1 :=
  I.t14Step.next (by decide)
noncomputable def Stage2.i143 (I : Stage2 S pages) : Chart ⟨23,145⟩ S 3 2 :=
  I.i14Step.next (by decide)
noncomputable def Stage2.t153 (I : Stage2 S pages) : Chart ⟨27,148⟩ S 3 0 :=
  I.t15Step.next (by decide)
noncomputable def Stage2.t163 (I : Stage2 S pages) : Chart ⟨28,149⟩ S 3 0 :=
  I.t16Step.next (by decide)
noncomputable def Stage2.i173 (I : Stage2 S pages) : Chart ⟨25,147⟩ S 3 1 :=
  I.i17Step.next (by decide)
noncomputable def Stage2.ii173 (I : Stage2 S pages) : Chart ⟨22,145⟩ S 3 0 :=
  I.ii17Step.next (by decide)
noncomputable def Stage2.t173 (I : Stage2 S pages) : Chart ⟨29,150⟩ S 3 1 :=
  I.t17Step.next (by decide)
noncomputable def Stage2.it173 (I : Stage2 S pages) : Chart ⟨26,148⟩ S 3 0 :=
  I.it17Step.next (by decide)
noncomputable def Stage2.o173 (I : Stage2 S pages) : Chart ⟨32,152⟩ S 3 0 :=
  I.o17Step.next (by decide)

structure Known3 (I : Stage2 S pages) where
  i11 : ∀ x, I.t113.coordinates.equivalence (S.differential 3 ⟨20,142⟩ x) =
    eval (matrixOf 2 1 Data.t11d3.incoming) (I.i113.coordinates.equivalence x)
  t12 : ∀ x, I.t43.coordinates.equivalence (S.differential 3 ⟨24,145⟩ x) =
    eval (matrixOf 2 1 Data.t4d3.incoming) (I.t123.coordinates.equivalence x)
  i13 : I.t133.coordinates.equivalence (S.differential 3 ⟨22,144⟩
    (I.i133.coordinates.equivalence.symm (fun i => i.val == 0))) = (fun _ => true)
  i14 : I.t143.coordinates.equivalence (S.differential 3 ⟨23,145⟩
    (I.i143.coordinates.equivalence.symm (fun i => i.val == 1))) = (fun _ => true)

namespace Known3
variable {I : Stage2 S pages} (K : Known3 I)
include K

noncomputable def t11Step3 (zeros : ActualAdamsSystemBridge.ZeroMeaning S pages)
    (add : LocalAddMeaning pages 3 ⟨23,144⟩) :
    Step ⟨23,144⟩ S pages 3 Data.t11d3 I.t113 where
  outgoingTarget := I.o113.coordinates
  outgoing := by intro x; funext i; exact Fin.elim0 i
  incomingSource := (ActualAdamsIncomingBridge.sourceEquiv S 3 ⟨23,144⟩ (by decide)).trans
    I.i113.coordinates.equivalence
  incoming := by
    intro x
    change I.t113.coordinates.equivalence (S.differential 3 ⟨20,142⟩ (x (by decide))) = _
    exact K.i11 _
  zeroMeaning := zeros 3 ⟨23,144⟩
  addMeaning := add

noncomputable def t4Step3 (zeros : ActualAdamsSystemBridge.ZeroMeaning S pages)
    (add : LocalAddMeaning pages 3 ⟨27,147⟩) :
    Step ⟨27,147⟩ S pages 3 Data.t4d3 I.t43 where
  outgoingTarget := I.o43.coordinates
  outgoing := by intro x; funext i; exact Fin.elim0 i
  incomingSource := (ActualAdamsIncomingBridge.sourceEquiv S 3 ⟨27,147⟩ (by decide)).trans
    I.t123.coordinates.equivalence
  incoming := by
    intro x
    change I.t43.coordinates.equivalence (S.differential 3 ⟨24,145⟩ (x (by decide))) = _
    exact K.t12 _
  zeroMeaning := zeros 3 ⟨27,147⟩
  addMeaning := add

noncomputable def i17Step3 (zeros : ActualAdamsSystemBridge.ZeroMeaning S pages)
    (add : LocalAddMeaning pages 3 ⟨25,147⟩) :
    Step ⟨25,147⟩ S pages 3 Data.i17d3 I.i173 where
  outgoingTarget := I.t163.coordinates
  outgoing := by intro x; funext i; exact Fin.elim0 i
  incomingSource := (ActualAdamsIncomingBridge.sourceEquiv S 3 ⟨25,147⟩ (by decide)).trans
    I.ii173.coordinates.equivalence
  incoming := by
    intro x
    change I.i173.coordinates.equivalence (S.differential 3 ⟨22,145⟩ (x (by decide))) = _
    have hx := empty_zero I.ii173.coordinates (x (by decide))
    erw [hx,(S.differential 3 ⟨22,145⟩).map_zero',I.i173.coordinates.zero_value]
    exact (show ∀ v : Vec 0, eval (matrixOf 1 0 Data.i17d3.incoming) v = zero from by decide) _ |>.symm
  zeroMeaning := zeros 3 ⟨25,147⟩
  addMeaning := add

noncomputable def t17Step3 (zeros : ActualAdamsSystemBridge.ZeroMeaning S pages)
    (add : LocalAddMeaning pages 3 ⟨29,150⟩) :
    Step ⟨29,150⟩ S pages 3 Data.t17d3 I.t173 where
  outgoingTarget := I.o173.coordinates
  outgoing := by intro x; funext i; exact Fin.elim0 i
  incomingSource := (ActualAdamsIncomingBridge.sourceEquiv S 3 ⟨29,150⟩ (by decide)).trans
    I.it173.coordinates.equivalence
  incoming := by
    intro x
    change I.t173.coordinates.equivalence (S.differential 3 ⟨26,148⟩ (x (by decide))) = _
    have hx := empty_zero I.it173.coordinates (x (by decide))
    erw [hx,(S.differential 3 ⟨26,148⟩).map_zero',I.t173.coordinates.zero_value]
    exact (show ∀ v : Vec 0, eval (matrixOf 1 0 Data.t17d3.incoming) v = zero from by decide) _ |>.symm
  zeroMeaning := zeros 3 ⟨29,150⟩
  addMeaning := add

theorem t12_death : S.differential 3 ⟨24,145⟩ (I.t123.coordinates.equivalence.symm (fun _ => true)) ≠ 0 := by
  intro hz
  have h := K.t12 (I.t123.coordinates.equivalence.symm (fun _ => true))
  erw [hz,I.t43.coordinates.zero_value,I.t123.coordinates.equivalence.apply_symm_apply] at h
  exact (show (zero : Vec 2) ≠ eval (matrixOf 2 1 Data.t4d3.incoming) (fun _ => true) from by decide) h
end Known3

structure Stage3 (I : Stage2 S pages) where
  known : Known3 I
  zeros : ActualAdamsSystemBridge.ZeroMeaning S pages
  addt11 : LocalAddMeaning pages 3 ⟨23,144⟩
  addt4 : LocalAddMeaning pages 3 ⟨27,147⟩
  addi17 : LocalAddMeaning pages 3 ⟨25,147⟩
  addt17 : LocalAddMeaning pages 3 ⟨29,150⟩
noncomputable def Stage3.t114 {I : Stage2 S pages} (T : Stage3 I) : Chart ⟨23,144⟩ S 4 1 :=
  (T.known.t11Step3 T.zeros T.addt11).next (by decide)
noncomputable def Stage3.t44 {I : Stage2 S pages} (T : Stage3 I) : Chart ⟨27,147⟩ S 4 1 :=
  (T.known.t4Step3 T.zeros T.addt4).next (by decide)
noncomputable def Stage3.i174 {I : Stage2 S pages} (T : Stage3 I) : Chart ⟨25,147⟩ S 4 1 :=
  (Known3.i17Step3 (I := I) T.zeros T.addi17).next (by decide)
noncomputable def Stage3.t174 {I : Stage2 S pages} (T : Stage3 I) : Chart ⟨29,150⟩ S 4 1 :=
  (Known3.t17Step3 (I := I) T.zeros T.addt17).next (by decide)

structure Known4 {I : Stage2 S pages} (T : Stage3 I) where
  t11 : T.t44.coordinates.equivalence (S.differential 4 ⟨23,144⟩
    (T.t114.coordinates.equivalence.symm (fun _ => true))) = (fun _ => true)
  i17 : T.t174.coordinates.equivalence (S.differential 4 ⟨25,147⟩
    (T.i174.coordinates.equivalence.symm (fun _ => true))) = (fun _ => true)

namespace Known4
variable {I : Stage2 S pages} {T : Stage3 I} (D : Known4 T)
include D

theorem t11_death : S.differential 4 ⟨23,144⟩ (T.t114.coordinates.equivalence.symm (fun _ => true)) ≠ 0 := by
  intro hz
  have h := D.t11
  erw [hz,T.t44.coordinates.zero_value] at h
  exact (show (zero : Vec 1) ≠ (fun _ => true) from by decide) h

theorem target11_zero (x : (S.element 11 ⟨23,144⟩).carrier) : x = 0 :=
  Fact715IncomingTail.empty_later S pages T.zeros ⟨23,144⟩ 5
    (next_zero_of_one_dim_death T.zeros 4 ⟨23,144⟩ T.t114.coordinates D.t11_death) 11 (by decide) x

theorem target17_zero (x : (S.element 17 ⟨29,150⟩).carrier) : x = 0 :=
  Fact715IncomingTail.empty_later S pages T.zeros ⟨29,150⟩ 5
    (next_zero_of_full_image T.zeros 4 ⟨25,147⟩
      (one_dim_surjective 4 ⟨25,147⟩ T.t174.coordinates _ D.i17)) 17 (by decide) x
end Known4

theorem Stage3.target12_zero {I : Stage2 S pages} (T : Stage3 I)
    (x : (S.element 12 ⟨24,145⟩).carrier) : x = 0 :=
  Fact715IncomingTail.empty_later S pages T.zeros ⟨24,145⟩ 4
    (next_zero_of_one_dim_death T.zeros 3 ⟨24,145⟩ I.t123.coordinates T.known.t12_death) 12 (by decide) x
theorem Stage3.target13_zero {I : Stage2 S pages} (T : Stage3 I)
    (x : (S.element 13 ⟨25,146⟩).carrier) : x = 0 :=
  Fact715IncomingTail.empty_later S pages T.zeros ⟨25,146⟩ 4
    (next_zero_of_full_image T.zeros 3 ⟨22,144⟩
      (one_dim_surjective 3 ⟨22,144⟩ I.t133.coordinates _ T.known.i13)) 13 (by decide) x
theorem Stage3.target14_zero {I : Stage2 S pages} (T : Stage3 I)
    (x : (S.element 14 ⟨26,147⟩).carrier) : x = 0 :=
  Fact715IncomingTail.empty_later S pages T.zeros ⟨26,147⟩ 4
    (next_zero_of_full_image T.zeros 3 ⟨23,145⟩
      (one_dim_surjective 3 ⟨23,145⟩ I.t143.coordinates _ T.known.i14)) 14 (by decide) x
theorem Stage3.target15_zero {I : Stage2 S pages} (T : Stage3 I)
    (x : (S.element 15 ⟨27,148⟩).carrier) : x = 0 :=
  Fact715IncomingTail.empty_later S pages T.zeros ⟨27,148⟩ 3
    (empty_zero I.t153.coordinates) 15 (by decide) x
theorem Stage3.target16_zero {I : Stage2 S pages} (T : Stage3 I)
    (x : (S.element 16 ⟨28,149⟩).carrier) : x = 0 :=
  Fact715IncomingTail.empty_later S pages T.zeros ⟨28,149⟩ 3
    (empty_zero I.t163.coordinates) 16 (by decide) x
#print axioms Known3.t11Step3
#print axioms Known3.t4Step3
#print axioms Known3.i17Step3
#print axioms Known3.t17Step3
#print axioms Known3.t12_death
#print axioms Known4.t11_death
#print axioms Known4.target11_zero
#print axioms Known4.target17_zero
#print axioms Stage3.target12_zero
#print axioms Stage3.target13_zero
#print axioms Stage3.target14_zero
#print axioms Stage3.target15_zero
#print axioms Stage3.target16_zero
end Fact721SecondE18.Targets
