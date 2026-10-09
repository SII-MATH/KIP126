import Fact715Source2574.Actual

namespace Fact715Source2574.Actual.Stage2
open LinearCertificates PageTransitionCertificates ManualInputObligations ManualInputObligations.Reference
open Row3151ActualTransport ActualAdamsHomologyCoordinates
open ActualAdamsHomologyCoordinates.Meaning Finite

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
  {P : CertifiedAdamsProduct S} (I : Stage2 S pages P)

noncomputable def productRaw : (S.element 2 productDegree).carrier :=
  I.product.equivalence.symm namedProduct
noncomputable def productCycle : PageCycle S 2 productDegree := ⟨I.productRaw, by
  apply (I.productMeaning.cycle_iff _).mpr
  change InKernel _ (I.product.equivalence (I.product.equivalence.symm namedProduct))
  rw [I.product.equivalence.apply_symm_apply]
  exact product_cycle⟩
noncomputable def productValue3 : (S.element 3 productDegree).carrier :=
  (pages.nextPage 2 productDegree).toNext (Quotient.mk _ I.productCycle)

theorem product_name3 : I.product3.equivalence I.productValue3 = (fun _ => true) := by
  unfold productValue3
  change (I.productMeaning.nextCoordinates pages Data.product_valid I.productZero).equivalence _ = _
  erw [I.productMeaning.nextCoordinates_quotient]
  change eval _ (I.product.equivalence (I.product.equivalence.symm namedProduct)) = _
  rw [I.product.equivalence.apply_symm_apply]
  exact product_next

noncomputable def targetRaw : (S.element 2 targetDegree).carrier :=
  I.target.equivalence.symm rawTarget
noncomputable def targetCycle : PageCycle S 2 targetDegree := ⟨I.targetRaw, by
  apply (I.targetMeaning.cycle_iff _).mpr
  change InKernel _ (I.target.equivalence (I.target.equivalence.symm rawTarget))
  rw [I.target.equivalence.apply_symm_apply]
  exact target_cycle⟩
noncomputable def targetValue3 : (S.element 3 targetDegree).carrier :=
  (pages.nextPage 2 targetDegree).toNext (Quotient.mk _ I.targetCycle)

theorem target_name3 : I.target3.equivalence I.targetValue3 = namedTarget := by
  unfold targetValue3 target3
  erw [I.targetMeaning.nextCoordinates_quotient]
  change eval _ (I.target.equivalence (I.target.equivalence.symm rawTarget)) = _
  rw [I.target.equivalence.apply_symm_apply]
  exact target_next

noncomputable def product_trace3 : Trace S pages productDegree 3 I.productRaw I.productValue3 :=
  .step (.start I.productRaw) I.productCycle.property
noncomputable def target_trace3 : Trace S pages targetDegree 3 I.targetRaw I.targetValue3 :=
  .step (.start I.targetRaw) I.targetCycle.property

/-- Raw ss2866 records d3[0]=[3]. Both sides of this remaining mathematical
interpretation are explicitly constructed from those exact E2 inputs. -/
def RecordedMeaning : Prop := S.differential 3 productDegree I.productValue3 = I.targetValue3

def recordedKnown (recorded : RecordedMeaning I) : Known I where
  differential := by
    intro x hx
    have eq : x = I.productValue3 := I.product3.equivalence.injective (hx.trans I.product_name3.symm)
    change I.target3.equivalence (S.differential 3 productDegree x) = namedTarget
    rw [eq,recorded]
    exact I.target_name3

#print axioms product_name3
#print axioms target_name3
#print axioms product_trace3
#print axioms target_trace3
#print axioms recordedKnown
end Fact715Source2574.Actual.Stage2
