import KIP126.Def.Synthetic.Source.NuMonoidal
import KIP126.Def.Synthetic.Source.Signs
import KIP126.Def.StableHomotopy.Context.TensorPairing.Data

/-! The two sphere pairings in Pstragowski's sign-conventions remark.
The definition first uses the paper's actual presentation
`Sigma^(t-w) nu(S^w)`.  Its raw tensor map and its preferred tensor map
are distinct. Neither is defined by, or silently identified with, the
composition of the source's pre/post shift functors. -/
namespace KIP126.Synthetic.Source
open CategoryTheory CategoryTheory.Functor CategoryTheory.MonoidalCategory
open KIP126.StableHomotopy KIP126.StableHomotopy.Source
noncomputable section

/-- Named regrading of the original point-set pre/post normalization.
All presentations below deliberately use this RAW map. In particular
they do not depend recursively on the preferred addition defined later. -/
def rawBiShiftAddTo (R : RealizedFoundation) (a b c : ℤ × ℤ) (h : a+b=c) :
    biShift R a ⋙ biShift R b ≅ biShift R c :=
  biShiftAddRaw R a b ≪≫ eqToIso (congrArg (biShift R) h)

/-- Pstragowski's sphere presentation, with value suspension visible. -/
def pstSphere (R : RealizedFoundation) (p : ℤ × ℤ) : HypercompleteCategory R :=
  (biShift R (p.1-p.2,0)).obj ((nu R).obj (Sphere p.2))

/-- Suspend the right factor using the SAME braiding and the actual
left suspension/Day strength. This fixes the interchange map. -/
def rightValueShiftTensorIso (R : RealizedFoundation) (n : ℤ)
    (X Y : HypercompleteCategory R) :
    X ⊗ (biShift R (n,0)).obj Y ≅ (biShift R (n,0)).obj (X ⊗ Y) :=
  (β_ X ((biShift R (n,0)).obj Y)) ≪≫
    (biShiftTensorIso R (n,0)).symm.app (Y,X) ≪≫
      (biShift R (n,0)).mapIso (β_ Y X)

/-- The equivalence in Pstragowski's equation
`canonical_associativity_constraint`: first move both VALUE suspension
coordinates outside tensor, then multiply the ordinary spheres through
the actual finite-projective nu tensor comparison.

The ordinary tensor-shift structure is the one in `R.tensor`; its source
normalization is expressed separately by `OrdinaryTensorShiftBinding R`.
There is no freely chosen isomorphism between spheres of equal degrees. -/
def pstRawSphereTensorIso (R : RealizedFoundation) (p q : ℤ × ℤ) :
    pstSphere R p ⊗ pstSphere R q ≅ pstSphere R (p+q) := by
  letI := R.tensor
  let A := (nu R).obj (Sphere p.2)
  let B := (nu R).obj (Sphere q.2)
  let a := p.1-p.2
  let b := q.1-q.2
  exact (biShiftTensorIso R (a,0)).symm.app (A,(biShift R (b,0)).obj B) ≪≫
    (biShift R (a,0)).mapIso (rightValueShiftTensorIso R b A B) ≪≫
    (rawBiShiftAddTo R (b,0) (a,0) ((p+q).1-(p+q).2,0)
      (by ext <;> simp [a,b] <;> omega)).app (A ⊗ B) ≪≫
    (biShift R ((p+q).1-(p+q).2,0)).mapIso
      (nuTensorSphereIso R p.2 q.2 ≪≫
        (nu R).mapIso (sphereTensorIsoFromRightShift (C := R.foundation.Spectrum) p.2 q.2))

