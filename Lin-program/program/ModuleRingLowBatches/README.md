# All 43 module-to-S0 maps, bounded low degrees

All configured direct maps from an S0 module to S0 are covered at source
t<=12: 1,090 complete degree blocks, 11 successful kernel batches, no unresolved
blocks. The source, target, map generator images, shifts and relation rows were
independently checked against SQLite by `test_module_ring_sources.py`.
`verification_summary.json` records current Lean/JSON/checker content hashes.

The target is represented as a rank-one module whose generator is explicitly
interpreted as 1. `RingTarget.lean` proves that this interpretation agrees with
ordinary polynomial evaluation and specializes all-vector semantics to an
R-linear map M -> R. No implicit topological unit assumption is introduced.

The polynomial encoding `;` is the unit, unlike the empty string, which is
zero. This is pinned to the upstream `Deserialize<Poly>` implementation in
`unit_encoding_audit.json`. Five direct maps use that unit encoding. Existing
full S0->tmf and Cnu->S0 maps do not contain it, so their earlier actual-input
interpretations are unaffected. All 1,090 low blocks were regenerated and
rechecked after implementing this convention.

The remaining direct map outside the combined low-degree coverage is the
module-to-tmf map, which needs the S0->tmf coefficient-ring homomorphism and
semilinear semantics. There are no ring-to-module entries among the 180 direct
maps; such constructions occur in the separately classified derived maps.
The results do not claim high-degree or topological/Ext realization coverage.
