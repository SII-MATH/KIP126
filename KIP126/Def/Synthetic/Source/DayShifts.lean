import KIP126.Def.Synthetic.Source.DayCoherence
import KIP126.Def.Synthetic.Source.ShiftCoherence
import KIP126.Def.StableHomotopy.Source.Orthogonal.SmashShiftZigzag

/-! The shift/Day comparison is the unique map inducing the shifted
universal pairing. Its two ingredients normalize the SAME actual shift-
smash zigzag, on the value spectra and (contravariantly) on finite inputs.
All localization occurs on WHOLE strict diagrams. -/
namespace KIP126.Synthetic.Source
open CategoryTheory CategoryTheory.Functor CategoryTheory.MonoidalCategory Opposite
open KIP126.StableHomotopy.Source
noncomputable section

private def pairDiagrams {I : Type 1} [Category.{0} I]
    (F G : I ⥤ Orthogonal.Spectrum) : I ⥤ Orthogonal.Spectrum × Orthogonal.Spectrum where
  obj P := (F.obj P,G.obj P)
  map f := (F.map f,G.map f)

private def pointwiseEquivalences (I : Type 1) [Category.{0} I] :
    MorphismProperty (I ⥤ Orthogonal.Spectrum) :=
  fun _ _ f => ∀ P, Orthogonal.stableEquivalences (f.app P)

/-- Evaluate the explicitly generated mixed-word zigzag in a localization
of complete strict diagrams, preserving its natural-transformation maps. -/
def interpretSmashShift {I : Type 1} [Category.{0} I]
    {D : Type 1} [Category.{1} D]
    {w v : Orthogonal.SmashWord} (z : Orthogonal.SmashShiftZigzag w v)
    (F G : I ⥤ Orthogonal.Spectrum) (K : (I ⥤ Orthogonal.Spectrum) ⥤ D)
    (hK : (pointwiseEquivalences I).IsInvertedBy K) :
    K.obj (pairDiagrams F G ⋙ w.functor) ≅ K.obj (pairDiagrams F G ⋙ v.functor) := by
  induction z with
  | refl w => exact Iso.refl _
  | step f hf =>
    let t := whiskerLeft (pairDiagrams F G) f.map
    have ht : pointwiseEquivalences I t := fun P => hf ((F.obj P),(G.obj P))
    letI := hK t ht
    exact asIso (K.map t)
  | symm z ih => exact ih.symm
  | trans z z' ih ih' => exact ih ≪≫ ih'

private def FiniteSmashWord (w : Orthogonal.SmashWord) : Prop :=
  ∀ P Q : FiniteSite, FiniteOrthogonal (w.functor.obj (P.obj,Q.obj))

theorem finiteSmashWord_iff {w v : Orthogonal.SmashWord}
    (z : Orthogonal.SmashShiftZigzag w v) : FiniteSmashWord w ↔ FiniteSmashWord v := by
  sorry

/-- Only those intermediate words proved finite are interpreted on the
finite site; arbitrary raw loops are not assumed to preserve finiteness. -/
def wordRestriction (w : Orthogonal.SmashWord) (h : FiniteSmashWord w)
    (F : SphericalDiagram) : BivariateDiagram where
  obj P := F.obj.obj (op ⟨w.functor.obj (P.1.unop.obj,P.2.unop.obj),h _ _⟩)
  map f := F.obj.map (ObjectProperty.homMk
    (w.functor.map (f.1.unop.hom,f.2.unop.hom))).op
  map_id := by sorry
  map_comp := by sorry

def wordRestrictionMap {w v : Orthogonal.SmashWord} (f : Orthogonal.SmashArrow w v)
    (hw : FiniteSmashWord w) (hv : FiniteSmashWord v) (F : SphericalDiagram) :
    wordRestriction v hv F ⟶ wordRestriction w hw F where
  app P := F.obj.map (ObjectProperty.homMk (f.map.app (P.1.unop.obj,P.2.unop.obj))).op
  naturality := by sorry

