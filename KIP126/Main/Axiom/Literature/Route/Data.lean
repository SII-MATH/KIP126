import KIP126.Main.Axiom.Literature.Route.BX
import KIP126.Main.Axiom.Literature.Route.Realization
import KIP126.Main.Axiom.Literature.Route.Algebra
import KIP126.Main.Axiom.Literature.Route.May
import KIP126.Main.Axiom.Literature.Route.Toda
import KIP126.Main.Axiom.Literature.Route.Tmf
import KIP126.Main.Axiom.Literature.Route.Applicability

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

/-- Propositional spelling of A(M); consumers may instead take `Inputs`
directly to retain its concrete comparison/algebra witnesses. -/
def A : Prop := Nonempty (Inputs D η L)

end KIP126.Literature.Route
