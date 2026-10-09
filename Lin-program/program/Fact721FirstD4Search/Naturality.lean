import Fact721FirstD4Search.D3

namespace Fact721FirstD4Search.Naturality
open LinearCertificates PageTransitionCertificates ResolutionCertificates D3 Comparison

def out (w : WireComparison) := matrixOf w.k w.m w.outgoing
def inc (w : WireComparison) := matrixOf w.m w.n w.incoming
abbrev Q (w : WireComparison) := Homology (out w) (inc w)
def zeroQ (w : WireComparison) : Q w := Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _)
def f : Q sourceS → Q (sourceD) := inducedMap (source_compatible)
def g : Q targetS → Q (targetD) := inducedMap (target_compatible)
def se := homologyEquivalence _ _ sourceS.comparison sourceS_valid.2
def te := homologyEquivalence _ _ targetS.comparison targetS_valid.2
def de := homologyEquivalence _ _ targetD.comparison targetD_valid.2
def sourceDe := homologyEquivalence _ _ sourceD.comparison sourceD_valid.2

theorem f_all_zero (x : Q sourceS) : f x = zeroQ (sourceD) := by
  have h : sourceDe.toCoordinates (f x) = sourceDe.toCoordinates (zeroQ sourceD) := by
    funext i
    exact Fin.elim0 i
  exact (sourceDe.leftInverse _).symm.trans
    ((congrArg sourceDe.fromCoordinates h).trans (sourceDe.leftInverse _))

theorem g_reflects_zero (x : Q targetS)
    (hx : g x = zeroQ (targetD)) : x = zeroQ targetS := by
  have decoded := congrArg (de).toCoordinates hx
  have coordinate := induced_coordinates_all (target_compatible) targetS.comparison
    targetD.comparison targetS_valid.2 targetD_valid.2 x
  have finite : eval (coordinateMap targetS.comparison (targetD).comparison tE3)
      (te.toCoordinates x) = zero := coordinate.symm.trans (decoded.trans (eval_zero _))
  have injective : ∀ x : Vec 2,
      eval (coordinateMap targetS.comparison (targetD).comparison tE3) x = zero → x = zero := by
    decide
  have hz : te.toCoordinates x = te.toCoordinates (zeroQ targetS) :=
    (injective _ finite).trans (eval_zero _).symm
  exact (te.leftInverse x).symm.trans ((congrArg te.fromCoordinates hz).trans (te.leftInverse _))

theorem named_d4_zero (ds : Q sourceS → Q targetS)
    (dt : Q (sourceD) → Q (targetD))
    (zeroPreserving : dt (zeroQ (sourceD)) = zeroQ (targetD))
    (naturality : ∀ x, dt (f x) = g (ds x)) (x : Q sourceS) :
    ds x = zeroQ targetS := by
  apply g_reflects_zero
  rw [← naturality, f_all_zero, zeroPreserving]

#print axioms f_all_zero
#print axioms g_reflects_zero
#print axioms named_d4_zero
end Fact721FirstD4Search.Naturality