/-- Pstragowski's PREFERRED equivalence is exactly `(-1)^(w*t')`
times the preceding raw map. The sign is the actual loop-reversal
involution, even before a transported Preadditive instance is installed. -/
def pstPreferredSphereTensorIso (R : RealizedFoundation) (p q : ℤ × ℤ) :
    pstSphere R p ⊗ pstSphere R q ≅ pstSphere R (p+q) :=
  pstRawSphereTensorIso R p q ≪≫ (signIso R (p.2*q.1)).app (pstSphere R (p+q))

/-- The sphere used by source shift composition. -/
def actionSphere (R : RealizedFoundation) (p : ℤ × ℤ) : HypercompleteCategory R :=
  (biShift R p).obj (𝟙_ (HypercompleteCategory R))

/-- This is the tensor pairing corresponding to composition of shifted
maps, in tensor-input order `(p,q)`. Consequently `sphereAction x y`,
where x has degree q and y degree p, uses this pairing's INVERSE.
Keeping this order explicit prevents reversing Pstragowski's exponent. -/
def compositionSphereTensorIso (R : RealizedFoundation) (p q : ℤ × ℤ) :
    actionSphere R p ⊗ actionSphere R q ≅ actionSphere R (p+q) :=
  (biShiftTensorIso R p).symm.app (𝟙_ _,actionSphere R q) ≪≫
    (biShift R p).mapIso (λ_ (actionSphere R q)) ≪≫
      (rawBiShiftAddTo R q p (p+q) (add_comm q p)).app (𝟙_ _)

/-- The actual +1 ordinary sphere comparison used to iterate the fixed
function-spectrum suspension map for nu. -/
def ordinarySphereSuccessorIso (R : RealizedFoundation) (n : ℤ) :
    (Sphere (n+1) : R.foundation.Spectrum) ≅
      (shiftFunctor R.foundation.Spectrum (1:ℤ)).obj (Sphere n) :=
  (shiftFunctorAdd R.foundation.Spectrum n 1).app (𝟙_ _)

/-- A family is pinned at zero and at EVERY successor (also for negative
integers). Thus no independent sign can be selected in each weight. -/
structure NuSphereSuspensionFamily (R : RealizedFoundation) where
  iso : ∀ n : ℤ, (nu R).obj (Sphere n) ≅ actionSphere R (n,n)
  zero : iso 0 =
    (nu R).mapIso ((shiftFunctorZero R.foundation.Spectrum ℤ).app (𝟙_ _)) ≪≫
      (biShiftZero R).symm.app (𝟙_ _)
  successor : ∀ n : ℤ, iso (n+1) =
    (nu R).mapIso (ordinarySphereSuccessorIso R n) ≪≫
      (nuSuspensionIso R).app (Sphere n) ≪≫
      (biShift R (1,1)).mapIso (iso n) ≪≫
      (rawBiShiftAddTo R (n,n) (1,1) (n+1,n+1) (by ext <;> simp)).app (𝟙_ _)

/-- Integer recursion with the fixed equivalence biShift(1,1). The
negative recursion is forced by full faithfulness, not a fresh choice. -/
theorem exists_nuSphereSuspensionFamily (R : RealizedFoundation) :
    Nonempty (NuSphereSuspensionFamily R) := by sorry

theorem nuSphereSuspensionFamily_unique (R : RealizedFoundation)
    (F G : NuSphereSuspensionFamily R) : F = G := by sorry

def nuSphereSuspensionFamily (R : RealizedFoundation) : NuSphereSuspensionFamily R :=
  Classical.choice (exists_nuSphereSuspensionFamily R)

/-- Identify the paper's sphere with the source action sphere using only
the preceding fixed nu suspension and the same value-shift addition. -/
def pstSphereIso (R : RealizedFoundation) (p : ℤ × ℤ) :
    pstSphere R p ≅ actionSphere R p :=
  (biShift R (p.1-p.2,0)).mapIso ((nuSphereSuspensionFamily R).iso p.2) ≪≫
    (rawBiShiftAddTo R (p.2,p.2) (p.1-p.2,0) p (by ext <;> simp)).app (𝟙_ _)

/-- Raw and preferred maps are transported through the SAME specified
sphere comparison; this does not yet identify either with composition. -/
def rawSphereTensorIso (R : RealizedFoundation) (p q : ℤ × ℤ) :
    actionSphere R p ⊗ actionSphere R q ≅ actionSphere R (p+q) :=
  tensorIso (pstSphereIso R p).symm (pstSphereIso R q).symm ≪≫
    pstRawSphereTensorIso R p q ≪≫ pstSphereIso R (p+q)

def preferredSphereTensorIso (R : RealizedFoundation) (p q : ℤ × ℤ) :
    actionSphere R p ⊗ actionSphere R q ≅ actionSphere R (p+q) :=
  tensorIso (pstSphereIso R p).symm (pstSphereIso R q).symm ≪≫
    pstPreferredSphereTensorIso R p q ≪≫ pstSphereIso R (p+q)

/-- The preferred sphere multiplication has the topological Koszul
rule, with no additional weight sign. This is a property of the specified
Pstragowski map, not of every possible addition on biShift. -/
theorem preferredSphereTensorIso_braiding (R : RealizedFoundation)
    (h : OrdinaryTensorShiftBinding R) (p q : ℤ × ℤ) :
    (β_ (actionSphere R p) (actionSphere R q)) ≪≫
      preferredSphereTensorIso R q p ≪≫
      eqToIso (congrArg (actionSphere R) (add_comm q p)) =
    preferredSphereTensorIso R p q ≪≫
      (signIso R (p.1*q.1)).app (actionSphere R (p+q)) := by sorry

/-- The remaining comparison is this concrete automorphism, not an
unconstrained proposition named "actual". Its value decides whether the
source action addition already incorporates the preferred convention. -/
def spherePairingDiscrepancy (R : RealizedFoundation) (p q : ℤ × ℤ) :
    actionSphere R (p+q) ≅ actionSphere R (p+q) :=
  (preferredSphereTensorIso R p q).symm ≪≫ compositionSphereTensorIso R p q

/-- Tensor presentation of the ACTUAL source shift functor, on every
object, obtained from its Day strength and the unit arrow. -/
def actionTensorIso (R : RealizedFoundation) (p : ℤ × ℤ)
    (X : HypercompleteCategory R) :
    (biShift R p).obj X ≅ actionSphere R p ⊗ X :=
  (biShift R p).mapIso (λ_ X).symm ≪≫
    (biShiftTensorIso R p).app (𝟙_ _,X)

/-- Define the PREFERRED group-action addition through the tensor sphere
pairing, rather than guessing a sign correction to the raw pre/post
normalization. The outer shift has degree q, so the tensor pair is (q,p).
All the functors and every component map remain the specified source maps. -/
def preferredBiShiftAdd (R : RealizedFoundation) (p q : ℤ × ℤ) :
    biShift R p ⋙ biShift R q ≅ biShift R (p+q) :=
  NatIso.ofComponents (fun X =>
    actionTensorIso R q ((biShift R p).obj X) ≪≫
      tensorIso (Iso.refl _) (actionTensorIso R p X) ≪≫
      (α_ (actionSphere R q) (actionSphere R p) X).symm ≪≫
      tensorIso (preferredSphereTensorIso R q p ≪≫
        eqToIso (congrArg (actionSphere R) (add_comm q p))) (Iso.refl X) ≪≫
      (actionTensorIso R (p+q) X).symm) (by sorry)

def preferredBiShiftAddTo (R : RealizedFoundation) (a b c : ℤ × ℤ) (h : a+b=c) :
    biShift R a ⋙ biShift R b ≅ biShift R c :=
  preferredBiShiftAdd R a b ≪≫ eqToIso (congrArg (biShift R) h)

/-- The ordinary sphere factors use the actual tensor/shift convention.
The preferred sign is a bilinear two-cocycle, so transporting its tensor
pairing gives the full group-action associativity equation. -/
theorem preferredBiShiftAdd_associativity (R : RealizedFoundation)
    (h : OrdinaryTensorShiftBinding R)
    (a b c ab bc total : ℤ × ℤ) (hab : a+b=ab) (hbc : b+c=bc)
    (habc : ab+c=total) (habc' : a+bc=total) (X : HypercompleteCategory R) :
    (biShift R c).map ((preferredBiShiftAddTo R a b ab hab).hom.app X) ≫
      (preferredBiShiftAddTo R ab c total habc).hom.app X =
    (preferredBiShiftAddTo R b c bc hbc).hom.app ((biShift R a).obj X) ≫
      (preferredBiShiftAddTo R a bc total habc').hom.app X := by sorry

theorem preferredBiShiftAdd_left_unit (R : RealizedFoundation)
    (h : OrdinaryTensorShiftBinding R) (a : ℤ × ℤ) (X : HypercompleteCategory R) :
    (preferredBiShiftAddTo R 0 a a (zero_add a)).hom.app X =
      (biShift R a).map ((biShiftZero R).hom.app X) := by sorry

theorem preferredBiShiftAdd_right_unit (R : RealizedFoundation)
    (h : OrdinaryTensorShiftBinding R) (a : ℤ × ℤ) (X : HypercompleteCategory R) :
    (preferredBiShiftAddTo R a 0 a (add_zero a)).hom.app X =
      (biShiftZero R).hom.app ((biShift R a).obj X) := by sorry

/-- Pure topological suspension retains the actual value-shift addition;
the Pstragowski weight-dependent sign vanishes on this axis. -/
theorem preferredBiShiftAdd_topological (R : RealizedFoundation)
    (h : OrdinaryTensorShiftBinding R) (m n : ℤ) :
    preferredBiShiftAdd R (m,0) (n,0) = biShiftAddRaw R (m,0) (n,0) := by sorry

/-- The SAME cone-defined lambda has topological degree zero. It is
central for the preferred tensor convention; this statement does not
claim centrality for a separately selected raw addition law. -/
theorem lambda_preferredBiShift (R : RealizedFoundation)
    (h : OrdinaryTensorShiftBinding R) (a : ℤ × ℤ) (X : HypercompleteCategory R) :
    (lambda R).app ((biShift R a).obj X) =
      (preferredBiShiftAddTo R a (0,-1) (a+(0,-1)) rfl).hom.app X ≫
        (preferredBiShiftAddTo R (0,-1) a (a+(0,-1)) (add_comm _ _)).inv.app X ≫
        (biShift R a).map ((lambda R).app X) := by sorry

/-- The induced tensor pairing is the preferred one by construction.
This is the comparison needed by composition-defined sphere products;
it never asserts that the old raw normalizer has this property. -/
theorem preferredBiShiftAdd_sphere_pair (R : RealizedFoundation)
    (h : OrdinaryTensorShiftBinding R) (p q : ℤ × ℤ) :
    (actionTensorIso R p (actionSphere R q)).symm ≪≫
      (preferredBiShiftAddTo R q p (p+q) (add_comm q p)).app (𝟙_ _) =
        preferredSphereTensorIso R p q := by sorry

variable {R : RealizedFoundation} {Syn : Type 1}
  [Context.SyntheticCategory.{1,0} Syn] [SymmetricCategory Syn]
  {N : Context.NuFunctorData R.foundation.Spectrum Syn}
  {L : Context.LambdaRecovery N}

/-- Source binding for the preferred convention. This equation uses the
actual maps just constructed. It must REPLACE a raw-action-addition
binding, not be silently imposed in addition to that different equation.
No assertion that the raw and preferred additions coincide is made here. -/
structure PreferredShiftBinding (B : Binding R N L) : Prop where
  addition : ∀ (p q : ℤ × ℤ) (X : HypercompleteCategory R),
    B.equivalence.functor.map ((preferredBiShiftAdd R p q).hom.app X) ≫
      (B.biShiftIso (p+q)).hom.app X =
    (B.biShiftIso q).hom.app ((biShift R p).obj X) ≫
      (Context.SyntheticCategory.biShift q).map ((B.biShiftIso p).hom.app X) ≫
        (Context.SyntheticCategory.biShift_comp p q).hom.app (B.equivalence.functor.obj X)

end
end KIP126.Synthetic.Source
