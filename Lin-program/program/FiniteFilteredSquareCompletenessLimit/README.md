# Why the square checker is not complete for its conclusion alone

The existing `FiniteFilteredSquareCertificates.ResultValid D` states
well-formedness of the filtered commuting square and the requested fourth
extension. The certificate proves that conclusion using three other
extensions, membership of all four named vectors, and two whole-subgroup
stability conditions. A true fourth extension does not imply those
particular sufficient premises.

`Counterexample.lean` fixes all four groups to F2, all filtration subgroups
to zero using empty generator matrices, and all four maps to zero. The
requested fourth input and output are both zero, so the actual fourth
quotient equation and `ResultValid` hold. The unused first input is one,
which is outside the zero source subgroup. Any accepted certificate would
have to provide an impossible `memberX` preimage.

The theorem `no_certificate` extracts that field directly from acceptance;
it does not incorrectly use the soundness implication backwards. The
theorem `not_complete` formally refutes

```lean
∀ D, ResultValid D → ∃ cert, check D cert = true
```

No existing semantics is strengthened or weakened to hide this boundary.
The sufficient additional conditions for certificate completeness would
be the four named memberships, all three leading extensions, either first
whole-subgroup stability, and the last whole-subgroup stability, together
with the existing structural and length conditions. Column-preimage
completeness constructs factors and corrections from those premises in the
separate positive-characterization module described below.

The counterexample does not indicate a soundness bug: every accepted square
certificate still proves its requested fourth extension. It shows why a
failed search for this particular derivation cannot refute the conclusion.

Validation records actual direct compile exit status and standard axiom
dependencies separately; no C++ output or topology realization is assumed.
The final counterexample module completed with observed direct exit code 0;
all four printed dependency reports use only standard axioms, and the
source/log/object validation completed with exit code 0.

The separate `FiniteFilteredSquareCertificateCompleteness` module now proves
the positive characterization for the explicit full mathematical premise
set, leaving this negative result for the original conclusion intact.
