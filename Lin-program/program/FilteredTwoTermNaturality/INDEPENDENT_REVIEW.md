# Independent review

No correctness finding. The review script exits zero and records its
counts, exact source hashes, original direct-build evidence and the current
object comparison in `independent-review.json`.

The reviewed `Square` supplies only two full filtered additive maps and
their commuting equation on every underlying element. It does not assume
page naturality or a quotient interpretation. The proof of `map_cycles`
and `map_corrections` uses filtration preservation on both ends and the
ordinary equation. `map_allTargetRelations` handles the complete subgroup
sum: all higher target terms and all source representatives in filtration
`t+1-n` whose images lie in target filtration `t`. Saturating Nat subtraction
at zero is consistent with the existing `AllTargetPage` definition, also
when `n>t`. Quotient descent is therefore representative independent.

The differential naturality proof reduces an arbitrary quotient class by
surjectivity, then applies the ordinary square equation. The source and
target transition proofs similarly descend from identical underlying
representatives. Identity, zero and composition are proved for all actual
quotient classes, without injectivity or surjectivity assumptions on the
square maps. The general composition theorem has no scalar restriction.

The independent oracle constructs 2400 filtered squares among cyclic
groups of orders 1, 2, 3, 4, 6 and 8. Of these, 1770 have a proper initial
filtration and 2388 involve unequal group orders. It checks 82,431 source
representatives, 234,473 source representative pairs, 81,500 source
transitions, 89,300 target representatives and transitions, and 280,820
target representative pairs. The 48,000 target levels include 24,000 cases
with `n>t`. It tests identity, zero and compositions with scalar second
squares. There are 604 nonzero source differentials, including 18 nonzero
transported values; dedicated samples ensure those cases are present.

The integer example uses first projection `Int * Int -> Int`. At source
degree zero and length one, the correction subgroup consists of the
second coordinate and the target relation subgroup is zero. Thus `(1,0)`
has differential 1 and negation sends it to -1, also nonzero. The oracle
checks 729 bounded representative and correction combinations as a
supplement to the general Lean proof.

All three author direct compilations have observed exit zero. The twelve
printed theorem reports contain only `propext`, `Classical.choice` and
`Quot.sound`. `Basic.log` contains two harmless unused-binder linter
warnings for variables used implicitly in quotient descent; these are
preserved and reported. No reviewed Lean source contains a placeholder
proof, custom axiom, native decision procedure or unsafe declaration.

This establishes naturality for the constructed filtered two-term
sequence. It does not supply a CW spectrum, Adams filtration, topological
realization, or an identification with the imported Lin coordinates.
The Python oracle is an independent finite check, not a proof dependency.
