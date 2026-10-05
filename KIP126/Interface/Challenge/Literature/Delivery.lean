import KIP126.Interface.Challenge.Literature.Route
import KIP126.Interface.Challenge.Literature.Sphere
import KIP126.Def.StageInput.StandardSphere.Background.Fixed
import KIP126.Def.ClassicalAdams.Tmf.Br21.Data

/-! Literature delivery: source choices and truthful comparisons, followed by
the exact source results. The mathematical route is fixed independently in Def. -/
namespace KIP126.Challenge2
open CategoryTheory Classical.Adams Core.SpectralSequence

/-- Sources and their comparisons with the one fixed Def background.
No program presentation or internal paper conclusion is selected here. -/
structure LiteratureBindings where
  tmfLabels : Literature.Route.TmfLabels standardFoundation.hf2
  route : Literature.Route.Bindings standardRouteModel Def.standardRouteEta
    tmfLabels Def.standardRouteBackground
  br21Classes : Tmf.Br21Classes standardFoundation.hf2 route.tmfSource.spectrum

/-- Prior results on the displayed source objects, with all original conditions. -/
structure LiteratureResults (bindings : LiteratureBindings) where
  sphereVanishing : SphereVanishingLine standardFoundation.hf2
  adamsOneLine : AdamsOneLineInterface
  moss : StandardSphereMossStatement Def.standardSphereMossContext
  /-- BR21 Table 5.4 / Theorem 5.18, on source classes before CSV transport.
  Only a differential equation is asserted; no extra nonzero/survival conclusion. -/
  br21 : HasDifferential
    (adamsTowerInternalSpectralSequence standardFoundation.hf2.unit
      bindings.route.tmfSource.spectrum) 3 (16, 112) (19, 114)
    bindings.br21Classes.v2Sixteen bindings.br21Classes.betaGFour
  route : Literature.Route.Statements standardRouteModel Def.standardRouteEta
    bindings.tmfLabels bindings.route

/-- One literature delivery, whose results use exactly its source bindings. -/
structure LiteratureInterface where
  bindings : LiteratureBindings
  results : LiteratureResults bindings

end KIP126.Challenge2
