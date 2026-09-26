import KIP126.External.Computation.Near126.Sphere.Predicates
import KIP126.External.Computation.Near126.Sphere.Boundaries.Data
import KIP126.External.Provenance

/-! First semantic slice of the Section 7 computation package.
Every field is an explicit, provenance-carrying premise. There is deliberately
no global inhabitant, new axiom, or final h₆²-survival field.
Sources below refer to labels/lines in aimpaper/main.tex; evidence values must
add the actual archive/query provenance before claiming machine verification. -/
namespace KIP126.Computation.Near126
open KIP126.LinE2 KIP126.External KIP126.Classical.Adams

/-- Seven sphere identities and the unresolved, nonzero two-target d₃.
The eighth pictured identity is on Cν and is kept in a separate interface. -/
structure SphereDifferentialFacts where
  /-- fact:x1239, lines 2377–2385. -/
  d2_x125_8 : ExternalEvidence
    (Sphere.Differential 2 (atom .x125_8) (mulAt dataH1 V + U))
  /-- lem:toda2ext proof, lines 2538–2544. -/
  d2_h6 : ExternalEvidence
    (Sphere.Differential 2 dataH6 (mulAt dataH0 h5Sq))
  d2_h0Six_h6 : ExternalEvidence
    (Sphere.Differential 2 (mulAt h0Six dataH6) (mulAt dataH0 B))
  /-- lem:x1239 proof, lines 2400–2454. -/
  d3_h4_x109_12 : ExternalEvidence
    (Sphere.Differential 3 (mulAt (atom .h4) (atom .x109_12))
      (mulAt dataH1 (atom .x122_15_2)))
  d3_h0Sq_x123_13_2 : ExternalEvidence
    (Sphere.Differential 3 (mulAt h0Sq (atom .x123_13_2))
      (mulAt h0Sq (atom .x122_16)))
  /-- lem:toda2ext proof, line 2529. -/
  d3_x126_4 : ExternalEvidence
    (Sphere.Differential 3 (atom .x126_4) (mulAt h0Sq (atom .x125_5)))
  /-- lem:x1239 proof, line 2439. -/
  d7_source : ExternalEvidence
    (Sphere.Differential 7 d7Source (mulAt dataH1 (atom .x121_17)))
  /-- Remark following fact:theta5sqAF, lines 2169–2177. Neither alternative
  is selected; each branch includes nonvanishing on E₃, not just on E₂. -/
  d3_x126_6_candidates : ExternalEvidence
    (Sphere.Differential 3 (atom .x126_6) d3Candidate ∨
      Sphere.Differential 3 (atom .x126_6) d3OtherCandidate)

/-- Survival, nonvanishing and global incoming exclusions explicitly used
by the main argument. Survival to Eᵣ does not assert vanishing of dᵣ. -/
structure SphereSurvivalFacts where
  /-- fact:theta5sqAF, lines 2156–2167. -/
  w_to_e6 : ExternalEvidence (Sphere.Survival 6 W)
  t_no_outgoing : ExternalEvidence (Sphere.NoOutgoing T)
  t_only_incoming : ExternalEvidence Sphere.OnlyIncomingT
  u_permanent : ExternalEvidence (Sphere.Permanent U)
  high_e5_exhaustion : ExternalEvidence Sphere.HighComponentExhaustion
  /-- prop:possibleh62 proof, line 2358; a target-exhaustion input. -/
  w_d6_targets : ExternalEvidence Sphere.D6WTargets
  /-- prop:possibleh62 proof, lines 2337–2342. -/
  correction_permanent : ExternalEvidence (Sphere.Permanent correction)
  /-- fact:x1239, lines 2377–2385. -/
  v_to_e12 : ExternalEvidence (Sphere.Survival 12 V)
  v_not_hit : ExternalEvidence (Sphere.NotHit V)
  /-- fact:h02x1259, lines 2466–2468; d₅(Y) is NOT specified. -/
  y_to_e5 : ExternalEvidence (Sphere.Survival 5 Y)
  y_not_hit : ExternalEvidence (Sphere.NotHit Y)
  /-- fact:h1x1217, lines 2613–2615. -/
  x_to_e6 : ExternalEvidence (Sphere.Survival 6 X)
  x_not_hit : ExternalEvidence (Sphere.NotHit X)
  /-- fact:stem122, lines 2689–2696. -/
  p_permanent : ExternalEvidence (Sphere.Permanent P)
  q_permanent : ExternalEvidence (Sphere.Permanent Q)

/-- Selected E₂ products/nondivisibility used in the Toda and final
contradiction arguments. These can eventually be discharged by algebra
certificates in the existing quotient, independently of later differentials. -/
structure SphereProductFacts where
  /-- lem:toda2ext, line 2562. -/
  h5Sq_B_zero : ExternalEvidence ((mulAt h5Sq B).val = 0)
  /-- lem:toda2ext, lines 2500–2505. -/
  t_not_h0_multiple : ExternalEvidence
    (¬ ∃ a : E2At 13 138, mulAt dataH0 a = T)
  /-- prop:state5false, lines 2700–2707. -/
  t_not_h2_multiple : ExternalEvidence
    (¬ ∃ a : E2At 13 135, mulAt (atom .h2) a = T)
  /-- lem:nuext125, lines 2630–2644. -/
  x_h2_zero : ExternalEvidence ((mulAt X (atom .h2)).val = 0)
  y_not_h2_multiple : ExternalEvidence
    (¬ ∃ a : E2At 10 132, mulAt (atom .h2) a = Y)
  /-- lem:x1239 and prop:possibleh62. -/
  h1_correction_zero : ExternalEvidence ((mulAt dataH1 correction).val = 0)

/-- Selected whole-component vanishing queries. Bounds and page numbers are
part of the types; no inference is made from an unlisted table row. -/
structure SphereVanishingFacts where
  /-- Table:S125.19, line 3074; prop:possibleh62 proof, line 2328. -/
  e2_stem125_low : ExternalEvidence
    (∀ (s : ℕ), s ≤ 4 → ∀ z : sphereAdamsData.Page 2 (s, (s : ℤ) + 125), z = 0)
  /-- Table:S124.12: AF=11 has an outgoing d₄, so E₄ is NOT asserted zero. -/
  e5_stem124_af11 : ExternalEvidence
    (∀ z : sphereAdamsData.Page 5 (11, 135), z = 0)
  /-- Table:S124.12, AF=12. -/
  e4_stem124_af12 : ExternalEvidence
    (∀ z : sphereAdamsData.Page 4 (12, 136), z = 0)
  /-- Table:S125.19, AF=12. -/
  e4_stem125_af12 : ExternalEvidence
    (∀ z : sphereAdamsData.Page 4 (12, 137), z = 0)
  /-- Table:S125.19, AF=13; prop:state5false proof. -/
  e5_stem125_af13 : ExternalEvidence
    (∀ z : sphereAdamsData.Page 5 (13, 138), z = 0)

/-- Usable sphere-only slice, not yet the complete near-126 proof input. -/
structure SphereFacts where
  differentials : SphereDifferentialFacts
  survival : SphereSurvivalFacts
  products : SphereProductFacts
  boundaries : SphereBoundaryFacts
  vanishing : SphereVanishingFacts

end KIP126.Computation.Near126
