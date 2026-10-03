import KIPBase.Synthetic.Sphere

/-!
# The λ-boundary and its maps on homotopy groups

The boundary of multiplication by λ, its naturality, and the exactness
statements needed for the boundary extension spectral sequence.
-/

namespace KIPBase.Synthetic

open CategoryTheory CategoryTheory.Limits CategoryTheory.Pretriangulated

universe u v

variable {Syn : Type u} [Category.{v} Syn] [Preadditive Syn]
    [HasZeroObject Syn] [HasShift Syn ℤ]
    [∀ n : ℤ, Functor.Additive (shiftFunctor Syn n)]
    [MonoidalCategory Syn]
    [Pretriangulated Syn] [SyntheticCategory Syn]

/-! ### The λ-boundary -/

/-- The boundary morphism in the cofiber sequence
`Σ^{0,-1}X →[λ] X → X/λ → Σ^{1,-1}X`.
The identity `lambdaPow_one` makes this the boundary of the given λ. -/
noncomputable def lambdaBocksteinConnecting (X : Syn) :
    XModLambdaN X 1 ⟶
      (shiftFunctor Syn (1 : ℤ)).obj
        ((SyntheticCategory.biShift (0, (-1 : ℤ))).obj X) :=
  syn_functorial_cofiber.cofibδ (lambdaPow 1 X)

/-- The boundary agrees with the projection of the original λ-cofiber. -/
@[simp] theorem lambdaBocksteinConnecting_eq_proj (X : Syn) :
    lambdaBocksteinConnecting X = XModLambda.proj X :=
  rfl

/-- The λ-boundary as a natural transformation on synthetic spectra. -/
noncomputable def lambdaBocksteinConnectingNatTrans :
    XModLambdaN.functor (Syn := Syn) 1 ⟶
      SyntheticCategory.biShift (0, (-1 : ℤ)) ⋙ shiftFunctor Syn (1 : ℤ) :=
  XModLambdaN.projNatTrans 1

/-- The λ-Bockstein boundary is natural in the synthetic spectrum. -/
theorem lambdaBocksteinConnecting_naturality {X Y : Syn} (f : X ⟶ Y) :
    XModLambdaN.map f 1 ≫ lambdaBocksteinConnecting Y =
      lambdaBocksteinConnecting X ≫
        (shiftFunctor Syn (1 : ℤ)).map
          ((SyntheticCategory.biShift (0, (-1 : ℤ))).map f) :=
  lambdaBocksteinConnectingNatTrans.naturality f

/-- The maps used by the boundary ESS belong to the λ distinguished triangle. -/
theorem lambdaBockstein_triangle_distinguished (X : Syn) :
    Triangle.mk (SyntheticCategory.lam.app X)
      (XModLambda.incl X) (lambdaBocksteinConnecting X) ∈
        distTriang Syn :=
  XModLambda.triangle_distinguished X

/-- The quotient inclusion is killed by the λ-boundary. -/
theorem lambdaBockstein_incl_comp_connecting (X : Syn) :
    XModLambda.incl X ≫ lambdaBocksteinConnecting X = 0 :=
  comp_distTriang_mor_zero₂₃ _
    (lambdaBockstein_triangle_distinguished X)

/-- The λ-boundary is killed by the suspended λ map. -/
theorem lambdaBockstein_connecting_comp_shift_lambda (X : Syn) :
    lambdaBocksteinConnecting X ≫
      (shiftFunctor Syn (1 : ℤ)).map (SyntheticCategory.lam.app X) = 0 :=
  comp_distTriang_mor_zero₃₁ _
    (lambdaBockstein_triangle_distinguished X)

/-- The quotient inclusion and boundary form a short complex. -/
noncomputable def lambdaBocksteinBoundaryComplex (X : Syn) : ShortComplex Syn :=
  ShortComplex.mk (XModLambda.incl X) (lambdaBocksteinConnecting X)
    (lambdaBockstein_incl_comp_connecting X)

/-- λ naturality induces a map of the boundary short complexes.
Both commuting squares are proved from the cofiber construction. -/
noncomputable def lambdaBocksteinBoundaryComplexMap {X Y : Syn} (f : X ⟶ Y) :
    lambdaBocksteinBoundaryComplex X ⟶ lambdaBocksteinBoundaryComplex Y :=
  ShortComplex.homMk f (XModLambdaN.map f 1)
    ((shiftFunctor Syn (1 : ℤ)).map
      ((SyntheticCategory.biShift (0, (-1 : ℤ))).map f))
    (XModLambdaN.incl_naturality f 1)
    (lambdaBocksteinConnecting_naturality f)

