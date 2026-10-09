# Completeness for finite filtered extension certificates

This module proves the converse of the existing certificate soundness
theorem, for the exact existing `FilteredExtensionCertificates.ResultValid D`:

```lean
theorem check_complete (D) (valid : ResultValid D) :
    ∃ cert, FilteredExtensionCertificates.check D cert = true

theorem check_exists_iff (D) :
    (∃ cert, FilteredExtensionCertificates.check D cert = true) ↔ ResultValid D
```

No existing checker, semantic definition, or accepted certificate format is
changed. `Data` still specifies the complete finite source and target
filtrations with zero tails, the actual F2 linear map, page indices, original
source vector, and requested output vector. `ResultValid` still requires
both filtrations to decrease, the whole linear map to preserve them, both
typed memberships, and the actual induced quotient differential equation.

## Why all witness fields exist

`Linear.lean` proves that evaluating a matrix on an explicit unit vector
returns its corresponding column. A subgroup inclusion therefore supplies
a preimage for every source matrix column. Choosing those preimages as
columns gives the exact matrix factorization checked by `checkFactor`.
The same construction after applying the input map gives `checkPreserves`.
No independent-column, rank, dimension, or zeroth-fullness hypothesis is
needed; empty and redundant generator families are covered.

Whole range membership is precisely the existence of a `checkImage`
preimage witness. The existing quotient equation equivalence supplies an
actual extension representative with its source and target corrections;
those two range memberships supply the remaining witness vectors.
`Basic.lean` assembles all fields, including factors for every declared
filtration level. It also proves that `checkDecreasing` witnesses exist if
and only if the complete range filtration is antitone.

`chooseCertificate` is explicitly noncomputable: it uses a proof of
`ResultValid` and classical choice. It proves existence, and is not passed
off as an executable exporter.

## Executable reference search

`Search.lean` constructs explicit lists of Boolean vectors, matrices, and
certificate fields, proves every certificate occurs, and applies the
unchanged executable checker. Its theorems include:

```lean
search D = none ↔ ¬ ResultValid D
(∃ cert, search D = some cert) ↔ ResultValid D
```

This is a terminating finite reference algorithm, not an efficient
producer. It enumerates `2^B` certificates, where the field bit count is

```text
B = depth * (ha*ha + hb*hb + hb*ha) + 2*ha + 3*hb + a.
```

The explicit implementation allocates lists, so use it only for small
inputs. Efficient C++ generation remains the appropriate route for larger
inputs. This theorem does not establish the completeness of that particular
C++ implementation, its resource bounds, or its wire parser.

The reference tactic needs only the input and requested result already
stored in `Data`:

```lean
example : ResultValid mySmallInput := by
  filtered_extension_search
```

It applies `searchCheck_sound` and `decide +kernel`; search results enter the
proof only through the kernel-checked theorem. For normal-sized externally
produced certificates, continue to use the existing tactic:

```lean
example : ResultValid myInput := by
  filtered_extension_cert using myCertificate
```

The existing import and diagnostic APIs remain the mechanism for physical
record, field, row, and column failures. Exhaustive-search failure can also
be used as a proof of `¬ ResultValid`, as illustrated in `Examples.lean`.

## Validation and boundaries

`Examples.lean` checks zero dimensions and depth, a nonzero identity
equation, an actual higher-source correction, and rejection of a wrong
output, an out-of-depth source, a nondecreasing filtration, and a
non-preserving map. These are semantic boundary examples; no duplicate
Gaussian-elimination test or producer-mirroring oracle is added.

`compile.py` records actual direct compile exit codes and source/log/object
hashes, and `assert_current.py` validates the final records and printed
axiom dependencies. The final four modules all completed with observed exit
code 0; all 28 printed reports contain only `propext`, `Classical.choice`,
and `Quot.sound`. `proof-review.json` records the checked evidence.
Failed intermediate elaboration logs are retained
separately and are not counted as proofs.

```bash
python3 program/FilteredExtensionCertificateCompleteness/compile.py
python3 program/FilteredExtensionCertificateCompleteness/assert_current.py
```

This establishes certificate completeness only for the specified finite
algebraic semantics. It does not prove topology realization, actual Adams
filtration completeness or boundedness, convergence, or all Kervaire paper
claims. Hashes are evidence identifiers, not mathematical assumptions.
