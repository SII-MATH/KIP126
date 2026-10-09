# Conditional joint detection of row-3247 d3

This package reconstructs the Cnu-to-sphere naturality route suggested by
historical proof records 296354 through 296362. Those T/D/N records are only
search hints. They are not proof premises.

The 18 complete E2 matrices include the shifted Cnu-to-S0 map and the h0 and
d0 module actions at the source and d3 target with both d2 neighbors. Their
96 columns use 117 explicit ring/module relation reductions. Twelve complete
d2 quotient comparisons and all six adjacent squares are checked in Lean.
The whole target h0 and d0 maps have trivial joint kernel on the three-
dimensional Cnu E3 target. Their individual kernels are not both trivial.

`Actual.actual_row3247_d3_zero` is deliberately conditional. It constructs
the h0 and d0 d3-zero conclusions from their empty actual targets, applies
the full graded module Leibniz rule, uses the checked joint kernel and then
the actual top-cell map. Both source product-cycle premises remain explicit.
The full source and target module-action coordinate meanings are retained;
`actual_product_coordinates` proves the exact named product coordinates.

The unresolved d0 product is raw Cnu row 7669, base `0`, at `(22,163)`, with
SQL NULL and level 9000. Its d3-zero is not proved here. The h0 product is raw
row 5286, base `3`, at `(19,146)`, with recorded later d7 event; connecting
that prefix to an actual d3-zero also remains a mathematical meaning input.
No new complete comparison family is extended using this conditional rule.

`Binding.lean` proves that the historical sphere vector `(1,1,1)` and raw
row-3247 representative `(1,1,0)` are the same E3 class: their difference is
an actual boundary in the imported complete finite complex. It also binds
the two product representatives and preserves both raw unknown values.
`MapSemantics.lean` states the checked polynomial matrices' interpretation
for every vector under explicit relation and generator-image meanings.

The independent `audit.py` imports no producer. It reads the raw databases,
checks compact generator reindexing, all polynomial reductions, 642 full
vectors, 67,230 quotient-pair comparisons, 1,872 adjacent-square vectors,
and all eight joint-kernel inputs. `search.py` additionally screens all 70
configured S0 maps. Its independent replay finds no source-zero/target-
injective candidate: 19 source-nonzero cases, 27 target-zero cases, and 24
explicit unknown cases. None of these counts is a topological theorem.

```sh
python3 program/Fact713Row3247Source/generate.py
python3 program/Fact713Row3247Source/generate_comparison.py
python3 program/Fact713Row3247Source/audit.py
python3 program/Fact713Row3247Source/search.py
python3 program/Fact713Row3247Source/review.py
python3 program/Fact713Row3247Source/compile.py
```

Compilation is serial; its observed source/wire hashes and exit codes are
recorded in `*-compile.json`. Failed logs are retained separately. All
accepted proofs use only Lean's foundational axioms; no custom axiom, native
proof evaluator, SQL NULL-to-zero inference, or implicit C++ trust is used.
