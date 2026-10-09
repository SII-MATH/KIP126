# Row3143 via an injective subsequent C2 differential

This addresses S0(17,140)d3, row3143, local0. The actual C2-to-S0 top-cell
map (suspension1) takes C2(17,141)local0 to this class. Four complete d2
comparisons, six map matrices, all14 module basis-image certificates,
strict JSON import, and full matrix valuation semantics are checked.

The C2 d3 target at(20,143) has E3 dimension2, so it is not a zero target.
Instead the subsequent d3 from this target has known staircase rows3449
(local0 to local1) and3450 (local2 to local2), both level9997. A fifth full
d2 comparison identifies the E3 target at(23,145) with dimension3.
FollowingColumns checks the exact projections of both known event values
and both source representatives. InjectiveNext proves their 3-by-2 matrix
reflects zero for every vector and on the actual finite quotients.

Naturality.sphere_zero_from_successor takes three structural premises:
(1) the successor differential has those imported coordinates, (2) local
d3 squared is zero, and (3) the local C2-to-S0 naturality square. It then
proves the desired sphere zero. No premise asserts the desired zero, and
no N/D/T log event is used as a theorem. The unknown C2 source row3289
remains NULL9000. The two successor rows are separate imported data; their
identification with actual Adams d3 still needs a provenance theorem.

Matches.matched_zero additionally equates the actual quotient differential
coordinates to the explicit 1-by-1 candidate outgoing column, retaining
the quotient-zero conclusion. This is ready for a conditional trajectory
override, but that override has not been silently installed in other
families. Degree constraints, source data and module relation assumptions
remain those of the existing finite map model.

All modules passed direct Lean -j1 compilation. The main quotient and
matching theorems use only propext and Quot.sound. General module valuation
semantics also use standard Classical.choice. No sorry, new axiom or
native_decide is introduced. review.py checks the14 map columns, hashes,
exact known successor rows and preserved unknown source.

Register Fact713C2Row3143.Matches and Fact713C2Row3143.MapImported; Matches
imports all other theorem modules. The generator scripts reproduce map
certificates/comparisons/semantics; Next.lean's source is next-source.json.
