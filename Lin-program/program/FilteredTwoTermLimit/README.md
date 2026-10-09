# Bounded two-term limit

This module combines the constructed two-term page homology with the actual
kernel and cokernel filtration comparisons. Given `G_q = 0`, its theorem
identifies `Page(n,t)` additively with

```text
gr_t(ker f) x gr_t(coker(f restricted to F_0))
```

whenever `q <= t+n` and `t+1 <= n`. The first inequality ensures actual
kernel representatives; the second includes the last possible incoming
source degree zero. The uniform choice `n = q+t+1` satisfies both. The
outgoing page differential is proved zero at those lengths.

Both filtrations are induced from the original filtered additive map.
The source subgroup at every nonnegative degree lies inside F_0, so its
kernel graded group agrees with restricting the map to F_0. The target
cokernel is explicitly restricted; `F_0=A` upgrades it to the full cokernel
via `FilteredMapCokernelGraded.fullCokernelEquiv` and its filtration theorem.
Target exhaustion is separately equivalent to `G_0=B`.

This proves bounded algebraic convergence from an explicit subgroup equality.
It does not infer that an actual Adams filtration is bounded from a finite
input file, nor prove topological strong convergence or a synthetic comparison.

`Basic.lean` has an actual successful direct compiler exit and four standard
axiom reports. Development failures are retained separately. Reproduce with
`python3 program/FilteredTwoTermLimit/compile.py` after dependencies build.