theorem wordRestrictionMap_equivalence {w v : Orthogonal.SmashWord}
    (f : Orthogonal.SmashArrow w v) (hf : f.IsEquivalence)
    (hw : FiniteSmashWord w) (hv : FiniteSmashWord v) (F : SphericalDiagram) :
    bivariateStableEquivalences (wordRestrictionMap f hw hv F) := by sorry

def interpretRestriction {w v : Orthogonal.SmashWord}
    (z : Orthogonal.SmashShiftZigzag w v) (hw : FiniteSmashWord w)
    (F : SphericalDiagram) :
    bivariateStableLocalization.obj (wordRestriction v ((finiteSmashWord_iff z).mp hw) F) ≅
      bivariateStableLocalization.obj (wordRestriction w hw F) := by
  induction z with
  | refl w => exact Iso.refl _
  | step f hf =>
    let t := wordRestrictionMap f hw ((finiteSmashWord_iff (.step f hf)).mp hw) F
    letI := bivariateStableEquivalences.Q_inverts t
      (wordRestrictionMap_equivalence f hf hw _ F)
    exact asIso (bivariateStableLocalization.map t)
  | symm z ih => exact (ih ((finiteSmashWord_iff (.symm z)).mp hw)).symm
  | trans z z' ih ih' => exact ih' ((finiteSmashWord_iff z).mp hw) ≪≫ ih hw

/-- Shift the first finite variable and the value, using the same functors
as biShiftDiagram. This acts on arbitrary bivariate spectral diagrams. -/
def bivariateBiShiftRaw (p : ℤ × ℤ) : BivariateDiagram ⥤ BivariateDiagram where
  obj F :=
    { obj := fun P => (Orthogonal.derivedShift (p.1-p.2)).obj
        (F.obj (op ((finiteShift (-p.2)).obj P.1.unop),P.2))
      map := fun f => (Orthogonal.derivedShift (p.1-p.2)).map
        (F.map (((finiteShift (-p.2)).map f.1.unop).op,f.2))
      map_id := by sorry
      map_comp := by sorry }
  map f :=
    { app := fun P => (Orthogonal.derivedShift (p.1-p.2)).map
        (f.app (op ((finiteShift (-p.2)).obj P.1.unop),P.2))
      naturality := by sorry }
  map_id := by sorry
  map_comp := by sorry

theorem bivariateBiShiftRaw_inverts (p : ℤ × ℤ) : bivariateStableEquivalences.IsInvertedBy
    (bivariateBiShiftRaw p ⋙ bivariateStableLocalization) := by sorry

def bivariateBiShift (p : ℤ × ℤ) : BivariateHomotopyCategory ⥤ BivariateHomotopyCategory :=
  Localization.lift _ (bivariateBiShiftRaw_inverts p) bivariateStableLocalization

def bivariateBiShiftComparison (p : ℤ × ℤ) :
    bivariateStableLocalization ⋙ bivariateBiShift p ≅
      bivariateBiShiftRaw p ⋙ bivariateStableLocalization :=
  Localization.fac _ (bivariateBiShiftRaw_inverts p) _

theorem biShiftDiagram_pointwise (p : ℤ × ℤ) : diagramStableEquivalences.IsInvertedBy
    (biShiftDiagram p ⋙ sphericalStableLocalization) := by sorry

def sphericalBiShift (p : ℤ × ℤ) : SphericalHomotopyCategory ⥤ SphericalHomotopyCategory :=
  Localization.lift _ (biShiftDiagram_pointwise p) sphericalStableLocalization

def sphericalBiShiftComparison (p : ℤ × ℤ) :
    sphericalStableLocalization ⋙ sphericalBiShift p ≅
      biShiftDiagram p ⋙ sphericalStableLocalization :=
  Localization.fac _ (biShiftDiagram_pointwise p) _

