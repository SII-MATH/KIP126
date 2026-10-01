import KIP126.Def.StableHomotopy.Source.Prespectra
import Mathlib.Topology.CWComplex.Classical.Basic

/-! Concrete reduced suspensions and suspension spectra. Quotients collapse
precisely the two ends and the basepoint line. This fixes the source sphere
as the suspension spectrum of the discrete pointed two-element space. -/
namespace KIP126.StableHomotopy.Source
open CategoryTheory
open scoped Topology unitInterval
noncomputable section

/-- A CW structure whose selected basepoint is a zero-cell. This condition
is retained where raw smash products and mapping cones compute DERIVED
operations; arbitrary badly based spaces are not covered by those claims. -/
structure CellularSpace (X : BasedSpace) where
  hausdorff : T2Space X
  cells : Topology.CWComplex (Set.univ : Set X)
  vertex : cells.cell 0
  point_eq : cells.map 0 vertex 0 = X.point

structure CellularPrespectrum (E : Prespectrum) where
  level : ∀ n : ℕ, CellularSpace (E.level n)

/-- A replacement is an actual map of the displayed prespectra inducing
bijections on the displayed stable homotopy sets. The construction theorem
cannot be discharged by merely renaming an arbitrary type as spectra. -/
structure CellularReplacement (E : Prespectrum) where
  spectrum : Prespectrum
  cellular : CellularPrespectrum spectrum
  map : spectrum ⟶ E
  equivalence : stableEquivalences map

def cellularReplacement (E : Prespectrum) : CellularReplacement E := by
  sorry

/-- Collapse a specified subspace to a single point, with the quotient
 topology. These are actual quotient points, not an unspecified cofiber. -/
def collapseSetoid {X : Type} (A : Set X) : Setoid X where
  r x y := x = y ∨ (x ∈ A ∧ y ∈ A)
  iseqv := by
    refine ⟨fun _ => Or.inl rfl, ?_, ?_⟩
    · intro x y h
      exact h.elim (fun h => Or.inl h.symm) (fun h => Or.inr h.symm)
    · intro x y z h h'
      rcases h with rfl | ⟨hx,hy⟩
      · exact h'
      rcases h' with rfl | ⟨_,hz⟩
      · exact Or.inr ⟨hx,hy⟩
      · exact Or.inr ⟨hx,hz⟩

def suspensionCollapse (X : BasedSpace) : Set (I × X) :=
  {z | z.1 = 0 ∨ z.1 = 1 ∨ z.2 = X.point}

def suspension (X : BasedSpace) : BasedSpace where
  carrier := Quotient (collapseSetoid (suspensionCollapse X))
  topology := inferInstance
  point := Quotient.mk _ (0, X.point)

def suspensionPoint (X : BasedSpace) (t : I) (x : X) : suspension X :=
  Quotient.mk _ (t,x)

def suspensionMap {X Y : BasedSpace} (f : X ⟶ Y) : suspension X ⟶ suspension Y where
  map := ⟨Quotient.map (fun z : I × X => (z.1,f.map z.2)) (by
    intro x y h
    rcases h with rfl | ⟨hx,hy⟩
    · exact Or.inl rfl
    · exact Or.inr ⟨by rcases hx with h | h | h <;> simp_all [suspensionCollapse, f.point],
        by rcases hy with h | h | h <;> simp_all [suspensionCollapse, f.point]⟩), by
    sorry⟩
  point := by sorry

/-- Adjunction unit X -> Omega(Sigma X), explicitly x |-> (t |-> [t,x]). -/
def suspensionBonding (X : BasedSpace) : X ⟶ loopSpace (suspension X) where
  map := ⟨fun x => ⟨⟨fun t => suspensionPoint X (t PUnit.unit) x, by sorry⟩, by
    intro t ht
    rcases ht with ⟨j,hj⟩
    apply Quotient.sound
    right
    refine ⟨?_, ?_⟩
    · cases j
      rcases hj with hj | hj
      · exact Or.inl hj
      · exact Or.inr (Or.inl hj)
    · exact Or.inl rfl⟩, by sorry⟩
  point := by
    apply GenLoop.ext
    intro t
    apply Quotient.sound
    exact Or.inr ⟨Or.inr (Or.inr rfl), Or.inl rfl⟩

def suspensionLevel (X : BasedSpace) : ℕ → BasedSpace
  | 0 => X
  | n+1 => suspension (suspensionLevel X n)

def suspensionSpectrum (X : BasedSpace) : Prespectrum where
  level := suspensionLevel X
  bonding n := suspensionBonding (suspensionLevel X n)

def suspensionLevelMap {X Y : BasedSpace} (f : X ⟶ Y) :
    ∀ n, suspensionLevel X n ⟶ suspensionLevel Y n
  | 0 => f
  | n+1 => suspensionMap (suspensionLevelMap f n)

def suspensionSpectrumMap {X Y : BasedSpace} (f : X ⟶ Y) :
    suspensionSpectrum X ⟶ suspensionSpectrum Y where
  level := suspensionLevelMap f
  commutes n := by sorry

def suspensionSpectrumFunctor : BasedSpace ⥤ Prespectrum where
  obj := suspensionSpectrum
  map := suspensionSpectrumMap
  map_id := by sorry
  map_comp := by sorry

def sphereZeroSpace : BasedSpace where
  carrier := Bool
  topology := ⊥
  point := false

