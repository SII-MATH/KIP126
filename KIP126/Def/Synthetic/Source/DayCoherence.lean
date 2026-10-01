import KIP126.Def.Synthetic.Source.Day
import KIP126.Def.StableHomotopy.Source.Orthogonal.Pairing
import Mathlib.CategoryTheory.Localization.Monoidal.Braided

/-! Coherence of derived Day convolution is tested in localizations of
WHOLE strict multivariable diagrams. No assertion that ordinary natural
transformations are determined by their components on Ho-generators is
used. The ternary pairing below is made out of the already fixed binary
adjunction units; its universal property is derived Fubini. -/
namespace KIP126.Synthetic.Source
open CategoryTheory CategoryTheory.Functor CategoryTheory.MonoidalCategory Opposite
open KIP126.StableHomotopy.Source
noncomputable section

abbrev TrivariateDiagram :=
  (FiniteSiteᵒᵖ × FiniteSiteᵒᵖ × FiniteSiteᵒᵖ) ⥤ Orthogonal.Spectrum

def trivariateStableEquivalences : MorphismProperty TrivariateDiagram :=
  fun _ _ f => ∀ P, Orthogonal.stableEquivalences (f.app P)
instance : trivariateStableEquivalences.ContainsIdentities := by sorry
abbrev TrivariateHomotopyCategory := trivariateStableEquivalences.Localization
abbrev trivariateStableLocalization : TrivariateDiagram ⥤ TrivariateHomotopyCategory :=
  trivariateStableEquivalences.Q

def leftExternalRaw : BivariateDiagram × SphericalDiagram ⥤ TrivariateDiagram where
  obj B :=
    { obj := fun P => Orthogonal.derivedSmashPointset
        (B.1.obj (P.1,P.2.1)) (B.2.obj.obj P.2.2)
      map := fun f => Orthogonal.smashMap
        (Orthogonal.cofibrantResolution.functor.map (B.1.map (f.1,f.2.1)))
        (Orthogonal.cofibrantResolution.functor.map (B.2.obj.map f.2.2))
      map_id := by sorry
      map_comp := by sorry }
  map f :=
    { app := fun P => Orthogonal.smashMap
        (Orthogonal.cofibrantResolution.functor.map (f.1.app (P.1,P.2.1)))
        (Orthogonal.cofibrantResolution.functor.map (f.2.hom.app P.2.2))
      naturality := by sorry }
  map_id := by sorry
  map_comp := by sorry

def rightExternalRaw : SphericalDiagram × BivariateDiagram ⥤ TrivariateDiagram where
  obj B :=
    { obj := fun P => Orthogonal.derivedSmashPointset
        (B.1.obj.obj P.1) (B.2.obj (P.2.1,P.2.2))
      map := fun f => Orthogonal.smashMap
        (Orthogonal.cofibrantResolution.functor.map (B.1.obj.map f.1))
        (Orthogonal.cofibrantResolution.functor.map (B.2.map (f.2.1,f.2.2)))
      map_id := by sorry
      map_comp := by sorry }
  map f :=
    { app := fun P => Orthogonal.smashMap
        (Orthogonal.cofibrantResolution.functor.map (f.1.hom.app P.1))
        (Orthogonal.cofibrantResolution.functor.map (f.2.app (P.2.1,P.2.2)))
      naturality := by sorry }
  map_id := by sorry
  map_comp := by sorry

theorem leftExternalRaw_inverts :
    (bivariateStableEquivalences.prod diagramStableEquivalences).IsInvertedBy
      (leftExternalRaw ⋙ trivariateStableLocalization) := by sorry
theorem rightExternalRaw_inverts :
    (diagramStableEquivalences.prod bivariateStableEquivalences).IsInvertedBy
      (rightExternalRaw ⋙ trivariateStableLocalization) := by sorry

abbrev leftExternal : BivariateHomotopyCategory × SphericalHomotopyCategory ⥤
    TrivariateHomotopyCategory :=
  Localization.lift (leftExternalRaw ⋙ trivariateStableLocalization)
    leftExternalRaw_inverts (bivariateStableLocalization.prod sphericalStableLocalization)
abbrev rightExternal : SphericalHomotopyCategory × BivariateHomotopyCategory ⥤
    TrivariateHomotopyCategory :=
  Localization.lift (rightExternalRaw ⋙ trivariateStableLocalization)
    rightExternalRaw_inverts (sphericalStableLocalization.prod bivariateStableLocalization)

def leftExternalComparison :
    (bivariateStableLocalization.prod sphericalStableLocalization) ⋙ leftExternal ≅
      leftExternalRaw ⋙ trivariateStableLocalization :=
  Localization.fac _ leftExternalRaw_inverts _
def rightExternalComparison :
    (sphericalStableLocalization.prod bivariateStableLocalization) ⋙ rightExternal ≅
      rightExternalRaw ⋙ trivariateStableLocalization :=
  Localization.fac _ rightExternalRaw_inverts _

/-- Restriction by the actual finite-spectrum derived smash in one slot. -/
def leftRestrictionRaw : BivariateDiagram ⥤ TrivariateDiagram where
  obj B :=
    { obj := fun P => B.obj (op (finiteDerivedSmash.obj (P.1.unop,P.2.1.unop)),P.2.2)
      map := fun f => B.map ((finiteDerivedSmash.map (f.1.unop,f.2.1.unop)).op,f.2.2)
      map_id := by sorry
      map_comp := by sorry }
  map f := { app := fun P => f.app (op (finiteDerivedSmash.obj (P.1.unop,P.2.1.unop)),P.2.2)
             naturality := by sorry }
  map_id := by sorry
  map_comp := by sorry

