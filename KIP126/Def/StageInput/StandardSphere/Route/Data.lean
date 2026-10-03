import KIP126.Def.StableHomotopy.Implementation.Fixed

/-! The route MODEL TYPE on the fixed classical foundation. No synthetic
category or route witness is chosen in Def. A later existence package must
supply all those data together, including their source applicability. -/
namespace KIP126.Classical.Adams
/-- The complete route-input language over the one fixed classical model. -/
noncomputable abbrev StandardRouteInput :=
  KIP126.Challenge1.RouteInput KIP126.Def.fixedImplementation.foundationInput
    KIP126.Def.fixedImplementation.milnorInput

end KIP126.Classical.Adams
