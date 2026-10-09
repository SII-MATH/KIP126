# An alternate factorization of the missing d0 product

The row-7669 Cnu product at `(22,163)` factors as
`([212] + [3,178]) * generator30`. The sphere coefficient is the complete
E3 cycle at `(12,108)` and has zero-dimensional d3 target. Generator 30
lies at `(10,55)` and still has an unresolved d3 into `(13,57)`.

Six complete action matrices, five columns and thirteen reductions prove
the factorization and both adjacent d2 squares. Six complete quotients
give the entire source action `(1) -> (1,0,0)` and target action
`(1) -> (0,0,1)`. Thus the remaining Leibniz term is nonzero and injective;
the factorization alone cannot prove the desired product is a cycle.

`Factor.coefficient_d3_zero` derives the coefficient cycle from its empty
actual target. `product_cycle_of_generator_cycle` records exactly the
additional generator-cycle premise needed to conclude the actual product
cycle. It does not assert that premise. The previous conditional row-3247
theorem and complete E8 families remain unchanged.

`audit.py` imports no producer and independently replays raw SQL encodings,
compact generator indices, all relations and complete quotients: 26 vectors,
144 cycle pairs and ten adjacent-square vectors. All three Lean leaves
compile with only foundational axioms. `screen_generator30.py` searches
low sphere classes for additional product detectors and records raw NULLs.
That numerical search is not a proof of a new differential.

```sh
python3 program/Fact713Row3247ProductSearch/generate.py
python3 program/Fact713Row3247ProductSearch/generate_comparison.py
python3 program/Fact713Row3247ProductSearch/audit.py
python3 program/Fact713Row3247ProductSearch/screen_generator30.py
python3 program/Fact713Row3247ProductSearch/compile.py
```