/-- The boundary short complex is functorial, using the already proved
identity and composition laws for finite λ-quotients. -/
noncomputable def lambdaBocksteinBoundaryComplexFunctor : Syn ⥤ ShortComplex Syn where
  obj X := lambdaBocksteinBoundaryComplex X
  map f := lambdaBocksteinBoundaryComplexMap f
  map_id X := by
    ext <;> simp [lambdaBocksteinBoundaryComplexMap,
      lambdaBocksteinBoundaryComplex]
  map_comp f g := by
    ext <;> simp [lambdaBocksteinBoundaryComplexMap,
      lambdaBocksteinBoundaryComplex, Functor.map_comp]

/-! ### The actual maps on represented homotopy groups -/

/-- Postcomposition with the λ-boundary is an additive map on represented
homotopy groups. Taking `T` to be a synthetic sphere gives the bigraded
homotopy map used by the boundary ESS. -/
noncomputable def lambdaBocksteinHomMap (T X : Syn) :
    (T ⟶ XModLambdaN X 1) →+
      (T ⟶ (shiftFunctor Syn (1 : ℤ)).obj
        ((SyntheticCategory.biShift (0, (-1 : ℤ))).obj X)) where
  toFun a := a ≫ lambdaBocksteinConnecting X
  map_zero' := zero_comp
  map_add' a b := by simp only [Preadditive.add_comp]

@[simp] theorem lambdaBocksteinHomMap_apply (T X : Syn)
    (a : T ⟶ XModLambdaN X 1) :
    lambdaBocksteinHomMap T X a = a ≫ lambdaBocksteinConnecting X :=
  rfl

/-- Naturality of the boundary on homotopy classes follows from λ
naturality, without a separate hypothesis about the boundary map. -/
theorem lambdaBocksteinHomMap_naturality (T : Syn) {X Y : Syn}
    (f : X ⟶ Y) (a : T ⟶ XModLambdaN X 1) :
    lambdaBocksteinHomMap T Y (a ≫ XModLambdaN.map f 1) =
      lambdaBocksteinHomMap T X a ≫
        (shiftFunctor Syn (1 : ℤ)).map
          ((SyntheticCategory.biShift (0, (-1 : ℤ))).map f) := by
  simp only [lambdaBocksteinHomMap_apply, Category.assoc,
    lambdaBocksteinConnecting_naturality]

/-- Changing the representing object commutes with the boundary map. -/
theorem lambdaBocksteinHomMap_precomp {T U : Syn} (a : U ⟶ T)
    (X : Syn) (b : T ⟶ XModLambdaN X 1) :
    lambdaBocksteinHomMap U X (a ≫ b) = a ≫ lambdaBocksteinHomMap T X b :=
  Category.assoc a b (lambdaBocksteinConnecting X)

/-- A homotopy class in `X/λ` has zero boundary exactly when it lifts to X. -/
theorem lambdaBocksteinHomMap_eq_zero_iff (T X : Syn)
    (a : T ⟶ XModLambdaN X 1) :
    lambdaBocksteinHomMap T X a = 0 ↔
      ∃ b : T ⟶ X, b ≫ XModLambda.incl X = a := by
  change a ≫ lambdaBocksteinConnecting X = 0 ↔ _
  constructor
  · intro ha
    obtain ⟨b, hb⟩ := Triangle.coyoneda_exact₃ _
      (lambdaBockstein_triangle_distinguished X) a ha
    exact ⟨b, hb.symm⟩
  · rintro ⟨b, rfl⟩
    exact (Category.assoc b (XModLambda.incl X)
      (lambdaBocksteinConnecting X)).trans
      ((congrArg (fun q => b ≫ q)
        (lambdaBockstein_incl_comp_connecting X)).trans (comp_zero))

/-- A class is a boundary exactly when suspended multiplication by λ kills
it. This is exactness at the target of the boundary, in represented Hom. -/
theorem lambdaBocksteinHomMap_range_iff (T X : Syn)
    (b : T ⟶ (shiftFunctor Syn (1 : ℤ)).obj
      ((SyntheticCategory.biShift (0, (-1 : ℤ))).obj X)) :
    (∃ a : T ⟶ XModLambdaN X 1, lambdaBocksteinHomMap T X a = b) ↔
      b ≫ (shiftFunctor Syn (1 : ℤ)).map (SyntheticCategory.lam.app X) = 0 := by
  constructor
  · rintro ⟨a, rfl⟩
    change (a ≫ lambdaBocksteinConnecting X) ≫ _ = 0
    rw [Category.assoc, lambdaBockstein_connecting_comp_shift_lambda, comp_zero]
  · intro hb
    obtain ⟨a, ha⟩ := Triangle.coyoneda_exact₁ _
      (lambdaBockstein_triangle_distinguished X) b hb
    exact ⟨a, ha.symm⟩