def rightRestrictionRaw : BivariateDiagram ⥤ TrivariateDiagram where
  obj B :=
    { obj := fun P => B.obj (P.1,op (finiteDerivedSmash.obj (P.2.1.unop,P.2.2.unop)))
      map := fun f => B.map (f.1,(finiteDerivedSmash.map (f.2.1.unop,f.2.2.unop)).op)
      map_id := by sorry
      map_comp := by sorry }
  map f := { app := fun P => f.app (P.1,op (finiteDerivedSmash.obj (P.2.1.unop,P.2.2.unop)))
             naturality := by sorry }
  map_id := by sorry
  map_comp := by sorry

theorem leftRestrictionRaw_inverts : bivariateStableEquivalences.IsInvertedBy
    (leftRestrictionRaw ⋙ trivariateStableLocalization) := by sorry
theorem rightRestrictionRaw_inverts : bivariateStableEquivalences.IsInvertedBy
    (rightRestrictionRaw ⋙ trivariateStableLocalization) := by sorry
abbrev leftRestriction : BivariateHomotopyCategory ⥤ TrivariateHomotopyCategory :=
  Localization.lift (leftRestrictionRaw ⋙ trivariateStableLocalization)
    leftRestrictionRaw_inverts bivariateStableLocalization
abbrev rightRestriction : BivariateHomotopyCategory ⥤ TrivariateHomotopyCategory :=
  Localization.lift (rightRestrictionRaw ⋙ trivariateStableLocalization)
    rightRestrictionRaw_inverts bivariateStableLocalization

def leftRestrictionComparison : bivariateStableLocalization ⋙ leftRestriction ≅
    leftRestrictionRaw ⋙ trivariateStableLocalization :=
  Localization.fac _ leftRestrictionRaw_inverts _
def rightRestrictionComparison : bivariateStableLocalization ⋙ rightRestriction ≅
    rightRestrictionRaw ⋙ trivariateStableLocalization :=
  Localization.fac _ rightRestrictionRaw_inverts _

def leftExternalRestricted : SphericalHomotopyCategory × SphericalHomotopyCategory ⥤
    TrivariateHomotopyCategory := (derivedDayRestriction.prod (𝟭 _)) ⋙ leftExternal
abbrev leftRestrictedExternal := derivedExternalProduct ⋙ leftRestriction

def rightExternalRestricted : SphericalHomotopyCategory × SphericalHomotopyCategory ⥤
    TrivariateHomotopyCategory := ((𝟭 _).prod derivedDayRestriction) ⋙ rightExternal
abbrev rightRestrictedExternal := derivedExternalProduct ⋙ rightRestriction

/-- All four factors are canonical localization comparison maps. The
middle strict diagrams have literally the same formula. -/
def leftExchangePresented :
    (sphericalStableLocalization.prod sphericalStableLocalization) ⋙ leftExternalRestricted ⟶
      (sphericalStableLocalization.prod sphericalStableLocalization) ⋙ leftRestrictedExternal where
  app F :=
    leftExternal.map (show
      (derivedDayRestriction.obj (sphericalStableLocalization.obj F.1), sphericalStableLocalization.obj F.2) ⟶
        (bivariateStableLocalization.obj (dayRestriction F.1), sphericalStableLocalization.obj F.2) from
      (dayRestrictionComparison.hom.app F.1, 𝟙 _)) ≫
      leftExternalComparison.hom.app (dayRestriction F.1,F.2) ≫
      leftRestrictionComparison.inv.app (externalProduct F.1 F.2) ≫
      leftRestriction.map (externalProductComparison.inv.app F)
  naturality := by sorry

def rightExchangePresented :
    (sphericalStableLocalization.prod sphericalStableLocalization) ⋙ rightExternalRestricted ⟶
      (sphericalStableLocalization.prod sphericalStableLocalization) ⋙ rightRestrictedExternal where
  app F :=
    rightExternal.map (show
      (sphericalStableLocalization.obj F.1, derivedDayRestriction.obj (sphericalStableLocalization.obj F.2)) ⟶
        (sphericalStableLocalization.obj F.1, bivariateStableLocalization.obj (dayRestriction F.2)) from
      (𝟙 _,dayRestrictionComparison.hom.app F.2)) ≫
      rightExternalComparison.hom.app (F.1,dayRestriction F.2) ≫
      rightRestrictionComparison.inv.app (externalProduct F.1 F.2) ≫
      rightRestriction.map (externalProductComparison.inv.app F)
  naturality := by sorry

def leftExchange : leftExternalRestricted ⟶ leftRestrictedExternal :=
  Localization.liftNatTrans
    (sphericalStableLocalization.prod sphericalStableLocalization)
    (diagramStableEquivalences.prod diagramStableEquivalences) _ _ _ _ leftExchangePresented

def rightExchange : rightExternalRestricted ⟶ rightRestrictedExternal :=
  Localization.liftNatTrans
    (sphericalStableLocalization.prod sphericalStableLocalization)
    (diagramStableEquivalences.prod diagramStableEquivalences) _ _ _ _ rightExchangePresented

abbrev leftTripleExternal (F G H : SphericalHomotopyCategory) :=
  leftExternal.obj (derivedExternalProduct.obj (F,G),H)
abbrev rightTripleExternal (F G H : SphericalHomotopyCategory) :=
  rightExternal.obj (F,derivedExternalProduct.obj (G,H))
abbrev leftTripleRestriction := derivedDayRestriction ⋙ leftRestriction
abbrev rightTripleRestriction := derivedDayRestriction ⋙ rightRestriction
abbrev leftTripleDay (F G H : SphericalHomotopyCategory) :=
  sphericalDay.obj (sphericalDay.obj (F,G),H)
abbrev rightTripleDay (F G H : SphericalHomotopyCategory) :=
  sphericalDay.obj (F,sphericalDay.obj (G,H))

/-- The left ternary pairing is COMPOSED from the two binary units. -/
def leftTriplePairing (F G H : SphericalHomotopyCategory) :
    leftTripleExternal F G H ⟶ leftTripleRestriction.obj (leftTripleDay F G H) :=
  leftExternal.map (sphericalDayPairing F G,𝟙 H) ≫
    leftExchange.app (sphericalDay.obj (F,G),H) ≫
    leftRestriction.map (sphericalDayPairing (sphericalDay.obj (F,G)) H)

