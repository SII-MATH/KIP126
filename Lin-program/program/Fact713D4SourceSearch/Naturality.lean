import Fact713D4SourceSearch.Parameters

namespace Fact713D4SourceSearch.Naturality
open LinearCertificates PageTransitionCertificates ResolutionCertificates Parameters Comparison

def out (w : WireComparison) := matrixOf w.k w.m w.outgoing
def inc (w : WireComparison) := matrixOf w.m w.n w.incoming
abbrev Q (w : WireComparison) := Homology (out w) (inc w)
def zeroQ (w : WireComparison) : Q w := Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _)
def f (a b c : Bool) : Q sourceS → Q (sourceD a b c) := inducedMap (source_compatible a b c)
def g (u v : Bool) : Q targetS → Q (targetD u v) := inducedMap (target_compatible u v)
def se := homologyEquivalence _ _ sourceS.comparison sourceS_valid.2
def te := homologyEquivalence _ _ targetS.comparison targetS_valid.2
def de (u v : Bool) := homologyEquivalence _ _ (targetD u v).comparison (targetD_valid u v).2

theorem f_all_zero (a b c : Bool) (x : Q sourceS) : f a b c x = zeroQ (sourceD a b c) := by
  induction x using Quot.inductionOn with
  | h x =>
    apply Quot.sound
    refine ⟨zero, ?_⟩
    change eval (inc (sourceD a b c)) zero = add (eval sE3 x.val) zero
    rw [eval_zero]
    exact (show ∀ x : Vec 2, zero = add (eval sE3 x) zero from by decide) x.val

theorem g_reflects_zero (u v : Bool) (x : Q targetS)
    (hx : g u v x = zeroQ (targetD u v)) : x = zeroQ targetS := by
  have decoded := congrArg (de u v).toCoordinates hx
  have coordinate := induced_coordinates_all (target_compatible u v) targetS.comparison
    (targetD u v).comparison targetS_valid.2 (targetD_valid u v).2 x
  have finite : eval (coordinateMap targetS.comparison (targetD u v).comparison tE3)
      (te.toCoordinates x) = zero := coordinate.symm.trans (decoded.trans (eval_zero _))
  have injective : ∀ u v : Bool, ∀ x : Vec 1,
      eval (coordinateMap targetS.comparison (targetD u v).comparison tE3) x = zero → x = zero := by
    decide
  have hz : te.toCoordinates x = te.toCoordinates (zeroQ targetS) :=
    (injective u v _ finite).trans (eval_zero _).symm
  exact (te.leftInverse x).symm.trans ((congrArg te.fromCoordinates hz).trans (te.leftInverse _))

theorem named_d4_zero (a b c u v : Bool) (ds : Q sourceS → Q targetS)
    (dt : Q (sourceD a b c) → Q (targetD u v))
    (zeroPreserving : dt (zeroQ (sourceD a b c)) = zeroQ (targetD u v))
    (naturality : ∀ x, dt (f a b c x) = g u v (ds x)) (x : Q sourceS) :
    ds x = zeroQ targetS := by
  apply g_reflects_zero u v
  rw [← naturality, f_all_zero, zeroPreserving]

def sphereIncoming : Matrix 2 2 := matrixOf 2 2 targetS.incoming
def incomingUnknown (w : Vec 4) : Matrix 4 4 := fun i j => if j.val == 3 then w i else false
theorem incoming_naturality_forces_zero (w : Vec 4)
    (naturality : IsChainMap sphereIncoming (incomingUnknown w) tiE3 tE3) : w = zero := by
  have atNamed := naturality (fun i => i.val == 1)
  have finite : ∀ w : Vec 4,
      eval (incomingUnknown w) (eval tiE3 (fun i => i.val == 1)) =
        eval tE3 (eval sphereIncoming (fun i => i.val == 1)) → w = zero := by decide
  exact finite w atNamed

def raw3868 : Nat × String × Option String × Nat := ⟨3868,"0,1",none,9997⟩
def raw4188 : Nat × String × Option String × Nat := ⟨4188,"0",none,9997⟩
def raw3988 : Nat × String × Option String × Nat := ⟨3988,"3",none,9000⟩
theorem unknowns_preserved : raw3868.2.2.1 = none ∧ raw4188.2.2.1 = none ∧ raw3988.2.2.1 = none := by decide

#print axioms f_all_zero
#print axioms g_reflects_zero
#print axioms named_d4_zero
#print axioms incoming_naturality_forces_zero
end Fact713D4SourceSearch.Naturality
