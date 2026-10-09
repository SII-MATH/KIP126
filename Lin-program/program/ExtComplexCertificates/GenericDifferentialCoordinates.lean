import ExtComplexCertificates.GenericHomogeneousCoordinates

namespace ExtComplexCertificates.GenericFreeComplex
open MilnorCertificates
open scoped BigOperators

noncomputable def coordinateVector (d : Data rank n) (s t : Nat)
    (p : ComponentIndex d s t) : FreeModule rank n :=
  Finsupp.single p.val.1 (finitePolynomial rank [p.val.2])

theorem singleton_apply (a : Monomial) (m : RankMonomial rank) :
    (finitePolynomial rank [a]).val m = if a = m.val then (1 : ZMod 2) else 0 := by
  change boolScalar (coefficient [a] m.val) = _
  by_cases h : a = m.val <;> simp [coefficient,h,boolScalar]

theorem coordinateVector_apply (d : Data rank n) (s t : Nat)
    (p : ComponentIndex d s t) (i : Fin n) (m : RankMonomial rank) :
    (coordinateVector d s t p i).val m =
      if p.val = (i,m.val) then (1 : ZMod 2) else 0 := by
  classical
  have he : p.val = (i,m.val) ↔ p.val.1 = i ∧ p.val.2 = m.val :=
    ⟨fun h => ⟨congrArg Prod.fst h,congrArg Prod.snd h⟩,fun h => Prod.ext h.1 h.2⟩
  unfold coordinateVector
  rw [Finsupp.single_apply]
  split
  next h => simp [he,h,singleton_apply]
  next h => simp [he,h,rankDual_zero_apply]

theorem differential_coordinateVector (d : Data rank n) (s t : Nat)
    (p : ComponentIndex d s t) (i : Fin n) :
    differential d (coordinateVector d s t p) i =
      finitePolynomial rank [p.val.2] * finitePolynomial rank (d.edge p.val.1 i) := by
  rw [coordinateVector,differential_single,Finsupp.smul_apply,smul_eq_mul,boundaryVector_apply]

noncomputable def coefficientHom (i : Fin n) (m : RankMonomial rank) :
    FreeModule rank n →+ ZMod 2 where
  toFun x := (x i).val m
  map_zero' := rfl
  map_add' _ _ := rfl

theorem coefficient_nsmul (a : Nat) (x : FreeModule rank n) (i : Fin n) (m : RankMonomial rank) :
    (a • x i).val m = (a : ZMod 2) * (x i).val m := by
  have h := map_nsmul (coefficientHom i m) a x
  simpa only [coefficientHom,AddMonoidHom.coe_mk,ZeroHom.coe_mk,Finsupp.smul_apply,nsmul_eq_mul] using h

theorem reconstruct_sum (d : Data rank n) (s t : Nat) (v : ComponentCoordinates d s t) :
    reconstruct d s t v = ∑ p : ComponentIndex d s t, (v p).val • coordinateVector d s t p := by
  classical
  apply Finsupp.ext
  intro i
  apply Subtype.ext
  funext m
  rw [reconstruct_apply]
  change reconstructCoefficient d s t v i m = coefficientHom i m (∑ p, _)
  rw [map_sum]
  simp only [map_nsmul,coefficientHom,AddMonoidHom.coe_mk,ZeroHom.coe_mk,
    nsmul_eq_mul,ZMod.natCast_zmod_val,coordinateVector_apply]
  by_cases h : d.homological i = s ∧ weight m.val + d.internal i = t
  · let p : ComponentIndex d s t :=
      ⟨(i,m.val),(componentBasis_mem d s t i m.val).mpr ⟨h.1,m.property,h.2⟩⟩
    have he (q : ComponentIndex d s t) : q.val = (i,m.val) ↔ q = p := by
      exact ⟨fun hh => Subtype.ext hh,fun hh => congrArg Subtype.val hh⟩
    simp [reconstructCoefficient,h,he,p]
  · have he (q : ComponentIndex d s t) : q.val ≠ (i,m.val) := by
      intro hh
      have hq := (componentBasis_mem d s t q.val.1 q.val.2).mp q.property
      rw [hh] at hq
      exact h ⟨hq.1,hq.2.2⟩
    simp [reconstructCoefficient,h,he]

