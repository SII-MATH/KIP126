import Stem125HomologyCertificates.Basic
import SemanticTrajectoryCertificates.Page

namespace Stem125HomologyCertificates
open LinearCertificates PageTransitionCertificates SemanticTrajectoryCertificates

/-- These conditions identify all current vectors and all incoming boundaries.
No quotient equivalence or surjectivity on the next page is assumed. -/
structure WholeMeaning {w : WireComparison} (p : PageData w)
    (plus : p.Current → p.Current → p.Current) : Prop extends p.CompleteMeaning where
  current_surjective : Function.Surjective p.currentCoordinates
  current_add : ∀ x y, p.currentCoordinates (plus x y) =
    add (p.currentCoordinates x) (p.currentCoordinates y)

abbrev ActualCycle {w : WireComparison} (p : PageData w) :=
  {x : p.Current // p.outgoing x = p.zeroOutgoing}

/-- The relation uses the actual incoming differential and actual addition. -/
def ActualBoundaryRelated {w : WireComparison} (p : PageData w)
    (plus : p.Current → p.Current → p.Current) (x y : ActualCycle p) : Prop :=
  ∃ z, p.incoming z = plus x.val y.val

def ActualHomology {w : WireComparison} (p : PageData w)
    (plus : p.Current → p.Current → p.Current) := Quot (ActualBoundaryRelated p plus)

theorem actual_cycle_iff {w : WireComparison} (p : PageData w)
    (meaning : p.Meaning) (x : p.Current) :
    p.outgoing x = p.zeroOutgoing ↔
      InKernel (matrixOf w.k w.m w.outgoing) (p.currentCoordinates x) := by
  constructor
  · intro hx
    change eval (matrixOf w.k w.m w.outgoing) (p.currentCoordinates x) = zero
    rw [← meaning.outgoing_all, hx, meaning.outgoing_zero]
  · intro hx
    apply meaning.outgoing_injective
    rw [meaning.outgoing_all, meaning.outgoing_zero]
    exact hx

noncomputable def actualCycleEquiv {w : WireComparison} (p : PageData w)
    (plus : p.Current → p.Current → p.Current) (meaning : WholeMeaning p plus) :
    ActualCycle p ≃ Cycle (matrixOf w.k w.m w.outgoing) :=
  Equiv.ofBijective
    (fun x => ⟨p.currentCoordinates x.val, (actual_cycle_iff p meaning.toMeaning x.val).mp x.property⟩)
    ⟨by
      intro x y h
      exact Subtype.ext (meaning.current_injective (congrArg Subtype.val h)), by
      intro x
      obtain ⟨a, ha⟩ := meaning.current_surjective x.val
      refine ⟨⟨a, (actual_cycle_iff p meaning.toMeaning a).mpr ?_⟩, Subtype.ext ha⟩
      rw [ha]
      exact x.property⟩

theorem actual_boundary_iff {w : WireComparison} (p : PageData w)
    (plus : p.Current → p.Current → p.Current) (meaning : WholeMeaning p plus)
    (x y : ActualCycle p) :
    ActualBoundaryRelated p plus x y ↔
      BoundaryRelated (matrixOf w.m w.n w.incoming)
        (actualCycleEquiv p plus meaning x) (actualCycleEquiv p plus meaning y) := by
  change (∃ z, p.incoming z = plus x.val y.val) ↔
    InImage (matrixOf w.m w.n w.incoming)
      (add (p.currentCoordinates x.val) (p.currentCoordinates y.val))
  constructor
  · rintro ⟨z, hz⟩
    refine ⟨p.incomingCoordinates z, ?_⟩
    rw [← meaning.incoming_all, hz, meaning.current_add]
  · rintro ⟨v, hv⟩
    obtain ⟨z, hz⟩ := meaning.incoming_surjective v
    refine ⟨z, meaning.current_injective ?_⟩
    rw [meaning.incoming_all, hz, hv, meaning.current_add]

noncomputable def actualQuotientEquiv {w : WireComparison} (p : PageData w)
    (plus : p.Current → p.Current → p.Current) (meaning : WholeMeaning p plus) :
    ActualHomology p plus ≃ LocalHomology w := by
  let e := actualCycleEquiv p plus meaning
  let forward : ActualHomology p plus → LocalHomology w :=
    Quot.lift (fun x => Quot.mk _ (e x)) (by
      intro x y h
      exact Quot.sound ((actual_boundary_iff p plus meaning x y).mp h))
  let backward : LocalHomology w → ActualHomology p plus :=
    Quot.lift (fun x => Quot.mk _ (e.symm x)) (by
      intro x y h
      apply Quot.sound
      apply (actual_boundary_iff p plus meaning (e.symm x) (e.symm y)).mpr
      change BoundaryRelated (matrixOf w.m w.n w.incoming) (e (e.symm x)) (e (e.symm y))
      simpa only [e.apply_symm_apply] using h)
  refine ⟨forward, backward, ?_, ?_⟩
  · intro x
    refine Quot.inductionOn x ?_
    intro x
    change Quot.mk _ (e.symm (e x)) = Quot.mk _ x
    rw [e.symm_apply_apply]
  · intro x
    refine Quot.inductionOn x ?_
    intro x
    change Quot.mk _ (e (e.symm x)) = Quot.mk _ x
    rw [e.apply_symm_apply]

noncomputable def actualCoordinateEquiv {w : WireComparison} (p : PageData w)
    (plus : p.Current → p.Current → p.Current) (meaning : WholeMeaning p plus)
    (valid : w.Valid) : ActualHomology p plus ≃ Vec w.h :=
  (actualQuotientEquiv p plus meaning).trans (localEquiv w valid)

theorem actualCoordinateEquiv_mk {w : WireComparison} (p : PageData w)
    (plus : p.Current → p.Current → p.Current) (meaning : WholeMeaning p plus)
    (valid : w.Valid) (x : ActualCycle p) :
    actualCoordinateEquiv p plus meaning valid (Quot.mk _ x) =
      eval w.comparison.projection (p.currentCoordinates x.val) := rfl

theorem actual_quotient_eq_iff {w : WireComparison} (p : PageData w)
    (plus : p.Current → p.Current → p.Current) (meaning : WholeMeaning p plus)
    (valid : w.Valid) (x y : ActualCycle p) :
    (Quot.mk _ x : ActualHomology p plus) = Quot.mk _ y ↔
      ActualBoundaryRelated p plus x y := by
  constructor
  · intro h
    have he := congrArg (actualCoordinateEquiv p plus meaning valid) h
    rw [actualCoordinateEquiv_mk, actualCoordinateEquiv_mk] at he
    apply (actual_boundary_iff p plus meaning x y).mpr
    exact (valid.2.2.2.2.2 _ _
      (actual_cycle_iff p meaning.toMeaning x.val |>.mp x.property)
      (actual_cycle_iff p meaning.toMeaning y.val |>.mp y.property)).mp he
  · exact Quot.sound

def actualCycleAdd {w : WireComparison} (p : PageData w)
    (plus : p.Current → p.Current → p.Current) (meaning : WholeMeaning p plus)
    (x y : ActualCycle p) : ActualCycle p :=
  ⟨plus x.val y.val, by
    apply (actual_cycle_iff p meaning.toMeaning _).mpr
    change eval _ (p.currentCoordinates (plus x.val y.val)) = zero
    rw [meaning.current_add, eval_add,
      (actual_cycle_iff p meaning.toMeaning x.val).mp x.property,
      (actual_cycle_iff p meaning.toMeaning y.val).mp y.property, add_self]⟩

theorem actualCycleEquiv_add {w : WireComparison} (p : PageData w)
    (plus : p.Current → p.Current → p.Current) (meaning : WholeMeaning p plus)
    (x y : ActualCycle p) :
    actualCycleEquiv p plus meaning (actualCycleAdd p plus meaning x y) =
      cycleAdd (actualCycleEquiv p plus meaning x) (actualCycleEquiv p plus meaning y) :=
  Subtype.ext (meaning.current_add x.val y.val)

theorem actual_related_add {w : WireComparison} (p : PageData w)
    (plus : p.Current → p.Current → p.Current) (meaning : WholeMeaning p plus)
    (x x' y y' : ActualCycle p)
    (hx : ActualBoundaryRelated p plus x x') (hy : ActualBoundaryRelated p plus y y') :
    ActualBoundaryRelated p plus (actualCycleAdd p plus meaning x y)
      (actualCycleAdd p plus meaning x' y') := by
  apply (actual_boundary_iff p plus meaning _ _).mpr
  rw [actualCycleEquiv_add, actualCycleEquiv_add]
  exact related_add _ _ _ _ ((actual_boundary_iff p plus meaning _ _).mp hx)
    ((actual_boundary_iff p plus meaning _ _).mp hy)

theorem actual_related_self {w : WireComparison} (p : PageData w)
    (plus : p.Current → p.Current → p.Current) (meaning : WholeMeaning p plus)
    (x : ActualCycle p) : ActualBoundaryRelated p plus x x :=
  (actual_boundary_iff p plus meaning x x).mpr (related_self _ _)

/-- Actual addition descends from actual representatives, independently of the
coordinate equivalence subsequently proved to preserve it. -/
def actualHomologyAdd {w : WireComparison} (p : PageData w)
    (plus : p.Current → p.Current → p.Current) (meaning : WholeMeaning p plus) :
    ActualHomology p plus → ActualHomology p plus → ActualHomology p plus :=
  Quot.lift (fun x : ActualCycle p =>
    Quot.lift (fun y : ActualCycle p => Quot.mk _ (actualCycleAdd p plus meaning x y)) (by
      intro y y' hy
      exact Quot.sound (actual_related_add p plus meaning x x y y'
        (actual_related_self p plus meaning x) hy))) (by
    intro x x' hx
    funext y
    refine Quot.inductionOn y ?_
    intro y
    exact Quot.sound (actual_related_add p plus meaning x x' y y hx
      (actual_related_self p plus meaning y)))

theorem actualQuotientEquiv_add {w : WireComparison} (p : PageData w)
    (plus : p.Current → p.Current → p.Current) (meaning : WholeMeaning p plus)
    (x y : ActualHomology p plus) :
    actualQuotientEquiv p plus meaning (actualHomologyAdd p plus meaning x y) =
      homologyAdd _ _ (actualQuotientEquiv p plus meaning x)
        (actualQuotientEquiv p plus meaning y) := by
  refine Quot.inductionOn x ?_
  intro x
  refine Quot.inductionOn y ?_
  intro y
  exact congrArg (Quot.mk _) (actualCycleEquiv_add p plus meaning x y)

theorem actualCoordinateEquiv_add {w : WireComparison} (p : PageData w)
    (plus : p.Current → p.Current → p.Current) (meaning : WholeMeaning p plus)
    (valid : w.Valid) (x y : ActualHomology p plus) :
    actualCoordinateEquiv p plus meaning valid (actualHomologyAdd p plus meaning x y) =
      add (actualCoordinateEquiv p plus meaning valid x)
        (actualCoordinateEquiv p plus meaning valid y) := by
  change localEquiv w valid (actualQuotientEquiv p plus meaning
    (actualHomologyAdd p plus meaning x y)) = _
  rw [actualQuotientEquiv_add]
  exact homologyCoordinates_add _ _ _ valid.2 _ _

/-- Completeness on the next page follows from current completeness and the
checked inclusion/projection identity. It is not an input premise. -/
theorem next_coordinates_surjective {w : WireComparison} (p : PageData w)
    (plus : p.Current → p.Current → p.Current) (meaning : WholeMeaning p plus)
    (valid : w.Valid) : Function.Surjective p.nextCoordinates := by
  intro z
  obtain ⟨x, hx⟩ := meaning.current_surjective (eval w.comparison.inclusion z)
  have hc : p.outgoing x = p.zeroOutgoing := by
    apply (actual_cycle_iff p meaning.toMeaning x).mpr
    rw [hx]
    exact valid.2.2.1 z
  refine ⟨p.next x, ?_⟩
  rw [meaning.next_cycle x hc, hx]
  exact valid.2.2.2.1 z

noncomputable def nextCoordinateEquiv {w : WireComparison} (p : PageData w)
    (plus : p.Current → p.Current → p.Current) (meaning : WholeMeaning p plus)
    (valid : w.Valid) : p.Next ≃ Vec w.h :=
  Equiv.ofBijective p.nextCoordinates
    ⟨meaning.next_injective, next_coordinates_surjective p plus meaning valid⟩

noncomputable def actualNextEquiv {w : WireComparison} (p : PageData w)
    (plus : p.Current → p.Current → p.Current) (meaning : WholeMeaning p plus)
    (valid : w.Valid) : ActualHomology p plus ≃ p.Next :=
  (actualCoordinateEquiv p plus meaning valid).trans
    (nextCoordinateEquiv p plus meaning valid).symm

theorem actualNextEquiv_mk {w : WireComparison} (p : PageData w)
    (plus : p.Current → p.Current → p.Current) (meaning : WholeMeaning p plus)
    (valid : w.Valid) (x : ActualCycle p) :
    actualNextEquiv p plus meaning valid (Quot.mk _ x) = p.next x.val := by
  apply (nextCoordinateEquiv p plus meaning valid).injective
  change nextCoordinateEquiv p plus meaning valid
    ((nextCoordinateEquiv p plus meaning valid).symm
      (actualCoordinateEquiv p plus meaning valid (Quot.mk _ x))) = _
  rw [Equiv.apply_symm_apply, actualCoordinateEquiv_mk]
  exact (meaning.next_cycle x.val x.property).symm

theorem every_next_class_represented {w : WireComparison} (p : PageData w)
    (plus : p.Current → p.Current → p.Current) (meaning : WholeMeaning p plus)
    (valid : w.Valid) (y : p.Next) :
    ∃ x : ActualCycle p, p.next x.val = y := by
  obtain ⟨x, hx⟩ := meaning.current_surjective
    (eval w.comparison.inclusion (p.nextCoordinates y))
  have hc : p.outgoing x = p.zeroOutgoing := by
    apply (actual_cycle_iff p meaning.toMeaning x).mpr
    rw [hx]
    exact valid.2.2.1 _
  refine ⟨⟨x, hc⟩, meaning.next_injective ?_⟩
  rw [meaning.next_cycle x hc, hx]
  exact valid.2.2.2.1 _

abbrev ActualTotalHomology {N : Nat} {w : Fin N → WireComparison}
    (p : (i : Fin N) → PageData (w i))
    (plus : (i : Fin N) → (p i).Current → (p i).Current → (p i).Current) :=
  (i : Fin N) → ActualHomology (p i) (plus i)

noncomputable def actualTotalFlatEquiv {N D : Nat} (w : Fin N → WireComparison)
    (p : (i : Fin N) → PageData (w i))
    (plus : (i : Fin N) → (p i).Current → (p i).Current → (p i).Current)
    (meaning : ∀ i, WholeMeaning (p i) (plus i)) (valid : ∀ i, (w i).Valid)
    (count : Fintype.card (CoordinateIndex (fun i => (w i).h)) = D) :
    ActualTotalHomology p plus ≃ Vec D :=
  (Equiv.piCongrRight (fun i => actualQuotientEquiv (p i) (plus i) (meaning i))).trans
    (totalFlatEquiv w valid count)

theorem actual_total_card {N D : Nat} (w : Fin N → WireComparison)
    (p : (i : Fin N) → PageData (w i))
    (plus : (i : Fin N) → (p i).Current → (p i).Current → (p i).Current)
    (meaning : ∀ i, WholeMeaning (p i) (plus i)) (valid : ∀ i, (w i).Valid)
    (count : Fintype.card (CoordinateIndex (fun i => (w i).h)) = D) :
    Nat.card (ActualTotalHomology p plus) = 2 ^ D := by
  rw [Nat.card_congr (actualTotalFlatEquiv w p plus meaning valid count)]
  simp [Vec, Nat.card_eq_fintype_card]

theorem checkActualTotal_sound {N : Nat} (w : Fin N → WireComparison)
    (p : (i : Fin N) → PageData (w i))
    (plus : (i : Fin N) → (p i).Current → (p i).Current → (p i).Current)
    (meaning : ∀ i, WholeMeaning (p i) (plus i)) (D : Nat)
    (checked : checkTotal w D = true) :
    Nat.card (ActualTotalHomology p plus) = 2 ^ D := by
  simp only [checkTotal, Bool.and_eq_true, decide_eq_true_eq] at checked
  apply actual_total_card w p plus meaning (fun i => checkWire_sound (w i) ?_) checked.2
  exact List.all_eq_true.mp checked.1 i (List.mem_finRange i)

/-- These semantic proofs are supplied by Lean, never decoded from a wire. -/
structure ActualTotalCertificate {N : Nat} {w : Fin N → WireComparison}
    (p : (i : Fin N) → PageData (w i))
    (plus : (i : Fin N) → (p i).Current → (p i).Current → (p i).Current) : Type where
  meaning : ∀ i, WholeMeaning (p i) (plus i)

instance {N : Nat} (w : Fin N → WireComparison)
    (p : (i : Fin N) → PageData (w i))
    (plus : (i : Fin N) → (p i).Current → (p i).Current → (p i).Current) (D : Nat) :
    LinProgramCertificates.CertificateVerifier (Nat.card (ActualTotalHomology p plus) = 2 ^ D) where
  Cert := ActualTotalCertificate p plus
  check := fun _ => checkTotal w D
  sound := fun certificate => checkActualTotal_sound w p plus certificate.meaning D

syntax "actual_stem_homology_cert" " using " term : tactic
macro_rules
  | `(tactic| actual_stem_homology_cert using $certificate:term) => `(tactic|
      exact LinProgramCertificates.CertificateVerifier.sound $certificate
        (by change checkTotal _ _ = true; decide))

theorem actualTotalFlatEquiv_add {N D : Nat} (w : Fin N → WireComparison)
    (p : (i : Fin N) → PageData (w i))
    (plus : (i : Fin N) → (p i).Current → (p i).Current → (p i).Current)
    (meaning : ∀ i, WholeMeaning (p i) (plus i)) (valid : ∀ i, (w i).Valid)
    (count : Fintype.card (CoordinateIndex (fun i => (w i).h)) = D)
    (x y : ActualTotalHomology p plus) :
    actualTotalFlatEquiv w p plus meaning valid count
      (fun i => actualHomologyAdd (p i) (plus i) (meaning i) (x i) (y i)) =
      add (actualTotalFlatEquiv w p plus meaning valid count x)
        (actualTotalFlatEquiv w p plus meaning valid count y) := by
  change totalFlatEquiv w valid count (fun i => actualQuotientEquiv (p i) (plus i)
    (meaning i) (actualHomologyAdd (p i) (plus i) (meaning i) (x i) (y i))) = _
  have he := funext (fun i => actualQuotientEquiv_add (p i) (plus i) (meaning i) (x i) (y i))
  rw [he]
  exact totalFlatEquiv_add w valid count _ _

noncomputable def actualNextTotalFlatEquiv {N D : Nat} (w : Fin N → WireComparison)
    (p : (i : Fin N) → PageData (w i))
    (plus : (i : Fin N) → (p i).Current → (p i).Current → (p i).Current)
    (meaning : ∀ i, WholeMeaning (p i) (plus i)) (valid : ∀ i, (w i).Valid)
    (count : Fintype.card (CoordinateIndex (fun i => (w i).h)) = D) :
    ((i : Fin N) → (p i).Next) ≃ Vec D :=
  (Equiv.piCongrRight (fun i => nextCoordinateEquiv (p i) (plus i) (meaning i) (valid i))).trans
    (flatten _ count)

theorem actual_next_total_card {N D : Nat} (w : Fin N → WireComparison)
    (p : (i : Fin N) → PageData (w i))
    (plus : (i : Fin N) → (p i).Current → (p i).Current → (p i).Current)
    (meaning : ∀ i, WholeMeaning (p i) (plus i)) (valid : ∀ i, (w i).Valid)
    (count : Fintype.card (CoordinateIndex (fun i => (w i).h)) = D) :
    Nat.card ((i : Fin N) → (p i).Next) = 2 ^ D := by
  rw [Nat.card_congr (actualNextTotalFlatEquiv w p plus meaning valid count)]
  simp [Vec, Nat.card_eq_fintype_card]

#print axioms actual_boundary_iff
#print axioms actualQuotientEquiv
#print axioms actual_quotient_eq_iff
#print axioms actualCoordinateEquiv_add
#print axioms next_coordinates_surjective
#print axioms actualNextEquiv_mk
#print axioms every_next_class_represented
#print axioms actual_total_card
#print axioms checkActualTotal_sound
#print axioms actualTotalFlatEquiv_add
#print axioms actual_next_total_card
end Stem125HomologyCertificates
