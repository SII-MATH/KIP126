# Fact 7.15: the remaining possible d9 source

Status: bounded search and independent finite-algebra audit, **not a proof
that the differential is zero**. No Lean theorem is exported by this directory.

The potential incoming differential to the named raw sphere basis vector
`2853`, local coordinate `3` at `(s,t)=(11,136)`, has source `h6^2`, raw basis
`2314` at `(2,128)`, on page 9. The named target monomial is `0,2,391,1`.
The source staircase entry has `level=9993` and a NULL differential: this
records an unknown d7, not survival through d9. In particular, the equality
`h6^2 = h6 * h6` on E2 cannot justify a square calculation on E9: `h6` itself
has the nonzero d2 recorded at sphere basis row `401`.

## Bounded searches

`screen_products.py` enumerates every nonzero homogeneous E2 factor vector
with `0 < t <= 40`: 178 vectors, including 19 rejected noncycles. Of the 159
d2 cycles, only `h0` gives a zero source image and a nonzero target image on
E3. The only other factor with nonzero target image on E3 is `h3`; its source
image is nonzero. Both target images are d3 boundaries.

`screen_higher.py` checks all 1,081 complete E3 basis columns of sphere factors
with `40 < t <= 120`. Every resulting target product has no staircase
component potentially present on E9. Linearity makes these basis columns
exhaustive for the support question within that factor range. This remains
an untrusted staircase screen: it does not supply actual higher-page
coordinate meanings, and it does not assert that the named target survives
to E9.

The parent's 70-map E3 screen is read from
`Fact715IncomingTail/lifted-search.json`. Its three candidates already fail
at E4:

| Map | Image degree | Raw target | Explicit d3 source |
| --- | --- | --- | --- |
| `S0__S0_by_2` | S0 `(12,137)` | local 3 | sphere ss2793, base local 3, maps to local 3 |
| `S0__Csigma_by_2sigma` | Csigma `(12,152)` | local 6 | Csigma ss6069, base local 3, maps to local 6 |
| `S1__Q_CW_2_V_eta` | Ceta `(12,137)` | local 6 | Ceta ss4422, base local 4, maps to locals 6+7; local 7 is a d2 boundary |

Four other maps have target components possibly present at E9, but their
source images are not established to vanish or to support zero d9:

| Map | Source obstruction | Target staircase component |
| --- | --- | --- |
| `S0__CW_eta_2` | source ss2684 remains present | ss3257, unknown d11 |
| `S0__Cnu_by_sigma` | source ss4574, unknown d8 | ss5607, level 9000 |
| `S0__CW_eta_nu_by_sigma` | source ss5279, unknown d7 | ss6370, level 9000 |
| `S0__CW_2_eta_nu_by_sigma` | source ss3395, unknown d7 | ss4105, unknown d51 |

`screen_events.py` streams all 2,672,275 proof CSV records and retains the
128 records at these eight source/target degrees. There is no source d9
relation in those records. In particular Cnu event 2603746 gives source d7
zero and event 2609723 records unknown d8; neither proves d9 zero. Proof
events are provenance, never proof terms.

## Independent audit

Run from the repository root:

```sh
python3 program/Fact715D9Obstruction/screen_products.py
python3 program/Fact715D9Obstruction/screen_higher.py
python3 program/Fact715D9Obstruction/screen_events.py
python3 program/Fact715D9Obstruction/audit.py
```

The audit checks 461 complete comparison identities and their matrices
against the SQLite d2 records, independently replays 1,399 polynomial
products, checks complete low-factor enumeration, proves higher-factor
basis completeness by separate rank calculations, and verifies the exact
three d3 boundary preimages above. It invokes neither the C++ producer nor
Lean. `audit.json` records hashes and exact boundary records.

The first audit passed before the additional SQL-matrix and high-basis
completeness checks were added; its output is retained in `audit.log`.
The final expanded audit output is `audit-second.log`. Neither audit
constitutes a Lean proof or discharges the d9 obstruction.

## Mathematical route still required

Paper Proposition 7.8, preceding Fact 7.15, states that the only possible
nonzero differential on h6^2 is d12. It would imply the required d9 zero.
Its proof uses the Barratt-Jones-Mahowald/Burklund-Xu quadratic construction,
synthetic theta5-square calculations, and additional Lin data. A verified
bridge for that result, or another actual d9 obstruction, is still needed.
Using the E2 square identity, the NULL staircase entry, a hash, or the
paper statement alone would not fill this gap.

All reads use SQLite read-only connections. Existing registered Lean
sources and build objects are untouched. No `sorry`, axiom, `native_decide`,
or assertion of trust in C++ was introduced.
