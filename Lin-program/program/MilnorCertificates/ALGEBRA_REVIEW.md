# Mathematical scope review: Milnor coproduct and dual multiplication

This review examines the definitions and proof chain through
`PolynomialExtraction.lean`, `DualAlgebra.lean`, `Counit.lean`, `Unit.lean`, and `BundledDual.lean`. It makes no changes to Lean
sources. No mathematical soundness defect was found in this chain. The scope
restrictions below are part of the proved statements, not missing assumptions
silently supplied by the exporter.

## Exact objects and conclusions

A `Monomial` is a list of natural-number exponents; list position zero represents
xi_1. A rank-r monomial is a list of length r. `Polynomial` is a list of such
monomials, with each coefficient defined as multiplicity modulo two. Lists are
representations, not canonical forms or quotient types.

`generatorCoproduct r k` implements
Delta(xi_k) = sum_(i=0)^k xi_(k-i)^(2^i) tensor xi_i, with xi_0 = 1.
`coproduct r m` extends this formula by the actual tensor-list powers and fold.
`coproduct_coassociative r m hm` proves equality of every triple parity
coefficient of the actual left and right iterated expansions, assuming only
`hm : m.length = r`. There is no degree cutoff, generator cutoff smaller than
r, positivity assumption on r, supplied coassociativity hypothesis, or finite
sample enumeration in this theorem.

The proof evaluates these expansions in every characteristic-two commutative
ring, proves the generator identity by Frobenius and an explicit triangular
index bijection, and propagates it through the actual fold. It then specializes
to `MvPolynomial (Fin 3 × Nat) (ZMod 2)`. Three distinct variable slots distinguish
the tensor factors. `tripleEncoding_injective` requires equal lengths in each
factor; the actual coproduct arity lemmas supply exactly those hypotheses.
`universalTriple_coefficient` identifies polynomial coefficients with list
multiplicities cast to ZMod 2. Triples of incorrect arity are absent on both
sides and have zero parity coefficient.

`DualFunction` is `Monomial -> ZMod 2`. `dualMul r f g m` is the finite sum over
`coproduct r m` of `f left * g right`. `dualMul_assoc` proves associativity when
`m.length = r`. The input functions may have infinite support and need not be
homogeneous: each individual coproduct expansion is finite. This is a theorem
about this explicit operation, not an assumed abstract associative algebra.

`pairTensor_scalar` connects the pre-existing Bool pairing directly to the
ZMod 2 sum. `certified_dualMul` connects an `IsMilnorProductAll` proof to equality
with `dualMul` on every rank-r input monomial. Finally,
`certified_products_associative` takes four existing product proofs for ab, bc,
(ab)c, and a(bc), and proves equality of the two output coefficients for every
rank-r monomial. It does not assume associativity or trust either output.

`Counit.lean` defines the counit as the ZMod 2 indicator of
`unitMonomial rank`. `counit_left_coeff` and `counit_right_coeff` prove the
actual coproduct counit identities coefficient by coefficient for arbitrary
rank-r monomials. `Unit.lean` defines `dualUnit` from that counit and proves
`dualMul_unit_left` and `dualMul_unit_right` for every dual function on every
rank-r input. `unitPolynomial_functional` identifies the singleton polynomial
`[unitMonomial rank]` with this unit functional. `unitPolynomial_left` and
`unitPolynomial_right` directly prove the corresponding `IsMilnorProductAll`
statements for any polynomial whose terms have rank r. These results do not
require homogeneous inputs or finite-window certificates.

## Edge cases and representation behavior

- Rank zero is included. The only rank-zero monomial is `[]`; its coproduct is
  the singleton tensor of two empty lists. Both iterated expansions are the
  singleton triple of empty lists. Generator substitution at xi_0 is explicitly
  handled as the unit, and the empty fold/product/sum cases are covered.
- Values of a dual function on lists whose length differs from r are unrestricted.
  For a rank-r input, every coproduct factor has rank r, so these extraneous
  values cannot affect the product. `dualMul_congr` formalizes this dependence
  only on rank-r values. Associativity was not stated as unrestricted equality
  of functions on all possible list lengths.
