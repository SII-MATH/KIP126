# Audit of the paper's Generalized Leibniz Rule

Theorem 6.1 is not yet formalized by the existing libraries. Its ordinary
same-page product rule, trace-multiplication compatibility, finite affine
exclusions and short-exact-sequence connecting lemmas are useful ingredients,
but none defines the required synthetic extension spectral sequences or proves
their no-crossing comparison with classical Adams differentials.

This audit adds a proved, nonvacuous representative-square lemma with a
counterexample when the final stability condition is removed. It does not
claim to prove Theorem 6.1.

## Fixed source and exact statement

The source is arXiv:2412.10879v2, dated 2025-02-22, read from the preserved
`AdvancedRuleCertificates/kervaire-v2.html`. `extract.py` selects exact HTML
IDs and replaces each MathML node by its original TeX `alttext`; the resulting
26 excerpts, theorem proof and hashes are in `paper-excerpts.json` and
`paper-excerpts.md`. No new download or unstated paper version is used.

Let `f : X -> Y` be a map of classical spectra. In Notation 3.19, `e(f)` is
**0 when AF(f)=0 and 1 when AF(f)>0**; it is not the numerical Adams filtration.
Theorem 6.1 assumes:

- `2 <= n <= r`, `e(f) <= m <= n-2+e(f)`, and `l >= e(f)`.
- `x in Z_(r-1)^(s,t)(X)` and
  `y in Z_(r-1-m+e(f))^(s+m,t+m)(Y)`.
- `x_infty in Z_infty^(s+r,t+r-1)(X)` and
  `y_infty in Z_infty^(s+r+l,t+r+l-1)(Y)`.
- `(1) d_r(x)=x_infty`.
- `(2) d_m^(f,E_n)(x)=y`.
- `(3) d_l^(f,E_infty)(x_infty)=y_infty`.
- `(4)` either differential (1) has no crossing on E_n or extension (2)
  has no crossing, and `(5)` extension (3) has no crossing.

The conclusion is `d_(r+l-m)(y)=y_infty`.

Notation 3.10 defines `Z_r` as the subgroup of the **initial E2 group** on
which d2 through dr vanish, and `B_r` as accumulated images through dr.
`Z_1=E2`, `B_1=0`, `Z_infty=intersection Z_r`, `B_infty=union B_r`, and
`B_infty` is contained in `Z_infty`. Thus `x_infty` can already be an Adams
boundary: it is explicitly the target of d_r(x). It need not be a nonzero
permanent class. A classical equation `d_r(x)=y` denotes equality modulo
`B_(r-1)` in the target E2 group; it is not literal equality of raw basis rows.

Definition 5.4 defines the `(f,E_r)` extension via the synthetic map
`fhat_(r-1)` and the equation
`d_n^(fhat_(r-1))(x)=lambda^(n-e(f))*y`. Its source and target live in the
subgroup and double quotient of equations (5.2)/(5.3), which involve both
classical Z/B and extension-ESS boundaries. In particular, extension length
and ordinary Adams differential length are different notions.

## Exact no-crossing meanings

Definition 2.7 quantifies over **other** f-extensions from every higher source
filtration `s+a`, `a>0`, whose nonzero target has filtration in a specified
interval ending at the original target filtration. It is not a check that two
chosen summands cancel. Proposition 2.10 characterizes no-crossing in terms of
all actual homotopy representatives detected by the source class; for a zero
extension target it imposes strict higher filtration on every image.

Definition 4.14 says a crossing of `d_r(x)=y` on E_(n+1) is an essential
`d_(r-a-b)(x')=y'` with source degree `(s+a,t+a)`, target
`(s+r-b,t+r-b-1)`, `0<a<=n-1`, `0<=b<=r-n-1`. For Theorem 6.1's E_n, replace
this n by n-1: `0<a<=n-2`, `0<=b<=r-n`.

Definition 5.9 says a crossing of `d_j^(f,E_R)(x)=y` is an essential
`(f,E_(R-a))` extension with `0<a<=R-2`, `0<=b<=j-a-e(f)`, and target in
`Z_(R-1-j+b+e(f))^(s+j-b,t+j-b)` but outside
`B_(1+j-b-e(f))^(s+j-b,t+j-b)`. The precise Z and B indices cannot be
replaced by one Boolean label or a current-page rank.

## What the proof actually uses

The proof forms the commuting synthetic square

```text
Sigma^(0,e(f)) nuX/lambda^(n-1) --fhat_(n-1)--> nuY/lambda^(n-1)
                 | delta_X                         | delta_Y
                 v                                 v
Sigma^(1,-n+1+e(f)) nuX --------fhat---------> Sigma^(1,-n+1) nuY
```

Proposition 4.6 turns (1) into the delta_X extension
`d_r^delta_X(x)=lambda^(r-n)*x_infty`. Definition 5.4 converts (2)/(3),
and lambda-linearity gives
`d_l^fhat(lambda^(r-n)*x_infty)=lambda^(r+l-n-e(f))*y_infty`.
Propositions 4.16 and 5.10 transfer the no-crossing conditions. Corollary 2.15
then gives the fourth extension in this square. Remark 4.12 identifies it
with the classical d_(r+l-m) equation, including its boundary coset.

This proof does not use May's TC3; that additional triangulated input belongs
to Theorem 6.12. Theorem 6.1 still needs synthetic or equivalently adequate
filtered-tower/connecting-map structures and the stated comparison theorems.

## Existing theorem mapping