def rightTriplePairing (F G H : SphericalHomotopyCategory) :
    rightTripleExternal F G H ⟶ rightTripleRestriction.obj (rightTripleDay F G H) :=
  rightExternal.map (𝟙 F,sphericalDayPairing G H) ≫
    rightExchange.app (F,sphericalDay.obj (G,H)) ≫
    rightRestriction.map (sphericalDayPairing F (sphericalDay.obj (G,H)))

/-- Derived Fubini/iterated adjunction, with its map fixed explicitly.
This is not a freely chosen equivalence between two Hom sets. -/
theorem leftTriplePairing_universal (F G H K : SphericalHomotopyCategory) :
    Function.Bijective (fun f : leftTripleDay F G H ⟶ K =>
      leftTriplePairing F G H ≫ leftTripleRestriction.map f) := by sorry

def leftTripleDayHom (F G H K : SphericalHomotopyCategory) :
    (leftTripleDay F G H ⟶ K) ≃
      (leftTripleExternal F G H ⟶ leftTripleRestriction.obj K) :=
  Equiv.ofBijective _ (leftTriplePairing_universal F G H K)

abbrev SphericalTriple := SphericalHomotopyCategory × SphericalHomotopyCategory ×
  SphericalHomotopyCategory
abbrev sphericalTripleLocalization := sphericalStableLocalization.prod
  (sphericalStableLocalization.prod sphericalStableLocalization)

def leftTripleExternalFunctor : SphericalTriple ⥤ TrivariateHomotopyCategory where
  obj F := leftTripleExternal F.1 F.2.1 F.2.2
  map f := leftExternal.map (derivedExternalProduct.map (f.1,f.2.1),f.2.2)
  map_id := by sorry
  map_comp := by sorry

def rightTripleExternalFunctor : SphericalTriple ⥤ TrivariateHomotopyCategory where
  obj F := rightTripleExternal F.1 F.2.1 F.2.2
  map f := rightExternal.map (f.1,derivedExternalProduct.map (f.2.1,f.2.2))
  map_id := by sorry
  map_comp := by sorry

def flatLeftExternal (F G H : SphericalDiagram) : TrivariateDiagram where
  obj P := Orthogonal.smash
    (Orthogonal.smash (Orthogonal.cofibrantResolution.functor.obj (F.obj.obj P.1))
      (Orthogonal.cofibrantResolution.functor.obj (G.obj.obj P.2.1)))
    (Orthogonal.cofibrantResolution.functor.obj (H.obj.obj P.2.2))
  map f := Orthogonal.smashMap
    (Orthogonal.smashMap (Orthogonal.cofibrantResolution.functor.map (F.obj.map f.1))
      (Orthogonal.cofibrantResolution.functor.map (G.obj.map f.2.1)))
    (Orthogonal.cofibrantResolution.functor.map (H.obj.map f.2.2))
  map_id := by sorry
  map_comp := by sorry

def flatRightExternal (F G H : SphericalDiagram) : TrivariateDiagram where
  obj P := Orthogonal.smash
    (Orthogonal.cofibrantResolution.functor.obj (F.obj.obj P.1))
    (Orthogonal.smash (Orthogonal.cofibrantResolution.functor.obj (G.obj.obj P.2.1))
      (Orthogonal.cofibrantResolution.functor.obj (H.obj.obj P.2.2)))
  map f := Orthogonal.smashMap
    (Orthogonal.cofibrantResolution.functor.map (F.obj.map f.1))
    (Orthogonal.smashMap (Orthogonal.cofibrantResolution.functor.map (G.obj.map f.2.1))
      (Orthogonal.cofibrantResolution.functor.map (H.obj.map f.2.2)))
  map_id := by sorry
  map_comp := by sorry

def flattenLeftExternal (F G H : SphericalDiagram) :
    leftExternalRaw.obj (externalProduct F G,H) ⟶ flatLeftExternal F G H where
  app P := Orthogonal.smashMap
    (Orthogonal.cofibrantResolution.projection.app ((externalProduct F G).obj (P.1,P.2.1)))
    (𝟙 _)
  naturality := by sorry

def flattenRightExternal (F G H : SphericalDiagram) :
    rightExternalRaw.obj (F,externalProduct G H) ⟶ flatRightExternal F G H where
  app P := Orthogonal.smashMap (𝟙 _)
    (Orthogonal.cofibrantResolution.projection.app ((externalProduct G H).obj (P.2.1,P.2.2)))
  naturality := by sorry

def externalAssociatorRaw (F G H : SphericalDiagram) :
    flatLeftExternal F G H ⟶ flatRightExternal F G H where
  app P := (Orthogonal.associatorIso
    (Orthogonal.cofibrantResolution.functor.obj (F.obj.obj P.1))
    (Orthogonal.cofibrantResolution.functor.obj (G.obj.obj P.2.1))
    (Orthogonal.cofibrantResolution.functor.obj (H.obj.obj P.2.2))).hom
  naturality := by sorry

theorem flattenLeftExternal_equivalent (F G H : SphericalDiagram) :
    trivariateStableEquivalences (flattenLeftExternal F G H) := by sorry
theorem flattenRightExternal_equivalent (F G H : SphericalDiagram) :
    trivariateStableEquivalences (flattenRightExternal F G H) := by sorry

