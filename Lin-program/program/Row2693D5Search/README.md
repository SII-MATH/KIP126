# Row2693 d5 from an h1 product

This package proves the named row2693 d5 value is zero, conditional on
complete actual Adams input meanings. The desired d5 value is not an input.
Neither h1 d3, h1 d4 nor h1 d5 is assumed.

## Exact row and product

The sphere database is `upstream/kervaire-49/S0_AdamsSS_t261.db`, SHA-256
`518a2ed86af6d4f7bcdc5db135ab6252bd50df34492ae208663aa1c140a820ed`.
`t_max = 261` and `d2_t_max = 177` cover all selected raw neighborhoods.

| Role | E2 coordinates | E3 | E4 | E5 |
| --- | --- | --- | --- | --- |
| right factor at (9,132) | `[1,1]`, bases 2569+2570 | `[1,0]` | `[1]` | `[1]` |
| row2693 at (10,134) | index 4 in dimension 5 | index 2 in dimension 4 | index 2 in dimension 4 | index 0 in dimension 2 |
| d5 target at (15,138) | dimension 3 | dimension 3 | dimension 2 | dimension 1 |

SS row2693 has `base="4"`, NULL, level 9000. Its raw E2 basis is **2694**,
`h0^2 * generator367`. The neighboring SS row2694 has `base="3"` and stored
nonzero d5. These two rows and coordinates are kept distinct.

The complete E2 tensor h1 times (9,132) has columns `[2]`, `[]` at (10,134).
Its named product is raw basis index2. The difference between index2 and
the desired index4 is an actual d2 boundary under the complete d2 meaning.
The checked projection therefore identifies the named product with row2693.
The full multiplication descends through all d2, d3 and d4 quotients.

## Mathematical route

`LowH1.lean` derives all actual h1 d3 and d4 values as zero. The full E2 group
at (2,3) is empty, so h0*h1 is zero on subsequent pages. The h0 d3/d4
targets at (4,3)/(5,4) are empty. The full low tensors
`h0 * h0^4 -> h0^5` and `h0 * h0^5 -> h0^6` descend to injective E3/E4
detectors. Leibniz then forces h1 d3/d4 to vanish. No NULL entry is
interpreted as a zero differential. The complete low tower meanings are
explicit inputs, and their incoming E2 neighbors are empty.

`Product.lean` constructs the full E3, E4 and E5 charts from complete
earlier actual meanings and the actual product-transition squares. In
particular, it constructs h1's d3/d4 meanings from the proved low theorem;
their absent incoming sources follow from filtration 1 < page.

At d5 the unknown `d5(h1)` lies in degree (6,6), whose complete E2 basis is
`h0^6`. Both full E2 products with the right-factor basis vanish, by relation
9216 (`h0^3 * generator366 = 0`) and relation 8644
(`h0^2 * generator352 = 0`). `Trace.annihilator` propagates this full
annihilator through the actual quotient transitions, so the Leibniz
correction `d5(h1) * right` is zero without knowing d5(h1).

The right factor has the exact existing complete d5 zero-prefix meaning
from (9,132). Leibniz now proves `Actual.Input.named_d5_zero` for the
specified E5 coordinate. `same_input` gives the same original E2 input,
nonzero E5 and an E6 trace. **E6 nonvanishing is not claimed.** The other E5
source column has its recorded nonzero d5 and is not changed.

## Inputs, trust and provenance

`generate.py` reads SQL in read-only mode and exports 21 comparisons and 6
polynomial product columns. It invokes the existing C++ comparison exporter
for the low d2 neighborhoods; inherited comparisons retain the exact
`Fact713SquareContinuation` wires. `Data.lean` imports strict canonical JSON
and uses `lin_cert` to check all finite witnesses. `Finite.lean` checks every
input of the full descended tensors, including cycle/boundary quotients.

Actual E2 coordinates, complete incoming/outgoing meanings, product
equations, local zero/add laws and product-transition squares remain
explicit premises. These identify the checked finite algebra with the
actual spectral sequence; no database hash or C++ result proves them.
The right-factor finite d5 prefix is not a proof from NULL or a claim of
permanence. See `conditional-signature.json` for the exact boundary.

The earlier `proof_events.py`, `proof-events.json`, `search_maps.py` and
`lifted-search.json` are retained without alteration. The proof-event scan
found 60 rows among 2,672,275 records. Its synthetic event 2411723 is not
used as a mathematical premise. The five E3 map-screen candidates have
their target images hit by d3, so they do not establish an E5 detector.
The accepted proof uses the source product described here.

## Import, requests and diagnostics

`request.json` and `requests.jsonl` bind the version, result ID, five-bit
original E2 input and one-bit d5 output. For `K : Actual.Input S pages P`:

```lean
example (input : (S.element 2 Product.productDegree).carrier)
    (binding : K.stage2.product.equivalence input = Finite.product2Name) :
    RequestedValid K input request := by
  row2693_d5_cert using K
```

The same tactic supports request batches. The resulting proposition
contains actual output coordinates, the same-input E6 trace, nonzero E5
and the actual d5 zero equation. It checks mathematical semantics as well
as the request fields. `ActualTraceRequests.diagnose` and `diagnoseBatch`
with `Row2693D5Search.spec` identify the field and record; strict import
reports the path/line and rejects duplicate or unknown fields. Rejection
examples cover wrong input, output, length, version, result, missing input
binding and a corrupt request within a batch.

## Checks

Run from `program/`:

```sh
python3 Row2693D5Search/generate.py
python3 Row2693D5Search/audit.py
python3 Row2693D5Search/reproduce.py
python3 Row2693D5Search/compile.py
```

`audit.py` independently re-reads SQL and checks all relation identities,
full quotient identities (1701 ordered cycle pairs), all 20 descended
product inputs and all 6 invertible relabelings of the complete E5 source.
It does not import the generator. Lean compiles serially; every historical
attempt is preserved in `evidence/`. Accepted current logs contain only
the standard Lean axioms `propext`, `Classical.choice`, `Quot.sound`.
No admitted theorem, custom axiom or trusted native computation is used.

These are finite algebra certificates and conditional actual Adams
consequences. This package does not prove that the imported E2 algebra is
the Ext algebra of the original topological spectrum.
