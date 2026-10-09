# Pages of an actual filtered additive map

This directory constructs quotient groups and a differential from an actual
filtered additive homomorphism. It does not package a desired conclusion into
a soundness field. All subgroup, map and representative calculations quantify
over the entire groups, with no finite row-list completeness convention.

Let `F` and `G` be decreasing filtrations of additive abelian groups `A` and
`B`, and let `f : A ->+ B` preserve filtration. For a source filtration `s`
and length `n`, the construction is:

```
Z_n = F_s intersect inverse_image(f, G_(s+n))
H_n = F_(s+1) intersect inverse_image(f, G_(s+n))
source page E_n = Z_n / H_n
target page T_n = G_(s+n) / (G_(s+n+1) + f(H_n))
d_n : E_n ->+ T_n,  [x] |-> [f(x)]
```

Lean uses actual `AddSubgroup`s, restrictions to the numerator subgroups,
and `QuotientAddGroup.lift`. The proof that every source relation maps to zero
establishes well-definedness. The resulting `differential` is an actual
`AddMonoidHom`, hence it preserves addition and zero by construction.

`differential_zero_iff` proves that `d_n[x]=0` exactly when some `h in H_n`
satisfies `f(x-h) in G_(s+n+1)`. Thus the original image need not already be
deeper: a higher-source correction can be necessary.

`differential_eq_iff_extension` proves equality to the class of `y` exactly
when there is an actual representative `a` with `a-x in H_n` and
`f(a)-y in G_(s+n+1)`. `differential_eq_iff_leading_extension` replaces `H_n`
in that statement by the ordinary higher subgroup `F_(s+1)`: the target
condition and membership of x,y in the indicated numerators imply that the
source correction automatically belongs to `H_n`. These are proved
equivalences to the existing coset extension semantics, not assumed
identifications of an undefined page with a quotient.

## Next length and length zero

`nextToCurrent` sends an unchanged representative in `Z_(n+1)` to its current
source class. This descends to source quotients and is injective because
`Z_(n+1) intersect H_n = H_(n+1)`. Its image is exactly the kernel of the
constructed differential: the zero-differential witness `h` supplies the
lift `x-h`. `nextPageEquivKernel` is the actual additive-group equivalence

```
E_(n+1)  ≃+  ker(d_n).
```

This is the source side of a two-term filtered map construction, where there
is no preceding chain term contributing source boundaries.

`TargetNext.lean` constructs the other side while fixing the actual target
filtration `t=s+n+1`. `targetAdvance` is the surjective map
`T_(s+1,n) -> T_(s,n+1)` induced by the unchanged target representative. Its
kernel is exactly the range of `d_(s+1,n)`. The resulting actual additive
equivalence `targetNextEquivCokernel` is

```
T_(s+1,n) / image(d_(s+1,n))  ≃+  T_(s,n+1).
```

The index shift is necessary because target filtration stays fixed while
the extension length increases. Both source-kernel and target-cokernel steps
are now constructed. No preceding source term or following target term is
present in this two-term complex.

The formulas include `n=0`. Filteredness proves `Z_0=F_s`, `H_0=F_(s+1)`,
and `G_(s+1)+f(H_0)=G_(s+1)`. Consequently the length-zero differential is
the ordinary associated-graded map. No positive-length assumption is hidden.

## Nontrivial examples

`Examples.lean` uses `A=Z x Z`, `F_0=A`, `F_1={0} x Z`, `F_2=0`, and
`B=Z`, `G_0=G_1=Z`, `G_2=0`.

For `f(x,y)=x`, the class of `(1,0)` has nonzero length-one differential.
For `f(x,y)=x+y`, that same source class is nonzero and has raw image `1`,
but its quotient differential is zero. The nonzero correction `(0,1)` changes
it to `(1,-1)`, a nonzero next-page class mapping back to the original class.
These proofs ensure that the construction admits both a nonzero differential
and a nontrivial correction; zero groups cannot make the assertions vacuous.
`TargetExamples.lean` additionally proves that a nonzero target class for
the sum map is killed by the next target step because it is a differential
image, while the corresponding target class for the first projection is
retained and stays nonzero.

## Scope and verification

This construction narrows the missing filtered-map algebra identified in
`GeneralizedLeibnizAudit/README.md`. It does not identify the groups with the
paper's ESS, supply synthetic/lambda objects, prove its three no-crossing
definitions equivalent, establish convergence,
or prove Kervaire Theorem 6.1. The source index and length here are explicit
algebraic indices; a paper-specific reindexing and detection comparison remain
mathematical work. No topology or database record is trusted by these proofs.

Run the serial direct build and finite independent semantic replay:

```sh
python3 program/FilteredMapExtension/compile.py
python3 program/FilteredMapExtension/review.py
```

The five Lean leaves print 25 standard-only axiom reports.
There are no admitted proofs, added axioms, or native-decision oracles.
`nextPageEquivKernel` is noncomputable only because the inverse of a proved
bijective homomorphism is selected by standard classical choice.
Failed development logs are retained with their hashes and are not counted
as successful verification. Hashes record artifacts, not mathematical truth.