/-- The actual orthogonal associator, with the two specified Q-projections
removed in the category of entire trivariate diagrams. -/
def externalAssociatorPresented :
    sphericalTripleLocalization ⋙ leftTripleExternalFunctor ⟶
      sphericalTripleLocalization ⋙ rightTripleExternalFunctor where
  app F := by
    let a := trivariateStableLocalization.map (flattenRightExternal F.1 F.2.1 F.2.2)
    haveI : IsIso a := trivariateStableEquivalences.Q_inverts _
      (flattenRightExternal_equivalent F.1 F.2.1 F.2.2)
    exact
      leftExternal.map (show
        (derivedExternalProduct.obj (sphericalStableLocalization.obj F.1,
          sphericalStableLocalization.obj F.2.1),sphericalStableLocalization.obj F.2.2) ⟶
        (bivariateStableLocalization.obj (externalProduct F.1 F.2.1),
          sphericalStableLocalization.obj F.2.2) from
        (externalProductComparison.hom.app (F.1,F.2.1),𝟙 _)) ≫
      leftExternalComparison.hom.app (externalProduct F.1 F.2.1,F.2.2) ≫
      trivariateStableLocalization.map (flattenLeftExternal F.1 F.2.1 F.2.2) ≫
      trivariateStableLocalization.map (externalAssociatorRaw F.1 F.2.1 F.2.2) ≫
      CategoryTheory.inv a ≫ rightExternalComparison.inv.app (F.1,externalProduct F.2.1 F.2.2) ≫
      rightExternal.map (show
        (sphericalStableLocalization.obj F.1,
          bivariateStableLocalization.obj (externalProduct F.2.1 F.2.2)) ⟶
        (sphericalStableLocalization.obj F.1,
          derivedExternalProduct.obj (sphericalStableLocalization.obj F.2.1,
            sphericalStableLocalization.obj F.2.2)) from
        (𝟙 _,externalProductComparison.inv.app (F.2.1,F.2.2)))
  naturality := by sorry

def externalAssociator : leftTripleExternalFunctor ⟶ rightTripleExternalFunctor :=
  Localization.liftNatTrans sphericalTripleLocalization
    (diagramStableEquivalences.prod (diagramStableEquivalences.prod diagramStableEquivalences))
    _ _ _ _ externalAssociatorPresented

/-- The flattened finite source objects use only cofibrant factors. -/
theorem finite_flatTripleLeft (P Q T : FiniteSite) : FiniteOrthogonal
    (Orthogonal.smash
      (Orthogonal.smash (Orthogonal.cofibrantResolution.functor.obj P.obj)
        (Orthogonal.cofibrantResolution.functor.obj Q.obj))
      (Orthogonal.cofibrantResolution.functor.obj T.obj)) := by sorry

theorem finite_flatTripleRight (P Q T : FiniteSite) : FiniteOrthogonal
    (Orthogonal.smash (Orthogonal.cofibrantResolution.functor.obj P.obj)
      (Orthogonal.smash (Orthogonal.cofibrantResolution.functor.obj Q.obj)
        (Orthogonal.cofibrantResolution.functor.obj T.obj))) := by sorry

def flatFiniteLeft : FiniteSite × FiniteSite × FiniteSite ⥤ FiniteSite where
  obj P := ⟨Orthogonal.smash
    (Orthogonal.smash (Orthogonal.cofibrantResolution.functor.obj P.1.obj)
      (Orthogonal.cofibrantResolution.functor.obj P.2.1.obj))
    (Orthogonal.cofibrantResolution.functor.obj P.2.2.obj),
    finite_flatTripleLeft P.1 P.2.1 P.2.2⟩
  map f := ⟨Orthogonal.smashMap
    (Orthogonal.smashMap (Orthogonal.cofibrantResolution.functor.map f.1.hom)
      (Orthogonal.cofibrantResolution.functor.map f.2.1.hom))
    (Orthogonal.cofibrantResolution.functor.map f.2.2.hom)⟩
  map_id := by sorry
  map_comp := by sorry

def flatFiniteRight : FiniteSite × FiniteSite × FiniteSite ⥤ FiniteSite where
  obj P := ⟨Orthogonal.smash
    (Orthogonal.cofibrantResolution.functor.obj P.1.obj)
    (Orthogonal.smash (Orthogonal.cofibrantResolution.functor.obj P.2.1.obj)
      (Orthogonal.cofibrantResolution.functor.obj P.2.2.obj)),
    finite_flatTripleRight P.1 P.2.1 P.2.2⟩
  map f := ⟨Orthogonal.smashMap
    (Orthogonal.cofibrantResolution.functor.map f.1.hom)
    (Orthogonal.smashMap (Orthogonal.cofibrantResolution.functor.map f.2.1.hom)
      (Orthogonal.cofibrantResolution.functor.map f.2.2.hom))⟩
  map_id := by sorry
  map_comp := by sorry

def flatLeftRestriction (F : SphericalDiagram) : TrivariateDiagram where
  obj P := F.obj.obj (op (flatFiniteLeft.obj (P.1.unop,P.2.1.unop,P.2.2.unop)))
  map f := F.obj.map (flatFiniteLeft.map (f.1.unop,f.2.1.unop,f.2.2.unop)).op
  map_id := by sorry
  map_comp := by sorry

def flatRightRestriction (F : SphericalDiagram) : TrivariateDiagram where
  obj P := F.obj.obj (op (flatFiniteRight.obj (P.1.unop,P.2.1.unop,P.2.2.unop)))
  map f := F.obj.map (flatFiniteRight.map (f.1.unop,f.2.1.unop,f.2.2.unop)).op
  map_id := by sorry
  map_comp := by sorry

def flattenLeftRestriction (F : SphericalDiagram) :
    flatLeftRestriction F ⟶ leftRestrictionRaw.obj (dayRestriction F) where
  app P := F.obj.map (show
    finiteDerivedSmash.obj
      (finiteDerivedSmash.obj (P.1.unop,P.2.1.unop),P.2.2.unop) ⟶
      flatFiniteLeft.obj (P.1.unop,P.2.1.unop,P.2.2.unop) from
    ⟨Orthogonal.smashMap (Orthogonal.cofibrantResolution.projection.app
      (Orthogonal.derivedSmashPointset P.1.unop.obj P.2.1.unop.obj)) (𝟙 _)⟩).op
  naturality := by sorry

