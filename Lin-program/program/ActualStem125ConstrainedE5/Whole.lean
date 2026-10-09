import ActualStem125ConstrainedE5.Actual

namespace ActualStem125ConstrainedE5
open ManualInputObligations.Reference LinearCertificates Stem125E5Search

/-- Faithful coordinates for every actual E4 zero center, not a database-absence test. -/
structure ZeroMeaning (S : AdamsSpectralSequence) where
  coordinates : (i : Fin 28) → (S.element 4 (zeroDegree i)).carrier → Vec 0
  faithful : ∀ i, Function.Injective (coordinates i)

theorem zero_next (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (zeros : ActualAdamsSystemBridge.ZeroMeaning S pages) (meaning : ZeroMeaning S)
    (i : Fin 28) (x : (S.element 5 (zeroDegree i)).carrier) : x = 0 := by
  let tower := ActualAdamsProductCycleBridge.pageTower S pages zeros (zeroDegree i)
  have current : tower.ZeroAt 4 := by
    intro y
    apply meaning.faithful i
    funext j
    exact Fin.elim0 j
  exact (tower.zero_next 4 current x).trans (S.zero_is_zero 5 _)

abbrev ZeroNext (S : AdamsSpectralSequence) :=
  (i : Fin 28) → (S.element 5 (zeroDegree i)).carrier

abbrev WholeNext (S : AdamsSpectralSequence) :=
  (i : Fin 45) → (S.element 5 (degree i)).carrier

noncomputable def partition (S : AdamsSpectralSequence) :
    WholeNext S ≃ PositiveNext S × ZeroNext S :=
  (Equiv.piCongrLeft (fun i => (S.element 5 (degree i)).carrier) Product.partitionEquiv).symm.trans
    (Equiv.sumPiEquivProdPi (fun i => (S.element 5 (degree (Product.partitionEquiv i))).carrier))

noncomputable def remove_zero (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (zeros : ActualAdamsSystemBridge.ZeroMeaning S pages) (meaning : ZeroMeaning S) :
    (PositiveNext S × ZeroNext S) ≃ PositiveNext S where
  toFun := Prod.fst
  invFun := fun x => ⟨x,fun _ => 0⟩
  left_inv := by
    intro x
    apply Prod.ext
    · rfl
    · funext i
      exact (zero_next S pages zeros meaning i (x.2 i)).symm
  right_inv := fun _ => rfl

noncomputable def wholePositiveEquiv (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (zeros : ActualAdamsSystemBridge.ZeroMeaning S pages) (meaning : ZeroMeaning S) :
    WholeNext S ≃ PositiveNext S :=
  (partition S).trans (remove_zero S pages zeros meaning)

/-- The trace, all 17 complete pages, and all 28 zero pages share the same actual S. -/
structure Certificate (S : AdamsSpectralSequence) (c : Product.Choice) where
  trace : TraceData S c
  constraints : Constraints c
  positiveCoordinates : PositiveCoordinates S c
  positiveMeaning : PositiveMeaning S trace.pages c positiveCoordinates
  sameCoordinates : SameCoordinates trace positiveCoordinates
  zeroMeaning : ZeroMeaning S

theorem whole_cardinality {S : AdamsSpectralSequence} {c : Product.Choice}
    (certificate : Certificate S c) : Nat.card (WholeNext S) = 2 ^ Product.dimension c := by
  rw [Nat.card_congr (wholePositiveEquiv S certificate.trace.pages certificate.trace.zeros
    certificate.zeroMeaning)]
  exact positive_cardinality S certificate.trace.pages c certificate.positiveCoordinates
    certificate.positiveMeaning

theorem whole_bounds {S : AdamsSpectralSequence} {c : Product.Choice}
    (certificate : Certificate S c) :
    3 ≤ Product.dimension c ∧ Product.dimension c ≤ 6 ∧
      Nat.card (WholeNext S) = 2 ^ Product.dimension c ∧
      8 ≤ Nat.card (WholeNext S) ∧ Nat.card (WholeNext S) ≤ 64 := by
  have bounds := dimension_bounds certificate.trace certificate.constraints
  have positive := positive_bounds certificate.trace certificate.constraints
    certificate.positiveCoordinates certificate.positiveMeaning certificate.sameCoordinates
  have same : Nat.card (WholeNext S) = Nat.card (PositiveNext S) :=
    Nat.card_congr (wholePositiveEquiv S certificate.trace.pages certificate.trace.zeros
      certificate.zeroMeaning)
  exact ⟨bounds.1,bounds.2,whole_cardinality certificate,same ▸ positive.2⟩

syntax "actual_stem125_e5_cert" " using " term : tactic
macro_rules
  | `(tactic| actual_stem125_e5_cert using $c:term) => `(tactic|
      exact ActualStem125ConstrainedE5.whole_bounds $c)

theorem by_tactic {S : AdamsSpectralSequence} {c : Product.Choice}
    (certificate : Certificate S c) :
    3 ≤ Product.dimension c ∧ Product.dimension c ≤ 6 ∧
      Nat.card (WholeNext S) = 2 ^ Product.dimension c ∧
      8 ≤ Nat.card (WholeNext S) ∧ Nat.card (WholeNext S) ≤ 64 := by
  actual_stem125_e5_cert using certificate

#print axioms zero_next
#print axioms partition
#print axioms wholePositiveEquiv
#print axioms whole_cardinality
#print axioms whole_bounds
#print axioms by_tactic
end ActualStem125ConstrainedE5
