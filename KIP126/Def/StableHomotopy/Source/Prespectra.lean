import Mathlib.Topology.Homotopy.HomotopyGroup
import Mathlib.CategoryTheory.Localization.Construction
import Mathlib.Topology.Category.TopCat.Basic
import Mathlib.Data.ZMod.Basic
import Mathlib.CategoryTheory.Types.Basic

/-! A concrete source for stable homotopy theory. Levels are pointed
spaces; bonding maps are actual based maps to cubical loop spaces. Stable
homotopy is the quotient of finite cubical representatives by based
homotopy and stabilization. No spectrum carrier or weak-equivalence
predicate is supplied as an unconstrained parameter. -/
namespace KIP126.StableHomotopy.Source
open CategoryTheory
open scoped Topology unitInterval
noncomputable section

/-- Pointed topological spaces in one fixed universe. -/
structure BasedSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  point : carrier
attribute [instance] BasedSpace.topology
instance : CoeSort BasedSpace (Type) := ⟨BasedSpace.carrier⟩

@[ext] structure BasedMap (X Y : BasedSpace) where
  map : C(X, Y)
  point : map X.point = Y.point

instance : Category BasedSpace where
  Hom := BasedMap
  id X := ⟨ContinuousMap.id X, rfl⟩
  comp f g := ⟨g.map.comp f.map, by simp [f.point, g.point]⟩
  id_comp := by intros; ext; rfl
  comp_id := by intros; ext; rfl
  assoc := by intros; ext; rfl

/-- Iterated cube indices; `CubeIndex n` has exactly n coordinates. -/
def CubeIndex : ℕ → Type
  | 0 => PEmpty
  | n+1 => CubeIndex n ⊕ PUnit

abbrev Loops (J : Type) (X : BasedSpace) := GenLoop J X X.point

/-- The actual based cubical loop space, with its compact-open topology. -/
def loopSpace (X : BasedSpace) : BasedSpace where
  carrier := Loops PUnit X
  topology := inferInstance
  point := GenLoop.const

/-- Postcomposition on cubical loops. -/
def loopsMap {X Y : BasedSpace} (f : X ⟶ Y) (J : Type)
    (a : Loops J X) : Loops J Y :=
  ⟨f.map.comp a.val, by intro z hz; simp [a.property z hz, f.point]⟩

/-- Postcomposition as a based continuous map of actual loop spaces. -/
def loopMap {X Y : BasedSpace} (f : X ⟶ Y) : loopSpace X ⟶ loopSpace Y where
  map := ⟨loopsMap f PUnit, by
    exact ((ContinuousMap.continuous_postcomp f.map).comp continuous_subtype_val).subtype_mk _⟩
  point := by apply GenLoop.ext; intro t; exact f.point

/-- Sequential prespectra in the loop-adjoint convention. -/
structure Prespectrum where
  level : ℕ → BasedSpace
  bonding : ∀ n, level n ⟶ loopSpace (level (n+1))

@[ext] structure PrespectrumMap (E F : Prespectrum) where
  level : ∀ n, E.level n ⟶ F.level n
  commutes : ∀ n, E.bonding n ≫ loopMap (level (n+1)) = level n ≫ F.bonding n

instance : Category Prespectrum where
  Hom := PrespectrumMap
  id E := ⟨fun n => 𝟙 (E.level n), by sorry⟩
  comp f g := ⟨fun n => f.level n ≫ g.level n, by sorry⟩
  id_comp := by intros; ext; rfl
  comp_id := by intros; ext; rfl
  assoc := by intros; ext; rfl

/-- One stabilization, obtained by postcomposing the bonding map and
uncurrying the final loop coordinate. -/
def stabilize (E : Prespectrum) (p q n : ℕ)
    (a : Loops (CubeIndex (p+n)) (E.level (q+n))) :
    Loops (CubeIndex (p+(n+1))) (E.level (q+(n+1))) :=
  GenLoop.genLoopGenLoopEquiv (E.level (q+(n+1))).point
    (loopsMap (E.bonding (q+n)) (CubeIndex (p+n)) a)

abbrev StableRepresentative (E : Prespectrum) (p q : ℕ) :=
  Σ n : ℕ, Loops (CubeIndex (p+n)) (E.level (q+n))

/-- The generators of the stable-homotopy equivalence relation. Quotients
below take their equivalence closure, so representatives need only agree
at some later stage, not at every stage. -/
inductive StableRelation (E : Prespectrum) (p q : ℕ) :
    StableRepresentative E p q → StableRepresentative E p q → Prop
  | homotopy (n) (a b) (h : GenLoop.Homotopic a b) :
      StableRelation E p q ⟨n,a⟩ ⟨n,b⟩
  | stabilization (n) (a) :
      StableRelation E p q ⟨n,a⟩ ⟨n+1,stabilize E p q n a⟩