def flattenRightRestriction (F : SphericalDiagram) :
    flatRightRestriction F ⟶ rightRestrictionRaw.obj (dayRestriction F) where
  app P := F.obj.map (show
    finiteDerivedSmash.obj
      (P.1.unop,finiteDerivedSmash.obj (P.2.1.unop,P.2.2.unop)) ⟶
      flatFiniteRight.obj (P.1.unop,P.2.1.unop,P.2.2.unop) from
    ⟨Orthogonal.smashMap (𝟙 _) (Orthogonal.cofibrantResolution.projection.app
      (Orthogonal.derivedSmashPointset P.2.1.unop.obj P.2.2.unop.obj))⟩).op
  naturality := by sorry

def restrictionAssociatorRaw (F : SphericalDiagram) :
    flatRightRestriction F ⟶ flatLeftRestriction F where
  app P := F.obj.map (show
    flatFiniteLeft.obj (P.1.unop,P.2.1.unop,P.2.2.unop) ⟶
      flatFiniteRight.obj (P.1.unop,P.2.1.unop,P.2.2.unop) from
    ⟨(Orthogonal.associatorIso
      (Orthogonal.cofibrantResolution.functor.obj P.1.unop.obj)
      (Orthogonal.cofibrantResolution.functor.obj P.2.1.unop.obj)
      (Orthogonal.cofibrantResolution.functor.obj P.2.2.unop.obj)).hom⟩).op
  naturality := by sorry

theorem flattenRightRestriction_equivalent (F : SphericalDiagram) :
    trivariateStableEquivalences (flattenRightRestriction F) := by sorry

/-- The same actual associator enters contravariantly in restriction. -/
def restrictionAssociatorPresented :
    sphericalStableLocalization ⋙ rightTripleRestriction ⟶
      sphericalStableLocalization ⋙ leftTripleRestriction where
  app F := by
    let a := trivariateStableLocalization.map (flattenRightRestriction F)
    haveI : IsIso a := trivariateStableEquivalences.Q_inverts _
      (flattenRightRestriction_equivalent F)
    let ai := (asIso a).inv
    exact rightRestriction.map (dayRestrictionComparison.hom.app F) ≫
      rightRestrictionComparison.hom.app (dayRestriction F) ≫ ai ≫
      trivariateStableLocalization.map (restrictionAssociatorRaw F) ≫
      trivariateStableLocalization.map (flattenLeftRestriction F) ≫
      leftRestrictionComparison.inv.app (dayRestriction F) ≫
      leftRestriction.map (dayRestrictionComparison.inv.app F)
  naturality := by sorry

def restrictionAssociator : rightTripleRestriction ⟶ leftTripleRestriction :=
  Localization.liftNatTrans sphericalStableLocalization diagramStableEquivalences
    _ _ _ _ restrictionAssociatorPresented

/-- Associator is the UNIQUE inverse image of a completely fixed ternary
pairing. Both external and restriction associators use the actual point-set
orthogonal reassociation. -/
def sphericalDayAssociator (F G H : SphericalHomotopyCategory) :
    leftTripleDay F G H ⟶ rightTripleDay F G H :=
  (leftTripleDayHom F G H _).symm
    (externalAssociator.app (F,G,H) ≫ rightTriplePairing F G H ≫
      restrictionAssociator.app (rightTripleDay F G H))

theorem sphericalDayAssociator_pairing (F G H : SphericalHomotopyCategory) :
    leftTriplePairing F G H ≫ leftTripleRestriction.map (sphericalDayAssociator F G H) =
      externalAssociator.app (F,G,H) ≫ rightTriplePairing F G H ≫
        restrictionAssociator.app (rightTripleDay F G H) := by
  exact (leftTripleDayHom F G H _).apply_symm_apply _

instance sphericalDayAssociator_isIso (F G H : SphericalHomotopyCategory) :
    IsIso (sphericalDayAssociator F G H) := by sorry

/-! The unit constraint uses the actual identity of the sphere in the
derived enriched Yoneda lemma. Evaluation is in the localized category of
WHOLE presheaves, so this does not forget coherent natural transformations. -/
def presheafStableEquivalences : MorphismProperty SpectralPresheaf :=
  fun _ _ f => ∀ P, Orthogonal.stableEquivalences (f.app P)
instance : presheafStableEquivalences.ContainsIdentities := by sorry
abbrev PresheafHomotopyCategory := presheafStableEquivalences.Localization
abbrev presheafStableLocalization := presheafStableEquivalences.Q

def forgetSpherical : SphericalDiagram ⥤ SpectralPresheaf := ObjectProperty.ι _
theorem forgetSpherical_inverts : diagramStableEquivalences.IsInvertedBy
    (forgetSpherical ⋙ presheafStableLocalization) := by sorry
abbrev sphericalInclusion : SphericalHomotopyCategory ⥤ PresheafHomotopyCategory :=
  Localization.lift (forgetSpherical ⋙ presheafStableLocalization)
    forgetSpherical_inverts sphericalStableLocalization
def sphericalInclusionComparison : sphericalStableLocalization ⋙ sphericalInclusion ≅
    forgetSpherical ⋙ presheafStableLocalization := Localization.fac _ forgetSpherical_inverts _

instance sphericalInclusion_full : sphericalInclusion.Full := by sorry
instance sphericalInclusion_faithful : sphericalInclusion.Faithful := by sorry

/-- The inverse on morphisms is the unique preimage under the displayed
faithful inclusion; only fullness/faithfulness are proof obligations. -/
def sphericalInclusionFullyFaithful : sphericalInclusion.FullyFaithful :=
  Functor.FullyFaithful.ofFullyFaithful sphericalInclusion

/-- The actual finite sphere, before HF2 completion. -/
def finiteSphere : FiniteSite := ⟨Orthogonal.sphere, by sorry⟩
abbrev sphericalDayUnit : SphericalHomotopyCategory :=
  sphericalStableLocalization.obj (nuDiagrams.obj Orthogonal.sphere)

def evaluateFirstRaw : BivariateDiagram ⥤ SpectralPresheaf where
  obj B :=
    { obj := fun P => B.obj (op finiteSphere,P)
      map := fun f => B.map (𝟙 _,f)
      map_id := by sorry
      map_comp := by sorry }
  map f := { app := fun P => f.app (op finiteSphere,P), naturality := by sorry }
  map_id := by sorry
  map_comp := by sorry

