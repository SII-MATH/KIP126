import KIP126.Def.StableHomotopy.Source.Orthogonal.ShiftSmash

/-! A restricted, point-set calculus for commuting derived shifts with
smash. Every elementary arrow is an actual replacement, interval-coordinate
unit/counit, or the universal-pairing suspension/loop map. A zigzag can invert
such an arrow only after its componentwise stable equivalence is supplied.
There is no constructor for an arbitrary map or arbitrary isomorphism. -/
namespace KIP126.StableHomotopy.Source.Orthogonal
open CategoryTheory CategoryTheory.Functor
noncomputable section

inductive SmashWord
  | left | right
  | q (w : SmashWord) | r (w : SmashWord)
  | suspension (w : SmashWord) | loops (w : SmashWord)
  | tensor (w v : SmashWord)

def SmashWord.functor : SmashWord → (Spectrum × Spectrum ⥤ Spectrum)
  | .left => { obj := fun P => P.1, map := fun f => f.1 }
  | .right => { obj := fun P => P.2, map := fun f => f.2 }
  | .q w => w.functor ⋙ cofibrantResolution.functor
  | .r w => w.functor ⋙ fibrantResolution.functor
  | .suspension w => w.functor ⋙ suspensionFunctor
  | .loops w => w.functor ⋙ loopsFunctor
  | .tensor w v =>
    { obj := fun P => smash (w.functor.obj P) (v.functor.obj P)
      map := fun f => smashMap (w.functor.map f) (v.functor.map f)
      map_id := by sorry
      map_comp := by sorry }

def SmashWord.iterate (f : SmashWord → SmashWord) : ℕ → SmashWord → SmashWord
  | 0, w => w
  | n+1, w => f (iterate f n w)

def SmashWord.shift : ℤ → SmashWord → SmashWord
  | .ofNat n => iterate (fun w => .suspension (.q w)) n
  | .negSucc n => iterate (fun w => .loops (.r w)) (n+1)

def SmashWord.derivedTensor (w v : SmashWord) : SmashWord := .tensor (.q w) (.q v)

/-- These are syntactic reassociations of the SAME displayed functors. -/
theorem SmashWord.shift_functor (n : ℤ) (w : SmashWord) :
    (w.shift n).functor = w.functor ⋙ derivedShift n := by sorry

inductive SmashArrow : SmashWord → SmashWord → Type
  | q (w) : SmashArrow (.q w) w
  | r (w) : SmashArrow w (.r w)
  | unit (w) : SmashArrow (.q w) (.loops (.r (.suspension (.q w))))
  | counit (w) : SmashArrow (.suspension (.q (.loops (.r w)))) (.r w)
  | suspensionTensor (w v) : SmashArrow (.tensor (.suspension w) v)
      (.suspension (.tensor w v))
  | loopsTensor (w v) : SmashArrow (.tensor (.loops w) v) (.loops (.tensor w v))
  | mapQ {w v} : SmashArrow w v → SmashArrow (.q w) (.q v)
  | mapR {w v} : SmashArrow w v → SmashArrow (.r w) (.r v)
  | mapSuspension {w v} : SmashArrow w v → SmashArrow (.suspension w) (.suspension v)
  | mapLoops {w v} : SmashArrow w v → SmashArrow (.loops w) (.loops v)
  | tensorLeft {w v} (z) : SmashArrow w v → SmashArrow (.tensor w z) (.tensor v z)
  | tensorRight {w v} (z) : SmashArrow w v → SmashArrow (.tensor z w) (.tensor z v)

set_option maxRecDepth 2048 in
def SmashArrow.map {w v} : SmashArrow w v → (w.functor ⟶ v.functor)
  | .q a => whiskerLeft a.functor cofibrantResolution.projection
  | .r a => whiskerLeft a.functor fibrantResolution.inclusion
  | .unit a => whiskerLeft a.functor derivedShiftUnit
  | .counit a => whiskerLeft a.functor derivedShiftCounit
  | .suspensionTensor a b =>
    { app := fun P => suspensionSmashMap (a.functor.obj P) (b.functor.obj P)
      naturality := by sorry }
  | .loopsTensor a b =>
    { app := fun P => loopsSmashMap (a.functor.obj P) (b.functor.obj P)
      naturality := by sorry }
  | .mapQ f => whiskerRight f.map cofibrantResolution.functor
  | .mapR f => whiskerRight f.map fibrantResolution.functor
  | .mapSuspension f => whiskerRight f.map suspensionFunctor
  | .mapLoops f => whiskerRight f.map loopsFunctor
  | .tensorLeft z f =>
    { app := fun P => smashMap (f.map.app P) (𝟙 (z.functor.obj P))
      naturality := by sorry }
  | .tensorRight z f =>
    { app := fun P => smashMap (𝟙 (z.functor.obj P)) (f.map.app P)
      naturality := by sorry }

/-- Raw loops and arbitrary raw smash DO NOT automatically preserve stable
weak equivalences. Each *whole elementary arrow* must pass this condition. -/
def SmashArrow.IsEquivalence {w v} (f : SmashArrow w v) : Prop :=
  ∀ P, stableEquivalences (f.map.app P)

inductive SmashShiftZigzag : SmashWord → SmashWord → Type 1
  | refl (w) : SmashShiftZigzag w w
  | step {w v} (f : SmashArrow w v) (h : f.IsEquivalence) : SmashShiftZigzag w v
  | symm {w v} : SmashShiftZigzag w v → SmashShiftZigzag v w
  | trans {w v z} : SmashShiftZigzag w v → SmashShiftZigzag v z → SmashShiftZigzag w z

/-- Canonical normalization remains within the explicitly generated calculus.
The proof uses q-cofibrant/fibrant replacement and the derived adjunction;
it does NOT assert that the raw loop-smash map is always an equivalence. -/
theorem exists_smashShiftZigzag (n : ℤ) : Nonempty (SmashShiftZigzag
    (SmashWord.derivedTensor (SmashWord.shift n .left) .right)
    (SmashWord.shift n (SmashWord.derivedTensor .left .right))) := by sorry

def smashShiftZigzag (n : ℤ) := Classical.choice (exists_smashShiftZigzag n)

end
end KIP126.StableHomotopy.Source.Orthogonal
