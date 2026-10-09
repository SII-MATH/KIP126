import Row2796D5Detector.Target
namespace Row2796D5Detector.Source
open LinearCertificates PageTransitionCertificates ResolutionCertificates

def out3 := matrixOf Higher.source3.k Higher.source3.m Higher.source3.outgoing
def in3 := matrixOf Higher.source3.m Higher.source3.n Higher.source3.incoming
def out4 := matrixOf Higher.source4.k Higher.source4.m Higher.source4.outgoing
def in4 := matrixOf Higher.source4.m Higher.source4.n Higher.source4.incoming
abbrev S := Homology out4 in4

def named3 : Vec 2 := fun i => i.val == 0
def named4 : Vec 2 := fun i => i.val == 0
def named : S := Quot.mk _ (⟨named4,by
  funext i
  exact (show ∀ i, eval out4 named4 i = false from by decide) i⟩ : Cycle _)

theorem named3_cycle : InKernel out3 named3 := by
  change eval out3 named3 = zero
  decide
theorem raw_E2_to_E3 : eval Comparison.c8_135S.comparison.projection
    (fun i => i.val == 2) = named3 := by decide
theorem source3_representative : eval Higher.source3.comparison.inclusion named4 = named3 := by decide
theorem source4_representative : eval Higher.source4.comparison.inclusion named4 = named4 := by decide
theorem named_actual_image : eval Comparison.c8_135E3 named3 = zero := by decide
theorem actual_map_not_zero : Comparison.c8_135E3 ≠ (fun _ _ => false) := by decide

/-- The unknown source d3 completion is caller-supplied, including its
full quotient certificate and compatibility with the actual E3 map. -/
structure Completion3 where
  k : Nat
  n : Nat
  h : Nat
  outgoing : Matrix k 3
  incoming : Matrix 3 n
  comparison : Comparison k 3 n h
  valid : HomologyComparison outgoing incoming comparison
  upper : Matrix k 2
  lower : Matrix n 0
  compatible : CompatibleMap out3 in3 outgoing incoming Comparison.c8_135E3 upper lower

def map4 (c : Completion3) :=
  coordinateMap Higher.source3.comparison c.comparison Comparison.c8_135E3

theorem map4_all_coordinates (c : Completion3) (x : Homology out3 in3) :
    (homologyEquivalence _ _ c.comparison c.valid).toCoordinates
      (inducedMap c.compatible x) =
    eval (map4 c) ((homologyEquivalence _ _ Higher.source3.comparison
      Higher.source3_complete.2).toCoordinates x) :=
  induced_coordinates_all c.compatible _ _ Higher.source3_complete.2 c.valid x

theorem named_map4_zero (c : Completion3) : eval (map4 c) named4 = zero := by
  change eval (coordinateMap Higher.source3.comparison c.comparison Comparison.c8_135E3) named4 = zero
  simp only [coordinateMap, eval_compose, source3_representative]
  have hx : eval Comparison.c8_135E3 named3 = (zero : Vec 3) := named_actual_image
  exact (congrArg (fun v : Vec 3 => eval c.comparison.projection v) hx).trans (eval_zero _)

/-- This next completion is arbitrary too. Its compatibility premise
connects the actual induced E4 map to the next unknown source quotient. -/
structure Completion4 (c : Completion3) where
  k : Nat
  n : Nat
  outgoing : Matrix k c.h
  incoming : Matrix c.h n
  upper : Matrix k 1
  lower : Matrix n 1
  compatible : CompatibleMap out4 in4 outgoing incoming (map4 c) upper lower

def f (c : Completion3) (d : Completion4 c) : S → Homology d.outgoing d.incoming :=
  inducedMap d.compatible
def z (c : Completion3) (d : Completion4 c) : Homology d.outgoing d.incoming :=
  Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _)

theorem named_image_zero (c : Completion3) (d : Completion4 c) : f c d named = z c d := by
  apply Quot.sound
  change InImage d.incoming (add (eval (map4 c) named4) zero)
  refine ⟨zero, ?_⟩
  rw [eval_zero, named_map4_zero]
  rfl

theorem named_d5_zero (c : Completion3) (d : Completion4 c)
    (ds : S → Target.U) (dt : Homology d.outgoing d.incoming → Target.V)
    (zeroPreserving : dt (z c d) = Target.zv)
    (naturality : ∀ x, dt (f c d x) = Target.g (ds x)) :
    ds named = Target.zu := by
  apply Target.g_reflects_zero
  rw [← naturality, named_image_zero, zeroPreserving]

#print axioms named_map4_zero
#print axioms named_d5_zero
end Row2796D5Detector.Source
