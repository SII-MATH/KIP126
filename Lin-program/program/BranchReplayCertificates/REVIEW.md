# Mathematical scope review

## Findings

1. The strongest remaining gap is not a false Lean theorem: `Products`
   and `MapColumns` prove polynomial congruences, while downstream matrices
   are separate definitions. The exporter/audit verifies coordinate matching,
   but there is no Lean theorem interpreting every matrix column in a
   proved Ext basis. Therefore downstream finite-matrix theorems cannot
   yet be composed into a theorem about actual Adams multiplication/maps.
   Existing code is safe because none claims that composition. This must
   remain a named bridge obligation rather than being hidden by wording.
2. `E4Descent` previously used comments that called its selected finite
   quotients simply E4 coordinates. Comments now explicitly state that
   final-database selection is not an Adams realization theorem. The
   matrices do match the stored data; no unknown differential was filled
   with zero. In particular source local0 has level9996 and diff=NULL:
   this encodes unknown d4, and inclusion among cycles before d4 does not
   assert d4=0. Sentinels9000 still supply only imported survival claims.
3. The README miscounted T154538--154544 as six refutations; corrected to
   seven. The actual `D154545.excluded` list already had seven entries,
   so no proof change was necessary.

## Data verification

`review_data.py` independently enumerates the complete finite spans from
the actual three relevant staircase blocks, checks full basis rank, and
compares their selected cycles/boundaries against the manually defined
matrices. It verifies two map matrices against the RealMap audit and all
seven product coordinate lists. All checks pass. `review-data.json`
preserves the rows and unknown flags.

At S0(21,147), incoming d3 local2 and both outgoing first-unknown/known
d4 rows give all three pre-d4 cycle directions; B3 is exactly span(e2)
in the stored selection. At S0(25,150), the only excluded direction
supports known d2; cycles satisfy bit0=bit1 and no boundary has length<4.
At tmf(25,150), the incoming d3 vector(1,1) and sentinel direction give
all vectors as selected cycles and B3=span(1,1). These are internally
consistent finite selections. They do not certify the historical order
of discoveries or completeness of the actual spectral sequence.

## Soundness boundaries retained

All candidate-reduction hypotheses remain visible. No `T`, `D`, `N`,
sentinel or residual prose is directly a theorem. `Compatible` predicates
assert mathematical equalities modulo explicit boundary matrices; their
topological Leibniz/naturality justification remains missing. Finite map
descent proves preservation of cycles and boundaries, not commutation
with the unknown next differential. `QuotientConclusion` certifies the
entire quotient of its input matrices, but the two proposed new boundary
columns and completeness of the resulting true E5 boundaries still need
proof. These gaps cannot be closed by adding final-conclusion assumptions.
