# Proposition 7.8: exact scope and application boundary

Source is arXiv2412.10879v2, Proposition7.8, in the locally downloaded
`AdvancedRuleCertificates/kervaire-v2.html`. It asserts exactly one of:
(1) h6^2 survives to infinity; (2) nonzero d12(h6^2)=h1 h4 x109,12.
Furthermore (2) is equivalent to the conjunction of:
(3) d6(x126,8,4+x126,8)=0;
(4) some synthetic theta5 has square detected by lambda^6 h0^2 x124,8;
(5) some lift of h0^2 x124,8 has lambda^3 eta multiple detected by
lambda^6 h1 h4 x109,12.

Conditions(4)/(5) include existential lifts and detection, not only scalar
equalities. Lemmas7.10/7.11 upgrade the existential choices to universal
choices. These are synthetic homotopy statements, not database outputs.
The proof uses Burklund--Xu's obstruction equation, synthetic rigidity,
Fact7.6(1)--(4), Remark7.7, the 101/105 elimination, tmf detection and
filtration bounds. The final application uses Proposition7.9 to exclude
the conjunction of(3) and(5).

## Actual local coordinates

`Reduction.lean` defines the exact finite E2 vectors:

| Element | (s,t) | Global basis IDs | Local coordinates |
|---|---|---|---|
| h6^2 | (2,128) | 2314, mon69,2 | e0 in dimension1 |
| x126,8,4+x126,8 | (8,134) | 2700+2703 | e0+e3 in dimension6 |
| h1 h4 x109,12 | (14,139) | 3080 | e1 in dimension3 |
| h0^2 x124,8 | (10,134) | 2694 | e4 in dimension5 |

These agree with actual S0 basis rows and the existing NamedElement
certificates fact7.6-1/2/3. Their E2 coordinates must not be reused as
E12 quotient coordinates without a proved comparison. `target_nonzero`
proves only vector nonzero, not nonzero in E12.

## Proven application and missing mathematics

`reduced_dichotomy` proves an exclusive alternative from a page-indexed
vector-valued differential with every page except12 zero and the page12
value constrained to zero or a specified nonzero target. It quantifies
over all pages, so a finite cutoff is not silently introduced.
`survival_from_detection` proves the final logical application from that
reduced differential, the forward synthetic-detection implication, and
the extension obstruction. The desired survival statement is not itself
assumed. Both results are conditional applications, not Proposition7.8
claimed as completed.

The existing finite machinery can supply polynomial coordinate bindings,
finite cycle/boundary/nonimage claims, candidate exclusions, and quotient
comparisons. It does not yet supply the all-pages reduction, convergence
cutoff, the synthetic detection equivalence(2)<->(3)&(4)&(5), or
Proposition7.9. In particular the exclusive alternative is not enough to
claim the full Proposition7.8: the reverse detection direction and the
existential/universal lift comparison remain unformalized.
