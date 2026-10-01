import KIP126.Def.Kervaire.Route.Source.Data
import KIP126.Def.ClassicalAdams.Detection.Convergence.Uniqueness

/-! The construction target for a single source-identified mathematical
model. This is not an A/C delivery package. Its fields contain no accepted
source conclusions, no computation and no paper theorem. The two source
objects are parameters and the equalities retain them literally.

The construction below is internal model-construction proof debt. Its
result fixes the actual source operations/comparisons recorded in
SourceModel; it does not assert any computation or literature conclusion.
The arbitrary detector parameter is not called tmf by this construction:
that interpretation and its local results are supplied separately by A.
-/
namespace KIP126.Kervaire.Route
open CategoryTheory KIP126.StableHomotopy KIP126.Classical.Adams
open KIP126.Synthetic.Context KIP126.Literature.Route

structure SourceRealization
    (CS : ClassicalSourceData standardFoundation.hf2)
    (TS : TmfSourceData standardFoundation.hf2) where
  Syn : Type 1
  synthetic : SyntheticCategory.{1,0} Syn
  cofiber : letI := synthetic; HasFunctorialCofiber (C := Syn)
  symmetric : letI := synthetic; SymmetricCategory Syn
  D : letI := synthetic; letI := cofiber; StandardRouteModel Syn
  eta : letI := synthetic; BiHom 1 2 (S00 : Syn)
  labels : TmfLabels standardFoundation.hf2
  source : letI := synthetic; letI := cofiber; letI := symmetric
    SourceModel D eta labels
  classicalSource_eq : source.classicalSource = CS
  tmfSource_eq : source.tmfSource = TS

/-- Construct the common mathematical background with the prescribed
geometric Hopf maps and the prescribed ordinary detector/unit. Boundedness
and degreewise finite mod-2 homology are retained for the selected BHS
completion/convergence scope. The source convergence identifications agree
by their common actual tower representatives (canonical_unique).

This is not a Nonempty stage package or an accepted existence axiom. It
contains neither h5/h6 permanence, local detector values nor any Lin result.
Construction of the source category, chosen cofibers and all comparison
proofs is still outstanding; the sorry does NOT certify a realized model.

The construction must be proved independently of Main/Axiom. In particular,
source theorems whose parameter is a completed SourceModel (such as the
accepted full_lift leaf) cannot be used to construct that same model. Source
operations, tower comparisons and normalized maps need independent proofs
before the source-application layer can be instantiated. -/
noncomputable def sourceRealization
    (CS : ClassicalSourceData standardFoundation.hf2)
    (TS : TmfSourceData standardFoundation.hf2)
    (hGeometry : StandardClassicalSourceGeometry CS)
    (hBound : BoundedBelow TS.spectrum)
    (hFinite : FiniteMod2Type standardFoundation.hf2 TS.spectrum) :
    SourceRealization CS TS := by
  sorry

end KIP126.Kervaire.Route
