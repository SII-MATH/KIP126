import KIP126.Challenge2.Route.Data
import KIP126.Def.Kervaire.Inputs.Literature.TmfSource

/-!
# The joint, finite mathematical certification target

There is one existential realization and one associated route-label choice.
This does not assert the records for an arbitrary E2-coordinate isomorphism.
The tmf labels remain the same supplied G used by the literature interface.

The seven obligations concern mathematical objects.  Archive hashes, successful
parsing, and provenance strings are not proofs of any of them.  Stage 1 must
construct the witness from the pinned resolutions/cell maps and certify the
finite output semantics; acquiring missing resolution payloads is part of
that construction.  No infinite permanence or paper proposition is a field.
-/
namespace KIP126.Computation.Route
open CategoryTheory
open KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology KIP126.Classical.Adams
open KIP126.Core.SpectralSequence KIP126.Synthetic.Context KIP126.Kervaire.Route
universe u v w
noncomputable section
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn] [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {M : MilnorCooperations H}

/-- The seven atomic certification goals, all on the SAME R. They are
proof obligations, not a source-identification precondition. In particular
`basis` is not assumed merely to be able to state the other six goals. -/
structure CertifiedRealization {D : Model H M Syn} (R : Realization D)
    (L : Labels H) (G : KIP126.Literature.Route.TmfLabels H) : Prop where
  basis : ∀ d ∈ Raw.degrees, BasisCorrect R d
  csv : ∀ d ∈ Raw.degrees, SphereBasisValue R d
  products : ∀ p ∈ Raw.products, ProductCorrect R p
  labels : LabelsCorrect R L G
  results : ∀ c ∈ Raw.claims, Statement R c
  bottom : ∀ p ∈ Raw.bottomMaps, BottomCorrect R p
  top : TopCorrect R

/-- The mathematical content of the pinned program slice, with explicit
existence of the shared interpretation. L is existential because its four
local labels are outputs of this interpretation, not arbitrary prescribed
classes. G has a separate intrinsic source identification. -/
def Certification (D : Model H M Syn)
    (G : KIP126.Literature.Route.TmfLabels H) : Prop :=
  ∃ (R : Realization D) (L : Labels H), CertifiedRealization R L G

/-- Detection of D's actual attaching map by the standard h2. This fixes
its leading Adams class, not its unique geometric value: odd multiples of
nu can have the same leading term. The standard certification boundary uses
the stronger `GeometricNuSourceIdentification` in `Certification/Standard`.
The nonzero permanence condition only rules out a zero/boundary label. -/
def NuDetectionIdentification (D : Model H M Syn) : Prop :=
  NonzeroSurvival (sequence D .sphere) (1,4) (Sphere.Internal.hi H M 2) ∧
  TowerDetection.Detects (D.classicalConvergence .sphere) (1,4)
    (Sphere.Internal.hi H M 2) D.auxiliary.nuMap

/-- Packaging a locally eliminated existential witness performs no global
choice. The final proof should `rcases` Certification, then use this function
with that very R, L and proof for every subsequent consumer. -/
def CertifiedRealization.toInputs {D : Model H M Syn} {R : Realization D}
    {L : Labels H} {G : KIP126.Literature.Route.TmfLabels H}
    (h : CertifiedRealization R L G) : Inputs D L G where
  realization := R
  basis := h.basis
  csv := h.csv
  products := h.products
  labels := h.labels
  results := h.results
  bottom := h.bottom
  top := h.top

/-- The old input value carries exactly the same seven mathematical claims.
This adapter does not introduce a second interpretation or source assumption. -/
def Inputs.toCertifiedRealization {D : Model H M Syn} {L : Labels H}
    {G : KIP126.Literature.Route.TmfLabels H} (I : Inputs D L G) :
    CertifiedRealization I.realization L G where
  basis := I.basis
  csv := I.csv
  products := I.products
  labels := I.labels
  results := I.results
  bottom := I.bottom
  top := I.top
end
end KIP126.Computation.Route
