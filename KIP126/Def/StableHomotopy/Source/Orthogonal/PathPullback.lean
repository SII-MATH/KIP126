import KIP126.Def.StableHomotopy.Source.Orthogonal.Shifts

/-! The point-set path model of a homotopy pullback. Both endpoints of
the path are part of its definition. Stable derived pullbacks apply the
same functorial fibrant resolution to the whole displayed cospan.
-/
namespace KIP126.StableHomotopy.Source.Orthogonal
open CategoryTheory
open scoped Topology unitInterval
noncomputable section

@[ext] structure PathPullbackLevel {A B X : Spectrum} (f : A ⟶ X) (g : B ⟶ X)
    (n : ℕ) where
  left : A.level n
  right : B.level n
  path : C(I, X.level n)
  at_zero : path 0 = (f.level n).map left
  at_one : path 1 = (g.level n).map right

instance pathPullbackLevelTopology {A B X : Spectrum} (f : A ⟶ X) (g : B ⟶ X)
    (n : ℕ) : TopologicalSpace (PathPullbackLevel f g n) :=
  TopologicalSpace.induced (fun z => (z.left,z.right,z.path)) inferInstance

def pathPullbackPoint {A B X : Spectrum} (f : A ⟶ X) (g : B ⟶ X) (n : ℕ) :
    PathPullbackLevel f g n where
  left := (A.level n).point
  right := (B.level n).point
  path := ContinuousMap.const _ (X.level n).point
  at_zero := (f.level n).point.symm
  at_one := (g.level n).point.symm

def pathPullbackSpace {A B X : Spectrum} (f : A ⟶ X) (g : B ⟶ X) (n : ℕ) :
    BasedSpace where
  carrier := PathPullbackLevel f g n
  topology := TopologicalSpace.compactlyGenerated.{0} (PathPullbackLevel f g n)
  point := pathPullbackPoint f g n

def pathPullbackAction {A B X : Spectrum} {f : A ⟶ X} {g : B ⟶ X}
    {n m : ℕ} (a : J n m) (z : PathPullbackLevel f g n) : PathPullbackLevel f g m where
  left := (A.action n m).apply a z.left
  right := (B.action n m).apply a z.right
  path := ⟨fun t => (X.action n m).apply a (z.path t), by sorry⟩
  at_zero := by sorry
  at_one := by sorry

def pathPullback {A B X : Spectrum} (f : A ⟶ X) (g : B ⟶ X) : Spectrum where
  level := pathPullbackSpace f g
  convenient := by sorry
  action n m :=
    { map := ⟨fun z => pathPullbackAction z.1 z.2, by sorry⟩
      left_point := by sorry
      right_point := by sorry }
  identity := by sorry
  composition := by sorry

/-- Functoriality acts on all three coordinates, including the path. -/
def pathPullbackMap {A B X A' B' X' : Spectrum}
    {f : A ⟶ X} {g : B ⟶ X} {f' : A' ⟶ X'} {g' : B' ⟶ X'}
    (a : A ⟶ A') (b : B ⟶ B') (x : X ⟶ X')
    (ha : f ≫ x = a ≫ f') (hb : g ≫ x = b ≫ g') :
    pathPullback f g ⟶ pathPullback f' g' where
  level n :=
    { map := ⟨fun z =>
        { left := (a.level n).map z.left
          right := (b.level n).map z.right
          path := (x.level n).map.comp z.path
          at_zero := by sorry
          at_one := by sorry }, by sorry⟩
      point := by sorry }
  naturality := by sorry

/-- A STRICT commutative cone supplies the constant-path comparison.
No nullhomotopy or path is freely chosen in this map. -/
def pathPullbackComparison {A B X T : Spectrum} (f : A ⟶ X) (g : B ⟶ X)
    (a : T ⟶ A) (b : T ⟶ B) (h : a ≫ f = b ≫ g) : T ⟶ pathPullback f g where
  level n :=
    { map := ⟨fun t =>
        { left := (a.level n).map t
          right := (b.level n).map t
          path := ContinuousMap.const _ ((f.level n).map ((a.level n).map t))
          at_zero := rfl
          at_one := by sorry }, by sorry⟩
      point := by sorry }
  naturality := by sorry

/-- The canonical loop inclusion has both cone coordinates equal to the
actual basepoint, and retains the entire loop as its path coordinate. -/
def loopsToPathPullback {A B X : Spectrum} (f : A ⟶ X) (g : B ⟶ X) :
    loops X ⟶ pathPullback f g where
  level n :=
    { map := ⟨fun l =>
        { left := (A.level n).point
          right := (B.level n).point
          path := ⟨fun t => l.val (fun _ => t), by sorry⟩
          at_zero := by sorry
          at_one := by sorry }, by sorry⟩
      point := by sorry }
  naturality := by sorry

def derivedPullback {A B X : Spectrum} (f : A ⟶ X) (g : B ⟶ X) : Spectrum :=
  pathPullback (fibrantResolution.functor.map f) (fibrantResolution.functor.map g)

def derivedPullbackMap {A B X A' B' X' : Spectrum}
    {f : A ⟶ X} {g : B ⟶ X} {f' : A' ⟶ X'} {g' : B' ⟶ X'}
    (a : A ⟶ A') (b : B ⟶ B') (x : X ⟶ X')
    (ha : f ≫ x = a ≫ f') (hb : g ≫ x = b ≫ g') :
    derivedPullback f g ⟶ derivedPullback f' g' :=
  pathPullbackMap (fibrantResolution.functor.map a)
    (fibrantResolution.functor.map b) (fibrantResolution.functor.map x)
    (by rw [← Functor.map_comp, ← Functor.map_comp, ha])
    (by rw [← Functor.map_comp, ← Functor.map_comp, hb])

/-- First resolve the WHOLE cone; functoriality preserves its commuting
square, so the comparison again uses only constant paths. -/
def derivedPullbackComparison {A B X T : Spectrum} (f : A ⟶ X) (g : B ⟶ X)
    (a : T ⟶ A) (b : T ⟶ B) (h : a ≫ f = b ≫ g) : T ⟶ derivedPullback f g :=
  fibrantResolution.inclusion.app T ≫
    pathPullbackComparison (fibrantResolution.functor.map f)
      (fibrantResolution.functor.map g) (fibrantResolution.functor.map a)
      (fibrantResolution.functor.map b) (by
        rw [← Functor.map_comp, ← Functor.map_comp, h])

/-- Contractible sides identify this particular path pullback with loops.
Stable fibrancy is explicit; the assertion is not made for arbitrary
unresolved point-set cospans. -/
theorem loopsToPathPullback_equivalence {A B X : Spectrum}
    (f : A ⟶ X) (g : B ⟶ X)
    (hA : StableFibrant A) (hB : StableFibrant B) (hX : StableFibrant X)
    (zA : ∀ p q : ℕ, Subsingleton (Source.StablePi (forget.obj A) p q))
    (zB : ∀ p q : ℕ, Subsingleton (Source.StablePi (forget.obj B) p q)) :
    stableEquivalences (loopsToPathPullback f g) := by sorry

end
end KIP126.StableHomotopy.Source.Orthogonal
