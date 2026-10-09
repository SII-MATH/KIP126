# Constrained whole stem125 E5 quotient

The two Fact7.6(4) branches8/18 reduce the former 480 local products to
48. This directory embeds those choices into the existing complete
stem125 quotient model, retaining every one of its 45 original centers.
It does not assert that all 48 choices have a common global Adams
realization.

## Exact count and dimension

`Choice` is `Fin 2 × Fin 3 × Fin 4 × Bool`: the filtration9,14,15 choices
are retained, and the Boolean selects filtration25 branch8 or18.
`embed` preserves all four fields of the original `Product.Choice`.
The finite list is proved complete, duplicate-free, and of length48;
the embedding is injective.

The thirteen fixed centers contribute dimension2. The retained
filtration25 quotient contributes dimension1. The remaining dimensions
are `nine=[1,0]`, `fourteen=[1,1,0]`, and `fifteen=[1,0,1,0]`.

| Total dimension | Local choices | Quotient cardinality |
| ---: | ---: | ---: |
| 3 | 4 | 8 |
| 4 | 16 | 16 |
| 5 | 20 | 32 |
| 6 | 8 | 64 |

`dimension_formula`, `dimension_distribution`, `dimension_bounds` and
`dimension_range` prove these statements in Lean. Each integer3 through6
has an explicit witnessing choice; no choice is selected as actual.

## Whole quotient and semantic conditions

`Whole.lean` reuses `Stem125E5Search.wholeEquiv` to identify the product
of the 17 explicit-center quotients and 28 arbitrary-neighbor zero-center
quotients with `Vec (dimension c)`. It proves exact cardinality,
preservation of quotient addition, representation of every class, and
equality reflection. `all_45_centers` retains the checked original-index
partition, and `previous_dimensions` retains both possible earlier E4
branches. Zero-center neighbors are arbitrary inputs rather than
fabricated zero maps.

`select_from_constraints` starts with a choice in the original 480-case
family. It requires the raw target cycle equation, both finite product
and map compatibility constraints, both complete incoming columns,
the complex law and a proof that the named class is a cycle. It derives
that the choice is exactly the embedding of one of the new48 choices.
`aggregate_from_constraints` then proves the narrower dimension range
and the exact whole-quotient cardinality for that original choice.

The named-cycle premise is essential: without it, branches9/19 also
satisfy the obstruction constraints and the complex law. Their named
class is not a cycle. `aggregate_from_product` instead obtains that
cycle proof from `Fact764CycleFromProduct.Meaning`, including a common
actual Leibniz differential, complete target-faithful coordinates,
the named product equation and the actual zero-target tower for delta.
The product/map obstruction interpretations remain separate explicit
premises. Nothing here asserts that independently provided meanings
constitute one jointly realized graded Adams sequence.

## Reproduction and verification

```sh
python3 program/Stem125ConstrainedE5/enumerate.py
python3 program/Stem125ConstrainedE5/compile.py
python3 program/Stem125ConstrainedE5/assert_current.py
```

The enumeration independently computes ranks and checks full homotopy
and cycle-pair identities for the thirteen known comparisons and eleven
retained local branch comparisons. It verifies all48 dimension counts,
all320 candidate/filtration25 branch combinations, the exact imported
branch8/18 matrices and the45-center partition. It records the complete
inputs and preserves the original480 search and358 aggregate blocks.

The three new modules `Basic`, `Whole`, and `Constraints` compile with
serial direct Lean calls against existing dependencies. Sixteen printed
axiom reports use only `propext`, `Classical.choice`, `Quot.sound`.
Historical direct hashes are kept separately from later Lake builds.
No admitted proof, custom axiom or native-evaluation trust is used.

Actual E2/page/basis realization, all imported differential and prefix
meanings, zero-center propagation and coherent realization of the other
local choices remain mathematical obligations. This is a conditional
whole finite quotient result, not a complete Kervaire or stable-homotopy
formalization, and it proves no later permanence or convergence.