abbrev spherePrespectrum : Prespectrum := suspensionSpectrum sphereZeroSpace
abbrev sphere (H : Mod2Source) : CompleteCategory H := (sourceFunctor H).obj spherePrespectrum
abbrev coefficient (H : Mod2Source) : CompleteCategory H := (sourceFunctor H).obj H.spectrum

/-- The fundamental zero-dimensional sphere class is literally the
nonbasepoint true at level zero. -/
def sphereGenerator : StablePi spherePrespectrum 0 0 :=
  Quot.mk _ ⟨0, ⟨ContinuousMap.const _ true, by
    intro t ht
    rcases ht with ⟨j,_⟩
    exact PEmpty.elim j⟩⟩

/-- Evaluation of a stable map on the displayed fundamental sphere class.
This fixes the representative comparison, rather than selecting a bare
bijection between two same-sized sets. -/
def evaluateSphere (E : Prespectrum)
    (f : stabilizeFunctor.obj spherePrespectrum ⟶ stabilizeFunctor.obj E) :
    StablePi E 0 0 :=
  (stablePiLocalized 0 0).map f sphereGenerator

theorem evaluateSphere_bijective (E : Prespectrum) :
    Function.Bijective (evaluateSphere E) := by
  sorry

/-- The coefficient unit is the map evaluating to 1 in the specified
pi0=F2; its subsequent localization is the source HF2 unit. -/
def coefficientUnit (H : Mod2Source) : sphere H ⟶ coefficient H :=
  (completeFunctor H).map
    ((Equiv.ofBijective (evaluateSphere H.spectrum)
      (evaluateSphere_bijective H.spectrum)).symm (H.pi0.symm 1))


/-- The smash product on pointed spaces is the quotient by X vee Y. -/
def smash (X Y : BasedSpace) : BasedSpace where
  carrier := Quotient (collapseSetoid {z : X × Y | z.1 = X.point ∨ z.2 = Y.point})
  topology := inferInstance
  point := Quotient.mk _ (X.point,Y.point)

def smashMap {X X' Y Y' : BasedSpace} (f : X ⟶ X') (g : Y ⟶ Y') :
    smash X Y ⟶ smash X' Y' where
  map := ⟨Quotient.map (fun z : X × Y => (f.map z.1,g.map z.2)) (by
    intro a b h
    rcases h with rfl | ⟨ha,hb⟩
    · exact Or.inl rfl
    · exact Or.inr ⟨by rcases ha with h | h <;> simp_all [f.point, g.point],
        by rcases hb with h | h <;> simp_all [f.point, g.point]⟩), by sorry⟩
  point := by sorry

/-- The symmetry of the actual pointed-space quotient. -/
def smashSwap (X Y : BasedSpace) : smash X Y ⟶ smash Y X where
  map := ⟨Quotient.map (fun z : X × Y => (z.2,z.1)) (by sorry), by sorry⟩
  point := rfl

/-- The associativity map keeps each of the three original coordinates.
Compact Hausdorff hypotheses ensure products preserve the required quotient
maps. This is NOT an assertion that ordinary Top* is monoidal on arbitrary
bad spaces; finite CW generators suffice for the source coherence test. -/
def smashAssociator (X Y Z : BasedSpace)
    [CompactSpace X] [CompactSpace Y] [CompactSpace Z]
    [T2Space X] [T2Space Y] [T2Space Z] :
    smash (smash X Y) Z ⟶ smash X (smash Y Z) where
  map := ⟨Quotient.lift (fun z : smash X Y × Z =>
    Quotient.lift (fun xy : X × Y =>
      (Quotient.mk _ (xy.1, Quotient.mk _ (xy.2,z.2)) : smash X (smash Y Z)))
      (by sorry) z.1) (by sorry), by sorry⟩
  point := rfl

/-- False is the basepoint of the specified S0; true acts as the unit. -/
def smashLeftUnit (X : BasedSpace) : smash sphereZeroSpace X ⟶ X where
  map := ⟨Quotient.lift (fun z : Bool × X => if z.1 then z.2 else X.point)
    (by sorry), by sorry⟩
  point := rfl

def smashRightUnit (X : BasedSpace) : smash X sphereZeroSpace ⟶ X where
  map := ⟨Quotient.lift (fun z : X × Bool => if z.2 then z.1 else X.point)
    (by sorry), by sorry⟩
  point := rfl

/-- Actual constant level maps; this fixes zero independently of any
later transported preadditive structure. -/
def zeroMap (E F : Prespectrum) : E ⟶ F where
  level n := ⟨ContinuousMap.const _ (F.level n).point, rfl⟩
  commutes n := by sorry

theorem coefficientUnit_nonzero (H : Mod2Source) :
    coefficientUnit H ≠ (sourceFunctor H).map (zeroMap spherePrespectrum H.spectrum) := by
  sorry


def tailIterMap {E F : Prespectrum} (f : E ⟶ F) :
    ∀ p, (tail^[p]) E ⟶ (tail^[p]) F
  | 0 => f
  | p+1 => by simpa only [Function.iterate_succ_apply'] using tailMap (tailIterMap f p)

def loopsIterMap {E F : Prespectrum} (f : E ⟶ F) :
    ∀ q, (loops^[q]) E ⟶ (loops^[q]) F
  | 0 => f
  | q+1 => by simpa only [Function.iterate_succ_apply'] using loopsMapSpectrum (loopsIterMap f q)

def shiftMap {E F : Prespectrum} (f : E ⟶ F) (p q : ℕ) : shift E p q ⟶ shift F p q :=
  loopsIterMap (tailIterMap f p) q
end
end KIP126.StableHomotopy.Source
