# Conditional row2925 detector

The exact imported row is S0 staircase2925, `(s,t)=(11,137)`,
base `"1,2"`, diff `NULL`, level9000. The configured map
`S0__Cnu_by_eta` multiplies by Cnu basis9, module generator1, degree `(1,6)`.
The source combination maps to literal zero. The one-dimensional E3 target
at S0 `(14,139)` maps to Cnu `(15,145)` with quotient coordinates `[0,1]`.

`export.py` emits six complete coefficient matrices with 29 columns and
31 explicit reduction steps, including five coefficient-ring relation lifts.
The generalized `ShiftedWire` checks filtration1 and suspension-5, hence
actual bidegree shift `(1,6)`; its nested algebra uses normalized labels.
`Actual.lean` imports and proves all six certificates by `lin_cert using ()`.
`Comparison.lean` references the checked matrix functions directly and checks
four complete d2 quotients and both chain-map squares at source and target.

`Naturality.named_d3_zero` proves the named differential vanishes under the
local d3 naturality square and preservation of zero. `Matches.matched`
identifies the resulting zero column with its actual quotient coordinates.
The source is explicitly E2 local1+local2, with complete E3 coordinates
`[1,1]`; no raw unknown is interpreted as zero. `Semantics` transports the
actual coefficient matrices to arbitrary modules satisfying the imported
relations, and proves the standard coefficient-ring lift implication.

The database metadata limits are checked before every comparison and basis
query: S0 E2 t<=261, Cnu E2 t<=200, and both d2 t<=177. Missing or invalid
d2 coordinates cause failure. Degree labels and ring-lift provenance are
audited against raw SQL, independently of the export implementation.

Run `export.py`, then `generate_comparison.py`, then
`source_independent_audit.py` in this directory (all accept any working
directory). The independent audit replays all 31 reductions, verifies every
full matrix and homology-comparison identity, and independently checks that
the detected target is not an incoming boundary by Gaussian rank.

This is a conditional theorem about imported finite quotient maps. It does
not identify the map with a topological map or establish the Adams d3
naturality premise from topology. The NULL field remains in `source.json`.
