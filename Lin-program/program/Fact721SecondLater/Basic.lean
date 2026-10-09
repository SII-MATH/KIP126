import Fact721SecondLater.Data
import Fact721SecondE6.Tactic

namespace Fact721SecondLater
open LinearCertificates ManualInputObligations ManualInputObligations.Reference
open Row3151ActualTransport ActualAdamsHomologyCoordinates ActualAdamsHomologyCoordinates.Meaning

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}

theorem whole_image_cycles (r : Nat) (d : Bidegree)
    (hit : Function.Surjective (S.differential r d))
    (x : (S.element r (AdamsTarget r d)).carrier) :
    S.differential r (AdamsTarget r d) x = 0 := by
  obtain ⟨y,rfl⟩ := hit x
  exact S.differentialSq r d y

theorem one_dim_surjective (r : Nat) (d : Bidegree)
    (target : Coordinates S r (AdamsTarget r d) 1)
    (witness : (S.element r d).carrier)
    (hit : target.equivalence (S.differential r d witness) = fun _ => true) :
    Function.Surjective (S.differential r d) := by
  intro x
  have cases : ∀ v : Vec 1, v = zero ∨ v = (fun _ => true) := by decide
  rcases cases (target.equivalence x) with hz | hn
  · refine ⟨0,?_⟩
    rw [(S.differential r d).map_zero']
    exact target.equivalence.injective (target.zero_value.trans hz.symm)
  · exact ⟨witness,target.equivalence.injective (hit.trans hn.symm)⟩

theorem next_zero_of_full_image (zeros : ActualAdamsSystemBridge.ZeroMeaning S pages)
    (r : Nat) (d : Bidegree) (hit : Function.Surjective (S.differential r d))
    (x : (S.element (r+1) (AdamsTarget r d)).carrier) : x = 0 := by
  obtain ⟨q,rfl⟩ := Row2773D4Leibniz.Descent.next_surjective S pages r (AdamsTarget r d) x
  apply (Eq.trans · (S.zero_is_zero _ _))
  apply (ActualAdamsSystemBridge.quotient_zero_iff S pages zeros r (AdamsTarget r d) q).mpr
  obtain ⟨y,hy⟩ := hit q.val
  exact Or.inr ⟨d,y,rfl,hy⟩

theorem next_zero_of_one_dim_death (zeros : ActualAdamsSystemBridge.ZeroMeaning S pages)
    (r : Nat) (d : Bidegree) (current : Coordinates S r d 1)
    (death : S.differential r d (current.equivalence.symm (fun _ => true)) ≠ 0)
    (x : (S.element (r+1) d).carrier) : x = 0 := by
  obtain ⟨q,rfl⟩ := Row2773D4Leibniz.Descent.next_surjective S pages r d x
  have cases : ∀ v : Vec 1, v = zero ∨ v = (fun _ => true) := by decide
  have hq : q.val = 0 := by
    rcases cases (current.equivalence q.val) with hz | hn
    · exact current.equivalence.injective (hz.trans current.zero_value.symm)
    · have same : q.val = current.equivalence.symm (fun _ => true) :=
        current.equivalence.injective (hn.trans (current.equivalence.apply_symm_apply _).symm)
      exact False.elim (death (same ▸ (q.property.trans (S.zero_is_zero _ _))))
  have same : q = ActualAdamsSystemBridge.zeroCycle S r d := Subtype.ext hq
  exact (congrArg (fun z : PageCycle S r d =>
    (pages.nextPage r d).toNext (Quotient.mk _ z)) same).trans
      ((zeros r d).trans (S.zero_is_zero _ _))

#print axioms whole_image_cycles
#print axioms one_dim_surjective
#print axioms next_zero_of_full_image
#print axioms next_zero_of_one_dim_death
end Fact721SecondLater