theorem evaluateFirstRaw_inverts : bivariateStableEquivalences.IsInvertedBy
    (evaluateFirstRaw ⋙ presheafStableLocalization) := by sorry
abbrev evaluateFirst : BivariateHomotopyCategory ⥤ PresheafHomotopyCategory :=
  Localization.lift (evaluateFirstRaw ⋙ presheafStableLocalization)
    evaluateFirstRaw_inverts bivariateStableLocalization
def evaluateFirstComparison : bivariateStableLocalization ⋙ evaluateFirst ≅
    evaluateFirstRaw ⋙ presheafStableLocalization :=
  Localization.fac _ evaluateFirstRaw_inverts _

def constantTensorRaw : Orthogonal.Spectrum × SphericalDiagram ⥤ SpectralPresheaf where
  obj F :=
    { obj := fun P => Orthogonal.derivedSmashPointset F.1 (F.2.obj.obj P)
      map := fun f => Orthogonal.smashMap (𝟙 _)
        (Orthogonal.cofibrantResolution.functor.map (F.2.obj.map f))
      map_id := by sorry
      map_comp := by sorry }
  map f :=
    { app := fun P => Orthogonal.smashMap
        (Orthogonal.cofibrantResolution.functor.map f.1)
        (Orthogonal.cofibrantResolution.functor.map (f.2.hom.app P))
      naturality := by sorry }
  map_id := by sorry
  map_comp := by sorry

local instance : Orthogonal.stableEquivalences.ContainsIdentities := by sorry

theorem constantTensorRaw_inverts :
    (Orthogonal.stableEquivalences.prod diagramStableEquivalences).IsInvertedBy
      (constantTensorRaw ⋙ presheafStableLocalization) := by sorry
abbrev constantTensor : Orthogonal.Ho × SphericalHomotopyCategory ⥤
    PresheafHomotopyCategory :=
  Localization.lift (constantTensorRaw ⋙ presheafStableLocalization)
    constantTensorRaw_inverts (Orthogonal.toHo.prod sphericalStableLocalization)
def constantTensorComparison : (Orthogonal.toHo.prod sphericalStableLocalization) ⋙
    constantTensor ≅ constantTensorRaw ⋙ presheafStableLocalization :=
  Localization.fac _ constantTensorRaw_inverts _

def constantSphereTensor : SphericalHomotopyCategory ⥤ PresheafHomotopyCategory where
  obj F := constantTensor.obj (Orthogonal.toHo.obj Orthogonal.sphere,F)
  map f := constantTensor.map (𝟙 _,f)
  map_id := by sorry
  map_comp := by sorry

def constantSphereUnitRaw (F : SphericalDiagram) :
    constantTensorRaw.obj (Orthogonal.sphere,F) ⟶ F.obj where
  app P := Orthogonal.smashMap (Orthogonal.cofibrantResolution.projection.app _)
    (Orthogonal.cofibrantResolution.projection.app _) ≫
    (Orthogonal.leftUnitIso (F.obj.obj P)).hom
  naturality := by sorry

def constantSphereUnitPresented :
    sphericalStableLocalization ⋙ constantSphereTensor ⟶
      sphericalStableLocalization ⋙ sphericalInclusion where
  app F := constantTensorComparison.hom.app (Orthogonal.sphere,F) ≫
    presheafStableLocalization.map (constantSphereUnitRaw F) ≫
    sphericalInclusionComparison.inv.app F
  naturality := by sorry

def constantSphereUnit : constantSphereTensor ⟶ sphericalInclusion :=
  Localization.liftNatTrans sphericalStableLocalization diagramStableEquivalences
    _ _ _ _ constantSphereUnitPresented
instance constantSphereUnit_isIso : IsIso constantSphereUnit := by sorry

/-- The untruncated derived identity is obtained from actual evaluation's
adjoint, then precomposition with Q(S)->S and postcomposition S->R(S). -/
def derivedSphereIdentity : Orthogonal.sphere ⟶
    Orthogonal.derivedMappingSpectrum Orthogonal.sphere Orthogonal.sphere :=
  (Orthogonal.smashFunctionEquiv _ _ _).toFun
    (Orthogonal.leftUnitIso Orthogonal.sphere).hom ≫
  Orthogonal.functionMap (Orthogonal.cofibrantResolution.projection.app _)
    (Orthogonal.fibrantResolution.inclusion.app _)

theorem connectiveSphereHom_bijective : Function.Bijective
    (fun f : Orthogonal.toHo.obj Orthogonal.sphere ⟶
      Orthogonal.toHo.obj (connectiveCover.functor.obj
        (Orthogonal.derivedMappingSpectrum Orthogonal.sphere Orthogonal.sphere)) =>
      f ≫ Orthogonal.toHo.map (connectiveCover.counit.app _)) := by sorry

/-- The connective identity is the UNIQUE lift of that actual identity. -/
def connectiveSphereIdentity : Orthogonal.toHo.obj Orthogonal.sphere ⟶
    Orthogonal.toHo.obj ((nuDiagrams.obj Orthogonal.sphere).obj.obj (op finiteSphere)) :=
  (Equiv.ofBijective _ connectiveSphereHom_bijective).symm
    (Orthogonal.toHo.map derivedSphereIdentity)

def constantUnitValueTensor : SphericalHomotopyCategory ⥤ PresheafHomotopyCategory where
  obj F := constantTensor.obj (Orthogonal.toHo.obj
    ((nuDiagrams.obj Orthogonal.sphere).obj.obj (op finiteSphere)),F)
  map f := constantTensor.map (𝟙 _,f)
  map_id := by sorry
  map_comp := by sorry