/-- Pure reassociation, not an unspecified homotopy comparison. -/
theorem externalShiftWords (p : ℤ × ℤ) (F G : SphericalDiagram) :
    let A : BivariateDiagram :=
      { obj := fun P => F.obj.obj (op ((finiteShift (-p.2)).obj P.1.unop))
        map := fun f => F.obj.map (((finiteShift (-p.2)).map f.1.unop).op) }
    let B : BivariateDiagram :=
      { obj := fun P => G.obj.obj P.2, map := fun f => G.obj.map f.2 }
    (pairDiagrams A B ⋙ (Orthogonal.SmashWord.derivedTensor
      (Orthogonal.SmashWord.shift (p.1-p.2) .left) .right).functor =
        externalProduct ((biShiftDiagram p).obj F) G) ∧
    (pairDiagrams A B ⋙ (Orthogonal.SmashWord.shift (p.1-p.2)
      (Orthogonal.SmashWord.derivedTensor .left .right)).functor =
        (bivariateBiShiftRaw p).obj (externalProduct F G)) := by sorry

def externalShiftOnPresentations (p : ℤ × ℤ) (F G : SphericalDiagram) :
    bivariateStableLocalization.obj (externalProduct ((biShiftDiagram p).obj F) G) ≅
      bivariateStableLocalization.obj ((bivariateBiShiftRaw p).obj (externalProduct F G)) := by
  let A : BivariateDiagram :=
    { obj := fun P => F.obj.obj (op ((finiteShift (-p.2)).obj P.1.unop))
      map := fun f => F.obj.map (((finiteShift (-p.2)).map f.1.unop).op) }
  let B : BivariateDiagram :=
    { obj := fun P => G.obj.obj P.2, map := fun f => G.obj.map f.2 }
  let e := interpretSmashShift (Orthogonal.smashShiftZigzag (p.1-p.2)) A B
    bivariateStableLocalization (fun _ _ f hf => bivariateStableEquivalences.Q_inverts f hf)
  exact eqToIso (congrArg bivariateStableLocalization.obj (externalShiftWords p F G).1.symm) ≪≫
    e ≪≫ eqToIso (congrArg bivariateStableLocalization.obj (externalShiftWords p F G).2)

def bivariatePostShiftRaw (n : ℤ) : BivariateDiagram ⥤ BivariateDiagram where
  obj F := F ⋙ Orthogonal.derivedShift n
  map f := whiskerRight f (Orthogonal.derivedShift n)

theorem bivariatePostShiftRaw_inverts (n : ℤ) : bivariateStableEquivalences.IsInvertedBy
    (bivariatePostShiftRaw n ⋙ bivariateStableLocalization) := by sorry

def bivariatePostShift (n : ℤ) : BivariateHomotopyCategory ⥤ BivariateHomotopyCategory :=
  Localization.lift _ (bivariatePostShiftRaw_inverts n) bivariateStableLocalization

def bivariatePostShiftComparison (n : ℤ) :
    bivariateStableLocalization ⋙ bivariatePostShift n ≅
      bivariatePostShiftRaw n ⋙ bivariateStableLocalization :=
  Localization.fac _ (bivariatePostShiftRaw_inverts n) _

theorem finite_shiftSmashWord (n : ℤ) : FiniteSmashWord
    (Orthogonal.SmashWord.derivedTensor (Orthogonal.SmashWord.shift n .left) .right) := by sorry

theorem restrictionShiftWords (p : ℤ × ℤ) (H : SphericalDiagram) :
    let z := Orthogonal.smashShiftZigzag (-p.2)
    let hw := finite_shiftSmashWord (-p.2)
    let hv := (finiteSmashWord_iff z).mp hw
    (bivariatePostShiftRaw (p.1-p.2)).obj
      (wordRestriction _ hw H) = (bivariateBiShiftRaw p).obj (dayRestriction H) ∧
    (bivariatePostShiftRaw (p.1-p.2)).obj
      (wordRestriction _ hv H) = dayRestriction ((biShiftDiagram p).obj H) := by sorry

def restrictionShiftOnPresentations (p : ℤ × ℤ) (H : SphericalDiagram) :
    bivariateStableLocalization.obj ((bivariateBiShiftRaw p).obj (dayRestriction H)) ≅
      bivariateStableLocalization.obj (dayRestriction ((biShiftDiagram p).obj H)) := by
  let z := Orthogonal.smashShiftZigzag (-p.2)
  let hw := finite_shiftSmashWord (-p.2)
  let hv := (finiteSmashWord_iff z).mp hw
  let e := (bivariatePostShift (p.1-p.2)).mapIso (interpretRestriction z hw H).symm
  exact eqToIso (congrArg bivariateStableLocalization.obj (restrictionShiftWords p H).1.symm) ≪≫
    (bivariatePostShiftComparison (p.1-p.2)).symm.app (wordRestriction _ hw H) ≪≫ e ≪≫
    (bivariatePostShiftComparison (p.1-p.2)).app (wordRestriction _ hv H) ≪≫
    eqToIso (congrArg bivariateStableLocalization.obj (restrictionShiftWords p H).2)

