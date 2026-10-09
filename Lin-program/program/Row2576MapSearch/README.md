# Row2576 residual configured-map screen

The current finite factor screen leaves the target E3 line `[0,1]` for raw
staircase row `(2576,4,132,"0",NULL,9000)`. This line has E2 representative
`[0,0,1,0,0]` at `(7,134)`: local coordinate 2, database basis ID2708,
monomial `1,1,368,1`. It is not E2 local coordinate1 used by the older
`AggregateD4Conditional/Remaining/maps2576-residual.json` screen.

All 70 configured S0-domain maps are visited with the exact residual:

- 11 numerical candidates kill the source E3 class and detect the residual.
- 16 have a nonzero source quotient.
- 26 have a zero target quotient.
- 17 remain unknown, retaining per-stage causes and database bounds.

The simplest candidate is `S0__C2`, the bottom-cell map with factor
`[0,0,0]` and shift `(0,0)`. Its source image is E2local0 in C2 `(4,132)`,
whose complete E3 quotient has dimension0. Its target image is E2local3
in C2 `(7,134)`, with nonzero E3 coordinates `[0,0,0,1]`.

This is not yet a detector for the whole two-dimensional S0 target. The
previous factor h2, degree `(1,4)`, kills the source and has target columns
`[1]`, `[0]` in the factor screen, suggesting a joint detector. Both actual
maps must be checked with complete matrix compatibility and a joint
zero-reflection theorem before deriving any differential conclusion.

Other numerical candidates are `S0__CW_2_eta`, `S0__CW_2_eta_nu`,
`S0__CW_2_eta_nu_sigma`, `S0__Ceta_by_nu`, `S0__Cnu_by_eta`, `S0__C2h4`,
`S0__C2h5`, `S0__C2h6`, `S0__DC2h6`, and `S0__C2_by_h5`.

`search.py` reuses the metadata-bounded reducer through an imported module;
`search_lifted.py` is a relative symlink to that shared implementation for
its unchanged independent review. All artifacts written by this wrapper
and review stay in this directory. Relations retain full database row and
module-generator provenance. All images are checked to be cycles before
projection. Unknowns and out-of-coverage queries never become zero.

Run from the repository root:

```sh
python3 program/Row2576MapSearch/search.py
python3 program/Row2576MapSearch/review.py
```

The independent review reruns the wrapper, requires byte-identical output,
and replays 108 reductions (30 ring-relation lifts), 106 complete cycle
quotients, source SQL rows, and all five complete-comparison identities.
It also checks the exact residual lift and raw NULL identity. SHA-256
records provenance only. No Lean theorem, naturality, or Adams realization
is asserted by this search.
