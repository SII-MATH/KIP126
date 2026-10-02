import KIP126.Challenge2.Route.Literature.Classical

/-! BHS/Pstrągowski source statements specialized to the frozen ν and
sequence family. The statements are assumed explicitly for the selected
complete objects; no theorem about arbitrary abstract models is asserted. -/
namespace KIP126.Literature.Route
open CategoryTheory KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology
open KIP126.Classical.Adams KIP126.Core.SpectralSequence
open KIP126.Synthetic.Context KIP126.Synthetic.SpectralSequence
open KIP126.Kervaire.Route
universe u v w
noncomputable section
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn] [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {M : MilnorCooperations H} (D : Model H M Syn)

abbrev nuZero (X : ClassicalObject) :=
  (SyntheticCategory.biShift (0,0)).obj (D.nu.functor.obj (X.obj D.auxiliary))

/-- The fixed first-quotient label, only rewriting t+0=t. -/
def firstLabel (X : ClassicalObject) (s t : ℤ) (x : E2 H (X.obj D.auxiliary) s t) :
    BiHom (t-s) t (XModLambdaN (nuZero D X) 1) := by
  simpa using (D.firstQuotient (X.obj D.auxiliary) 0 s t).symm x

/-- Reindex the ACTUAL δ_(q,q+1) from D's quotient tower. -/
def bocksteinArrow (X : ClassicalObject) (q : ℕ) (hq : 0 < q) :
    XModLambdaN (nuZero D X) q ⟶
      (SyntheticCategory.biShift (1,-(q : ℤ))).obj (XModLambdaN (nuZero D X) 1) :=
  ((D.quotientTower (nuZero D X)).triangle hq (Nat.lt_succ_self q)).delta ≫
    (SyntheticCategory.biShift_compat (Syn := Syn) 1).inv.app _ ≫
    (SyntheticCategory.biShift_comp (0,-(q : ℤ)) (1,0)).hom.app _ ≫
    eqToHom (by congr 1 <;> simp)

/-- Bockstein target in classical E₂. Its bidegree is (s+q+1,t+q),
so this represents d_(q+1), not an extension differential of stem zero. -/
def bocksteinLabel (X : ClassicalObject) (q : ℕ) (hq : 0 < q) (s t : ℤ)
    (a : BiHom (t-s) t (XModLambdaN (nuZero D X) q)) :
    E2 H (X.obj D.auxiliary) (s+q+1) (t+q) := by
  let b : BiHom (t-s-1) (t+q) (XModLambdaN (nuZero D X) 1) :=
    (susp_invariance (t-s-1) (t+q) 1 (-(q : ℤ)) _).symm
      (homotopyRegrade (by omega) (by omega) (a ≫ bocksteinArrow D X q hq))
  exact D.firstQuotient (X.obj D.auxiliary) 0 (s+q+1) (t+q)
    (homotopyRegrade (by omega) (by omega) b)

/-- BHS Theorem A.1(1): vanishing through d_q iff a lift to νX/λ^q
exists. Membership in Z_q permits a boundary or zero label; `SurvivesTo`
would incorrectly demand nonzero. All restrictions are D's actual ρ. -/
def FiniteLiftCriterion : Prop :=
  ∀ (X : ClassicalObject) (q : ℕ) (hq : 0 < q) (s t : ℤ)
    (x : E2 H (X.obj D.auxiliary) s t),
    (x ∈ PageRepresentatives.cycles H (X.obj D.auxiliary) q (s,t) ↔
      ∃ a : BiHom (t-s) t (XModLambdaN (nuZero D X) q),
        a ≫ (D.quotientTower (nuZero D X)).rho 1 q hq = firstLabel D X s t x)

/-- BHS A.1(1c): choose a lift whose boundary represents the differential.
The target is stated modulo the ACTUAL classical page boundaries by
`HasDifferential`; an arbitrary lift need not have this property. The sign
in BHS disappears in the mod-2 E₂ group, not in integral homotopy groups. -/
def BocksteinDifferential : Prop :=
  ∀ (X : ClassicalObject) (q : ℕ) (hq : 0 < q) (s t : ℤ)
    (x : E2 H (X.obj D.auxiliary) s t),
    x ∈ PageRepresentatives.cycles H (X.obj D.auxiliary) q (s,t) →
    ∃ a : BiHom (t-s) t (XModLambdaN (nuZero D X) q),
      a ≫ (D.quotientTower (nuZero D X)).rho 1 q hq = firstLabel D X s t x ∧
      KIP126.Core.SpectralSequence.HasDifferential
        (adamsTowerInternalSpectralSequence H.unit (X.obj D.auxiliary))
        (q+1) (s,t) (s+q+1,t+q) x (bocksteinLabel D X q hq s t a)

/-- BHS A.1(2): lift a permanent cycle through the untruncated νX.
This is not an assertion that every E₂ label is a permanent cycle. -/
def PermanentLiftCriterion : Prop :=
  ∀ (X : ClassicalObject) (s t : ℤ) (x : E2 H (X.obj D.auxiliary) s t),
    (x ∈ PageRepresentatives.permanentCycles H (X.obj D.auxiliary) (s,t) ↔
      ∃ a : BiHom (t-s) t (nuZero D X),
        quotientClass 1 a = firstLabel D X s t x)

/-- BHS A.8, including the converse on labeled representatives.
These are the existing differentials on the same family, not a newly
postulated differential function. Multiplication by λ changes weight only. -/
def DifferentialRigidity : Prop :=
  ∀ (X : ClassicalObject) (a s t : ℤ) (r k : ℕ), 2 ≤ r →
    ∀ (x : E2 H (X.obj D.auxiliary) s t)
      (y : E2 H (X.obj D.auxiliary) (s+r) (t+r-1)),
    (KIP126.Core.SpectralSequence.HasDifferential
      (adamsTowerInternalSpectralSequence H.unit (X.obj D.auxiliary)) r
      (s,t) (s+r,t+r-1) x y ↔
    KIP126.Synthetic.SpectralSequence.HasDifferential
      (D.family.obj ((SyntheticCategory.biShift (0,a)).obj
        (D.nu.functor.obj (X.obj D.auxiliary)))) r
      (s,t,t+a-k) (s+r,t+r-1,(t+r-1)+a-(k+(r-1) : ℕ))
      (D.nuE2 X a s t k x) (D.nuE2 X a (s+r) (t+r-1) (k+(r-1)) y))

/-- Pstrągowski's λ-localization, on maps from the selected compact
bigraded sphere: the kernel is λ-power torsion. This neither assumes a
particular bidegree is torsion-free nor asserts ν preserves all triangles. -/
def RealizationKernel : Prop :=
  ∀ (X : SyntheticObject) (m w : ℤ) (a : BiHom m w (X.obj D.nu D.auxiliary)),
    (D.recovery.realization.map a = 0 ↔ ∃ k : ℕ, lambdaMultiply k a = 0)

/-- BHS `cor:tau-surj`: Adams filtration equals λ-Bockstein filtration.
The inequality makes the exponent nonnegative. It says nothing about
the filtration of a particular θ₅² or the value of a particular product. -/
def FiltrationLambda : Prop :=
  ∀ (X : ClassicalObject) (m w s : ℤ) (h : w - m ≤ s),
    ∀ a : BiHom m w (D.nu.functor.obj (X.obj D.auxiliary)),
    (FiltrationAtLeast (nuCoefficientUnit H.unit D.nu) s a ↔
      ∃ b : BiHom m (m+s) (D.nu.functor.obj (X.obj D.auxiliary)),
        homotopyRegrade rfl (by rw [Int.toNat_of_nonneg (by omega)]; omega)
          (lambdaMultiply (m+s-w).toNat b) = a)

/-- The remaining zero region in BHS A.8's E₂ formula. M already fixes
the nonzero-weight comparison D.nuE2; this rules out extra classes above
that region instead of silently ignoring them. -/
def E2WeightVanishing : Prop :=
  ∀ (X : ClassicalObject) (a s t w : ℤ), t+a < w →
    Subsingleton ((D.family.obj ((SyntheticCategory.biShift (0,a)).obj
      (D.nu.functor.obj (X.obj D.auxiliary)))).E₂ (s,t,w))

/-- BHS A.9/A.11 with the compatible E∞ formulas on the SAME family.
All label, λ and ρ compatibility is part of the supplied source application.
No unrelated E∞ equivalences may be inserted as substitutes. -/
structure EInftyInput where
  presentation : KIP126.Main.Solution.Route.EInftyFormulaInput D
  weightShift : EInftyWeightShift D.family
  maps : KIP126.Main.Solution.Route.EInftyCompatibilityInput D presentation weightShift
  labels : KIP126.Main.Solution.Route.EInftyLabelAgreement D presentation

structure SyntheticInputs where
  lifts : KIP126.Main.Solution.Route.SyntheticLiftInput D
  finite_lift : FiniteLiftCriterion D
  bockstein : BocksteinDifferential D
  permanent_lift : PermanentLiftCriterion D
  differentials : DifferentialRigidity D
  eInfty : EInftyInput D
  realization_kernel : RealizationKernel D
  filtration_lambda : FiltrationLambda D
  e2_weight_vanishing : E2WeightVanishing D
end
end KIP126.Literature.Route