/-- Products for every source coordinate and every target generator. -/
structure ComponentCertificate (d : Data rank n) (s t : Nat) where
  output : ComponentIndex d (s+1) t → Fin n → Polynomial
  witness : ComponentIndex d (s+1) t → Fin n → AllCertificate

def checkComponent (d : Data rank n) (s t : Nat) (c : ComponentCertificate d s t) : Bool :=
  decide (∀ p i, checkAll rank [p.val.2] (d.edge p.val.1 i) (c.output p i) (c.witness p i) = true) &&
  decide (∀ p i, ∀ m ∈ c.output p i,
    d.homological i = s ∧ m.length = rank ∧ weight m + d.internal i = t)

theorem checked_vector (d : Data rank n) (s t : Nat) (c : ComponentCertificate d s t)
    (h : checkComponent d s t c = true) (p : ComponentIndex d (s+1) t) (i : Fin n) :
    differential d (coordinateVector d (s+1) t p) i = finitePolynomial rank (c.output p i) := by
  rw [differential_coordinateVector]
  simp only [checkComponent,Bool.and_eq_true,decide_eq_true_eq] at h
  exact finitePolynomial_mul _ _ _ _ (checkAll_sound _ _ _ _ _ (h.1 p i))

def componentMatrixEntry (c : ComponentCertificate d s t)
    (q : ComponentIndex d s t) (p : ComponentIndex d (s+1) t) : Bool :=
  coefficient (c.output p q.val.1) q.val.2

def componentMatrixAction (c : ComponentCertificate d s t)
    (v : ComponentCoordinates d (s+1) t) : ComponentCoordinates d s t :=
  fun q => ∑ p, boolScalar (componentMatrixEntry c q p) * v p

theorem differential_extract_reconstruct (d : Data rank n) (s t : Nat)
    (c : ComponentCertificate d s t) (h : checkComponent d s t c = true)
    (v : ComponentCoordinates d (s+1) t) :
    extract d s t (differential d (reconstruct d (s+1) t v)) = componentMatrixAction c v := by
  funext q
  rw [reconstruct_sum,map_sum]
  simp only [map_nsmul]
  unfold extract
  change coefficientHom q.val.1 _ (∑ p, _) = _
  rw [map_sum]
  simp only [map_nsmul,nsmul_eq_mul,ZMod.natCast_zmod_val]
  unfold componentMatrixAction
  apply Finset.sum_congr rfl
  intro p hp
  change v p * (differential d (coordinateVector d (s+1) t p) q.val.1).val _ = _
  rw [checked_vector d s t c h]
  exact mul_comm _ _

theorem differential_reconstruct_homogeneous (d : Data rank n) (s t : Nat)
    (c : ComponentCertificate d s t) (h : checkComponent d s t c = true)
    (v : ComponentCoordinates d (s+1) t) :
    Homogeneous d s t (differential d (reconstruct d (s+1) t v)) := by
  intro i m hbad
  rw [reconstruct_sum,map_sum]
  simp only [map_nsmul]
  change coefficientHom i m (∑ p, _) = 0
  rw [map_sum]
  apply Finset.sum_eq_zero
  intro p hp
  rw [map_nsmul]
  change (v p).val • (differential d (coordinateVector d (s+1) t p) i).val m = 0
  rw [checked_vector d s t c h]
  have hg := h
  simp only [checkComponent,Bool.and_eq_true,decide_eq_true_eq] at hg
  have hn : m.val ∉ c.output p i := by
    intro hm
    have hh := hg.2 p i m.val hm
    exact hbad.elim (fun hn => hn hh.1) (fun hn => hn hh.2.2)
  have hc : coefficient (c.output p i) m.val = false := by
    cases he : coefficient (c.output p i) m.val with
    | false => rfl
    | true => exact False.elim (hn (coefficient_true_mem _ _ he))
  simp [finitePolynomial_apply,hc,boolScalar]

theorem differential_reconstruct (d : Data rank n) (s t : Nat)
    (c : ComponentCertificate d s t) (h : checkComponent d s t c = true)
    (v : ComponentCoordinates d (s+1) t) :
    differential d (reconstruct d (s+1) t v) = reconstruct d s t (componentMatrixAction c v) := by
  rw [← differential_extract_reconstruct d s t c h v]
  exact (reconstruct_extract d s t _ (differential_reconstruct_homogeneous d s t c h v)).symm

#print axioms differential_coordinateVector
#print axioms differential_reconstruct
end ExtComplexCertificates.GenericFreeComplex
