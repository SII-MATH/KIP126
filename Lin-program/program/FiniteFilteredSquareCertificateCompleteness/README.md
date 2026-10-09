# Completeness for explicit square-method premises

This module characterizes exactly when the existing finite filtered square
certificate has an accepted witness. The original fourth-extension-only
`FiniteFilteredSquareCertificates.ResultValid` remains unchanged.

`Premises D` is a mathematical proposition independent of certificate
fields. It requires:

- the original length inequality and well-formed filtered commuting square;
- all four named input/output memberships in the specified actual subgroups;
- the first, second, and third leading extensions;
- preservation of the entire first higher-source subgroup along either
  `f` or `p`, and of the last higher-source subgroup along `g`.

The theorem `check_exists_iff` proves

```lean
(∃ cert, FiniteFilteredSquareCertificates.check D cert = true) ↔ Premises D
```

The forward direction extracts every condition from the existing checker.
The converse uses the already-proved column-preimage completeness to
construct all eight filtration factor families, the four membership
witnesses, all three representative/correction triples, and the two
stability factors. Commutativity of the actual additive maps is evaluated
on explicit unit vectors to prove the whole matrix-square check.

`premises_result` then recovers the existing fourth-extension conclusion
using its unchanged soundness theorem. The separate
`FiniteFilteredSquareCompletenessLimit` counterexample proves that the
fourth conclusion alone is insufficient to guarantee these premises or an
accepted certificate. In particular, failed square-method certificate
search cannot by itself disprove the fourth extension.

This theorem covers the specified whole-subgroup stability conditions. It
does not identify those conditions with every paper no-crossing rule,
prove completeness of an external C++ implementation, or provide a
topological interpretation of the finite algebraic input.

Actual direct compilation and printed axiom dependencies are recorded by
`compile.py` and validated by `assert_current.py` in `proof-review.json`.
The final Basic module completed with observed direct exit code 0; all six
printed reports contain only standard `propext`, `Classical.choice`, and
`Quot.sound` dependencies. Final source/log/object hash validation exited 0.