- `coproduct` is a total program even on wrong-length inputs: it reads the first
  r coordinates, supplies zero for missing entries, and ignores excess entries.
  The semantic theorems reviewed here retain their explicit rank hypothesis;
  totality alone does not authorize treating malformed inputs as valid data.
- Repeated polynomial terms and repeated expansion terms are allowed and are
  essential to the representation. Even multiplicities cancel in characteristic
  two. No proof assumes duplicate-free output. `weighted_sum_of_parity` proves
  that equal parity coefficients imply equal weighted sums, so duplicates cannot
  undermine the passage from coassociativity to dual associativity.
- Results compare coefficients, not list order, number of duplicate pairs, or
  literal equality of output lists. Two distinct lists may represent the same
  polynomial, as intended.
- The universal coassociativity and dual associativity theorems impose no
  homogeneous-polynomial hypothesis. The certificate predicate
  `IsMilnorProductAll` also permits inhomogeneous lists. The current `checkAll`
  route obtains that predicate using homogeneous-degree bounds for each input;
  this is a restriction of that automatic certificate route, not a hidden
  restriction on the general algebraic theorem.
- The certified associativity conclusion is explicitly quantified over rank-r
  monomials. The four predicates also enforce rank-r output support. An
  arbitrary wrong-rank monomial therefore has zero output coefficient on both
  sides, but a separate globally quantified corollary is not supplied here.
- Rank stability is proved separately under its degree and rank-bound
  hypotheses in `RankStability` and `StableProduct`. These hypotheses must not
  be dropped when advertising a finite certificate as valid at larger ranks.

## What is not established by this chain

The code now proves the general coefficientwise counit identities and
two-sided convolution unit laws described above, in addition to its
computational unit helpers. It does not define an antipode or prove its laws,
and it does not provide a bundled Hopf algebra structure. The unit results do
not by themselves supply these additional structures.

`BundledDual.lean` now defines `RankDual rank` on the fixed-arity subtype
and gives it a genuine Mathlib `Ring` instance. Addition is pointwise, while
multiplication is the actual coproduct convolution, not pointwise function
multiplication. `certified_rankDual_mul` turns `IsMilnorProductAll` into equality
in that ring; `unit_rankDual` identifies its unit polynomial with one. This
full function space allows infinite support. No claim of finite support,
grading, Steenrod identification, or Hopf structure follows from that instance.

The chain does not construct a quotient of list representations, bundle a graded
coalgebra, or prove a general finite polynomial representative/executable product constructor
for every pair of inhomogeneous input polynomials. Associativity of the explicit
function operation and of already certified products is the actual conclusion.

It does not identify this algebra with Steenrod operations on topological
cohomology, prove the topological Milnor theorem, prove an Adem presentation
isomorphism, or derive the Adams spectral sequence from spectra. Consequently,
these algebraic results alone do not identify imported finite complexes with
free Steenrod resolutions or their cohomology with the full topological Ext
objects used in the Kervaire paper. Such identifications remain separate work.

## Verification and trust

Every new Lean module in this chain was compiled individually with Lean 4.32.2
and one Lean worker. The final `#print axioms` outputs for
`coproduct_coassociative`, `dualMul_assoc`, `certified_dualMul`, and
`certified_products_associative`, `dualMul_unit_left`, `dualMul_unit_right`,
`unitPolynomial_left`, and `unitPolynomial_right` contain only `propext`, `Classical.choice`, and
`Quot.sound`. These are the documented standard Lean dependencies; none is a
new mathematical assumption introduced for this development. There is no
`sorry`, `sorryAx`, custom axiom, `native_decide`, or C++ result assumption in
the reviewed chain. Noncomputable polynomial encodings occur in the semantic
proof, not in the certificate checker.

The parent integration process owns the complete Lake build and regression
logs. This review does not substitute an individual-module compile for that
full-project verification.