/-- Underlying stable homotopy set in degree p-q. No group operation is
needed merely to define stable weak equivalences. -/
def StablePi (E : Prespectrum) (p q : ℕ) : Type := Quot (StableRelation E p q)

def stableZero (E : Prespectrum) (p q : ℕ) : StablePi E p q :=
  Quot.mk _ ⟨0,GenLoop.const⟩

def representativeMap {E F : Prespectrum} (f : E ⟶ F) (p q : ℕ)
    (a : StableRepresentative E p q) : StableRepresentative F p q :=
  ⟨a.1, loopsMap (f.level (q+a.1)) (CubeIndex (p+a.1)) a.2⟩

/-- The required descent is a statement about the explicit maps and
relations above. Only its proof is deferred. -/
theorem representativeMap_respects {E F : Prespectrum} (f : E ⟶ F) (p q : ℕ)
    {a b : StableRepresentative E p q} (h : StableRelation E p q a b) :
    Quot.mk (StableRelation F p q) (representativeMap f p q a) =
      Quot.mk (StableRelation F p q) (representativeMap f p q b) := by
  sorry

def stableMap {E F : Prespectrum} (f : E ⟶ F) (p q : ℕ) :
    StablePi E p q → StablePi F p q :=
  Quot.lift (fun a => Quot.mk _ (representativeMap f p q a))
    (fun _ _ h => representativeMap_respects f p q h)

/-- All integer degrees are covered by the pairs (p,q). -/
def stableEquivalences : MorphismProperty Prespectrum :=
  fun _ _ f => ∀ p q : ℕ, Function.Bijective (stableMap f p q)

/-- The actual localization of the displayed category and weak
 equivalences; morphisms are localization zigzags modulo its relations. -/
abbrev StableCategory := stableEquivalences.Localization
abbrev stabilizeFunctor : Prespectrum ⥤ StableCategory := stableEquivalences.Q

/-- The explicit quotient map is functorial before localization. -/
def stablePiFunctor (p q : ℕ) : Prespectrum ⥤ Type where
  obj E := StablePi E p q
  map f := TypeCat.ofHom (stableMap f p q)
  map_id := by sorry
  map_comp := by sorry

theorem stablePiFunctor_inverts (p q : ℕ) :
    stableEquivalences.IsInvertedBy (stablePiFunctor p q) := by
  intro E G f h
  exact (bijective_iff_isIso_ofHom (stableMap f p q)).mp (h p q)

/-- Action of a localization zigzag on actual stable homotopy classes. -/
def stablePiLocalized (p q : ℕ) : StableCategory ⥤ Type :=
  Localization.Construction.lift (stablePiFunctor p q) (stablePiFunctor_inverts p q)

/-- Positive suspension in the stable category is represented by the tail
prespectrum. For an Omega spectrum this shifts K(A,n) to K(A,n+1). -/
def tail (E : Prespectrum) : Prespectrum where
  level n := E.level (n+1)
  bonding n := E.bonding (n+1)

def tailMap {E F : Prespectrum} (f : E ⟶ F) : tail E ⟶ tail F where
  level n := f.level (n+1)
  commutes n := f.commutes (n+1)

/-- Negative suspension is represented by levelwise based loops. -/
def loops (E : Prespectrum) : Prespectrum where
  level n := loopSpace (E.level n)
  bonding n := loopMap (E.bonding n)

def loopsMapSpectrum {E F : Prespectrum} (f : E ⟶ F) : loops E ⟶ loops F where
  level n := loopMap (f.level n)
  commutes n := by sorry

def shift (E : Prespectrum) (p q : ℕ) : Prespectrum := (loops^[q]) ((tail^[p]) E)

/-- Precise Eilenberg-Mac Lane object specification inside the concrete
prespectra, with its zero class distinguished. Model construction remains
a proof obligation; none of the sphere's positive stable stems is assumed. -/
structure Mod2Source where
  spectrum : Prespectrum
  pi0 : StablePi spectrum 0 0 ≃ ZMod 2
  pi0_zero : pi0 (stableZero spectrum 0 0) = 0
  vanishing : ∀ p q : ℕ, p ≠ q → Subsingleton (StablePi spectrum p q)

/-- HF2-cohomological equivalences in the actual stable category. This is
not declared to be Moore completion on arbitrary unbounded spectra. -/
def mod2Equivalences (H : Mod2Source) : MorphismProperty StableCategory :=
  fun X Y f => ∀ p q : ℕ,
    Function.Bijective (fun g : Y ⟶ stabilizeFunctor.obj (shift H.spectrum p q) => f ≫ g)

abbrev CompleteCategory (H : Mod2Source) := (mod2Equivalences H).Localization
abbrev completeFunctor (H : Mod2Source) : StableCategory ⥤ CompleteCategory H :=
  (mod2Equivalences H).Q
abbrev sourceFunctor (H : Mod2Source) : Prespectrum ⥤ CompleteCategory H :=
  stabilizeFunctor ⋙ completeFunctor H
end
end KIP126.StableHomotopy.Source
