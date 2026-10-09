# Bounded map alternatives for row 2773

`search.py` checks every one of the 70 configured maps with source S0 in
`maps` and `maps_v2`. For the raw row `[2773,13,135,"1",null,9000]`, it computes
the named source image and all three nonzero vectors of the complete
two-dimensional E3 target `(16,137)`. Relation reductions are bounded by
10,000 steps and 100,000 intermediate terms; declared E2/d2 coverage is
mandatory. Each failed stage has an explicit reason in `lifted-search.json`.

There are 49 maps with all requested quotient computations complete and
21 maps with at least one unavailable stage. Of the 49 complete maps, 41
annihilate the named source. Two single maps detect all nonzero target
directions: `S0__Ceta` and `S0__CW_nu_eta_by_2`; 18 pairs of other source-zero
maps jointly detect the whole target.

`review.py` independently replays each direction for all 70 maps using the
existing raw-SQL/relation/complete-quotient oracle. Per-direction review files
retain both successful checks and exact failure locations. The source is never
converted from NULL to a stored known d3 value.
`failure-locations.json` lists all 21 incomplete maps by stage and reason.
`reproducibility.json` records a successful rerun with byte-identical main
search and candidate reports.

These maps remain numerical alternatives: full chain-map compatibility and
actual naturality transports are not proved here. The separate
`Row2773Leibniz` route supplies the completed conditional actual theorem.
This bounded screen does not enumerate every conceivable map or product.

```sh
python3 program/Row2773MapSearch/search.py
python3 program/Row2773MapSearch/review.py
```
