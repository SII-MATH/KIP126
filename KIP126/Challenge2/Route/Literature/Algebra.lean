import KIP126.Challenge2.Route.Literature.Classical
import KIP126.Def.Kervaire.Route.Multiplication.Comparison

/-! The ordinary homotopy-category consequences of the external symmetric
monoidal and λ-quotient algebra theorems. A commutative monoid object here
is NOT advertised as a construction of an E∞ algebra. These explicit
consequences are exactly the algebraic operations the selected route uses. -/
namespace KIP126.Literature.Route
open CategoryTheory CategoryTheory.MonoidalCategory
open KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology KIP126.Classical.Adams
open KIP126.Synthetic.Context KIP126.Kervaire.Route
universe u v w
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn] [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {M : MilnorCooperations H} (D : Model H M Syn)

/-- Multiplication of homotopy classes induced by an ACTUAL monoid object.
The order y ⊗ x matches the existing `sphereAction x y` convention. -/
noncomputable abbrev algebraProduct {A : Syn} (Q : MonObj A) {m n k l : ℤ}
    (x : BiHom m n A) (y : BiHom k l A) : BiHom (m+k) (n+l) A :=
  KIP126.Kervaire.Route.algebraProduct Q x y

/-- The source existence consequence of BHSmot Appendices B/C and
BX `cnstr:bock-maps`, transported along cofiber-object isomorphisms.
Each positive finite quotient has a commutative algebra whose unit is its
specified inclusion. No assertion about a preselected cofiber filler or
the route sphere action is accepted in this raw source statement. -/
structure QuotientAlgebraStructures (D : Model H M Syn) [BraidedCategory Syn] where
  algebra : ∀ q : ℕ, 0 < q → MonObj (XModLambdaN (S00 : Syn) q)
  commutative : ∀ (q : ℕ) (hq : 0 < q),
    letI := algebra q hq; IsCommMonObj (XModLambdaN (S00 : Syn) q)
  unit : ∀ (q : ℕ) (hq : 0 < q), (algebra q hq).one = XModLambdaN.incl S00 q

/-- The route-ready quotient algebras. The two additional comparisons are
INTERNAL source-to-model obligations: a TR3 cofiber filler is not identified
with a source algebra restriction merely by having the same name or square.
Producing these fields for the selected source algebras remains an
Interface comparison obligation; source algebra existence alone is insufficient. -/
structure QuotientAlgebras [BraidedCategory Syn] extends QuotientAlgebraStructures D where
  /-- The algebra product extends the already fixed sphere action. -/
  sphere_action : ∀ (q : ℕ) (hq : 0 < q) (m n k l : ℤ)
      (x : BiHom m n (S00 : Syn)) (y : BiHom k l (XModLambdaN S00 q)),
    algebraProduct (algebra q hq) (quotientClass q x) y = sphereAction x y
  restriction : ∀ (i j : ℕ) (hi : 0 < i) (hij : i ≤ j),
    ((D.quotientTower (S00 : Syn)).rho i j hij ⊗ₘ
        (D.quotientTower (S00 : Syn)).rho i j hij) ≫ (algebra i hi).mul =
      (algebra j (hi.trans_le hij)).mul ≫ (D.quotientTower (S00 : Syn)).rho i j hij

/-- The ring structure of the SAME detector and its synthetic analogue.
The units are fixed to D's actual Hurewicz maps. This is the ordinary
homotopy-category consequence of tmf being a commutative ring spectrum
and the synthetic analogue being lax monoidal. -/
structure DetectorAlgebra [BraidedCategory C] [BraidedCategory Syn] where
  classical : MonObj D.auxiliary.detector
  classical_commutative : letI := classical; IsCommMonObj D.auxiliary.detector
  classical_unit : classical.one = D.auxiliary.detectorUnit
  synthetic : MonObj (D.nu.functor.obj D.auxiliary.detector)
  synthetic_commutative : letI := synthetic
    IsCommMonObj (D.nu.functor.obj D.auxiliary.detector)
  synthetic_unit : synthetic.one = KIP126.Main.Solution.Route.detectorMap D
  sphere_action : ∀ (m n k l : ℤ) (x : BiHom m n (S00 : Syn))
      (y : BiHom k l (D.nu.functor.obj D.auxiliary.detector)),
    algebraProduct synthetic (x ≫ KIP126.Main.Solution.Route.detectorMap D) y =
      sphereAction x y

/-- Existence witnesses for source algebra consequences, on the same
tensor products and realization. Providing these fields is an explicit
application of the external source to this model; no instance is installed.
Pstrągowski's λ-inversion is symmetric monoidal. -/
structure AlgebraData where
  classicalSymmetric : SymmetricCategory C
  syntheticSymmetric : SymmetricCategory Syn
  realizationMonoidal : letI := classicalSymmetric; letI := syntheticSymmetric
    D.recovery.SymmetricMonoidal
  quotients : letI := syntheticSymmetric; QuotientAlgebraStructures D
  detector : letI := classicalSymmetric; letI := syntheticSymmetric; DetectorAlgebra D

/-- Existence witnesses for source algebra consequences, on the same
tensor products and realization. Providing these fields is an explicit
application of the external source to this model; no instance is installed.
Pstrągowski's λ-inversion is symmetric monoidal. -/
structure AlgebraInput where
  classicalSymmetric : SymmetricCategory C
  syntheticSymmetric : SymmetricCategory Syn
  realizationMonoidal : letI := classicalSymmetric; letI := syntheticSymmetric
    D.recovery.SymmetricMonoidal
  quotients : letI := syntheticSymmetric; QuotientAlgebras D
  detector : letI := classicalSymmetric; letI := syntheticSymmetric; DetectorAlgebra D


/-- Compatibility of the source quotient structures with the actual route
sphere action and restriction maps. This is produced internally, separately
from the source existence result. -/
structure QuotientAlgebraBinding (I : AlgebraData D) : Prop where
  sphere_action : letI := I.syntheticSymmetric; ∀ (q : ℕ) (hq : 0 < q) (m n k l : ℤ)
      (x : BiHom m n (S00 : Syn)) (y : BiHom k l (XModLambdaN S00 q)),
    algebraProduct (I.quotients.algebra q hq) (quotientClass q x) y = sphereAction x y
  restriction : letI := I.syntheticSymmetric; ∀ (i j : ℕ) (hi : 0 < i) (hij : i ≤ j),
    ((D.quotientTower (S00 : Syn)).rho i j hij ⊗ₘ
        (D.quotientTower (S00 : Syn)).rho i j hij) ≫ (I.quotients.algebra i hi).mul =
      (I.quotients.algebra j (hi.trans_le hij)).mul ≫ (D.quotientTower (S00 : Syn)).rho i j hij

/-- Assemble the consumer record on exactly the supplied source algebra. -/
def AlgebraData.withBinding (I : AlgebraData D) (B : QuotientAlgebraBinding D I) :
    AlgebraInput D where
  classicalSymmetric := I.classicalSymmetric
  syntheticSymmetric := I.syntheticSymmetric
  realizationMonoidal := I.realizationMonoidal
  quotients := by
    letI := I.syntheticSymmetric
    exact { I.quotients with sphere_action := B.sphere_action, restriction := B.restriction }
  detector := I.detector

end KIP126.Literature.Route
