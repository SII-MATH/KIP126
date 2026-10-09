# Row 2796: bounded E5 map search

This directory records the configured-map search for the possible d5 leaving
the raw S0 staircase row `[2796,8,135,"2",null,9000]`. The row names E2 local
index 2, rather than an E2 basis row with the same database ID. Its target is
S0 degree (13,139), whose chosen E5 basis comes from E2 local index 0.

The search covers all 70 configured maps whose domain is S0. In the recorded
search, 69 have an unknown required source or target stage, and one has zero
target E5 image. There is no complete numerical E5 detector candidate. For
`S0__DC2h6`, the target E5 image is `[1]`, but the source E5 computation is
unknown. This partial result motivates the conditional theorem in
`../Row2796D5Detector/`; it does not complete the unknown source pages.

## Artifacts and replay

- `search.py` produces the bounded search and its comparison data.
- `lifted-search.json` contains each configured map and its stage status.
- `comparisons.json` contains the imported and newly generated finite blocks.
- `Probe/` contains the comparison probe used by the detector producer.
- `review.py` independently checks the configured map enumeration, SQL basis
  and generator data, module reductions, d2 blocks, inherited conditional
  provenance, finite comparison laws, and recorded search outcomes.
- `review.json` records the checks, unknown locations, and input fingerprints.

Run from `program/`:

```sh
python3 Row2796D5Search/review.py
```

The recorded independent replay passes. The comparison union has 862 blocks,
including 652 d2 blocks. Higher-page stored columns used by the concrete
DC2h6 detector receive a separate full replay in its own reviewer; this
search audit does not establish mathematical interpretations of the stored
higher-page staircase levels.

## Meaning of incomplete data

Raw d2 columns outside a database's declared d2 window are not accepted as
zero. Explicit inherited S0 reconstructions are retained only with their
same-block `conditional_d2_staircase` provenance and basis evidence. Other
missing columns, unsupported bounds, unknown `null` values, and level 9000
remain unknown. Inherited higher-page conditional meanings remain premises.

The Python search and review are diagnostic tools. Their hashes establish
which files were reviewed; neither hashes nor a search status prove an Adams
differential. Lean checks the detector's finite certificates separately.
