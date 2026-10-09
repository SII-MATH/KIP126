# Row 2574: two complete incoming d3 branches

This package addresses the same unknown as `Fact715Source2574`. The source
is the sphere class in `(6,132)` with E2 basis ID 2573 and monomial `368,1`.
Its staircase ID is 2574, base `0`, NULL at level 9997. E2 basis ID 2574
is the different class `0,4,69,2`, already a d2 boundary. IDs from these
two tables must not be interchanged.

The existing package proves that the source dies by E4 without identifying
its three-dimensional d3 target. That result alone does not determine
the whole E4 group in `(9,134)`, which is needed by the Fact 7.13 closure.
The next closure dependency is:

```text
main d11 -> (20,142)d10 -> (30,151)d9 -> (39,159)d8
 -> (31,152)d7 -> (24,146)d6 -> (18,141)d5
 -> (13,137)d4 -> (9,134)d3, with incoming source (6,132).
```

## Complete two-branch argument

The recorded h2 product in `(7,136)` supports d3 with target raw local3
in `(10,138)`. Both actual representatives and the source multiplication
are inherited from `Fact715Source2574`; its recorded differential remains
an explicit mathematical input, not a trusted database assertion.

`Semantics` evaluates all five h2 product columns from the complete E2
target `(9,134)` in every characteristic-two commutative ring satisfying
the stated relations. `Product` descends that full product through the
complete d2 quotients and applies the actual Leibniz rule. This fixes the
middle bit of the unknown target E3 coordinate to true.

The original detector orders its target quotient as `(raw1,raw2,raw3)`.
The closure's staircase chart orders it as `(raw2,raw3,raw1)`. The exact
change of coordinates has columns `[4,1,2]` as bitmasks. In closure
coordinates the four h2 candidates are 2, 3, 6, 7. The full target d3 map
is `[0,0,1]`, retaining the existing dc2h6 zero rule, finite zero prefix,
and stored nonzero last column. The spectral sequence law d3 squared
zero removes candidates 6 and 7.

The two remaining possible incoming columns are `[false,true,false]`
and `[true,true,false]`. Both have a complete one-dimensional E4 quotient:

| Branch | Incoming | Projection | E4 Representative |
| --- | --- | --- | --- |
| false | `[0,1,0]` | `[1,0,0]` | original E2 raw2 |
| true | `[1,1,0]` | `[1,1,0]` | original E2 raw2 |

`Actual.Input.branch` is defined as the actual differential's remaining
coordinate. No branch value is assumed. `Input.column` proves the exact
branch equation. `Input.whole_source` covers every element of the complete
one-dimensional incoming source; `Input.whole` uses the canonical actual
incoming carrier and full target chart. `Input.page4` is constructed from
that complete actual boundary quotient. `Input.same_input` preserves the
original E2 raw2 input and proves that its constructed E4 value is nonzero.
Both matching source d3 comparisons are also exported. `Input.sourceWhole`
derives the incoming zero map from d3 squared zero and the existing
source cycle theorem. Its earlier `(3,130)` source chart is constructed
from a complete two-dimensional d2 comparison, not supplied as an
unexplained E3 equivalence.

The raw staircase still lists two apparent E4 representatives at `(9,134)`
because this unknown incoming differential was not propagated there.
They cannot be copied as an E4 basis: the full quotient has dimension one.
Continuation code must project every recorded representative through the
selected complete branch and retain the same input binding.

## Usage and assumptions

```lean
example (D : Row2574D3Search.Actual.Input S pages P)
    (input : (S.element 2 Row2574D3Search.Product.degree).carrier)
    (binding : D.product.coordinates.equivalence input =
      Row2574D3Search.Data.raw) :
    Row2574D3Search.ResultValid D input := by
  row2574_d3_cert using D named binding
```

The certificate interface requires the existing full E2/d2/product
interpretations, actual quotient product transitions, ss2866's interpreted
d3 on its constructed E2 representatives, the existing complete outgoing
target d3 meaning, and local quotient addition/zero laws. These are
conditional actual Adams semantics. This package does not realize them
from topology or select a numerical value for the unknown differential.

## Search and validation

`proof_events.py` scans all 2,672,275 proof events and retains 27 relevant
records. Events are provenance only. `search_maps.py` screens 70 maps and
`screen_products.py` screens all 178 nonzero homogeneous low-degree
factor vectors with `0<t<=40`; neither finds a direct source-zero,
ambiguity-target-nonzero detector. These bounded results do not establish
that no other detector exists.

`audit.py` independently checks complete SQL bases, all d2 columns and
quotient identities, seven h2 polynomial products, the exact chart change,
all possible unknown target values, both full boundary quotients, and
80640 relabelings of the whole eight-element E3 carrier. It preserves all
raw NULLs and treats SHA-256 only as provenance consistency.
`generate.py` reproduces seven comparison wires, including both matching
source/target d3 branches; it invokes the C++ producer and never chooses
a value for the imported unknown.

The direct compile script uses pinned Lean 4.32.2 with `-j1` and existing
dependency objects; it compiles only owned new leaves, retaining every
attempt. During the parent's single root build, new direct Lean processes
are paused. Failed Product attempts involving degree transports are
retained as development history, not accepted evidence.

The new Lean sources have no admitted proof, custom axiom, native proof
shortcut, or implicit C++ trust. Final accepted compilation records and
the frozen source manifest identify the checked declarations; root
registration and exhaustive axiom scanning remain the parent task.
