import Row3136FamilyBranches.Branches
import PageTransitionCertificates.InducedMap

namespace Row3136FamilyBranches.CoordinateBridge
open LinearCertificates PageTransitionCertificates

local instance (p : Vec n → Prop) [DecidablePred p] : Decidable (∀ x, p x) :=
  Fintype.decidableForallFintype
local instance (x y : Vec n) : Decidable (x = y) :=
  inferInstanceAs (Decidable ((fun i => x i) = (fun i => y i)))

abbrev canonicalSource (r a : Bool) := Row3136SquareCandidates.Parameters.sourceSelected false a r
abbrev canonicalTarget (r a : Bool) := Row3136SquareCandidates.Parameters.targetSelected false a r
def out (w : WireComparison) := matrixOf w.k w.m w.outgoing
def inc (w : WireComparison) := matrixOf w.m w.n w.incoming
def swap (m n : Nat) : Matrix m n := fun i j => decide (i.val + j.val = 1)
def identity (m n : Nat) : Matrix m n := fun i j => decide (i.val = j.val)

def sourceChange (r a : Bool) := swap (source r a).m (canonicalSource r a).m
def sourceReverse (r a : Bool) := swap (canonicalSource r a).m (source r a).m
def targetChange (r a : Bool) := identity (target r a).m (canonicalTarget r a).m
def targetReverse (r a : Bool) := identity (canonicalTarget r a).m (target r a).m

theorem source_compatible (r a : Bool) : CompatibleMap
    (out (canonicalSource r a)) (inc (canonicalSource r a))
    (out (source r a)) (inc (source r a)) (sourceChange r a)
    (identity (source r a).k (canonicalSource r a).k)
    (identity (source r a).n (canonicalSource r a).n) := by
  cases r <;> cases a <;> lin_cert using ()
theorem source_reverse_compatible (r a : Bool) : CompatibleMap
    (out (source r a)) (inc (source r a))
    (out (canonicalSource r a)) (inc (canonicalSource r a)) (sourceReverse r a)
    (identity (canonicalSource r a).k (source r a).k)
    (identity (canonicalSource r a).n (source r a).n) := by
  cases r <;> cases a <;> lin_cert using ()
theorem target_compatible (r a : Bool) : CompatibleMap
    (out (canonicalTarget r a)) (inc (canonicalTarget r a))
    (out (target r a)) (inc (target r a)) (targetChange r a)
    (identity (target r a).k (canonicalTarget r a).k)
    (swap (target r a).n (canonicalTarget r a).n) := by
  cases r <;> cases a <;> lin_cert using ()
theorem target_reverse_compatible (r a : Bool) : CompatibleMap
    (out (target r a)) (inc (target r a))
    (out (canonicalTarget r a)) (inc (canonicalTarget r a)) (targetReverse r a)
    (identity (canonicalTarget r a).k (target r a).k)
    (swap (canonicalTarget r a).n (target r a).n) := by
  cases r <;> cases a <;> lin_cert using ()

def sourceForward (r a : Bool) :=
  coordinateMap (canonicalSource r a).comparison (source r a).comparison (sourceChange r a)
def sourceBackward (r a : Bool) :=
  coordinateMap (source r a).comparison (canonicalSource r a).comparison (sourceReverse r a)
def targetForward (r a : Bool) :=
  coordinateMap (canonicalTarget r a).comparison (target r a).comparison (targetChange r a)
def targetBackward (r a : Bool) :=
  coordinateMap (target r a).comparison (canonicalTarget r a).comparison (targetReverse r a)

theorem source_coordinate_inverses (r a : Bool) :
    (∀ x, eval (sourceBackward r a) (eval (sourceForward r a) x) = x) ∧
    (∀ x, eval (sourceForward r a) (eval (sourceBackward r a) x) = x) := by
  cases r <;> cases a <;> decide
theorem target_coordinate_inverses (r a : Bool) :
    (∀ x, eval (targetBackward r a) (eval (targetForward r a) x) = x) ∧
    (∀ x, eval (targetForward r a) (eval (targetBackward r a) x) = x) := by
  cases r <;> cases a <;> decide

def sourceE4 (r a : Bool) : Vec (canonicalSource r a).h ≃ Vec (source r a).h where
  toFun := eval (sourceForward r a)
  invFun := eval (sourceBackward r a)
  left_inv := (source_coordinate_inverses r a).1
  right_inv := (source_coordinate_inverses r a).2
def targetE4 (r a : Bool) : Vec (canonicalTarget r a).h ≃ Vec (target r a).h where
  toFun := eval (targetForward r a)
  invFun := eval (targetBackward r a)
  left_inv := (target_coordinate_inverses r a).1
  right_inv := (target_coordinate_inverses r a).2

theorem source_coordinates_all (r a : Bool)
    (x : Homology (out (canonicalSource r a)) (inc (canonicalSource r a))) :
    (homologyEquivalence _ _ (source r a).comparison (source_valid r a).2).toCoordinates
      (inducedMap (source_compatible r a) x) =
    sourceE4 r a ((homologyEquivalence _ _ (canonicalSource r a).comparison
      (Row3136SquareCandidates.Parameters.source_valid false a r).2).toCoordinates x) :=
  induced_coordinates_all (source_compatible r a) _ _
    (Row3136SquareCandidates.Parameters.source_valid false a r).2 (source_valid r a).2 x
theorem target_coordinates_all (r a : Bool)
    (x : Homology (out (canonicalTarget r a)) (inc (canonicalTarget r a))) :
    (homologyEquivalence _ _ (target r a).comparison (target_valid r a).2).toCoordinates
      (inducedMap (target_compatible r a) x) =
    targetE4 r a ((homologyEquivalence _ _ (canonicalTarget r a).comparison
      (Row3136SquareCandidates.Parameters.target_valid false a r).2).toCoordinates x) :=
  induced_coordinates_all (target_compatible r a) _ _
    (Row3136SquareCandidates.Parameters.target_valid false a r).2 (target_valid r a).2 x

theorem canonical_named_to_staircase :
    eval (swap 2 2) (fun i => i.val == 0) = (fun i => i.val == 1) := by decide
theorem canonical_second_to_staircase :
    eval (swap 2 2) (fun i => i.val == 1) = (fun i => i.val == 0) := by decide

#print axioms source_compatible
#print axioms source_reverse_compatible
#print axioms target_compatible
#print axioms target_reverse_compatible
#print axioms source_coordinate_inverses
#print axioms target_coordinate_inverses
#print axioms source_coordinates_all
#print axioms target_coordinates_all
#print axioms canonical_named_to_staircase
#print axioms canonical_second_to_staircase
end Row3136FamilyBranches.CoordinateBridge
