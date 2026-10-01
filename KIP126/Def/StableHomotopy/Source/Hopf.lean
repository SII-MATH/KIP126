import KIP126.Def.StableHomotopy.Source.Realization
import Mathlib.Data.Fin.VecNotation

/-! Geometric Hopf maps with displayed real-coordinate formulas.
The passage to the fixed sphere uses explicit stereographic maps and the
SAME source realization's suspension/unit comparisons. Detection of h1/h2
is a subsequent comparison theorem; it does not DEFINE these maps. -/
namespace KIP126.StableHomotopy.Source.Hopf
open CategoryTheory
open scoped BigOperators Topology unitInterval
noncomputable section
attribute [local instance] Classical.propDecidable

abbrev Vec (n : ℕ) := Fin n → ℝ
def normSquare {n : ℕ} (v : Vec n) : ℝ := ∑ i, v i * v i

/-- Coordinates are ordered 0,...,n, with the LAST coordinate the north
pole. This convention fixes the sphere frame used in stabilization. -/
def roundSphere (n : ℕ) : BasedSpace where
  carrier := {v : Vec (n+1) // normSquare v = 1}
  topology := inferInstance
  point := ⟨fun i => if i = Fin.last n then 1 else 0, by sorry⟩

def onePointSphere (n : ℕ) : BasedSpace where
  carrier := OnePoint (Vec n)
  topology := inferInstance
  point := none

def stereographic (n : ℕ) : onePointSphere n ⟶ roundSphere n where
  map := ⟨fun z => match z with
    | none => (roundSphere n).point
    | some v => ⟨Fin.lastCases ((normSquare v-1)/(normSquare v+1))
        (fun i => 2*v i/(normSquare v+1)), by sorry⟩, by sorry⟩
  point := rfl

def inverseStereographic (n : ℕ) : roundSphere n ⟶ onePointSphere n where
  map := ⟨fun z => if z = (roundSphere n).point then none else
    some (fun i => z.val i.castSucc/(1-z.val (Fin.last n))), by sorry⟩
  point := by
    simp only [ContinuousMap.coe_mk, if_pos rfl]
    rfl

def stereographicIso (n : ℕ) : onePointSphere n ≅ roundSphere n where
  hom := stereographic n
  inv := inverseStereographic n
  hom_inv_id := by sorry
  inv_hom_id := by sorry

/-- The same increasing coordinate used by the orthogonal forgetful
functor: the two endpoints map to infinity. Coordinates are appended in
the order of iterated reduced suspension, without a free sphere degree. -/
def cubeSphereValue : ∀ n, suspensionLevel sphereZeroSpace n → onePointSphere n
  | 0 => fun b => if b = true then some (fun i => Fin.elim0 i) else none
  | n+1 => Quotient.lift (fun tx : I × suspensionLevel sphereZeroSpace n =>
      if tx.1 = 0 ∨ tx.1 = 1 then none else
        match cubeSphereValue n tx.2 with
        | none => none
        | some v => some (Fin.snoc v
            ((2*(tx.1 : ℝ)-1)/((tx.1 : ℝ)*(1-(tx.1 : ℝ)))))) (by sorry)

def cubeSphereMap (n : ℕ) : suspensionLevel sphereZeroSpace n ⟶ onePointSphere n where
  map := ⟨cubeSphereValue n, by sorry⟩
  point := by sorry
instance cubeSphereMap_isIso (n : ℕ) : IsIso (cubeSphereMap n) := by sorry
def roundSphereIso (n : ℕ) : suspensionLevel sphereZeroSpace n ≅ roundSphere n :=
  asIso (cubeSphereMap n) ≪≫ stereographicIso n

/-- Complex Hopf map (a,b) |-> (2a conjugate(b), |a|²-|b|²).
Input coordinates are (Im a, Re b, Im b, Re a); output coordinates are
(Re c, Im c, height). The north pole is therefore (a,b)=(1,0). -/
def eta : roundSphere 3 ⟶ roundSphere 2 where
  map := ⟨fun z => ⟨![
      2*(z.val 3*z.val 1 + z.val 0*z.val 2),
      2*(-z.val 3*z.val 2 + z.val 0*z.val 1),
      z.val 3*z.val 3 + z.val 0*z.val 0 - z.val 1*z.val 1 - z.val 2*z.val 2],
      by sorry⟩, by sorry⟩
  point := by sorry

/-- Quaternionic Hopf map with the SAME formula and right conjugation.
Input coordinates are (a_i,a_j,a_k,b_1,b_i,b_j,b_k,a_1); output is
(c_1,c_i,c_j,c_k,height). Thus both the quaternion order and sign/frame
convention are explicit; h2 detection alone would not select this map. -/
def nu : roundSphere 7 ⟶ roundSphere 4 where
  map := ⟨fun z => ⟨![
      2*(z.val 7*z.val 3 + z.val 0*z.val 4 + z.val 1*z.val 5 + z.val 2*z.val 6),
      2*(-z.val 7*z.val 4 + z.val 0*z.val 3 - z.val 1*z.val 6 + z.val 2*z.val 5),
      2*(-z.val 7*z.val 5 + z.val 0*z.val 6 + z.val 1*z.val 3 - z.val 2*z.val 4),
      2*(-z.val 7*z.val 6 - z.val 0*z.val 5 + z.val 1*z.val 4 + z.val 2*z.val 3),
      z.val 7*z.val 7 + z.val 0*z.val 0 + z.val 1*z.val 1 + z.val 2*z.val 2 -
        z.val 3*z.val 3 - z.val 4*z.val 4 - z.val 5*z.val 5 - z.val 6*z.val 6],
      by sorry⟩, by sorry⟩
  point := by sorry

/-- Merely reassociates the displayed iterated suspension. Its proof has
no freedom to choose a different stable equivalence or degree. -/
theorem iteratedSphere_eq_shift (n : ℕ) :
    suspensionSpectrum (suspensionLevel sphereZeroSpace n) = shift spherePrespectrum n 0 := by
  sorry

variable {F : KIP126.Foundation.FoundationInput} [KIP126.Foundation.TensorInput F]
  {H : Mod2Source} (B : Binding F H)

def realizedRoundSphereIso (n : ℕ) :
    (sourceFunctor H ⋙ B.equivalence.functor).obj (suspensionSpectrum (roundSphere n)) ≅
      (Sphere (C := F.Spectrum) (n : ℤ)) :=
  (sourceFunctor H ⋙ B.equivalence.functor).mapIso
      (suspensionSpectrumFunctor.mapIso (roundSphereIso n).symm) ≪≫
    (sourceFunctor H ⋙ B.equivalence.functor).mapIso (eqToIso (iteratedSphere_eq_shift n)) ≪≫
    (by simpa only [Nat.cast_zero, sub_zero, Functor.comp_obj, Source.sphere]
      using B.shiftIso spherePrespectrum n 0) ≪≫
    (shiftFunctor F.Spectrum (n : ℤ)).mapIso B.sphereIso

def realizedMap {a b : ℕ} (f : roundSphere a ⟶ roundSphere b) :
    Sphere (C := F.Spectrum) (a : ℤ) ⟶ Sphere (C := F.Spectrum) (b : ℤ) :=
  (realizedRoundSphereIso B a).inv ≫
    (sourceFunctor H ⋙ B.equivalence.functor).map (suspensionSpectrumMap f) ≫
      (realizedRoundSphereIso B b).hom

def geometricEta : HomotopyGroup (C := F.Spectrum) 1 SphereSpectrum :=
  (shiftFunctorAdd' F.Spectrum (3 : ℤ) (-2) 1 (by decide)).hom.app SphereSpectrum ≫
    (shiftFunctor F.Spectrum (-2 : ℤ)).map (realizedMap B eta) ≫
      (shiftFunctorCompIsoId F.Spectrum (2 : ℤ) (-2) (by decide)).hom.app SphereSpectrum

def geometricNu : HomotopyGroup (C := F.Spectrum) 3 SphereSpectrum :=
  (shiftFunctorAdd' F.Spectrum (7 : ℤ) (-4) 3 (by decide)).hom.app SphereSpectrum ≫
    (shiftFunctor F.Spectrum (-4 : ℤ)).map (realizedMap B nu) ≫
      (shiftFunctorCompIsoId F.Spectrum (4 : ℤ) (-4) (by decide)).hom.app SphereSpectrum

end
end KIP126.StableHomotopy.Source.Hopf
