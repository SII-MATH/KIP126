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

/-- Project comparison choices and source-applicability conditions. These belong
in the shared bindings, separately from the external conclusions A(M). -/
structure Bindings where
  realization : RealizationCoordinates D
  algebra : AlgebraInput D
  may : MayContext Syn
  applicability : Applicability D

/-- External conclusions on those EXACT bindings. Source locators and ranges
are documented on the component declarations, including their hypotheses. -/
structure Statements (B : Bindings D) where
  classical : ClassicalInputs D η
  bx : BXDistinguishedInput D η
  synthetic : SyntheticInputs D
  realization : RealizationDetection D B.realization
  may : B.may.Boundary
  toda : TodaInputs D η
  tmf : TmfInputs D L
  moss : MossInput D

/-- Assemble the parameterized consumer API without selecting any new data. -/
def Statements.toInputs {B : Bindings D} (A : Statements D η L B) : Inputs D η L where
  classical := A.classical
  bx := A.bx
  synthetic := A.synthetic
  realization := ⟨B.realization, A.realization⟩
  algebra := B.algebra
  may := { B.may with boundary := A.may }
  toda := A.toda
  tmf := A.tmf
  moss := A.moss
  applicability := B.applicability

/-- Propositional spelling of A(M); consumers may instead take `Inputs`
directly to retain its concrete comparison/algebra witnesses. -/
def A : Prop := Nonempty (Inputs D η L)

end KIP126.Literature.Route
