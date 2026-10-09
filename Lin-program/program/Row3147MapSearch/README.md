# Row3147 configured-map search

This directory records a bounded, untrusted search for a map killing the selected
source class while detecting the remaining target class. It does not prove
naturality, a differential, an Adams realization, or Row3147.

The current result is `lifted-search.json` (schema
`row3147_configured_map_screen/v2`), independently replayed in `review.json`.
`maps-search.json` and `search.py` preserve the earlier screen and are superseded
for coverage decisions.

## Exact scope and result

All 70 `maps` / `maps_v2` records with configured `from = S0` in
`upstream/category-inventory.json` are visited, in source order. This includes
records whose names begin `S1`, `S2`, etc.; the configured domain is used.
The selected source has bidegree `(16,140)`, coordinate `[4]`; the selected target
has bidegree `(19,142)`, coordinates `[1,2]`. Each configured factor shifts both
bidegrees. These are a search choice, not a complete matrix of a map.

- 39 records: both complete quotient calculations succeed and the target is zero.
- 9 records: both succeed but the source quotient is nonzero.
- 22 records: unknown, with both selected stages retaining explicit reasons.
- 0 candidate records requiring a subsequent full compatibility proof.

The unknown records split into 10 missing `d2` columns, 6 outside declared
`d2_t_max`, and 6 outside declared E2 `t_max`. Requested shifted bidegrees reach
`s = 23`, `t = 270`; the individual database bounds are enforced before interpreting
an empty basis as a zero-dimensional space. In particular the historical zero
statuses for `S0__S0_by_theta5sq`, `S0__C2_by_h6`, and
`S0__CW_2_eta_by_theta5sq` are now unknown because they exceeded the E2 window.

The 48 completed records contain 96 complete cycle quotients. Reduction across
all computable stages uses 206 steps, including 33 explicit ring-relation lifts.
No `no reducing relation` status remains within the covered ranges.

## Provenance and checks

Each used target relation records its database, table, rowid, raw relation and
bidegree. A lifted relation separately records the S0 relation row, target module
generator and its degree; it is not encoded as an ambiguous negative rowid.
Relations are lifted only for the generator being reduced and through the
maximum shifted selected degree for that map. Target relations are tried first,
then lifted ring relations in database row order. Every step records its
multiplier and leading term. Repeated states, missing coordinates, invalid
sentinels, a 10,000-step bound and a 100,000-term bound stop that stage as unknown.

Every quotient requires the complete incoming and outgoing `d2` columns and all
three basis groups inside the declared coverage. NULL, absent columns, invalid
coordinates and out-of-window data never mean zero. The image is checked to be
a cycle before applying the quotient projection. The Python reviewer separately
replays raw substitutions and reductions, checks source rows and relation
provenance, and verifies all five complete-comparison matrix identities,
including the contracting-homotopy identity. It does not trust the C++ comparison
producer's result. SHA-256 values track inputs and producer versions only.

These Python checks are an exploratory audit, not Lean kernel acceptance. Even
a future candidate requires complete map compatibility and source realization
before any mathematical conclusion about the paper follows.

## Reproduction

From the repository root:

```sh
python3 program/Row3147MapSearch/search_lifted.py
python3 program/Row3147MapSearch/review.py
```

The review reruns the producer and requires byte-for-byte equality of the whole
report, then independently replays it. It reads upstream databases without
writing them. `--no-rerun` skips only the determinism rerun for local diagnosis;
the delivered `review.json` records `deterministic_rerun: true`.
