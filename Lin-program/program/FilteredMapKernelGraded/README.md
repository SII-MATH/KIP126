# Actual kernel and stable source pages

`Basic.lean` equips the actual additive kernel of the input homomorphism
with the source-induced filtration. Its associated graded maps injectively
to every constructed source page. This is a map of actual quotient groups,
with the representative formula and injectivity proved.

If `G_(s+n)=0`, every surviving representative is in the actual kernel, so
the map is surjective and gives `SourcePage(s,n) = gr_s(ker f)` up to additive
isomorphism. More generally a bound `G_q=0` gives this comparison whenever
`q <= s+n`. This is a bounded-target convergence statement, not an assumption
that the imported finite data describes a bounded Adams filtration.

`Examples.lean` includes an obstruction to omitting the hypothesis: the
identity of Z/2, with a concentrated source filtration and constant nonzero
target filtration, has a nonzero survivor on every source page but no
nonzero actual kernel. The kernel-to-source comparison is proved not
surjective at every length. A bounded identity example uses the general
stable comparison.

Actual Adams filtrations, completeness for unbounded filtrations, and
topological realization remain separate mathematical obligations.
