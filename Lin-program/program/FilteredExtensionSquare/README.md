# Quotient extension equations in a commuting square

`HasExtension F G f s n x y` means that the leading input `x` has a
representative on the constructed extension source page, and its induced
quotient differential is the requested output `y`. It includes membership
of `x` and `y` in their indicated filtration levels. The representative is
allowed to differ from `x` by a higher-source correction: the original `x`
need not already have image in the required target filtration.

`hasExtension_iff` proves that this definition is equivalent to an actual
coset extension. It derives both directions from the already constructed
filtered-map quotient differential, without storing an identification or
the desired result in a proof field.

For a commuting square with maps `f,p,q,g`, `square_transfer` proves:

```text
f: x -> y, length n
p: x -> z, length m
g: z -> w, length l
--------------------------------------
q: y -> w, length m+l-n, if n <= m+l
```

The hypotheses require absence of page-defined crossings on either first
side and on the last side. These crossings use the actual quotient
differentials and exact leading degrees from `FilteredMapExtension`.
The proof derives all-representative stability, constructs the fourth
coset witness, and returns an equation on the actual quotient extension
page. No `sound` field or fourth extension premise is used.

`Examples.lean` constructs a nonzero square over the integers. It also
checks that `(1,0)` under the sum map has image1 outside target filtration2,
while correction to `(1,-1)` gives a valid length2 extension to zero.
Thus replacing `HasExtension` by a condition on the uncorrected raw
representative would lose valid extensions.

This proves a filtered additive-group version of the representative
argument used in the paper's extension square. It does not identify these
groups with homotopy groups or synthetic objects, construct lambda-truncated
spectra, or prove the classical/synthetic comparison theorems needed for
Kervaire Theorem6.1.

From the repository root:

```sh
python3 program/FilteredExtensionSquare/compile.py
python3 program/FilteredExtensionSquare/compile_examples.py
```

All three direct compilations passed, with six standard-only axiom reports.
The module source/log/object hashes are recorded separately for each leaf.
There are no admitted proofs, custom axioms or trusted producer assertions.
