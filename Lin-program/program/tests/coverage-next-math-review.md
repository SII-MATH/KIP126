# Coverage review and nearest mathematical assembly

This is a read-only review of the 17 CSV claims against the current source tree.
It does not certify a fresh root build or modify the original inventory.
The CSV ID set and `ClaimCoverage.json` ID set agree exactly (17 distinct IDs).
Every file named by `proved_theorems` exists. Existence is not a proof audit.

Paper references below use the checked-in v2 HTML at
`program/AdvancedRuleCertificates/kervaire-v2.html`; these line numbers differ
from the older HTML snapshot referenced by `doc_data/step1_inventory.md`.
The mathematical scope follows `Reference/roadmap.md`, especially lines 210,
288, 314, and 334: finite algebra, actual page comparison, and original
topological realization are distinct obligations.

| CSV ID | Paper source | Strongest inspected coverage and shortest remaining gap |
| --- | --- | --- |
| strategy-e2 | HTML 470 | Finite-support S0 resolution through t=8 and all 180 direct finite map interfaces through t=12; original 49 Steenrod modules, complete resolutions, and topology-to-Ext identification remain. |
| strategy-d2 | HTML 474 | 2512 finite complex checks and complete local staircase reconstructions; secondary-operation construction and comparison with actual d2 remain. |
| strategy-propagation | HTML 478, 491, 495 | Ordinary rules, actual filtered quotient extension squares, no-crossing and certificate completeness exist; full historical replay of 2,672,275 events and generalized topological rules remain. |
| strategy-101-105 | HTML 508 | All 105 finite E2 generators, whole E3 dimension 44, conditional whole E4 dimension 24, and 95 named obstructions; exhaustive dimension-level elimination of 101 targets is not proved. Noncycles can cancel in linear combinations. |
| fact-7.6-1 | HTML 4550 | Named finite d2 class and conditional finite d2-d5 trajectory with 36 predecessor comparisons; actual same-input E6 assembly and complete source meanings remain. `NamedPageComparison.ConditionalHigher` alone only constrains its selected override, not all actual maps. |
| fact-7.6-2 | HTML 4554 | Same-input actual E5, conditional d5 zero, E6 trace, and a conditional incoming-only-6-or-12 theorem exist; outgoing all-page cycle tail and actual input meanings remain. Permanent cycle here must not be silently replaced by nonboundary survival. |
| fact-7.6-3 | HTML 4565 | Named nonzero finite d2 quotient class; higher actual prefix and full permanence tail remain. |
| fact-7.6-4 | HTML 4569 | Complete constrained finite unique E5, actual unique-next-page transport, and actual named E2-to-E4 product trace exist separately. Closest assembly is one E2 input with the same E5 representative and uniqueness; see below. |
| remark-7.7 | HTML 4577, 4585 | Both raw affine differential candidates are nonzero. Actual affine membership, nonzero homology realization, and exclusion as a later killer remain. The generic affine-homology checker is not this instance. |
| fact-7.13 | HTML 4929, 4933 | Finite exact named d2 equation and conditional actual finite prefix, currently continued to E10 by other active packages. E12 and the separate all-page no-hit assertion remain. |
| fact-7.15 | HTML 5119 | `Fact715ConstructedActual.Trace.result_sound` and `.Assembly.actual_E5` construct the same named E2-to-E5 nonzero endpoint using explicit whole-map meanings. Separate all-page no-hit assertion and sphere realization remain. |
| fact-7.19 | HTML 5413 | `Fact719ConstructedActual.Trace.result_sound` constructs the same named E2-to-E6 nonzero endpoint from complete meanings. Separate all-page no-hit assertion, sphere realization, and Lemma 7.20 extension remain. |
| fact-7.21 | HTML 5614, 5618 | Both named inputs have conditional actual E5 prefixes. Neither all-page permanence tail is established. |
| prop-7.9 | HTML 4656, final proof 5862 | Same-input actual E5 and four complete incoming-map no-hit statements for d2-d5; final synthetic extension contradiction and original sphere/Cnu meanings remain. |
| manual-1 | HTML 5887 | Typed external obligation for d5(h0^24 h6)=h0^2 P^6 d0; local image-of-J proof absent. |
| manual-2 | HTML 5888 | Typed external obligation for d6(h0^55 h7)=h0^2 x126,60; local image-of-J proof absent. |
| manual-3 | HTML 5888 | Typed external obligation for tmf d3(v2^16)=beta^5 g; local power-operation proof absent. |

## Inventory simplifications that lose real subclaims

