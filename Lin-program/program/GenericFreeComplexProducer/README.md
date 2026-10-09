# Generic finite free-complex C++ producer

`generic-free-export [INPUT.jsonl|-]` reads a stream of input records and emits one canonical JSON certificate per successful record. Without a filename it reads standard input. Each failed line reports its 1-based line number and, where applicable, its edge `(i,j)`, product `(i,j,k)`, or square-zero source/target location to stderr; processing continues and the final exit status is nonzero if any line fails. Empty streams and blank records are rejected.

Input fields (all required, no duplicates or unknown fields):

- `version`: 1
- `rank`, `n`: Milnor rank and number of free generators
- `homological`, `internal`: n natural-number generator degrees
- `edges`: n*n polynomial coefficients, row-major `i*n+j`

A polynomial is a list of exponent lists, each of exactly `rank` natural numbers. `[]` is zero. A rank-length list of zero exponents is the multiplicative unit. Nulls, negative integers and missing coordinates are rejected. Every nonzero edge must decrease homological degree by one and satisfy the internal-degree equation.

Output preserves the input fields and adds `products` and `witnesses`, each exactly n^3 entries indexed `(i*n+j)*n+k`. Every product is computed from the actual Milnor coproduct expansion; every witness is an `AllCertificate` with exact homogeneous input degrees and finite window covering their sum. Products along every two-step path are summed modulo two and must cancel.

The existing `MilnorCertificates/export.cpp` coproduct routine is reused as untrusted arithmetic. The producer's natural resource limits are rank 1..8, n 0..32, exponents <=32, product degree <=12, one million terms per expansion window, 10MB input lines, and 100MB witness text per record. Exceeding a limit is a diagnostic failure, never an inferred zero result. These limits constrain this producer, not the generic Lean mathematical model. Output is sorted-key compact JSON with a terminating newline, stable under repeated execution.

Build and test:

```sh
make -C program/GenericFreeComplexProducer all test
python3 program/GenericFreeComplexProducer/actual.py
```

`actual.py` extracts every raw S0 resolution generator with t <=4 from `ExtComplexCertificates/actual-s0/resolution.jsonl`, verifies that all differential targets remain in the region, and truncates to rank 3 only after checking all discarded exponents are zero. The resulting n=8 example has 512 product witnesses and two nonzero path products which cancel. `actual_audit.json` pins original generator IDs and input/output/source SHA-256 values. This provenance does not establish that the imported resolution computes the sphere; the Lean conclusion concerns the supplied finite free complex.

`test.py` tests deterministic generation, batch streams, edge dimensions/rank/grading errors, genuine square-zero failure, unknown/duplicate/null fields and empty input. It also writes `tampered_product.json`, `tampered_grading.json`, `tampered_dimensions.json` for the independent Lean checker. Twenty-five producer tests pass, including ranks 1, 2, 5 and 8 and explicit resource-limit failures. Lean import, kernel soundness and actual-example validation are supplied by `ExtComplexCertificates.GenericFreeComplexImport` and its examples; C++ output is never trusted by Lean.

Completed independent validation: `audit.py` rereads the raw source, reconstructs every edge, independently expands all 512 tensor products, compares every witness expansion and output, and checks cancellation. The Lean strict importer, actual `Valid` proof and actual differential-square-zero theorem all compile; Lean rejects all three tampered output fixtures with product/edge/dimension diagnostics.

## Homogeneous matrices and contractions

`generic-components INPUT.jsonl S_MIN S_MAX T_MIN T_MAX` exports every component in the supplied rectangular range. It enumerates complete coordinates in the canonical generator/monomial order, computes differential coefficients using actual Milnor products, and includes every homogeneous product witness. Both adjacent matrices and contraction witnesses are included in each canonical JSONL envelope. See `COMPONENT_FORMAT.md` for the schema, including the explicit zero-module target of degree zero.

The current conservative limits are homological degrees <=31, internal degree <=12, coordinate dimension <=64 and product windows <=12. Input grading is checked even for edges outside the requested range. A failure has input-line/component coordinates and nonzero exit status. Mathematical `nonexact` and `not_complex` results remain explicit output records, with no fabricated contraction.

```sh
program/GenericFreeComplexProducer/generic-components \
  program/GenericFreeComplexProducer/actual_t4.input.jsonl 0 4 0 4
```

`actual_components.jsonl` contains all 25 actual S0 components in this range: 24 finite exactness candidates and the nonexact ordinary degree `(0,0)` unit. `component_test.py` independently reconstructs the full coordinate list, every actual Milnor product coefficient, both matrices and each contraction identity; all checks pass, together with a deliberately noncomplex modification and grading rejection outside the requested range. Lean coordinate completeness/order is proved by `GenericHomogeneousCoordinates`; `GenericDifferentialCoordinates` and `GenericComponentExactness` establish the actual differential and contraction semantic bridge. `GenericComponentExamples.lean` proves all 24 positive `ComponentExact` statements and rejects the ordinary unaugmented origin. These t<=4 examples have passed the shared kernel build.

Component strictness tests also reject missing/duplicate/unknown fields, null values and empty input, and verify continued processing with a failing middle line. Six parser/batch tests plus noncomplex, off-range grading and two resource-recovery tests pass. `status` is a producer classification only; Lean must independently verify products, coordinate coverage, differential correspondence and contraction identities.

The reviewed producer also supports the complete actual t<=8 generator region without raising caps: 16 generators and 4,096 products. `actual_t8_components.jsonl` covers the full 81-cell square 0<=s,t<=8 (45 triangular cells plus 36 above-diagonal cells), not the smaller 45-cell rectangle s<=4,t<=8. Independent source/tensor/coordinate/contraction checks pass. `GenericComponentT8/` now records all 28 expected Lean files current: the complete generic complex validity proof, 80 actual `ComponentExact` theorems and origin checker rejection across all 81 cells.
