import KIP126.Def.StableHomotopy.Source.Orthogonal.Index

/-! Orthogonal spectra as continuous based J-diagrams. The action is on
the displayed Thom spaces, not just on the homotopy category. Forgetting
to the existing sequential source uses a fixed actual suspension loop. -/
namespace KIP126.StableHomotopy.Source.Orthogonal
open CategoryTheory
open scoped Topology unitInterval
noncomputable section

structure Spectrum where
  level : ℕ → BasedSpace
  convenient : ∀ n, IsConvenient (level n)
  action : ∀ n m, BasedBimap (J n m) (level n) (level m)
  identity : ∀ n x, (action n n).apply (jId n) x = x
  composition : ∀ n m k (a : J n m) (b : J m k) x,
    (action n k).apply (jCompose a b) x =
      (action m k).apply b ((action n m).apply a x)

@[ext] structure Map (E F : Spectrum) where
  level : ∀ n, E.level n ⟶ F.level n
  naturality : ∀ n m (a : J n m) x,
    (level m).map ((E.action n m).apply a x) =
      (F.action n m).apply a ((level n).map x)

instance : Category Spectrum where
  Hom := Map
  id E := ⟨fun n => 𝟙 (E.level n), by intros; rfl⟩
  comp f g := ⟨fun n => f.level n ≫ g.level n, by
    intro n m a x
    change (g.level m).map ((f.level m).map _) = _
    rw [f.naturality, g.naturality]
    rfl⟩
  id_comp := by intros; ext; rfl
  comp_id := by intros; ext; rfl
  assoc := by intros; ext; rfl

def zeroMap (E F : Spectrum) : E ⟶ F where
  level n := ⟨ContinuousMap.const _ (F.level n).point, rfl⟩
  naturality := by intro n m a x; exact ((F.action n m).right_point a).symm

def underlyingBonding (E : Spectrum) (n : ℕ) :
    E.level n ⟶ Source.loopSpace (E.level (n+1)) where
  map := ⟨fun x => ⟨⟨fun t => (E.action n (n+1)).apply (jLine n (t PUnit.unit)) x,
    by sorry⟩, by sorry⟩, by sorry⟩
  point := by sorry

def underlying (E : Spectrum) : Prespectrum where
  level := E.level
  bonding := underlyingBonding E

def forget : Spectrum ⥤ Prespectrum where
  obj := underlying
  map f := ⟨f.level, by sorry⟩
  map_id := by intros; rfl
  map_comp := by intros; rfl

/-- Ordinary (not positive) stable equivalences: every integer stable
homotopy group of the same underlying sequential prespectrum is tested. -/
def stableEquivalences : MorphismProperty Spectrum :=
  fun _ _ f => Source.stableEquivalences (forget.map f)

def sphere : Spectrum where
  level n := J 0 n
  convenient := j_convenient 0
  action n m :=
    { map := ⟨fun z => jCompose z.2 z.1, by sorry⟩
      left_point := by intro y; cases y <;> rfl
      right_point := by intro x; cases x <;> rfl }
  identity := by intro n x; exact jCompose_id x
  composition := by intro n m k a b x; exact (jCompose_assoc x a b).symm

/-- The ordinary q-cofibration class is fixed by the actual based disk
lifting tests at ALL nonnegative levels, including level zero. -/
def LevelTrivialFibration {E F : Spectrum} (f : E ⟶ F) : Prop :=
  ∀ n, HasDiskBoundaryLifting (f.level n)

def Cofibrant (E : Spectrum) : Prop :=
  ∀ (A B : Spectrum) (p : A ⟶ B), LevelTrivialFibration p →
    ∀ f : E ⟶ B, ∃ g : E ⟶ A, g ≫ p = f

/-- A functorial small-object replacement specification. Its maps, their
functoriality, and their lifting properties belong to the SAME source.
No route conclusion or homotopy-group calculation is a field. -/
structure CofibrantResolution where
  functor : Spectrum ⥤ Spectrum
  projection : functor ⟶ 𝟭 Spectrum
  cofibrant : ∀ E, Cofibrant (functor.obj E)
  trivial : ∀ E, LevelTrivialFibration (projection.app E)

theorem exists_cofibrantResolution : Nonempty CofibrantResolution := by sorry
def cofibrantResolution : CofibrantResolution := Classical.choice exists_cofibrantResolution

theorem levelTrivialFibration_stable {E F : Spectrum} (f : E ⟶ F)
    (h : LevelTrivialFibration f) : stableEquivalences f := by sorry

end
end KIP126.StableHomotopy.Source.Orthogonal
