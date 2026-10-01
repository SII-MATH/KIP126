import KIP126.Def.StableHomotopy.Source.Orthogonal.Data

/-! The point-set function ORTHOGONAL SPECTRUM, before homotopy-category
localization. Its nth space is the compact-open end of maps E_m -> F_(n+m).
The J-action, in the first block, commutes strictly with the J-naturality
condition in the second block. This retained enrichment is essential:
ordinary Hom sets in the stable homotopy category cannot replace it. -/
namespace KIP126.StableHomotopy.Source.Orthogonal
open CategoryTheory
noncomputable section

@[ext] structure FunctionLevel (E F : Spectrum) (n : ℕ) where
  level : ∀ m, E.level m ⟶ F.level (n+m)
  naturality : ∀ m k (a : J m k) x,
    (level k).map ((E.action m k).apply a x) =
      (F.action (n+m) (n+k)).apply (jDirectSum (jId n) a) ((level m).map x)

instance functionLevelTopology (E F : Spectrum) (n : ℕ) :
    TopologicalSpace (FunctionLevel E F n) :=
  TopologicalSpace.induced (fun f m => (f.level m).map) inferInstance

def zeroFunctionLevel (E F : Spectrum) (n : ℕ) : FunctionLevel E F n where
  level m := ⟨ContinuousMap.const _ (F.level (n+m)).point, rfl⟩
  naturality := by intro m k a x; exact ((F.action (n+m) (n+k)).right_point _).symm

def functionLevel (E F : Spectrum) (n : ℕ) : BasedSpace where
  carrier := FunctionLevel E F n
  topology := TopologicalSpace.compactlyGenerated.{0} (FunctionLevel E F n)
  point := zeroFunctionLevel E F n

def functionAction (E F : Spectrum) {n n' : ℕ}
    (a : J n n') (f : FunctionLevel E F n) : FunctionLevel E F n' where
  level m :=
    { map := ⟨fun x => (F.action (n+m) (n'+m)).apply
        (jDirectSum a (jId m)) ((f.level m).map x), by sorry⟩
      point := by sorry }
  naturality := by sorry

/-- No carrier, action, or mapping-space component is chosen by sorry.
Only continuity, end-compatibility, and the J-diagram laws are deferred. -/
def functionSpectrum (E F : Spectrum) : Spectrum where
  level := functionLevel E F
  convenient := by sorry
  action n n' :=
    { map := ⟨fun z => functionAction E F z.1 z.2, by sorry⟩
      left_point := by sorry
      right_point := by sorry }
  identity := by sorry
  composition := by sorry

def functionMap {E E' F F' : Spectrum} (f : E' ⟶ E) (g : F ⟶ F') :
    functionSpectrum E F ⟶ functionSpectrum E' F' where
  level n :=
    { map := ⟨fun h =>
        { level := fun m => f.level m ≫ h.level m ≫ g.level (n+m)
          naturality := by sorry }, by sorry⟩
      point := by sorry }
  naturality := by sorry

/-- The same ordinary q-cofibration class on maps, defined by actual
level disk lifting; the stable acyclic maps add the displayed pi_* test. -/
def QCofibration {E F : Spectrum} (i : E ⟶ F) : Prop :=
  ∀ (A B : Spectrum) (p : A ⟶ B), LevelTrivialFibration p →
    ∀ (a : E ⟶ A) (b : F ⟶ B), a ≫ p = i ≫ b →
      ∃ l : F ⟶ A, i ≫ l = a ∧ l ≫ p = b

def StableFibrant (F : Spectrum) : Prop :=
  ∀ (A B : Spectrum) (i : A ⟶ B), QCofibration i → stableEquivalences i →
    ∀ a : A ⟶ F, ∃ b : B ⟶ F, i ≫ b = a

structure FibrantResolution where
  functor : Spectrum ⥤ Spectrum
  inclusion : 𝟭 Spectrum ⟶ functor
  equivalent : ∀ E, stableEquivalences (inclusion.app E)
  fibrant : ∀ E, StableFibrant (functor.obj E)

theorem exists_fibrantResolution : Nonempty FibrantResolution := by sorry
def fibrantResolution : FibrantResolution := Classical.choice exists_fibrantResolution

/-- The actual enriched derived mapping spectrum. The replacements refer
to the specified stable model (all levels, all integer stable groups).
This is an orthogonal spectrum, not a set-valued presheaf of Ho-Homs. -/
def derivedMappingSpectrum (E F : Spectrum) : Spectrum :=
  functionSpectrum (cofibrantResolution.functor.obj E) (fibrantResolution.functor.obj F)

def derivedMappingMap {E E' F F' : Spectrum} (f : E' ⟶ E) (g : F ⟶ F') :
    derivedMappingSpectrum E F ⟶ derivedMappingSpectrum E' F' :=
  functionMap (cofibrantResolution.functor.map f) (fibrantResolution.functor.map g)

end
end KIP126.StableHomotopy.Source.Orthogonal
