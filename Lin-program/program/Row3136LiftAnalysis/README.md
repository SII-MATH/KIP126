# Bounded search for a row3136 source cycle

This directory records untrusted read-only searches. It does not introduce
any theorem that fixes row3136's unknown d3 value.

The root search in `Row3136LiftSearch/map-sources.json` finds four exact
canonical E3 lifts of S0 `(20,140)` coordinate e0 (ss3136, E2 basis3134).
The CW_eta_nu map with filtration1 and suspension0 is an isomorphism on
the two-dimensional E3 source and target coordinates, so a source-cycle
proof would transport to the sphere through actual naturality.

## Exact row distinction

At CW_eta_nu `(19,139)`, the lift is canonical E3 e0, represented in E2 by
`[1,1,0,0]`. This is **ss4821**, base`0,1`, differential NULL, level9995.
It is not ss4820, base`2`, whose stored nonzero d5 has target`1`. The latter
is canonical E3 e1 and maps to the other sphere coordinate. Its differential
cannot establish the desired lift's cycle.

The source d3 target `(22,141)` has E3 dimension2. ss5055 is canonical e1
and has stored d3 target `[1,1]` in the next two-dimensional quotient.
ss5054 is canonical e0 with NULL/9000, so that whole outgoing map is not
known injective. Differential-square-zero alone does not force the desired
source value to zero.

## Complete direct-map and product screens

`target_maps.py` checks all E2 columns and both d2 squares of the target
map to S0 `(23,142)`; the E3 map is the 2x2 identity.

`other_maps.py` checks both other configured direct maps:

| Map | Source E3 matrix | Target E3 matrix | Consequence |
|---|---|---|---|
| CW_eta_nu to Cnu | `[[0,0],[1,0],[0,0]]` | `[[0,0]]` | Target map detects nothing |
| CW_eta_nu to CW_eta_nu_sigma | `[[1,0],[1,0],[0,1]]` | identity2 | Named source becomes e0+e1 |

In the second target, e1 is associated to the incoming d3 row5528, but e0
is ss5530, base0, NULL/9000. This route still requires an actual cycle of
an unresolved named class. No NULL value is interpreted as zero.

`products.py` screens all 78 known raw coefficient d2 cycles with
filtration<=8, internal degree<=36. Fifteen have complete checked d2 product
quotients; all fifteen target matrices are zero, so neither a single
factor nor their joint map detects the unknown. The other63 are unresolved
because of d2_t_max150 or explicit NULL columns. They are not classified as
failed mathematical candidates beyond this finite coverage window.

`proof_events.py` streams all three fixed proof CSVs for the exact degrees
and preserves five nearby rows on each side. These are rule/provenance
clues, never mathematical proofs. Source d5 future markers are not used as
all-page cycle evidence.

Run the four Python scripts here to reproduce their corresponding JSON
reports. No frozen registered library or original database is modified.
