import Fact761ConstructedActual.Basic
import Fact721ConstructedActual.Basic

namespace Fact761ConstructedActual.Local
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open Row3151ActualTransport ActualAdamsHomologyCoordinates
open ActualAdamsHomologyCoordinates.Meaning

abbrev Chart := Fact721ConstructedActual.AdditiveCoordinates
abbrev Step := Fact721ConstructedActual.StepInput

def finiteEquiv (w : WireComparison) (valid : w.Valid) :
    Homology (matrixOf w.k w.m w.outgoing) (matrixOf w.m w.n w.incoming) ≃ Vec w.h where
  toFun := (homologyEquivalence _ _ w.comparison valid.2).toCoordinates
  invFun := (homologyEquivalence _ _ w.comparison valid.2).fromCoordinates
  left_inv := (homologyEquivalence _ _ w.comparison valid.2).leftInverse
  right_inv := (homologyEquivalence _ _ w.comparison valid.2).rightInverse

def finiteZero (w : WireComparison) :
    Homology (matrixOf w.k w.m w.outgoing) (matrixOf w.m w.n w.incoming) :=
  Quot.mk _ (⟨zero, eval_zero _⟩ : PageTransitionCertificates.Cycle _)

theorem finiteEquiv_zero (w : WireComparison) (valid : w.Valid) :
    finiteEquiv w valid (finiteZero w) = zero := eval_zero _

noncomputable def toFinite {S : AdamsSpectralSequence} {r : Nat} {d : Bidegree}
    (w : WireComparison) (valid : w.Valid) (C : Coordinates S r d w.h) :
    (S.element r d).carrier ≃ Homology (matrixOf w.k w.m w.outgoing)
      (matrixOf w.m w.n w.incoming) := C.equivalence.trans (finiteEquiv w valid).symm

theorem toFinite_zero {S : AdamsSpectralSequence} {r : Nat} {d : Bidegree}
    (w : WireComparison) (valid : w.Valid) (C : Coordinates S r d w.h) :
    toFinite w valid C 0 = finiteZero w := by
  apply (finiteEquiv w valid).injective
  change finiteEquiv w valid ((finiteEquiv w valid).symm (C.equivalence 0)) = _
  rw [(finiteEquiv w valid).apply_symm_apply, C.zero_value, finiteEquiv_zero]

theorem empty_zero {S : AdamsSpectralSequence} {r : Nat} {d : Bidegree}
    (C : Coordinates S r d 0) (x : (S.element r d).carrier) : x = 0 :=
  C.equivalence.injective (by funext i; exact Fin.elim0 i)

noncomputable def emptyNext {S : AdamsSpectralSequence} (pages : CertifiedAdamsPages S)
    {r : Nat} {d : Bidegree} (C : Coordinates S r d 0)
    (zeroMeaning : LocalZeroMeaning pages r d) : Coordinates S (r+1) d 0 where
  equivalence := {
    toFun := fun _ => zero
    invFun := fun _ => 0
    left_inv := by
      intro x
      obtain ⟨q, rfl⟩ := (pageEquiv pages (r := r) (degree := d)).surjective x
      refine Quotient.inductionOn q ?_
      intro q
      have eq : q = ActualAdamsSystemBridge.zeroCycle S r d :=
        Subtype.ext (empty_zero C q.val)
      subst q
      exact (zeroMeaning.trans (S.zero_is_zero _ _)).symm
    right_inv := by intro x; funext i; exact Fin.elim0 i }
  zero_value := rfl

theorem one_dimensional_zero {S : AdamsSpectralSequence} {r : Nat} {d : Bidegree}
    (C : Coordinates S r d 1)
    (named : S.differential r d (C.equivalence.symm (fun _ => true)) = 0)
    (x : (S.element r d).carrier) : S.differential r d x = 0 := by
  have cases : ∀ v : Vec 1, v = zero ∨ v = (fun _ => true) := by decide
  rcases cases (C.equivalence x) with hz | hn
  · have eq := C.equivalence.injective (hz.trans C.zero_value.symm)
    rw [eq, (S.differential r d).map_zero']
  · have eq := C.equivalence.injective (hn.trans (C.equivalence.apply_symm_apply _).symm)
    exact eq ▸ named

#print axioms finiteEquiv_zero
#print axioms toFinite_zero
#print axioms empty_zero
#print axioms emptyNext
#print axioms one_dimensional_zero
end Fact761ConstructedActual.Local
