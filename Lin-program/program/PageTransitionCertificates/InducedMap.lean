import PageTransitionCertificates.Quotient

namespace PageTransitionCertificates
open LinearCertificates ResolutionCertificates

/-- Both adjacent squares are necessary: the upper square preserves cycles,
and the lower square preserves boundaries. -/
def CompatibleMap (out₁ : Matrix k m) (in₁ : Matrix m n)
    (out₂ : Matrix l q) (in₂ : Matrix q p)
    (f : Matrix q m) (upper : Matrix l k) (lower : Matrix p n) : Prop :=
  IsChainMap out₁ out₂ f upper ∧ IsChainMap in₁ in₂ lower f

def checkCompatibleMap (out₁ : Matrix k m) (in₁ : Matrix m n)
    (out₂ : Matrix l q) (in₂ : Matrix q p)
    (f : Matrix q m) (upper : Matrix l k) (lower : Matrix p n) : Bool :=
  checkChainMap out₁ out₂ f upper && checkChainMap in₁ in₂ lower f

theorem checkCompatibleMap_sound (out₁ : Matrix k m) (in₁ : Matrix m n)
    (out₂ : Matrix l q) (in₂ : Matrix q p)
    (f : Matrix q m) (upper : Matrix l k) (lower : Matrix p n)
    (h : checkCompatibleMap out₁ in₁ out₂ in₂ f upper lower = true) :
    CompatibleMap out₁ in₁ out₂ in₂ f upper lower := by
  simp only [checkCompatibleMap, Bool.and_eq_true] at h
  exact ⟨checkChainMap_sound _ _ _ _ h.1, checkChainMap_sound _ _ _ _ h.2⟩

theorem preservesCycles {out₁ : Matrix k m} {in₁ : Matrix m n}
    {out₂ : Matrix l q} {in₂ : Matrix q p}
    {f : Matrix q m} {upper : Matrix l k} {lower : Matrix p n}
    (h : CompatibleMap out₁ in₁ out₂ in₂ f upper lower)
    (x : Cycle out₁) : InKernel out₂ (eval f x.val) := by
  change eval out₂ (eval f x.val) = zero
  rw [h.1, x.property, eval_zero]

def inducedMap {out₁ : Matrix k m} {in₁ : Matrix m n}
    {out₂ : Matrix l q} {in₂ : Matrix q p}
    {f : Matrix q m} {upper : Matrix l k} {lower : Matrix p n}
    (h : CompatibleMap out₁ in₁ out₂ in₂ f upper lower) :
    Homology out₁ in₁ → Homology out₂ in₂ :=
  Quot.lift (fun x : Cycle out₁ => Quot.mk _ ⟨eval f x.val, preservesCycles h x⟩) (by
    intro x y hxy
    apply Quot.sound
    obtain ⟨z, hz⟩ := hxy
    refine ⟨eval lower z, ?_⟩
    change eval in₂ (eval lower z) = add (eval f x.val) (eval f y.val)
    rw [h.2, hz, eval_add])

/-- Computable matrix of the induced homology map in verified coordinates. -/
def coordinateMap (source : Comparison k m n a) (target : Comparison l q p b)
    (f : Matrix q m) : Matrix b a :=
  compose target.projection (compose f source.inclusion)

theorem induced_coordinates {out₁ : Matrix k m} {in₁ : Matrix m n}
    {out₂ : Matrix l q} {in₂ : Matrix q p}
    {f : Matrix q m} {upper : Matrix l k} {lower : Matrix p n}
    (h : CompatibleMap out₁ in₁ out₂ in₂ f upper lower)
    (source : Comparison k m n a) (target : Comparison l q p b)
    (hs : HomologyComparison out₁ in₁ source)
    (ht : HomologyComparison out₂ in₂ target) (z : Vec a) :
    (homologyEquivalence out₂ in₂ target ht).toCoordinates
      (inducedMap h ((homologyEquivalence out₁ in₁ source hs).fromCoordinates z)) =
    eval (coordinateMap source target f) z := by
  change eval target.projection (eval f (eval source.inclusion z)) = _
  simp only [coordinateMap, eval_compose]

/-- This square commutes on every homology class, not merely representatives
listed by an external program. -/
theorem induced_coordinates_all {out₁ : Matrix k m} {in₁ : Matrix m n}
    {out₂ : Matrix l q} {in₂ : Matrix q p}
    {f : Matrix q m} {upper : Matrix l k} {lower : Matrix p n}
    (h : CompatibleMap out₁ in₁ out₂ in₂ f upper lower)
    (source : Comparison k m n a) (target : Comparison l q p b)
    (hs : HomologyComparison out₁ in₁ source)
    (ht : HomologyComparison out₂ in₂ target) (x : Homology out₁ in₁) :
    (homologyEquivalence out₂ in₂ target ht).toCoordinates (inducedMap h x) =
    eval (coordinateMap source target f)
      ((homologyEquivalence out₁ in₁ source hs).toCoordinates x) := by
  have he := induced_coordinates h source target hs ht
    ((homologyEquivalence out₁ in₁ source hs).toCoordinates x)
  rw [(homologyEquivalence out₁ in₁ source hs).leftInverse x] at he
  exact he

instance (out₁ : Matrix k m) (in₁ : Matrix m n)
    (out₂ : Matrix l q) (in₂ : Matrix q p)
    (f : Matrix q m) (upper : Matrix l k) (lower : Matrix p n) :
    LinProgramCertificates.CertificateVerifier (CompatibleMap out₁ in₁ out₂ in₂ f upper lower) where
  Cert := Unit
  check := fun _ => checkCompatibleMap out₁ in₁ out₂ in₂ f upper lower
  sound := fun _ => checkCompatibleMap_sound out₁ in₁ out₂ in₂ f upper lower

end PageTransitionCertificates
