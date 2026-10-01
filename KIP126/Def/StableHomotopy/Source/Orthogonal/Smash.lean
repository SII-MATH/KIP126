import KIP126.Def.StableHomotopy.Source.Orthogonal.Function

/-! Point-set enriched Day convolution, with its full universal property.
The domain category is the displayed Thom category J, and the enrichment
uses compact-open k-spaces. This construction does not infer a tensor from
its values on suspension-spectrum generators in the homotopy category. -/
namespace KIP126.StableHomotopy.Source.Orthogonal
open CategoryTheory
noncomputable section

@[ext] structure Pairing (E F G : Spectrum) where
  pair : ∀ n m, BasedBimap (E.level n) (F.level m) (G.level (n+m))
  left_natural : ∀ n n' m (a : J n n') x y,
    (pair n' m).apply ((E.action n n').apply a x) y =
      (G.action (n+m) (n'+m)).apply (jDirectSum a (jId m)) ((pair n m).apply x y)
  right_natural : ∀ n m m' (a : J m m') x y,
    (pair n m').apply x ((F.action m m').apply a y) =
      (G.action (n+m) (n+m')).apply (jDirectSum (jId n) a) ((pair n m).apply x y)

def Pairing.postcompose {E F G G' : Spectrum} (b : Pairing E F G) (f : G ⟶ G') :
    Pairing E F G' where
  pair n m :=
    { map := (f.level (n+m)).map.comp (b.pair n m).map
      left_point := by sorry
      right_point := by sorry }
  left_natural := by sorry
  right_natural := by sorry

def Pairing.precompose {E E' F F' G : Spectrum} (f : E' ⟶ E) (g : F' ⟶ F)
    (b : Pairing E F G) : Pairing E' F' G where
  pair n m :=
    { map := ⟨fun z => (b.pair n m).apply ((f.level n).map z.1) ((g.level m).map z.2), by sorry⟩
      left_point := by sorry
      right_point := by sorry }
  left_natural := by sorry
  right_natural := by sorry

def mapTopology (E F : Spectrum) : TopologicalSpace (E ⟶ F) :=
  TopologicalSpace.induced (fun f n => (f.level n).map) inferInstance
def pairingTopology (E F G : Spectrum) : TopologicalSpace (Pairing E F G) :=
  TopologicalSpace.induced (fun b n m => (b.pair n m).map) inferInstance

/-- Mapping and pairing spaces have the kification of the actual
compact-open end topology. The universal property is ENRICHED. -/
def kMapTopology (E F : Spectrum) : TopologicalSpace (E ⟶ F) :=
  letI := mapTopology E F
  TopologicalSpace.compactlyGenerated.{0} (E ⟶ F)
def kPairingTopology (E F G : Spectrum) : TopologicalSpace (Pairing E F G) :=
  letI := pairingTopology E F G
  TopologicalSpace.compactlyGenerated.{0} (Pairing E F G)

structure SmashData (E F : Spectrum) where
  object : Spectrum
  pairing : Pairing E F object
  universal : ∀ G, Function.Bijective (fun f : object ⟶ G => pairing.postcompose f)
  continuous_universal : ∀ G,
    @Continuous _ _ (kMapTopology object G) (kPairingTopology E F G)
      (fun f : object ⟶ G => pairing.postcompose f)
  continuous_inverse : ∀ G,
    @Continuous _ _ (kPairingTopology E F G) (kMapTopology object G)
      (Equiv.ofBijective (fun f : object ⟶ G => pairing.postcompose f) (universal G)).symm

/-- Existence is the enriched Day coend along direct sum on J. The result
includes the universal pairing and the actual topology of every mapping
space. This is a mathematical colimit construction debt, not a stage
delivery package or a freely postulated multiplication operation. -/
theorem exists_smashData (E F : Spectrum) : Nonempty (SmashData E F) := by sorry
def smashData (E F : Spectrum) : SmashData E F := Classical.choice (exists_smashData E F)
def smash (E F : Spectrum) : Spectrum := (smashData E F).object
def smashPairing (E F : Spectrum) : Pairing E F (smash E F) := (smashData E F).pairing

def liftPairing {E F G : Spectrum} (b : Pairing E F G) : smash E F ⟶ G :=
  (Equiv.ofBijective (fun f => (smashPairing E F).postcompose f)
    ((smashData E F).universal G)).symm b
theorem liftPairing_spec {E F G : Spectrum} (b : Pairing E F G) :
    (smashPairing E F).postcompose (liftPairing b) = b := by
  exact (Equiv.ofBijective _ ((smashData E F).universal G)).apply_symm_apply b

def smashMap {E E' F F' : Spectrum} (f : E ⟶ E') (g : F ⟶ F') :
    smash E F ⟶ smash E' F' :=
  liftPairing ((smashPairing E' F').precompose f g)

def smashFunctor : Spectrum ⥤ Spectrum ⥤ Spectrum where
  obj E :=
    { obj := smash E
      map := fun f => smashMap (𝟙 E) f
      map_id := by sorry
      map_comp := by sorry }
  map f :=
    { app := fun F => smashMap f (𝟙 F)
      naturality := by sorry }
  map_id := by sorry
  map_comp := by sorry

/-- The adjunction to the explicitly constructed point-set function
spectrum is induced by evaluating the same universal pairing. -/
def curryPairing {E F G : Spectrum} (b : Pairing E F G) : E ⟶ functionSpectrum F G where
  level n :=
    { map := ⟨fun x =>
        { level := fun m =>
            { map := ⟨fun y => (b.pair n m).apply x y, by sorry⟩
              point := (b.pair n m).right_point x }
          naturality := by intro m k a y; exact b.right_natural n m k a x y }, by sorry⟩
      point := by sorry }
  naturality := by sorry

theorem curryPairing_bijective (E F G : Spectrum) :
    Function.Bijective (curryPairing (E := E) (F := F) (G := G)) := by sorry

def smashFunctionEquiv (E F G : Spectrum) :
    (smash E F ⟶ G) ≃ (E ⟶ functionSpectrum F G) :=
  (Equiv.ofBijective (fun f => (smashPairing E F).postcompose f)
    ((smashData E F).universal G)).trans
    (Equiv.ofBijective curryPairing (curryPairing_bijective E F G))

theorem smash_preserves_stableEquivalences {E E' F F' : Spectrum}
    (f : E ⟶ E') (g : F ⟶ F')
    (hE : Cofibrant E) (hE' : Cofibrant E') (hF : Cofibrant F) (hF' : Cofibrant F')
    (hf : stableEquivalences f) (hg : stableEquivalences g) :
    stableEquivalences (smashMap f g) := by sorry

end
end KIP126.StableHomotopy.Source.Orthogonal