def externalBiShiftPresented (p : ℤ × ℤ) :
    (sphericalStableLocalization.prod sphericalStableLocalization) ⋙
      ((sphericalBiShift p).prod (𝟭 _) ⋙ derivedExternalProduct) ≅
    (sphericalStableLocalization.prod sphericalStableLocalization) ⋙
      (derivedExternalProduct ⋙ bivariateBiShift p) :=
  NatIso.ofComponents (fun F =>
    derivedExternalProduct.mapIso
      (Iso.prod ((sphericalBiShiftComparison p).app F.1) (Iso.refl _)) ≪≫
    externalProductComparison.app ((biShiftDiagram p).obj F.1,F.2) ≪≫
    externalShiftOnPresentations p F.1 F.2 ≪≫
    (bivariateBiShiftComparison p).symm.app (externalProduct F.1 F.2) ≪≫
    (bivariateBiShift p).mapIso (externalProductComparison.app (F.1,F.2)).symm) (by sorry)

def externalBiShift (p : ℤ × ℤ) :
    (sphericalBiShift p).prod (𝟭 _) ⋙ derivedExternalProduct ≅
      derivedExternalProduct ⋙ bivariateBiShift p :=
  Localization.liftNatIso (sphericalStableLocalization.prod sphericalStableLocalization)
    (diagramStableEquivalences.prod diagramStableEquivalences) _ _ _ _
    (externalBiShiftPresented p)

def restrictionBiShiftPresented (p : ℤ × ℤ) :
    sphericalStableLocalization ⋙ (derivedDayRestriction ⋙ bivariateBiShift p) ≅
      sphericalStableLocalization ⋙ (sphericalBiShift p ⋙ derivedDayRestriction) :=
  NatIso.ofComponents (fun H =>
    (bivariateBiShift p).mapIso (dayRestrictionComparison.app H) ≪≫
    (bivariateBiShiftComparison p).app (dayRestriction H) ≪≫
    restrictionShiftOnPresentations p H ≪≫
    (dayRestrictionComparison.app ((biShiftDiagram p).obj H)).symm ≪≫
    derivedDayRestriction.mapIso ((sphericalBiShiftComparison p).app H).symm) (by sorry)

def restrictionBiShift (p : ℤ × ℤ) :
    derivedDayRestriction ⋙ bivariateBiShift p ≅ sphericalBiShift p ⋙ derivedDayRestriction :=
  Localization.liftNatIso sphericalStableLocalization diagramStableEquivalences _ _ _ _
    (restrictionBiShiftPresented p)

/-- Exact shifted pairing. The value-side comparison precedes the SAME
Day unit, and the input-side comparison reverses contravariance. -/
def shiftedDayPairing (p : ℤ × ℤ) (F G : SphericalHomotopyCategory) :
    derivedExternalProduct.obj ((sphericalBiShift p).obj F,G) ⟶
      derivedDayRestriction.obj ((sphericalBiShift p).obj (sphericalDay.obj (F,G))) :=
  (externalBiShift p).hom.app (F,G) ≫
    (bivariateBiShift p).map (sphericalDayPairing F G) ≫
      (restrictionBiShift p).hom.app (sphericalDay.obj (F,G))

/-- The Day universal property fixes the comparison arrow, rather than
merely asking for some isomorphism between equal total degrees. -/
def sphericalDayShiftMap (p : ℤ × ℤ) (F G : SphericalHomotopyCategory) :
    sphericalDay.obj ((sphericalBiShift p).obj F,G) ⟶
      (sphericalBiShift p).obj (sphericalDay.obj (F,G)) :=
  (sphericalDayHom _ _ _).symm (shiftedDayPairing p F G)

