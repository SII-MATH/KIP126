# Milnor coproduct certificates

`Basic.lean` defines the prime-two polynomial dual coproduct
`Delta(xi_k) = sum_i xi_(k-i)^(2^i) tensor xi_i`, extends it
multiplicatively, and pairs its terms with two input dual polynomials.
Coefficients are multiplicities modulo two, including cancellation of duplicate
terms. Coordinate zero means xi_1, and xi_0 is the unit.

`IsMilnorProduct window left right output` checks equality of all dual
coefficients in an explicitly declared rank/degree window. It is deliberately
a finite-window statement, not a theorem about the full unbounded Steenrod
algebra or topological cohomology. A bridge identifying this coalgebra with
the dual Steenrod algebra is not provided. The basis is generated exhaustively
by exponent vectors 0..degree, filtered by weighted degree.

`Certificate` contains version 1, the exact window and a complete ordered list
of coproduct expansions. The checker verifies the producer expansions against
the coproduct definition and checks every output coefficient, including zeros.
`check_sound` proves acceptance entails `IsMilnorProduct`. The exporter is not
trusted. `generate` produces the same certificate entirely within Lean.

```lean
import MilnorCertificates.Examples
open MilnorCertificates
example : IsMilnorProduct smallWindow [[2,0]] [[1,0]] [[3,0],[0,1]] := by
  milnor_cert using generate smallWindow
```

Build and export (from program/):

```sh
c++ -std=c++17 -O2 -Wall -Wextra -Wpedantic MilnorCertificates/export.cpp -o MilnorCertificates/milnor-export
MilnorCertificates/milnor-export 2 3 2,0 1,0 '3,0;0,1' > MilnorCertificates/example.json
```

Arguments are rank, degree, left, right, output. A polynomial is semicolon
separated exponent vectors, with comma separated natural exponents; `-`
denotes zero. The producer rejects malformed input and limits rank to 1..5,
degree to 0..12 and expansions to one million terms. These resource limits
do not change Lean semantics. Output is canonical compact JSON with sorted
keys; a pair is encoded as a two-element array. One invocation outputs one
JSONL row and can be batched by a caller. Output is buffered until all expansion
limits have passed, preventing partial certificates on resource failures.

`Import.parse` (namespace-level name `MilnorCertificates.parse`) strictly checks
canonical serialization, rejecting unknown and duplicate fields. `decode` also
checks the mathematics; `decode_sound` proves successful decoding yields the
same semantic theorem. `milnor_json% "..."` imports a literal JSON bundle into
Lean data. Apply `milnor_cert using bundle.certificate` to the explicit goal;
the tactic recomputes the Boolean check through kernel reduction.
`milnor_bundle% "MilnorCertificates/example.json"` reads a file at elaboration.
The current Lean API does not expose an external-file dependency registration
hook here: recompile a consuming Lean file after changing imported JSON.

`diagnose` reports version/window mismatches, out-of-window inputs, incomplete
tables and the exact zero-based basis row and exponent vector for coproduct or
product coefficient failures. An imported `Bundle` is data, never an axiom.
No `sorry`, custom axiom, or `native_decide` is used. The audited standard Lean
axiom dependencies are `[propext, Quot.sound]` for `check_sound` and
`[propext, Classical.choice, Quot.sound]` for `decode_sound`.

Grading.lean proves support directly from the actual coproduct: every tensor
term has total weight equal to its input. Homogeneous products have zero
coefficients in all other degrees without a degree cutoff. As an application,
Sq1 squared vanishes on every rank-two monomial at every degree. This removes
the degree cutoff for that fixed-rank statement; cross-rank compatibility and
topological identification remain separate obligations.

## All degrees at a fixed rank

`GeneralTactic.lean` defines `IsMilnorProductAll rank left right output`,
which quantifies over every monomial of that rank. `AllCertificate` wraps
the existing producer certificate with both input degrees. `checkAll_sound`
uses proved coproduct grading and complete window enumeration to discharge
all omitted degrees. The checker rejects incorrect homogeneity, rank, and
insufficient degree bounds. `diagnoseAll` reports these failures in addition
to the existing indexed expansion diagnostics.