| Existing implementation | What it proves | What it does not provide |
|---|---|---|
| `PropagationCertificates/Rules.lean` | DAG replay for one differential with additivity, ordinary Leibniz and commuting maps | Different page lengths, extension-ESS, Z/B representatives or no-crossing |
| `ManualInputObligations/Reference/AdamsRules.lean` | Typed same-page product, degrees, ordinary Leibniz field | Its `GeneralizedLeibnizRule` name is not Theorem 6.1 |
| `AdvancedRuleCertificates/Connecting.lean` | Connecting witness existence, cycle, independence and naturality from genuine short exact differential groups | Synthetic truncations, lambda action, filtration detection or ESS crossings |
| `AdvancedRuleCertificates/Affine*.lean` | All-vector exclusion and quotient nonboundary for a specified finite affine set | A theorem that the set is the actual generalized-rule output |
| `OutgoingCycleFiltrationCertificates` | Z-infinity/outgoing-cycle bridge with actual filtration/quotient realization | f-extensions or their crossing tests |
| `ActualAdamsProductCycleBridge` | Graded same-page square/fourth-power cycles and actual zero-target propagation | Extension length shifts or synthetic no-crossing |
| `ActualAdamsProductTraceBridge` | Product traces from local full-cycle next-page multiplication squares | Theorem 6.1's square of extension spectral sequences |
| `Reference/LinProgramReference/FilteredExtensions.lean` | A specifically defined two-summand leading-term cancellation predicate | Paper Definition 2.7 or 5.9; its similarly named crossing is different |
| `Reference/LinProgramReference/LinProgram.lean` | Rule tags, supplied `sound` functions and propositions | A derivation of the rule from mathematical structures |

## New proved ingredient

`RepresentativeSquare.lean` works with actual additive groups, additive maps,
and higher-filtration subgroups. `Extension` means an actual representative in
the source leading coset maps into the target leading coset.
`HigherMapsInto f H K` means every higher source correction maps into the higher
target subgroup. `representative_stability_iff` proves, given an extension
witness, that this structural condition is equivalent to stability for **every**
source representative. It has the all-lift form relevant to Proposition 2.10.

`square_transfer` takes an actual commuting square, three existential
extension witnesses, higher-correction stability of either first map and of
the last map, and constructs a witness for the fourth extension. It chooses
and transports the common source representative and derives the final coset
equation. The conclusion is not a field or premise. This is a nontrivial
algebraic representative argument underlying the pattern of Corollary 2.15.
Identification with essential extension-ESS differentials and paper no-crossing
is deliberately **not** claimed.

`last_stability_needed` gives an explicit ZMod2 commuting-identity-square
counterexample. The three extensions and first stability hold, but the fourth
extension fails when the middle source coset permits an unchecked correction
under the last map. This is an algebraic counterexample, not a model of the
paper's topology.

The actual paper counterexample is Example 6.8: f=2, n=r=2, m=1, l=2,
e(f)=1, x=h4, y=h0*h4, x_infty=h0*h3^2, y_infty=0. Conditions(1)-(4) hold,
but (3) has the crossing d1^f(d0)=h0*d0. Dropping (5) falsely predicts
d3(h0*h4)=0, whereas Example3.15 records d3(h0*h4)=h0*d0. Its exact text is
preserved; this audit does not turn a paper citation into a Lean theorem.

## Constructed filtered-map pages

`FilteredMapExtension` now constructs the two-term filtered-map pages from
actual additive subgroups and an actual filtered homomorphism. Its quotient
differential is induced by that map. The next source page is proved
additively equivalent to its kernel, and the next target page to the
appropriately indexed cokernel. Equality of a quotient differential is
proved equivalent to existence of an actual leading representative.

Its `Crossing` module defines crossings using these constructed quotient
differentials and exact leading degrees, then proves the equivalence with
higher-source leading images and all-representative stability. It includes
an inessential crossing with zero quotient differential; essentiality is
not silently added to the definition. These results narrow the algebraic
part of item1 below. Identification with the paper's homotopy filtration,
classical/synthetic detection and Definitions4.14/5.9 still needs proofs.

## Minimum missing structures

To turn this ingredient into Theorem 6.1, the implementation still needs:

1. Actual filtered homotopy groups/representative detection, a filtered
   map-ESS construction with its essentiality and boundary quotients, and an
   all-representative no-crossing theorem matching Definitions2.7/5.9.
2. Synthetic lambda-truncated objects or an equivalent tower of actual
   filtered differential/connecting data with maps fhat, delta_X, delta_Y,
   a proved commuting square, lambda action and its degree shifts.
3. The E-infinity identifications with Z_r/B_s, including the double quotients
   in (5.2)/(5.3), without replacing Z-infinity by nonzero permanence.
4. Proofs corresponding to Propositions4.6,4.16,5.10 and Remark4.12, so that
   ordinary/classical equations and no-crossing conditions translate both
   ways with their exact modulus and lambda exponents.

Generic page homology, a multiplicative spectral sequence, or numeric
inequalities for r+l-m alone do not contain these structures. A certificate
may eventually witness finite full-matrix conditions inside these structures,
but must not introduce the fourth extension as an assumed `sound` field.

## Reproduce

```text
python3 program/GeneralizedLeibnizAudit/extract.py
python3 program/GeneralizedLeibnizAudit/compile.py
python3 program/GeneralizedLeibnizAudit/review.py
python3 program/GeneralizedLeibnizAudit/assert_current.py
```

The single new Lean leaf has three standard-only axiom reports. The arithmetic
review enumerates one-bit additive commuting squares, all leading subgroups,
three-extension witnesses and stability conditions, and checks a nonzero
example plus failures after removing a required stability condition. Source
hashes identify the exact paper and implementation inputs; they are not proofs
of the paper's mathematical assertions.
