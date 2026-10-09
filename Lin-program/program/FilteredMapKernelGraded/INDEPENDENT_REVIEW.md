# Independent kernel comparison review

No correctness findings in the reviewed source snapshot.

`Basic.lean:10` defines the actual kernel filtration as the inverse image of
`F_s` under the kernel inclusion, so its underlying subgroup is
`ker(f) intersect F_s`. The map at `Basic.lean:38` is induced by the original
element of the kernel, and the representative formula at line 42 fixes its
meaning. It is not an arbitrary equivalence between finite sets.

The quotient relations are `ker(f) intersect F_(s+1)`. The injectivity proof
at `Basic.lean:47` correctly extracts membership in `F_(s+1)` from equality
on the source page; membership in the actual kernel already follows from
the representatives' types. At `Basic.lean:56`, surjectivity explicitly
requires `G_(s+n) = 0`. It then proves the original representative is killed
by the actual homomorphism. The later-page comparison at line 79 retains
both the vanishing-filtration condition and the index bound.

`Examples.lean:36` proves that the source page of the identity from an
initial filtration to a constant target filtration contains a nonzero
survivor for every page, although the actual kernel is zero. This is a
valid counterexample to dropping the vanishing condition, including for
page zero. No fullness condition on `F_0` is needed for the induced kernel
filtration, and none is inserted into the comparison.

## Independent finite oracle

`independent_review.py` uses literal cyclic groups of all source and target
orders 1--8, all three-level decreasing flags with constant tails, and all
homomorphisms. It uses canonical cosets and constructs the graph of the
actual map on representatives, independently of the author's oracle.

The observed run exited 0. Of 11,341 candidate combinations, 8,674 preserve
filtrations, including 5,196 between unequal groups and 4,266 with proper
zeroth source subgroup. Checks covered:

- 130,110 well-defined injective graded-to-page maps;
- 368,075 addition checks;
- 57,394 surjections under the vanishing-target condition;
- 63,028 additional unbounded surjections and 9,688 failures of unbounded
  surjectivity, showing that the condition is sufficient and cannot simply
  be omitted.

`independent-review.json` records source hashes, counts, and a concrete
unbounded counterexample. The oracle does not prove the universal theorem.

## Proof evidence and limits

The source hashes and final logs match the author's two recorded direct
compilations, each with observed exit code 0. All eight printed axiom
reports list only `propext`, `Classical.choice`, and `Quot.sound`. The review
did not independently recompile these modules or overwrite their objects.
Source inspection found no admitted proof or custom axiom. The initial
review script's lexical scan falsely matched the ordinary English word
"admit" in a documentation comment; stripping comments fixed that review
script failure without any theorem-source change.

The theorem concerns the specified algebraic filtrations. It does not
derive an actual Adams filtration's boundedness, completeness, topological
identification, or spectral-sequence convergence. Those remain explicit
integration obligations outside this module.
