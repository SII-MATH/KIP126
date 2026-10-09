# From complete square certificates to actual fourth page events

The existing finite square checker verifies four complete filtrations, four
filtered maps, the commuting square, the three input extension relations,
whole-subgroup stability, memberships, and the length inequality. This module
uses its proved fourth `HasExtension` to construct a leading-class event of
`FilteredTwoTermSequence.Page`. No new certificate field or assumed page
comparison is introduced.

The fixed input `D` determines source degree `s+n`, differential length
`m+l-n`, and target degree `s+m+l`. `fourth_degree` proves the target identity
under the checked inequality `n <= m+l`; truncated natural subtraction is
not used to accept an invalid square length.

`ResultValid D` states that an actual source-page class has exactly the
associated-graded leading class of the requested `D.y`, and its full `pageD`
image is the actual target quotient class of `D.w`. `resultValid_iff` proves
this statement equivalent to the previous finite square result, using the
constructed `hasExtension_iff_page` comparison in both directions.

The raw `D.y` need not be a cycle. `corrected_fourth` explicitly provides an
actual cycle representative, its higher-source difference from `D.y`, and
the full-page differential equation. This is essential in the corrected
fixture, where the raw fourth input `(1,0)` has an image outside the requested
target filtration but `(1,1)` is a valid corrected cycle. The bridge never
claims that the raw input is itself a source-page representative.

## Use

The input map, groups, complete filtrations and all requested vectors may be
specified independently of decoding certificate witnesses:

```lean
example : FilteredSquarePageBridge.ResultValid fixedInput := by
  filtered_square_page_cert using certificate

example : FilteredSquarePageBridge.ResultValid fixedInput := by
  filtered_square_page_diagnose using certificate
```

The generic `lin_cert` and `lin_cert_diagnose` also work. `fourth_event` exposes
the exact leading-page event with any preexisting well-formedness and input
membership proofs; `corrected_fourth` exposes the actual cycle and equation.

The existing `finite_filtered_square_certificate%` and
`finite_filtered_square_batch%` importers preserve the strict canonical
JSON/JSONL format, dimensions, version, and failure locations. The diagnostic
instance retains degree-length, filtration descent, whole filtered map,
commutation, point-membership, extension and stability failures. No wire
format or C++ producer is duplicated.

`WireValid` has the analogous actual-page meaning for embedded wire data;
its tactic certificate is `()` because the wire already contains witnesses.
`checkBatch_sound` supports arbitrary checked batches. `of_batch_valid`
transports an already kernel-checked batch without redoing large Boolean
reductions. `Examples.all_863_page_events` uses this theorem on all 863
producer records. Both stability branches, nonzero events, empty data,
corrected raw noncycles and rejected input/output mutations are covered.

## Verification

```sh
python3 program/FilteredSquarePageBridge/compile.py
python3 program/FilteredSquarePageBridge/review.py
```

The independent oracle reconstructs the actual source cycles, higher-source
corrections, target relations, quotient classes and full fourth `pageD`
equation for every producer record. It verifies 863 events: 765 use the first
stability branch and 98 the second; 770 have zero differential length, 33
have empty filtrations, three have nonzero target page classes, and one needs
a correction because the raw fourth input is not a cycle. It verifies 870
valid corrected representatives and uniqueness of their source-page class.

The bridge concerns the actual finite filtered additive groups given by D.
It does not identify these groups with topological Adams pages or establish
Kervaire conclusions. C++ supplies witnesses; the existing checker proof and
Lean kernel remain the mathematical trust boundary. Source and object hashes
identify evidence and are not proof premises.

All three Lean leaves compile with observed exit code zero. Their 19 printed
axiom reports use only the standard dependencies `propext`, `Classical.choice`,
and `Quot.sound`; there is no `sorry`, custom axiom, or native evaluation.