/-- A class in X maps to zero in `X/λ` exactly when it is divisible by λ. -/
theorem lambdaBockstein_incl_eq_zero_iff (T X : Syn) (a : T ⟶ X) :
    a ≫ XModLambda.incl X = 0 ↔
      ∃ b : T ⟶ (SyntheticCategory.biShift (0, (-1 : ℤ))).obj X,
        b ≫ SyntheticCategory.lam.app X = a := by
  constructor
  · intro ha
    obtain ⟨b, hb⟩ := Triangle.coyoneda_exact₂ _
      (lambdaBockstein_triangle_distinguished X) a ha
    exact ⟨b, hb.symm⟩
  · rintro ⟨b, rfl⟩
    exact (Category.assoc b (SyntheticCategory.lam.app X)
      (XModLambda.incl X)).trans
      ((congrArg (fun q => b ≫ q)
        (XModLambda.lam_comp_incl X)).trans (comp_zero))

/-- The map on represented homotopy groups induced by the quotient inclusion. -/
noncomputable def lambdaBocksteinInclHom (T X : Syn) :
    (T ⟶ X) →+ (T ⟶ XModLambdaN X 1) where
  toFun a := a ≫ XModLambda.incl X
  map_zero' := zero_comp
  map_add' a b := by simp only [Preadditive.add_comp]

/-- Suspended multiplication by λ on represented homotopy groups. -/
noncomputable def lambdaBocksteinShiftLambdaHom (T X : Syn) :
    (T ⟶ (shiftFunctor Syn (1 : ℤ)).obj
      ((SyntheticCategory.biShift (0, (-1 : ℤ))).obj X)) →+
        (T ⟶ (shiftFunctor Syn (1 : ℤ)).obj X) where
  toFun a := a ≫ (shiftFunctor Syn (1 : ℤ)).map (SyntheticCategory.lam.app X)
  map_zero' := zero_comp
  map_add' a b := by simp only [Preadditive.add_comp]

/-- Kernel/image form of exactness at the λ-quotient, for use in subquotients. -/
theorem lambdaBocksteinInclHom_range (T X : Syn) :
    (lambdaBocksteinInclHom T X).range = (lambdaBocksteinHomMap T X).ker := by
  ext a
  change (∃ b : T ⟶ X, b ≫ XModLambda.incl X = a) ↔
    lambdaBocksteinHomMap T X a = 0
  exact (lambdaBocksteinHomMap_eq_zero_iff T X a).symm

/-- Kernel/image form of exactness at the target of the λ-boundary. -/
theorem lambdaBocksteinHomMap_range (T X : Syn) :
    (lambdaBocksteinHomMap T X).range =
      (lambdaBocksteinShiftLambdaHom T X).ker := by
  ext b
  change (∃ a : T ⟶ XModLambdaN X 1, lambdaBocksteinHomMap T X a = b) ↔
    b ≫ (shiftFunctor Syn (1 : ℤ)).map (SyntheticCategory.lam.app X) = 0
  exact lambdaBocksteinHomMap_range_iff T X b

