# Checked certificates as actual page equations

This module transports the existing finite filtered-extension certificates to
the constructed `FilteredTwoTermSequence.Page`. The complete input `D` fixes
the map, all filtration levels, source, target, degree, and differential length
before decoding certificate witnesses. The new `ResultValid D` states an
actual `pageD` equation in that page system. Its equivalence with the previous
local-quotient semantics is proved from the explicit quotient equivalence.
No comparison is assumed as a certificate field or theorem hypothesis.

## Mathematical bridge

`sourceElement` includes a source-page class as `(z,0)` and `targetElement`
includes the original target representative as `(0,[y])` using the actual
all-target quotient. `page_equation_iff` identifies the full page equation
with the local quotient differential equation in both directions.

`LeadingPageEvent` additionally binds the source class to the specified
associated-graded leading class. `leadingPageEvent_iff_extension` constructs
the corrected source representative when needed; it never assumes that a
raw leading representative is already a cycle. The current
`FilteredExtensionCertificates` checker has the stronger raw-cycle condition:
it checks both `x in F_s` and `f(x) in G_(s+n)`. That condition remains intact
on its certificate path. The separate general theorem handles raw noncycles,
including the integer example `(1,0)` corrected to `(1,-1)`.

`exact_iff_graded_nonzero` identifies exact filtration degree with nonzero
associated-graded class. `targetElement_nonzero_iff` separately characterizes
nonzero current target page class by absence from earlier boundaries. An
exact leading target can already be killed by an earlier boundary; these
conditions are not conflated.

`PageCrossingAt` uses the literal full `pageD` equation and exact source and
target leading degrees. `pageCrossingAt_iff` and `noCrossing_iff` prove its
comparison with the existing quotient-page crossing definition.
`noCrossing_iff_higher` checks the image of the entire higher-source subgroup.
`noCrossing_iff_all_representatives` proves that absence of crossings gives
representative stability. Inessential exact crossings are retained: omitting
them would weaken this criterion.

## Import, tactics, batches and diagnostics

The existing strict JSON/JSONL format and C++ producers are reused without a
second competing schema. Use `filtered_extension_certificate%` or
`filtered_stable_certificate%` and the corresponding batch importers. These
retain canonical encoding, field and dimension checks, line-number errors,
and factorization/membership/equation failure locations.

For independently specified input data:

```lean
example : FilteredExtensionPageBridge.ResultValid fixedInput := by
  filtered_page_cert using certificate

example : FilteredExtensionPageBridge.StableResultValid fixedInput := by
  filtered_page_cert using stableCertificate

example : FilteredExtensionPageBridge.ResultValid fixedInput := by
  filtered_page_diagnose using certificate
```

The generic `lin_cert` and `lin_cert_diagnose` work as well. For an imported
whole wire record, `WireValid wire` and `StableWireValid wire` use `()` as the
certificate argument because the witnesses are already embedded in the wire
record. `page_equation` projects the fixed-input theorem into an actual page
map equation with any preexisting well-formedness and membership proofs.
`leading_event` projects the precise associated-graded source statement.

`checkBatch_sound` and `checkStableBatch_sound` transport arbitrary accepted
batches. `Examples.lean` includes checked fixed-input tactics and diagnostics,
all existing 604 extension and 596 stable-extension records, rejected altered
source/output/crossing examples, a corrected noncycle, and an exact but
inessential crossing. Batch transport uses previously checked proof terms;
it does not trust previously reported Boolean results.

## Verification and scope

```sh
python3 program/FilteredExtensionPageBridge/compile.py
python3 program/FilteredExtensionPageBridge/review.py
```

All five new Lean leaves compile successfully, with 26 printed axiom reports
using only `propext`, `Classical.choice`, and `Quot.sound`. Failed development
logs remain separate. No `sorry`, custom axiom, native evaluator, C++ output,
or hash is a proof premise. The checker and kernel verify the actual finite
filtered-group statements.

The independent finite subgroup oracle covers 3,649 filtered maps, 172,480
leading-page event equivalences, 158,782 raw-cycle page equations, 129,628
representative-stability equivalences, 87,576 literal crossing equivalences,
and 58,384 no-crossing tests. It explicitly sees 3,762 corrected noncycle
events and 288 exact but inessential crossings. It also checks 87,661
exact-degree and target-essentiality distinctions.

This closes the bridge to the constructed algebraic page system. It does not
identify the finite input groups with Adams pages of topological spectra,
prove the external input differentials, or establish a Kervaire topological
conclusion.
