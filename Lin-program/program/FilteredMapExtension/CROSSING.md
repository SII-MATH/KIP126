# Crossing defined by the constructed quotient differential

`Crossing.lean` defines `CrossingAt F G f s p` through a genuine differential
equation on the constructed filtered-map pages. A witness has a source degree
`t` with `s < t <= p`, an exact source leading representative in filtration t,
and an exact target leading representative in filtration p, satisfying the
length `p-t` quotient differential equation. Index transport identifies
`t+(p-t)` with `p`. Length zero is included.

The definition deliberately does not require that the target class in the
extension quotient be nonzero. A nonzero leading target can already lie in
the image of a higher-source correction and thus vanish in that quotient.

`crossing_iff_higher_image` proves, without an identification assumption:

```
CrossingAt s p <-> exists h in F_(s+1), ExactAt G p (f h).
```

The forward implication uses the proved quotient-equation/ordinary-extension
equivalence to obtain an actual representative. Adding a deeper element
preserves the exact leading class. Conversely filteredness implies that an
element with exact image filtration p cannot lie in `F_(p+1)`. A finite
induction finds its exact source degree in `[s+1,p]`. No separated filtration,
infinite search, convergence theorem or global bound is needed.

`NoPageCrossing` excludes these quotient equations in an arbitrary interval.
`noPageCrossing_iff` identifies it with the previous all-element
`FilteredRepresentativeCrossing.NoCrossing`. For `[s+1,q+1)`, filteredness
supplies the required lower image bound automatically. With `s <= q`,
`noPageCrossing_iff_higher` proves equivalence to preservation of higher
corrections into `G_(q+1)`. Given one extension, the corresponding theorem
gives stability of every representative. `square_transfer_of_noPageCrossing`
uses these page-defined hypotheses on either first side and on the final
side to deduce the fourth extension in an actual commuting additive square.

The examples include a length-zero crossing for the unshifted sum map, and
a positive-length inessential crossing for the shifted sum map. In the latter,
both leading representatives are nonzero but the actual quotient differential
equals zero. This rules out silently replacing crossings by essential/nonzero
extension-page differentials.

This closes an algebraic comparison with the earlier all-image crossing
predicate for the pages constructed here. It does not identify those pages
with the paper's ESS, resolve its other Z/B conditions and reindexings, or
prove the synthetic comparison and Theorem 6.1. In particular the separate
classical and truncated definitions in the fixed-paper audit remain distinct.

The leaf directly compiles with nine standard-only axiom reports. Run:

```sh
python3 program/FilteredMapExtension/compile.py Crossing
python3 program/FilteredMapExtension/crossing_review.py
```

The earlier five leaves and their direct records remain unchanged.
