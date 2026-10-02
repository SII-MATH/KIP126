import KIP126.Challenge2.Route.Literature.ClassicalSource
import KIP126.Challenge2.Route.Literature.AlgebraBinding
import KIP126.Def.Comparison.ClassicalSynthetic.RealizationWeights.Data
import KIP126.Def.Comparison.ClassicalSynthetic.RealizationTower.Route.Data
import KIP126.Challenge2.Route.Literature.BX
import KIP126.Challenge2.Route.Literature.Realization
import KIP126.Challenge2.Route.Literature.Algebra
import KIP126.Challenge2.Route.Literature.May
import KIP126.Challenge2.Route.Literature.Toda
import KIP126.Challenge2.Route.Literature.Tmf
import KIP126.Challenge2.Route.Literature.Applicability

/-!
# A(M) for the frozen Section 7 route

All fields constrain the SAME `D : Kervaire.Route.Model H M Syn`.
They are explicit external assumptions / source-transport witnesses.
Declaring their types neither proves them nor constructs a witness.

Here the parameter `M : MilnorCooperations H` is an older API name;
the mathematical M of the project is the entire context together with D.
No field supplies C(M), C₃/C₄/C₅, either Proposition 7.8/7.9, generalized
Leibniz/Mahowald, or T(M). No default instance or global axiom is installed.

The closed statement inventory and exact source/application qualifications
are in `docs/A_INPUT_FREEZE.md` and the adjacent `sources.json`.
-/
namespace KIP126.Literature.Route
open CategoryTheory
open KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology KIP126.Classical.Adams
open KIP126.Synthetic.Context KIP126.Kervaire.Route
universe u v w
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn] [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {M : MilnorCooperations H}
  (D : Model H M Syn) (η : BiHom 1 2 (S00 : Syn)) (L : TmfLabels H)

/-- Explicit literature inputs, specialized to one frozen model and η.
The same tmf labels are used for the high class and its C(M) comparison.
`applicability` records source-to-model obligations separately so that a
source existence theorem cannot validate unrelated chosen lifts. -/
structure Inputs where
  classical : ClassicalInputs D η
  bx : BXDistinguishedInput D η
  synthetic : SyntheticInputs D
  realization : RealizationInput D
  algebra : AlgebraInput D
  may : MayInput Syn
  toda : TodaInputs D η
  tmf : TmfInputs D L
  moss : MossInput D
  applicability : Applicability D

/-- Source choices and model comparisons for ONE delivered route. These
are internal construction obligations, separate from the source results. -/
structure Bindings where
  realization : RealizationCoordinates D
  algebra : AlgebraData D
  quotientBinding : QuotientAlgebraBinding D algebra
  algebraBinding : AlgebraBinding D algebra
  may : MayContext Syn
  classicalSource : ClassicalSourceData H
  classicalBinding : ClassicalSourceBinding D η classicalSource
  synthetic_eta : EtaChoice M D.toModelData η
  tmfSource : TmfSourceData H
  tmfBinding : TmfBinding D L tmfSource
  nuSource : NuCofiberSourceData D
  nuBinding : NuCofiberLiftBinding D nuSource
  moss : MossTowerApplicability (H := H)
  realizationAdditive : D.recovery.realization.Additive
  weights : KIP126.Comparison.ClassicalSynthetic.RealizationWeightComparison D.nu D.recovery
  nuE2 :
    letI := algebra.classicalSymmetric
    letI := algebra.syntheticSymmetric
    letI := algebra.realizationMonoidal.realization
    letI := realizationAdditive
    KIP126.Comparison.ClassicalSynthetic.RealizationTower.NuE2Binding D
      (fun X a w => KIP126.Comparison.ClassicalSynthetic.RealizationWeightComparison.doubleShift
        D.nu D.recovery weights (X.obj D.auxiliary) a (-w))

/-- External results on the source objects fixed in B. Classical and tmf
results are not asserted for arbitrary preselected route objects or lifts. -/
structure Statements (B : Bindings D η L) where
  classical : ClassicalSourceResults M B.classicalSource
  bx : BXDistinguishedInput D η
  synthetic : SyntheticInputs D
  realization : RealizationDetection D B.realization
  may : B.may.Boundary
  toda : TodaInputs D η
  tmf : TmfSourceResults B.tmfSource
  moss : MossInput D

/-- Interface's INTERNAL source-application delivery, separate from A(M).
The compatible normalized triple is a construction from source leaves;
the local tmf conclusions require the same-model multiplicative comparison.
Neither conclusion is accepted as a new independent external theorem. -/
structure Application (B : Bindings D η L) : Prop where
  nuSource : NuCofiberSourceResults D B.nuSource
  nuCofiber : NuCofiberApplicability D
  tmf : TmfInputs D L

/-- Assemble the consumer API from the SAME sources and certified application.
This chooses no new model, labels, algebra, or convergence comparison. -/
def Statements.toInputs {B : Bindings D η L} (A : Statements D η L B)
    (P : Application D η L B) : Inputs D η L where
  classical := classicalInputsOfSource D η B.classicalSource A.classical
    B.classicalBinding B.synthetic_eta
  bx := A.bx
  synthetic := A.synthetic
  realization := ⟨B.realization, A.realization⟩
  algebra := B.algebra.withBinding D B.quotientBinding
  may := { B.may with boundary := A.may }
  toda := A.toda
  tmf := P.tmf
  moss := A.moss
  applicability := ⟨B.moss, P.nuCofiber⟩

/-- Historical compatibility spelling for the applied consumer package.
The current external A(M) is `Statements` on explicit `Bindings`; this alias
also includes internal application evidence through `Inputs`. -/
def A : Prop := Nonempty (Inputs D η L)

end KIP126.Literature.Route
