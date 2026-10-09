# Fact7.15 finite E4 prefix and exact E5 blocker

Generated.lean checks the four complete recursive d2/d3 comparisons for the
named local3 class at(11,136), proving named_finite_E4 with exact transported
representatives. It does not claim E5. The unchanged Fact715PageCertificates
contains the existing literal interpretation. The new initial vector is
[false,false,false,true,false]. Generated.lean compiled with Lean -j1.

The sole raw blocker for E5 is S0 staircase row3076 at(15,139), base[1,3],
level9000, NULL. It is the sum of E2 local1/global3076 h3^2*x110,13 and
local3/global3078 h0*x124,14. The whole sum must be tracked.

The pinned proofs contain an explicit naturality route, not a D/T trial:
proofs-part1.csv physical line74581, N80011, r3[1,3]=[], map Ceta__S0.
Immediately preceding at line74580 is G80010, Ceta(15,141), r3[0,2]=[].
The map has suspension2. The Ceta source raw row5161 is [0,2], level9996,
NULL at d4; its earlier d3 prefix is distinct from the S0 permanent sentinel.
The d3 target Ceta(18,143) has five E2 generators, all removed by d2 (three
outgoing directions and two incoming boundaries). Hence a complete d2
comparison can prove its E3 target is zero. This is a viable finite route.

To discharge the blocker, one still must check that complete target quotient,
the actual Ceta→S0 map column for the source sum (the database map table stores
generator images, not basis images), the induced d2 quotient map, and the
appropriate d3 naturality square. Neither G80010 nor N80011 is itself a Lean
proof. No zero override or E5 theorem is generated here.

trace_source.py streams all three proof files, preserves exact matching rows
and hashes, and explicitly retains both summands. review.py checks the four
prefix blocks read-only against the pinned database and rejects unknowns.

## Naturality reconstruction now checked

MapActual/MapImported verify32 actual module columns across six degrees.
MapImport enforces suspension2 and rejects the reserved maxuint sentinel in
coefficients, module IDs, image polynomials, relations, outputs and witnesses;
MapShapeTests checks representative corruptions and wrong shift rejection.
MapComparison proves four complete d2 quotients and both adjacent chain-map
squares at source and d3 target. MapSemantics checks all six whole matrices
and applies the general module-linear interpretation theorem for every vector.

Naturality proves the actual source map sends Ceta[0,2] to S0[1,3], that the
Ceta d3 target quotient is zero, and that a local naturality square forces
the S0 d3 value to vanish. ConditionalData checks13 predecessor comparisons
and the finite E5 trajectory with exactly this raw-NULL override. Conditional
uses the naturality theorem in its selected-column Matches conjunct; the
constructed finite trajectory is also checked. All these modules compile.

This remains conditional imported finite E5, not a true Adams result. The
actual naturality/source-realization premise and other imported known/prefix
rows retain their external mathematical provenance. Raw row3076 stays NULL;
only its proved conditional quotient value licenses the selected zero column.
