import KIP126.Def.Kervaire.Inputs.Literature.TmfSource
import KIP126.Def.ClassicalAdams.StandardFoundation

namespace KIP126.Literature.Route
open CategoryTheory KIP126.Classical.Adams

/-- Connective tmf is an E-infinity ring; its ordinary commutative monoid
consequence uses the fixed ordinary source symmetry. Local homotopy
values alone would not imply this property of an arbitrary monoid. -/
def StandardTmfSourceExistence : Prop :=
  ∃ S : TmfSourceData standardFoundation.hf2, TmfSourceResults S ∧
    (letI := S.algebra; IsCommMonObj S.spectrum)

end KIP126.Literature.Route
