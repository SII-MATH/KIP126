import KIP126.Def.Kervaire.Route.Model.Coherent.Data
import KIP126.Def.Synthetic.QuotientRestrictions.Proofs

/-! The two remaining octahedral boundary identifications for the actual
finite lambda tower. Model.ComparisonCompatible already fixes rho to the
power-factorization cofiber map, including BOTH its inclusion and boundary
squares. Naturality of the three tower arrows is already recorded there.

These additional equations identify the connecting map and the other
cofiber boundary, so a distinguished triangle with the same objects and
inclusion square cannot substitute an unrelated Bockstein boundary.
They concern only lambda-power quotients. No functoriality on all cofiber
squares, no local differential, and no infinite completeness is asserted.
-/
namespace KIP126.Kervaire.Route
open CategoryTheory KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology
open KIP126.Synthetic.Context
universe u v w
noncomputable section
variable {C : Type u} [StableHomotopyCategory.{u,v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w,v} Syn]
  [HasFunctorialCofiber (C := Syn)] {H : Mod2EilenbergMacLane (C := C)}

/-- Move the ACTUAL topological suspension through the lambda-axis shift.
This uses the same preferred biShift addition, including its source sign,
and the existing topological compatibility. No CommShift is chosen here. -/
def lambdaTopologicalSwap (i : ℕ) (Y : Syn) :
    (SyntheticCategory.biShift (lambdaDegree i)).obj (Y⟦(1 : ℤ)⟧) ≅
      ((SyntheticCategory.biShift (lambdaDegree i)).obj Y)⟦(1 : ℤ)⟧ :=
  (SyntheticCategory.biShift (lambdaDegree i)).mapIso
      ((SyntheticCategory.biShift_compat (Syn := Syn) 1).app Y).symm ≪≫
    (SyntheticCategory.biShift_comp (1,0) (lambdaDegree i)).app Y ≪≫
    eqToIso (congrArg (fun p => (SyntheticCategory.biShift p).obj Y)
      (add_comm (1,0) (lambdaDegree i))) ≪≫
    ((SyntheticCategory.biShift_comp (lambdaDegree i) (1,0)).app Y).symm ≪≫
    (SyntheticCategory.biShift_compat (Syn := Syn) 1).app _

/-- The second boundary square of the map from the shifted (j-i)-quotient
to the j-quotient. Its final regrading is only i+(j-i)=j. -/
def finiteLambdaMapBoundary (X : Syn) (i j : ℕ) (hij : i ≤ j) :
    (SyntheticCategory.biShift (lambdaDegree i)).obj (XModLambdaN X (j-i)) ⟶
      ((SyntheticCategory.biShift (lambdaDegree j)).obj X)⟦(1 : ℤ)⟧ :=
  (SyntheticCategory.biShift (lambdaDegree i)).map (XModLambdaN.proj X (j-i)) ≫
    (lambdaTopologicalSwap i
      ((SyntheticCategory.biShift (lambdaDegree (j-i))).obj X)).hom ≫
    (shiftFunctor Syn (1 : ℤ)).map
      ((lambdaShiftAddIso (j-i) i j (Nat.sub_add_cancel hij)).hom.app X)

/-- The octahedral connecting arrow is the original i-th cofiber boundary
followed by the shifted (j-i)-th quotient inclusion. The displayed arrow
fixes the boundary convention, not only its zero composite with lambda. -/
def finiteLambdaDelta (X : Syn) (i j : ℕ) :
    XModLambdaN X i ⟶
      ((SyntheticCategory.biShift (lambdaDegree i)).obj (XModLambdaN X (j-i)))⟦(1 : ℤ)⟧ :=
  XModLambdaN.proj X i ≫
    (shiftFunctor Syn (1 : ℤ)).map
      ((SyntheticCategory.biShift (lambdaDegree i)).map (XModLambdaN.incl X (j-i)))

/-- Source/model comparison for the selected finite tower. It is an
internal construction obligation, never accepted as an external BHS fact.
The source realization constructs the cofiber choices and this tower
together; no existence claim for an arbitrary previously selected tower
is hidden in this record. -/
structure FiniteQuotientBoundaryBinding (D : ModelData H Syn) : Prop where
  lambda_boundary : ∀ (X : Syn) (i j : ℕ) (hi : 0 < i) (hij : i < j),
    ((D.quotientTower X).triangle hi hij).lambdaMap ≫ XModLambdaN.proj X j =
      finiteLambdaMapBoundary X i j hij.le
  delta_eq : ∀ (X : Syn) (i j : ℕ) (hi : 0 < i) (hij : i < j),
    ((D.quotientTower X).triangle hi hij).delta = finiteLambdaDelta X i j

end
end KIP126.Kervaire.Route