The paper says more than the current CSV shorthand and the coverage
`requested_conclusion` for three rows:

- HTML 4929, Fact 7.13(1): `x123,9 + h0 x123,8` survives to E12 **and is
  not killed by any classical differential**. Fact 7.13(2), HTML 4933 and
  displayed equation at HTML 4938, is the separate exact nonzero equation
  `d2(x125,8) = h1(x123,9 + h0 x123,8) + h0^2 x124,8`.
- HTML 5119, Fact 7.15: `h0^2 x125,9,2` survives to E5 **and is not killed
  by any classical differential**.
- HTML 5413, Fact 7.19: `h1 x121,7` survives to E6 **and is not killed by
  any classical differential**. Lemma 7.20 beginning at HTML 5417 is a
  further multiplication-extension statement, not supplied by that finite prefix.

These all-page incoming exclusions are not consequences of a checked finite
trace alone. They must be retained as additional unproved obligations even
when the bounded trace is fully assembled. The original `doc_data` files
should remain preserved; the delivery coverage can record the expanded scope.

## Nearest useful theorem without a new mathematical premise

Fact 7.6(4) is the best bounded next step outside Fact 7.13 and Fact 7.6(2):

1. `ActualAdamsProductTraceBridge.Assembly.endpoint` constructs the actual
   E4 product from the exact named E2 product, using the existing five empty
   factor targets and six multiplicative page-transition squares.
2. `.endpoint_cycle` derives the E4 named cycle. It is not necessary to
   assume the desired named cycle or an E2-to-E4 target trace.
3. `Fact764ConstrainedE5.Conclusion.unique_from_named_cycle` gives the entire
   finite homology uniqueness from the two obstruction equations and full
   incoming columns. The finite complex law can itself be derived from
   `ActualAdamsUniqueBridge.Coordinates` using incoming surjectivity and the
   actual differential-square-zero law.
4. `ActualAdamsUniqueBridge.transport` and
   `ActualAdamsUniqueNext.next_unique` transport that result to the actual
   E5 quotient. Extending the already constructed trace fixes the same
   representative, giving one result with explicit initial and final elements.

The new assembly is implemented in `Fact764NamedActualE5`: three direct
modules compile with 18 standard-only theorem axiom reports. The exact
input/output tactic rejects zero input, zero output, and a different input
context. Its independent finite oracle covers 8192 matrix/candidate cases,
4032 relabeled local quotient models, and 64512 input/output requests.
This is a local algebraic oracle, not a global sphere realization. It does not assert
that the explicit actual coordinate, product, and source-obstruction premises
have been instantiated for the paper's sphere. It does not add a desired
named-cycle premise, a named nonboundary premise, or a preselected E5 result.

## Stale coverage prose, without changing the main files

- `prop-7.9.incoming_d3` still says later work is in unregistered
  `Prop79TargetSearch`, while the same row records its integration and actual
  all-column theorem.
- Fact 7.15 and Fact 7.19 use the coarse level `finite_semantics` and stale
  finite-only wording although their detailed fields correctly record actual
  conditional same-input quotient traces. These are conditional actual
  theorems, not unconditional sphere results.
- Root build/module/axiom counts are historical checkpoints. This review
  makes no assertion that the 1373-module checkpoint is the current one.

SHA-256, file existence, table coverage, and a successful finite import never
discharge any of the remaining mathematical comparisons.

## Refinement of the all-page no-hit gap

For Fact 7.13, filtration 9 and a conditional nonzero actual E10 endpoint
may already suffice to derive the missing no-hit subclaim. For r>9,
`ActualAdamsSystemBridge/Tail.lean:incoming_map_zero_above_filtration`
proves every actual incoming value zero. For earlier pages, an actual
boundary propagates to zero at E10, contradicting its nonzero endpoint.
The root agent is implementing this separate generic bridge in
`ActualFiniteNoHit` against the existing actual cycle filtration.

The right all-page formulation is that the original E2 element is not in
`BInfinity`, or that every still-nonzero page representative is not an
incoming boundary. It is incorrect to assert every later `system.at` is
a nonboundary: an outgoing death sends that chosen extension to zero, and
zero is itself an incoming boundary. Relevant existing tools are
`OutgoingCycleFiltrationCertificates/Boundary.lean:boundaryCoherence`,
`next_boundary_iff_incoming`, and `BInfinity_subset_ZInfinity`, together with
`ActualAdamsFiltration`'s actual realization. Fact 7.15 (filtration 11) and
Fact 7.19 (filtration 8) still require their remaining incoming prefix checks.
