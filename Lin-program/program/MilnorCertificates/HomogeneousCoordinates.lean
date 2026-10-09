import MilnorCertificates.BundledDual

namespace MilnorCertificates

/-- A full-dual function belongs to one homogeneous degree when all its other
monomial coefficients vanish. -/
def HomogeneousDual (rank degree : Nat) (f : RankDual rank) : Prop :=
  ∀ m : RankMonomial rank, weight m.val ≠ degree → f m = 0

/-- Exact-degree coordinates inherit the exhaustive finite basis, with
list duplicates removed before they can create spurious coordinates. -/
def homogeneousBasis (rank degree : Nat) : Finset Monomial :=
  ((basis rank degree).filter fun m => weight m = degree).toFinset

theorem exponentVectors_length (rank bound : Nat) (m : Monomial)
    (hm : m ∈ exponentVectors rank bound) : m.length = rank := by
  induction rank generalizing m with
  | zero => simpa [exponentVectors] using hm
  | succ rank ih =>
    obtain ⟨e,he,hm⟩ := List.mem_flatMap.mp hm
    obtain ⟨n,hn,rfl⟩ := List.mem_map.mp hm
    simpa using congrArg Nat.succ (ih n hn)

theorem homogeneousBasis_mem (rank degree : Nat) (m : Monomial) :
    m ∈ homogeneousBasis rank degree ↔ m.length = rank ∧ weight m = degree := by
  simp only [homogeneousBasis,List.mem_toFinset,List.mem_filter,decide_eq_true_eq]
  constructor
  · intro h
    exact ⟨exponentVectors_length rank degree m (List.mem_filter.mp h.1).1,h.2⟩
  · intro h
    exact ⟨basis_complete rank degree m h.1 (by omega),h.2⟩

abbrev HomogeneousIndex (rank degree : Nat) := {m : Monomial // m ∈ homogeneousBasis rank degree}
abbrev HomogeneousCoordinate (rank degree : Nat) := HomogeneousIndex rank degree → ZMod 2

instance homogeneousIndexFintype (rank degree : Nat) : Fintype (HomogeneousIndex rank degree) :=
  inferInstanceAs (Fintype {m // m ∈ homogeneousBasis rank degree})

def extractHomogeneous (rank degree : Nat) (f : RankDual rank) : HomogeneousCoordinate rank degree :=
  fun m => f ⟨m.val,(homogeneousBasis_mem rank degree m.val).mp m.property |>.1⟩

def reconstructHomogeneous (rank degree : Nat) (v : HomogeneousCoordinate rank degree) : RankDual rank :=
  fun m => if h : weight m.val = degree then
    v ⟨m.val,(homogeneousBasis_mem rank degree m.val).mpr ⟨m.property,h⟩⟩ else 0

theorem reconstruct_homogeneous (rank degree : Nat) (v : HomogeneousCoordinate rank degree) :
    HomogeneousDual rank degree (reconstructHomogeneous rank degree v) := by
  intro m hm
  simp [reconstructHomogeneous,hm]

theorem extract_reconstruct (rank degree : Nat) (v : HomogeneousCoordinate rank degree) :
    extractHomogeneous rank degree (reconstructHomogeneous rank degree v) = v := by
  funext m
  have h := (homogeneousBasis_mem rank degree m.val).mp m.property
  simp [extractHomogeneous,reconstructHomogeneous,h.2]

theorem reconstruct_extract (rank degree : Nat) (f : RankDual rank)
    (hf : HomogeneousDual rank degree f) :
    reconstructHomogeneous rank degree (extractHomogeneous rank degree f) = f := by
  funext m
  by_cases h : weight m.val = degree
  · simp [reconstructHomogeneous,extractHomogeneous,h]
  · simp [reconstructHomogeneous,h,hf m h]

def homogeneousEquiv (rank degree : Nat) :
    {f : RankDual rank // HomogeneousDual rank degree f} ≃ HomogeneousCoordinate rank degree where
  toFun f := extractHomogeneous rank degree f.val
  invFun v := ⟨reconstructHomogeneous rank degree v,reconstruct_homogeneous rank degree v⟩
  left_inv f := Subtype.ext (reconstruct_extract rank degree f.val f.property)
  right_inv := extract_reconstruct rank degree

theorem extract_add (rank degree : Nat) (f g : RankDual rank) :
    extractHomogeneous rank degree (f+g) =
      extractHomogeneous rank degree f + extractHomogeneous rank degree g := by
  funext m
  exact rankDual_add_apply rank f g _

theorem reconstruct_add (rank degree : Nat) (v w : HomogeneousCoordinate rank degree) :
    reconstructHomogeneous rank degree (v+w) =
      reconstructHomogeneous rank degree v + reconstructHomogeneous rank degree w := by
  funext m
  change (if h : weight m.val = degree then (v+w) ⟨m.val,_⟩ else 0) =
    reconstructHomogeneous rank degree v m + reconstructHomogeneous rank degree w m
  by_cases h : weight m.val = degree <;> simp [reconstructHomogeneous,h]

theorem extract_zero (rank degree : Nat) : extractHomogeneous rank degree 0 = 0 := by
  funext m
  exact rankDual_zero_apply rank _

theorem reconstruct_zero (rank degree : Nat) : reconstructHomogeneous rank degree 0 = 0 := by
  funext m
  change (if h : weight m.val = degree then (0 : HomogeneousCoordinate rank degree) ⟨m.val,_⟩ else 0) = 0
  simp

/-- The exact-degree coordinate set agrees with any larger exhaustive window,
including the window-eight residual-degree lists used by freeBasis. -/
theorem homogeneousBasis_window (rank degree bound : Nat) (hdb : degree ≤ bound) :
    homogeneousBasis rank degree =
      ((basis rank bound).filter fun m => weight m = degree).toFinset := by
  ext m
  rw [homogeneousBasis_mem]
  simp only [List.mem_toFinset,List.mem_filter,decide_eq_true_eq]
  constructor
  · intro h
    exact ⟨basis_complete rank bound m h.1 (by omega),h.2⟩
  · intro h
    exact ⟨exponentVectors_length rank bound m (List.mem_filter.mp h.1).1,h.2⟩

/-- The residual condition in the actual free-module enumeration is the same
finite coordinate set; subtraction is guarded by the generator degree bound. -/
theorem homogeneousBasis_residual (rank total shift bound : Nat)
    (hst : shift ≤ total) (htb : total ≤ bound) :
    homogeneousBasis rank (total-shift) =
      ((basis rank bound).filter fun m => weight m + shift = total).toFinset := by
  rw [homogeneousBasis_window rank (total-shift) bound (by omega)]
  congr 1
  apply List.filter_congr
  intro m hm
  apply Bool.eq_iff_iff.mpr
  simp only [decide_eq_true_eq]
  omega

#print axioms homogeneousEquiv
#print axioms homogeneousBasis_residual
end MilnorCertificates
