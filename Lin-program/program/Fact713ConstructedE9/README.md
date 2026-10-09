# Conditional constructed actual E9 trace

This package extends the constructed E8 prefix by the common finite d8
comparison in `Fact713Row3247ConditionalBranches`. That comparison has
zero-dimensional incoming and outgoing neighbors, a one-dimensional current
space, and identity homology projection. Both separately coherent finite
families contain exactly the same named d8 comparison; neither contains d9.

`Prefix9` retains the existing actual prefix and the complete neighboring d8
meaning. It constructs the E9 coordinate equivalence and additive law via
actual homology. `Prefix9.named_E9` traces the same named initial E2 element
to a nonzero E9 endpoint. No later tracked coordinates or endpoint are given
independently. The previous source and quotient interpretation obligations
remain; this does not identify the abstract system with the sphere.

```lean
example (P : Prefix9 S pages) : RequestedValid P [true,true] [true] := by
  fact713_e9_cert using P
```

The request checks exact source/output vectors and lengths. Batch soundness
uses the same prefix for every supplied request; four negative tactic tests
reject wrong values and excess coordinates. `diagnoseRequest` locates fields.

The conditional finite families require two explicitly named actual E3 cycle
representatives for the row3247 route. Later boundary equations associate
those representatives with their source events; they cannot prove the cycle
properties from SQL levels. The actual prefix still requires complete
neighboring differential interpretations. This package does not silently
provide them, prove E12, choose a row2994 branch, or assert unconditional Fact
7.13. The next named d9 comparison remains absent.

```sh
python3 program/Fact713ConstructedE9/compile.py
```

All accepted direct-compiler records are stored with source, input, dependency
and log hashes. Earlier off-by-one compilation failure is retained separately.
Only standard axioms are used by accepted proofs.