/-- The boundary induces an isomorphism from homotopy classes in the
λ-quotient, modulo classes lifted from X, to classes killed by suspended λ.
This is an isomorphism of abelian groups, before taking Adams filtrations. -/
noncomputable def lambdaBocksteinQuotientEquiv (T X : Syn) :
    ((T ⟶ XModLambdaN X 1) ⧸ (lambdaBocksteinInclHom T X).range) ≃+
      (lambdaBocksteinShiftLambdaHom T X).ker := by
  let e : (lambdaBocksteinHomMap T X).range ≃+
      (lambdaBocksteinShiftLambdaHom T X).ker :=
    { toFun := fun a => ⟨a.val, by
        rw [← lambdaBocksteinHomMap_range T X]
        exact a.property⟩
      invFun := fun a => ⟨a.val, by
        rw [lambdaBocksteinHomMap_range T X]
        exact a.property⟩
      left_inv := fun _ => rfl
      right_inv := fun _ => rfl
      map_add' := fun _ _ => rfl }
  exact (QuotientAddGroup.quotientAddEquivOfEq
    (lambdaBocksteinInclHom_range T X)).trans
      ((QuotientAddGroup.quotientKerEquivRange
        (lambdaBocksteinHomMap T X)).trans e)

/-- The quotient isomorphism sends a represented class to its actual
λ-boundary; it does not choose an unrelated group isomorphism. -/
@[simp] theorem lambdaBocksteinQuotientEquiv_apply (T X : Syn)
    (a : T ⟶ XModLambdaN X 1) :
    (lambdaBocksteinQuotientEquiv T X
      (QuotientAddGroup.mk a)).val = lambdaBocksteinHomMap T X a := by
  rfl

/-- The induced map on classes modulo those lifted from the original object.
Preservation of the subgroup is proved from quotient-inclusion naturality. -/
noncomputable def lambdaBocksteinQuotientMap (T : Syn) {X Y : Syn}
    (f : X ⟶ Y) :
    ((T ⟶ XModLambdaN X 1) ⧸ (lambdaBocksteinInclHom T X).range) →+
      ((T ⟶ XModLambdaN Y 1) ⧸ (lambdaBocksteinInclHom T Y).range) := by
  let q : (T ⟶ XModLambdaN X 1) →+ (T ⟶ XModLambdaN Y 1) :=
    { toFun := fun a => a ≫ XModLambdaN.map f 1
      map_zero' := zero_comp
      map_add' := fun a b => by simp only [Preadditive.add_comp] }
  refine QuotientAddGroup.map _ _ q ?_
  rintro _ ⟨b, rfl⟩
  refine ⟨b ≫ f, ?_⟩
  change (b ≫ f) ≫ XModLambda.incl Y =
    (b ≫ XModLambda.incl X) ≫ XModLambdaN.map f 1
  exact (Category.assoc b f (XModLambda.incl Y)).trans
    ((congrArg (fun g => b ≫ g) (XModLambdaN.incl_naturality f 1)).trans
      (Category.assoc b (XModLambda.incl X) (XModLambdaN.map f 1)).symm)

@[simp] theorem lambdaBocksteinQuotientMap_mk (T : Syn) {X Y : Syn}
    (f : X ⟶ Y) (a : T ⟶ XModLambdaN X 1) :
    lambdaBocksteinQuotientMap T f (QuotientAddGroup.mk a) =
      QuotientAddGroup.mk (a ≫ XModLambdaN.map f 1) :=
  rfl

/-- Suspended λ-torsion is preserved by maps of synthetic objects,
as a direct consequence of λ naturality. -/
noncomputable def lambdaBocksteinTorsionMap (T : Syn) {X Y : Syn}
    (f : X ⟶ Y) :
    (lambdaBocksteinShiftLambdaHom T X).ker →+
      (lambdaBocksteinShiftLambdaHom T Y).ker where
  toFun b := ⟨b.val ≫ (shiftFunctor Syn (1 : ℤ)).map
      ((SyntheticCategory.biShift (0, (-1 : ℤ))).map f), by
    change (b.val ≫ _) ≫
      (shiftFunctor Syn (1 : ℤ)).map (SyntheticCategory.lam.app Y) = 0
    rw [Category.assoc, ← Functor.map_comp, SyntheticCategory.lam.naturality f,
      Functor.map_comp, ← Category.assoc]
    have hb : b.val ≫
        (shiftFunctor Syn (1 : ℤ)).map (SyntheticCategory.lam.app X) = 0 :=
      b.property
    rw [hb, zero_comp]⟩
  map_zero' := Subtype.ext zero_comp
  map_add' a b := Subtype.ext (by
    change (a.val + b.val) ≫ _ = a.val ≫ _ + b.val ≫ _
    simp only [Preadditive.add_comp])

/-- The boundary-induced quotient isomorphism is natural in the synthetic
object. Its commuting square is proved from λ naturality on representatives. -/
theorem lambdaBocksteinQuotientEquiv_naturality (T : Syn) {X Y : Syn}
    (f : X ⟶ Y)
    (a : (T ⟶ XModLambdaN X 1) ⧸ (lambdaBocksteinInclHom T X).range) :
    lambdaBocksteinQuotientEquiv T Y (lambdaBocksteinQuotientMap T f a) =
      lambdaBocksteinTorsionMap T f (lambdaBocksteinQuotientEquiv T X a) := by
  induction a using QuotientAddGroup.induction_on with
  | H a =>
    apply Subtype.ext
    change lambdaBocksteinHomMap T Y (a ≫ XModLambdaN.map f 1) =
      lambdaBocksteinHomMap T X a ≫
        (shiftFunctor Syn (1 : ℤ)).map
          ((SyntheticCategory.biShift (0, (-1 : ℤ))).map f)
    exact lambdaBocksteinHomMap_naturality T f a

/-- The boundary map on bigraded homotopy groups. The target is left as a
suspended object, so no unproved Adams-filtration suspension rule is used. -/
noncomputable def lambdaBocksteinHomotopyMap (X : Syn) (m w : ℤ) :
    (Smn (Syn := Syn) m w ⟶ XModLambdaN X 1) →+
      (Smn (Syn := Syn) m w ⟶ (shiftFunctor Syn (1 : ℤ)).obj
        ((SyntheticCategory.biShift (0, (-1 : ℤ))).obj X)) :=
  lambdaBocksteinHomMap (Smn m w) X

end KIPBase.Synthetic
