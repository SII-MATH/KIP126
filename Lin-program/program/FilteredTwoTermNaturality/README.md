# Naturality of the actual filtered two-term pages

Given filtered additive maps `f : A -> B`, `g : C -> D` and a commuting
square of filtered maps `p : A -> C`, `q : B -> D`, this directory constructs
maps on the existing quotient pages. `Square` contains only the two full
filtered homomorphisms and `q (f x) = g (p x)` for every actual element.
It contains no page maps, quotient interpretation or naturality assumption.

`Basic.lean` proves that `p` maps every cycle and higher-source correction
to the corresponding subgroup. This constructs `sourceMap` by quotient
descent. It also proves that `q` sends the entire target relation subgroup,
including images of all permitted incoming representatives, into the new
relation subgroup. This constructs `targetMap` on `AllTargetPage` for every
nonnegative target degree and differential length, including `n=0` and
`n>t`. Both are additive homomorphisms and hence are well-defined on actual
quotient classes, not chosen representatives.

The ordinary commuting square yields `targetD_natural` and `pageD_natural`
for the actual `FilteredTwoTermSequence.targetD` and `pageD`. The proof
reduces to quotient representatives and applies the original equation.
`source_next_natural` proves compatibility with the actual unchanged-source
map `nextToCurrent`; `target_advance_natural` proves compatibility with the
actual target quotient transition `allTargetAdvance`.

`Laws.lean` constructs identity squares, zero squares and compositions from
the underlying filtered homomorphisms. The induced source, target and page
maps preserve identity, zero and composition. No global injectivity or
surjectivity is required of the square maps.

`Examples.lean` uses the nonzero example `Int * Int -> Int`, projection to
the first coordinate, with the existing nontrivial filtration. Negation on
both source and target is a filtered commuting square. Its induced page map
is negation, it transports the nonzero length-one page differential, and
the transported differential stays nonzero. Identity and zero-square
applications are also checked. This is actual quotient algebra, not a
Boolean model or a declared spectral-sequence field.

These results describe the constructed two-term filtered sequence. They do
not construct the Adams filtration of a CW spectrum or identify its pages
with the imported Lin data. The next-source and target transitions commute;
no stronger global convergence or topological realization is asserted.

## Build and review

From `program/`:

```sh
python3 FilteredTwoTermNaturality/compile.py Basic Laws Examples
```

All three direct compilations return zero. Twelve printed theorem axiom
reports contain only standard Lean axioms. `frozen-source.json` pins these
three leaves and their imported definitions; `modules.txt` lists the new
modules for root registration. No old registered source is changed.

The independent review should check subgroup descent on all corrections
and all incoming representatives, the use of the ordinary commuting square,
the `n>t` target formula, representative-independent next transitions, and
that the negative example has a genuinely nonzero actual differential.
The direct compiler records and logs are evidence of the observed builds;
later Lake object hashes are recorded separately.