def evaluatedUnitExternal : SphericalHomotopyCategory ⥤ PresheafHomotopyCategory where
  obj F := evaluateFirst.obj (derivedExternalProduct.obj (sphericalDayUnit,F))
  map f := evaluateFirst.map (derivedExternalProduct.map (𝟙 _,f))
  map_id := by sorry
  map_comp := by sorry

def unitEvaluationRawComparison (F : SphericalDiagram) :
    constantTensorRaw.obj
      ((nuDiagrams.obj Orthogonal.sphere).obj.obj (op finiteSphere),F) ≅
      evaluateFirstRaw.obj (externalProduct (nuDiagrams.obj Orthogonal.sphere) F) :=
  NatIso.ofComponents (fun _ => Iso.refl _) (by sorry)

def constantUnitValueComparisonPresented :
    sphericalStableLocalization ⋙ constantUnitValueTensor ⟶
      sphericalStableLocalization ⋙ evaluatedUnitExternal where
  app F := constantTensorComparison.hom.app
      ((nuDiagrams.obj Orthogonal.sphere).obj.obj (op finiteSphere),F) ≫
    presheafStableLocalization.map (unitEvaluationRawComparison F).hom ≫
    evaluateFirstComparison.inv.app (externalProduct (nuDiagrams.obj Orthogonal.sphere) F) ≫
    evaluateFirst.map (externalProductComparison.inv.app (nuDiagrams.obj Orthogonal.sphere,F))
  naturality := by sorry

def constantUnitValueComparison : constantUnitValueTensor ⟶ evaluatedUnitExternal :=
  Localization.liftNatTrans sphericalStableLocalization diagramStableEquivalences
    _ _ _ _ constantUnitValueComparisonPresented

/-- Insert the actual identity of the sphere into the evaluated pairing. -/
def leftUnitInsertion (F : SphericalHomotopyCategory) :
    sphericalInclusion.obj F ⟶ evaluatedUnitExternal.obj F :=
  (asIso constantSphereUnit).inv.app F ≫
    constantTensor.map (show
      (Orthogonal.toHo.obj Orthogonal.sphere,F) ⟶
        (Orthogonal.toHo.obj
          ((nuDiagrams.obj Orthogonal.sphere).obj.obj (op finiteSphere)),F) from
      (connectiveSphereIdentity,𝟙 F)) ≫
    constantUnitValueComparison.app F

/-- The actual finite source unit Q(S) smash Q(P)->P. -/
def finiteLeftUnit (P : FiniteSite) : finiteDerivedSmash.obj (finiteSphere,P) ⟶ P :=
  ⟨Orthogonal.smashMap (Orthogonal.cofibrantResolution.projection.app _)
    (Orthogonal.cofibrantResolution.projection.app _) ≫
    (Orthogonal.leftUnitIso P.obj).hom⟩

def restrictionUnitRaw (F : SphericalDiagram) :
    F.obj ⟶ evaluateFirstRaw.obj (dayRestriction F) where
  app P := F.obj.map (finiteLeftUnit P.unop).op
  naturality := by sorry

abbrev evaluatedRestriction := derivedDayRestriction ⋙ evaluateFirst

def restrictionUnitPresented : sphericalStableLocalization ⋙ sphericalInclusion ⟶
    sphericalStableLocalization ⋙ evaluatedRestriction where
  app F := sphericalInclusionComparison.hom.app F ≫
    presheafStableLocalization.map (restrictionUnitRaw F) ≫
    evaluateFirstComparison.inv.app (dayRestriction F) ≫
    evaluateFirst.map (dayRestrictionComparison.inv.app F)
  naturality := by sorry

def restrictionUnit : sphericalInclusion ⟶ evaluatedRestriction :=
  Localization.liftNatTrans sphericalStableLocalization diagramStableEquivalences
    _ _ _ _ restrictionUnitPresented
instance restrictionUnit_isIso : IsIso restrictionUnit := by sorry

/-- Evaluate the UNIVERSAL DAY PAIRING at the ACTUAL SPHERE IDENTITY.
This is the fixed map in derived Yoneda; its bijectivity is a theorem,
not data selecting an arbitrary Hom-equivalence or unit isomorphism. -/
def leftUnitEvaluation {F H : SphericalHomotopyCategory}
    (f : sphericalDay.obj (sphericalDayUnit,F) ⟶ H) : F ⟶ H :=
  sphericalInclusionFullyFaithful.preimage
    (leftUnitInsertion F ≫ evaluateFirst.map (sphericalDayPairing sphericalDayUnit F) ≫
      evaluatedRestriction.map f ≫ (asIso restrictionUnit).inv.app H)

theorem leftUnitEvaluation_bijective (F H : SphericalHomotopyCategory) :
    Function.Bijective (leftUnitEvaluation (F := F) (H := H)) := by sorry

def sphericalDayLeftUnit (F : SphericalHomotopyCategory) :
    sphericalDay.obj (sphericalDayUnit,F) ⟶ F :=
  (Equiv.ofBijective leftUnitEvaluation (leftUnitEvaluation_bijective F F)).symm (𝟙 F)

theorem sphericalDayLeftUnit_evaluation (F : SphericalHomotopyCategory) :
    leftUnitEvaluation (sphericalDayLeftUnit F) = 𝟙 F := by
  exact (Equiv.ofBijective leftUnitEvaluation
    (leftUnitEvaluation_bijective F F)).apply_symm_apply _
instance sphericalDayLeftUnit_isIso (F : SphericalHomotopyCategory) :
    IsIso (sphericalDayLeftUnit F) := by sorry

def sphericalDayRightUnit (F : SphericalHomotopyCategory) :
    sphericalDay.obj (F,sphericalDayUnit) ⟶ F :=
  sphericalDayBraid F sphericalDayUnit ≫ sphericalDayLeftUnit F
instance sphericalDayRightUnit_isIso (F : SphericalHomotopyCategory) :
    IsIso (sphericalDayRightUnit F) := by
  unfold sphericalDayRightUnit
  infer_instance