instance sphericalDayShiftMap_isIso (p : ℤ × ℤ) (F G : SphericalHomotopyCategory) :
    IsIso (sphericalDayShiftMap p F G) := by sorry

def sphericalDayShiftIso (p : ℤ × ℤ) :
    (sphericalBiShift p).prod (𝟭 _) ⋙ sphericalDay ≅ sphericalDay ⋙ sphericalBiShift p :=
  NatIso.ofComponents (fun (F : SphericalHomotopyCategory × SphericalHomotopyCategory) =>
    @asIso _ _ _ _ (sphericalDayShiftMap p F.1 F.2)
      (sphericalDayShiftMap_isIso p F.1 F.2)) (by sorry)

private def hypercompletionFactor (R : RealizedFoundation) :
    sphericalStableLocalization ⋙ sphericalToHypercomplete R ≅ hypercompletion R :=
  Localization.fac _ (hypercompletion_inverts_pointwise R) sphericalStableLocalization

def sphericalBiShiftHypercompletePresented (R : RealizedFoundation) (p : ℤ × ℤ) :
    sphericalStableLocalization ⋙ (sphericalBiShift p ⋙ sphericalToHypercomplete R) ≅
      sphericalStableLocalization ⋙ (sphericalToHypercomplete R ⋙ biShift R p) :=
  isoWhiskerRight (sphericalBiShiftComparison p) (sphericalToHypercomplete R) ≪≫
    isoWhiskerLeft (biShiftDiagram p) (hypercompletionFactor R) ≪≫
    (biShiftComparison R p).symm ≪≫
    isoWhiskerRight (hypercompletionFactor R).symm (biShift R p)

def sphericalBiShiftHypercomplete (R : RealizedFoundation) (p : ℤ × ℤ) :
    sphericalBiShift p ⋙ sphericalToHypercomplete R ≅
      sphericalToHypercomplete R ⋙ biShift R p :=
  Localization.liftNatIso sphericalStableLocalization diagramStableEquivalences _ _ _ _
    (sphericalBiShiftHypercompletePresented R p)

def sourceDayBiShiftPresented (R : RealizedFoundation) (p : ℤ × ℤ) :
    ((sphericalToHypercomplete R).prod (sphericalToHypercomplete R)) ⋙
      ((biShift R p).prod (𝟭 _) ⋙ CategoryTheory.MonoidalCategory.tensor (C := HypercompleteCategory R)) ≅
    ((sphericalToHypercomplete R).prod (sphericalToHypercomplete R)) ⋙
      (CategoryTheory.MonoidalCategory.tensor (C := HypercompleteCategory R) ⋙ biShift R p) :=
  NatIso.ofComponents (fun F =>
    tensorIso ((sphericalBiShiftHypercomplete R p).app F.1).symm (Iso.refl _) ≪≫
      sourceDayTensorComparison R ((sphericalBiShift p).obj F.1) F.2 ≪≫
      (sphericalToHypercomplete R).mapIso ((sphericalDayShiftIso p).app F) ≪≫
      (sphericalBiShiftHypercomplete R p).app (sphericalDay.obj F) ≪≫
      (biShift R p).mapIso (sourceDayTensorComparison R F.1 F.2).symm) (by sorry)

/-- This orientation matches SyntheticCategory.biShift_tensor_comm.
It is the inverse of the actual shifted universal Day pairing. -/
def biShiftTensorIso (R : RealizedFoundation) (p : ℤ × ℤ) :
    CategoryTheory.MonoidalCategory.tensor (C := HypercompleteCategory R) ⋙ biShift R p ≅
      (biShift R p).prod (𝟭 _) ⋙ CategoryTheory.MonoidalCategory.tensor (C := HypercompleteCategory R) :=
  (Localization.liftNatIso
    ((sphericalToHypercomplete R).prod (sphericalToHypercomplete R))
    ((hypercompleteEquivalences R).prod (hypercompleteEquivalences R)) _ _ _ _
    (sourceDayBiShiftPresented R p)).symm

end
end KIP126.Synthetic.Source
