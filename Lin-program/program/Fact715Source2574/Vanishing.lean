import Fact715Source2574.Actual

namespace Fact715Source2574.Actual.Stage2
open LinearCertificates PageTransitionCertificates ManualInputObligations ManualInputObligations.Reference
open Row3151ActualTransport ActualAdamsHomologyCoordinates
open ActualAdamsHomologyCoordinates.Meaning

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
  {P : CertifiedAdamsProduct S} (I : Stage2 S pages P)

theorem page4_zero (K : Known I) (zeroMeaning : LocalZeroMeaning pages 3 sourceDegree)
    (x : (S.element 4 sourceDegree).carrier) : x = 0 := by
  obtain ⟨q,rfl⟩ := (pageEquiv pages (r := 3) (degree := sourceDegree)).surjective x
  refine Quotient.inductionOn q ?_
  intro q
  have eq : q = ActualAdamsSystemBridge.zeroCycle S 3 sourceDegree :=
    Subtype.ext (I.cycle_is_zero K q)
  subst q
  exact zeroMeaning.trans (S.zero_is_zero _ _)

noncomputable def page4 (K : Known I) (zeroMeaning : LocalZeroMeaning pages 3 sourceDegree) :
    Coordinates S 4 sourceDegree 0 where
  equivalence := {
    toFun := fun _ => zero
    invFun := fun _ => 0
    left_inv := fun x => (I.page4_zero K zeroMeaning x).symm
    right_inv := by intro x; funext i; exact Fin.elim0 i }
  zero_value := rfl

noncomputable def page5 (K : Known I) (zero3 : LocalZeroMeaning pages 3 sourceDegree)
    (zero4 : LocalZeroMeaning pages 4 sourceDegree) : Coordinates S 5 sourceDegree 0 :=
  Fact761ConstructedActual.Local.emptyNext pages (I.page4 K zero3) zero4

theorem page5_zero (K : Known I) (zero3 : LocalZeroMeaning pages 3 sourceDegree)
    (zero4 : LocalZeroMeaning pages 4 sourceDegree)
    (x : (S.element 5 sourceDegree).carrier) : x = 0 :=
  Fact761ConstructedActual.Local.empty_zero (I.page5 K zero3 zero4) x

noncomputable def incoming5 (K : Known I) (zero3 : LocalZeroMeaning pages 3 sourceDegree)
    (zero4 : LocalZeroMeaning pages 4 sourceDegree) :
    ActualAdamsIncomingBridge.Source S 5 ⟨11,136⟩ ≃ Vec 0 :=
  (ActualAdamsIncomingBridge.sourceEquiv S 5 ⟨11,136⟩ (by decide)).trans
    (I.page5 K zero3 zero4).equivalence

theorem incoming5_zero (K : Known I) (zero3 : LocalZeroMeaning pages 3 sourceDegree)
    (zero4 : LocalZeroMeaning pages 4 sourceDegree)
    (x : ActualAdamsIncomingBridge.Source S 5 ⟨11,136⟩) :
    ActualAdamsIncomingBridge.differential S 5 ⟨11,136⟩ x = 0 := by
  have same : x = ActualAdamsIncomingBridge.sourceZero S 5 ⟨11,136⟩ :=
    (I.incoming5 K zero3 zero4).injective (by funext i; exact Fin.elim0 i)
  rw [same,ActualAdamsIncomingBridge.differential_zero,S.zero_is_zero]

theorem no_boundary5 (K : Known I) (zero3 : LocalZeroMeaning pages 3 sourceDegree)
    (zero4 : LocalZeroMeaning pages 4 sourceDegree)
    (x : (S.element 5 ⟨11,136⟩).carrier) (nonzero : x ≠ 0) :
    ¬ PageBoundary S 5 ⟨11,136⟩ x := by
  intro boundary
  obtain ⟨y,hy⟩ := (ActualAdamsIncomingBridge.differential_image S 5 ⟨11,136⟩ x).mpr boundary
  exact nonzero (hy.symm.trans (I.incoming5_zero K zero3 zero4 y))

#print axioms page4_zero
#print axioms page4
#print axioms page5
#print axioms page5_zero
#print axioms incoming5
#print axioms incoming5_zero
#print axioms no_boundary5
end Fact715Source2574.Actual.Stage2