/-- Every structural map is fixed above by derived pairing, evaluation,
and actual point-set coherence. The remaining fields are equations between
these already determined maps, rather than new selected operations. -/
instance sphericalDayMonoidal : MonoidalCategory SphericalHomotopyCategory where
  tensorObj F G := sphericalDay.obj (F,G)
  whiskerLeft F _ _ f := sphericalDay.map (𝟙 F,f)
  whiskerRight f G := sphericalDay.map (f,𝟙 G)
  tensorHom f g := sphericalDay.map (f,g)
  tensorUnit := sphericalDayUnit
  associator F G H := asIso (sphericalDayAssociator F G H)
  leftUnitor F := asIso (sphericalDayLeftUnit F)
  rightUnitor F := asIso (sphericalDayRightUnit F)
  tensorHom_def := by sorry
  whiskerLeft_id := by sorry
  id_whiskerRight := by sorry
  id_tensorHom_id := by sorry
  tensorHom_comp_tensorHom := by sorry
  associator_naturality := by sorry
  leftUnitor_naturality := by sorry
  rightUnitor_naturality := by sorry
  pentagon := by sorry
  triangle := by sorry

instance sphericalDaySymmetric : SymmetricCategory SphericalHomotopyCategory where
  braiding F G := asIso (sphericalDayBraid F G)
  braiding_naturality_left := by sorry
  braiding_naturality_right := by sorry
  hexagon_forward := by sorry
  hexagon_reverse := by sorry
  symmetry := by sorry

/-- The saturated localization class of the actual hypercompletion.
This definition does not choose any new family of weak equivalences. -/
def hypercompleteEquivalences (R : RealizedFoundation) :
    MorphismProperty SphericalHomotopyCategory :=
  (MorphismProperty.isomorphisms (HypercompleteCategory R)).inverseImage
    (sphericalToHypercomplete R)

instance (R : RealizedFoundation) :
    (sphericalToHypercomplete R).IsLocalization (hypercompleteEquivalences R) := by sorry

/-- Pstragowski's monoidal-localization theorem, for the exact Day tensor
constructed above; it is stronger than objectwise homotopy invariance. -/
instance (R : RealizedFoundation) : (hypercompleteEquivalences R).IsMonoidal := by sorry

def hypercompleteUnitComparison (R : RealizedFoundation) :
    (sphericalToHypercomplete R).obj sphericalDayUnit ≅
      (nu R).obj (KIP126.StableHomotopy.SphereSpectrum (C := R.foundation.Spectrum)) :=
  (Localization.fac (hypercompletion R) (hypercompletion_inverts_pointwise R)
    sphericalStableLocalization).app (nuDiagrams.obj Orthogonal.sphere) ≪≫
    nuSphereComparison R

abbrev SourceMonoidal (R : RealizedFoundation) :=
  LocalizedMonoidal (sphericalToHypercomplete R) (hypercompleteEquivalences R)
    (hypercompleteUnitComparison R)

/-- The unit is literally nu of the SAME completed ordinary sphere.
The maps and all coherence are Mathlib's transport of the specified Day
maps, not a separately postulated tensor on the source category. -/
instance sourceMonoidal (R : RealizedFoundation) : MonoidalCategory (HypercompleteCategory R) :=
  inferInstanceAs (MonoidalCategory (SourceMonoidal R))
instance sourceSymmetric (R : RealizedFoundation) : SymmetricCategory (HypercompleteCategory R) :=
  inferInstanceAs (SymmetricCategory (SourceMonoidal R))
instance sphericalToHypercomplete_monoidal (R : RealizedFoundation) :
    (sphericalToHypercomplete R).Monoidal :=
  inferInstanceAs ((Localization.Monoidal.toMonoidalCategory
    (sphericalToHypercomplete R) (hypercompleteEquivalences R)
    (hypercompleteUnitComparison R)).Monoidal)
instance sphericalToHypercomplete_braided (R : RealizedFoundation) :
    (sphericalToHypercomplete R).Braided :=
  inferInstanceAs ((Localization.Monoidal.toMonoidalCategory
    (sphericalToHypercomplete R) (hypercompleteEquivalences R)
    (hypercompleteUnitComparison R)).Braided)

/-- The tensor presentation is pinned to the actual binary universal
pairing. These are the actual strong-monoidal localization maps. -/
def sourceDayTensorComparison (R : RealizedFoundation)
    (F G : SphericalHomotopyCategory) :
    (sphericalToHypercomplete R).obj F ⊗ (sphericalToHypercomplete R).obj G ≅
      (sphericalToHypercomplete R).obj (sphericalDay.obj (F,G)) :=
  asIso (Functor.LaxMonoidal.μ (sphericalToHypercomplete R) F G)

/-- Compare the localized monoidal tensor with the independently named
hypercompletedDay FUNCTOR through their actual localization factor maps.
This supplies the map-level bridge needed by any later Day-pairing adapter. -/
def sourceTensorPresentation (R : RealizedFoundation) :
    ((hypercompletion R).prod (hypercompletion R)) ⋙
      (CategoryTheory.MonoidalCategory.tensor (C := HypercompleteCategory R)) ≅
        hypercompletedDayOnPresentations R :=
  NatIso.ofComponents (fun F =>
    let e := Localization.fac (hypercompletion R) (hypercompletion_inverts_pointwise R)
      sphericalStableLocalization
    tensorIso (e.app F.1).symm (e.app F.2).symm ≪≫
      sourceDayTensorComparison R (sphericalStableLocalization.obj F.1)
        (sphericalStableLocalization.obj F.2)) (by sorry)

def sourceDayFunctorComparison (R : RealizedFoundation) :
    CategoryTheory.MonoidalCategory.tensor (C := HypercompleteCategory R) ≅ hypercompletedDay R :=
  Localization.liftNatIso ((hypercompletion R).prod (hypercompletion R))
    ((localStableEquivalences R).prod (localStableEquivalences R)) _ _ _ _
    (sourceTensorPresentation R ≪≫ (hypercompletedDayComparison R).symm)

end
end KIP126.Synthetic.Source
