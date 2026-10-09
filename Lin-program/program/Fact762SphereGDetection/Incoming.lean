import Fact762SphereGDetection.DerivedMeaning

namespace Fact762SphereGDetection.Incoming
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open Row3151ActualTransport ActualAdamsHomologyCoordinates ActualAdamsHomologyCoordinates.Meaning

variable {S : AdamsSpectralSequence}
abbrev degree : Bidegree := ⟨20,165⟩
abbrev targetDegree : Bidegree := AdamsTarget 3 degree

/-- The entire d3 matrix follows from the source zero column derived by
by-sigma and the recorded nonzero second column. All four vectors are covered. -/
theorem all_vectors
    (source : Coordinates S 3 degree 2) (target : Coordinates S 3 targetDegree 3)
    (sourceAdd : ∀ x y, source.equivalence (x+y) = add (source.equivalence x) (source.equivalence y))
    (targetAdd : ∀ x y, target.equivalence (x+y) = add (target.equivalence x) (target.equivalence y))
    (first : S.differential 3 degree (source.equivalence.symm (fun i => i.val == 0)) = 0)
    (second : target.equivalence
      (S.differential 3 degree (source.equivalence.symm (fun i => i.val == 1))) = (fun i => i.val == 0))
    (x : (S.element 3 degree).carrier) :
    target.equivalence (S.differential 3 degree x) =
      eval (matrixOf 3 2 Data.w23_167_3.incoming) (source.equivalence x) := by
  let a := source.equivalence.symm (fun i => i.val == 0)
  let b := source.equivalence.symm (fun i => i.val == 1)
  have ca : source.equivalence a = (fun i => i.val == 0) := source.equivalence.apply_symm_apply _
  have cb : source.equivalence b = (fun i => i.val == 1) := source.equivalence.apply_symm_apply _
  have casesV : ∀ v : Vec 2, v = zero ∨ v = (fun i => i.val == 0) ∨
    v = (fun i => i.val == 1) ∨ v = add (fun i => i.val == 0) (fun i => i.val == 1) := by decide
  rcases casesV (source.equivalence x) with h | h | h | h
  · have hx : x = 0 := source.equivalence.injective (h.trans source.zero_value.symm)
    rw [hx,(S.differential 3 degree).map_zero',target.zero_value,source.zero_value,eval_zero]
  · have hx : x = a := source.equivalence.injective (h.trans ca.symm)
    rw [hx,first,target.zero_value,ca]
    decide
  · have hx : x = b := source.equivalence.injective (h.trans cb.symm)
    rw [hx,second,cb]
    decide
  · have hx : x = a+b := source.equivalence.injective
      (h.trans ((congrArg₂ add ca cb).symm.trans (sourceAdd a b).symm))
    rw [hx,(S.differential 3 degree).map_add',targetAdd,first,target.zero_value,second,sourceAdd,ca,cb]
    decide

def sourceCoordinates (source : Coordinates S 3 degree 2) :
    ActualAdamsIncomingBridge.Source S 3 targetDegree ≃ Vec 2 :=
  (ActualAdamsIncomingBridge.sourceEquiv S 3 targetDegree (by decide)).trans source.equivalence

theorem full_incoming
    (source : Coordinates S 3 degree 2) (target : Coordinates S 3 targetDegree 3)
    (sourceAdd : ∀ x y, source.equivalence (x+y) = add (source.equivalence x) (source.equivalence y))
    (targetAdd : ∀ x y, target.equivalence (x+y) = add (target.equivalence x) (target.equivalence y))
    (first : S.differential 3 degree (source.equivalence.symm (fun i => i.val == 0)) = 0)
    (second : target.equivalence
      (S.differential 3 degree (source.equivalence.symm (fun i => i.val == 1))) = (fun i => i.val == 0))
    (x : ActualAdamsIncomingBridge.Source S 3 targetDegree) :
    target.equivalence (ActualAdamsIncomingBridge.differential S 3 targetDegree x) =
      eval (matrixOf 3 2 Data.w23_167_3.incoming) (sourceCoordinates source x) := by
  change target.equivalence (S.differential 3 degree (x (by decide))) = _
  exact all_vectors source target sourceAdd targetAdd first second _

#print axioms all_vectors
#print axioms full_incoming
end Fact762SphereGDetection.Incoming
