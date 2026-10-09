# Parameterized module maps

`export_general.py --map Ceta__CW_eta_nu --max-t 12` reads source/target/map
paths from ss.json, checks both objects are modules over S0, validates every
used module-generator image, and constructs complete degree blocks. No Cnu
relation is hardcoded: target relation rows are queried and single-monomial
module relations are applied with explicit coefficient-monomial multipliers.
The target basis determines every output coordinate. General multi-term
Groebner reductions and coefficient-ring reductions are not yet implemented
in this producer; unsupported residuals fail explicitly.

The second actual map Ceta -> CW_eta_nu has 37 complete t<=12 blocks,
with all generated whole-matrix theorems checked in GeneralActual.lean.
The earlier Cnu 30 blocks remain unchanged. The currently parameterized wire
supports zero filtration and suspension; nonzero shifts are explicitly rejected.
`general_readiness.json` classifies every direct module-to-module map by same
S0 coefficient ring and shift compatibility. Data compatibility is not proof.

For arbitrary shifts, extend the wire with signed filtration f and suspension
u, and validate target s=source s+f, target t=source t+f-u (the stable stem drops
by u). The actual map metadata convention must be checked against generator
bidegrees before accepting a dataset. Generator images must be homogeneous in
the shifted degree; degree completeness is checked against the entire source
and target basis block, not only terms present in a chosen image. Negative
internal degrees remain signed integers. Ring coefficients map identically.

Essential invariants for the full exporter: source basis uses coefficient
pairs plus a terminal module ID; target expressions retain all generator
coordinates; every used source ID has an explicit image; unknown is never
zero; every reduction carries its exact module/ring relation and multiplier;
ring relations are lifted to a chosen target module coordinate; every final
matrix output is decoded from target basis and exact column bits. The generic
checker proves arbitrary-vector semantics once these finite inputs pass.
Topological/Ext interpretation and general nonidentity semilinear maps remain
separate mathematical work.