```lean
import MilnorCertificates.GeneralTactic
open MilnorCertificates
example : IsMilnorProductAll 2 [[2,0]] [[1,0]] [[3,0],[0,1]] := by
  milnor_cert_all using (⟨generate ⟨2,3⟩, 2, 1⟩ : AllCertificate)
```

For C++ JSON use `milnor_bundle%` as before, then
`bundle.allCertificate leftDegree rightDegree`; both `lin_cert` and
`milnor_cert_all` check it in the kernel. This interface does not identify
the polynomial dual with topological Steenrod operations.

`bundle.inferAllCertificate` infers candidate input degrees from the first
terms; the checker still checks every term. `CheckAllFile.lean` performs
JSONL batch checks with line and coproduct-row diagnostics.

## Stability under increasing rank

`RankStability.lean` proves coproduct and pairing compatibility with zero
padding; `StableProduct.lean` proves the all-degree product remains valid
in every higher rank when the first omitted generator has degree greater
than the certified window. `StableTactic.lean` checks this extra inequality.

```lean
import MilnorCertificates.StableTactic
open MilnorCertificates
example : IsStableMilnorProduct 2 [[2,0]] [[1,0]] [[3,0],[0,1]] := by
  milnor_cert_stable using (⟨generate ⟨2,3⟩,2,1⟩ : AllCertificate)
```

The conclusion quantifies over every higher rank and every monomial in it.
A regression checks that the rank-one truncated Sq(2)Sq(1) identity passes
`checkAll` but fails `checkStable`, because xi_2 first appears in degree three.
No identification with the topological Steenrod algebra is asserted.

## General coproduct algebra work

Frobenius, GeneratorEvaluation, FoldEvaluation and TriangleReindex prove
characteristic-two power identities and their connection to the actual
executable coproduct. IteratedEvaluation proves that both iterated
coproducts have equal evaluations in every characteristic-two commutative
ring, for every monomial of the declared rank. `PolynomialExtraction.coproduct_coassociative` now extracts universal
polynomial coefficients and proves every triple parity coefficient equal,
for arbitrary rank and monomial. This completes coassociativity of the
implemented coalgebra; it is not an identification with topological
Steenrod operations.

`DualAlgebra.lean` defines convolution on arbitrary `Monomial -> ZMod 2`
functions by the actual coproduct and proves its associativity.
`pairTensor_scalar` connects the Boolean checker to this convolution.
`certified_products_associative` takes four existing `IsMilnorProductAll`
proofs and proves every coefficient of the two parenthesized outputs equal.
It does not assume coassociativity or rely on C++ multiplication.


`Counit.lean` proves the actual coproduct's left and right counit identities
coefficientwise for arbitrary rank. The counit is the ZMod 2 indicator of the
all-zero exponent monomial. `Unit.lean` proves both convolution unit laws for
arbitrary dual functions on rank-sized inputs, including rank zero.
`unitPolynomial_functional` identifies the polynomial `[unitMonomial rank]`
with this unit; `unitPolynomial_left` and `unitPolynomial_right` prove its
`IsMilnorProductAll` product statements for any polynomial of the same rank,
without a homogeneity requirement.

These results establish the counit and multiplication unit laws for the
implemented operations. An antipode, a bundled Hopf algebra, and identification
with topological Steenrod operations remain unproved. See
[ALGEBRA_REVIEW.md](ALGEBRA_REVIEW.md) for exact arity, duplicate-term, and
certificate-scope details.


`BundledDual.lean` supplies a genuine `Ring (RankDual rank)`, where `RankDual`
is the function space on the subtype of monomials with exactly that rank.
Its multiplication is coproduct convolution; its addition is pointwise and its
unit is the counit functional. `certified_rankDual_mul` translates existing
`IsMilnorProductAll` proofs into multiplication equalities in this ring.
The ring admits infinite-support functions and is not claimed to be the
finite-support graded Steenrod algebra.
