import KIP126.Def.StableHomotopy.Source.Orthogonal.Localization

/-! Point-set suspension and loop functors for the orthogonal source.
The external interval coordinate is retained in every J-action. Derived
suspension uses the specified q-cofibrant replacement; derived loops use
the specified stable-fibrant replacement. Thus no assertion that a raw
cone of an arbitrary badly based spectrum computes a derived cone occurs.

All carriers, coordinate maps and J-actions below are explicit. Deferred
proofs concern continuity, functor laws and the stable model comparison.
-/
namespace KIP126.StableHomotopy.Source.Orthogonal
open CategoryTheory
open scoped Topology unitInterval
noncomputable section

def reducedSuspensionSpace (X : BasedSpace) : BasedSpace where
  carrier := Source.suspension X
  topology := TopologicalSpace.compactlyGenerated.{0} (Source.suspension X)
  point := (Source.suspension X).point

def loopSpace (X : BasedSpace) : BasedSpace where
  carrier := Source.loopSpace X
  topology := TopologicalSpace.compactlyGenerated.{0} (Source.loopSpace X)
  point := (Source.loopSpace X).point

def suspensionAction {n m : ℕ} (E : Spectrum) (a : J n m)
    (x : reducedSuspensionSpace (E.level n)) : reducedSuspensionSpace (E.level m) :=
  Quotient.lift (fun z : I × E.level n =>
    Source.suspensionPoint (E.level m) z.1 ((E.action n m).apply a z.2))
    (by sorry) x

def loopAction {n m : ℕ} (E : Spectrum) (a : J n m)
    (x : loopSpace (E.level n)) : loopSpace (E.level m) :=
  ⟨⟨fun t => (E.action n m).apply a (x.val t), by sorry⟩, by sorry⟩

def suspension (E : Spectrum) : Spectrum where
  level n := reducedSuspensionSpace (E.level n)
  convenient := by sorry
  action n m :=
    { map := ⟨fun z => suspensionAction E z.1 z.2, by sorry⟩
      left_point := by sorry
      right_point := by sorry }
  identity := by sorry
  composition := by sorry

def loops (E : Spectrum) : Spectrum where
  level n := loopSpace (E.level n)
  convenient := by sorry
  action n m :=
    { map := ⟨fun z => loopAction E z.1 z.2, by sorry⟩
      left_point := by sorry
      right_point := by sorry }
  identity := by sorry
  composition := by sorry

def suspensionMap {E F : Spectrum} (f : E ⟶ F) : suspension E ⟶ suspension F where
  level n :=
    { map := ⟨(Source.suspensionMap (f.level n)).map, by sorry⟩
      point := (Source.suspensionMap (f.level n)).point }
  naturality := by sorry

def loopsMap {E F : Spectrum} (f : E ⟶ F) : loops E ⟶ loops F where
  level n :=
    { map := ⟨(Source.loopMap (f.level n)).map, by sorry⟩
      point := (Source.loopMap (f.level n)).point }
  naturality := by sorry

def suspensionFunctor : Spectrum ⥤ Spectrum where
  obj := suspension
  map := suspensionMap
  map_id := by sorry
  map_comp := by sorry

def loopsFunctor : Spectrum ⥤ Spectrum where
  obj := loops
  map := loopsMap
  map_id := by sorry
  map_comp := by sorry

/-- The actual suspension-loop unit sends x to the path t |-> [t,x]. -/
def suspensionLoopUnit (E : Spectrum) : E ⟶ loops (suspension E) where
  level n :=
    { map := ⟨fun x =>
        ⟨⟨fun t => Source.suspensionPoint (E.level n) (t PUnit.unit) x,
          by sorry⟩, by sorry⟩, by sorry⟩
      point := by sorry }
  naturality := by sorry

/-- The counit evaluates the retained external interval coordinate. -/
def suspensionLoopCounit (E : Spectrum) : suspension (loops E) ⟶ E where
  level n :=
    { map := ⟨Quotient.lift (fun z : I × loopSpace (E.level n) =>
        z.2.val (fun _ => z.1)) (by sorry), by sorry⟩
      point := by sorry }
  naturality := by sorry

/-- Q and R belong to the ordinary (not positive) stable q-model already
specified in Orthogonal.Data/Function. -/
def derivedSuspension : Spectrum ⥤ Spectrum :=
  cofibrantResolution.functor ⋙ suspensionFunctor

def derivedLoops : Spectrum ⥤ Spectrum :=
  fibrantResolution.functor ⋙ loopsFunctor

theorem derivedSuspension_equivalence {E F : Spectrum} (f : E ⟶ F)
    (h : stableEquivalences f) : stableEquivalences (derivedSuspension.map f) := by
  sorry

theorem derivedLoops_equivalence {E F : Spectrum} (f : E ⟶ F)
    (h : stableEquivalences f) : stableEquivalences (derivedLoops.map f) := by
  sorry

def iterateFunctor (F : Spectrum ⥤ Spectrum) : ℕ → Spectrum ⥤ Spectrum
  | 0 => 𝟭 Spectrum
  | n + 1 => iterateFunctor F n ⋙ F

/-- A fixed point-set representative of every integer derived suspension.
Composition is coherent after stable localization, rather than claimed to
be a strict equality of replacement functors. -/
def derivedShift : ℤ → Spectrum ⥤ Spectrum
  | .ofNat n => iterateFunctor derivedSuspension n
  | .negSucc n => iterateFunctor derivedLoops (n + 1)

theorem derivedShift_equivalence (n : ℤ) {E F : Spectrum} (f : E ⟶ F)
    (h : stableEquivalences f) : stableEquivalences ((derivedShift n).map f) := by
  sorry

end
end KIP126.StableHomotopy.Source.Orthogonal
