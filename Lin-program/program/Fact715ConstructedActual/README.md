# Fact 7.15: constructed actual E5 trace

The theorem fixes a supplied E2 element at `(11,136)` and constructs its
actual E3, E4, and E5 quotient representatives. Only its initial additive
coordinates are supplied; later tracked coordinates and their addition laws
are derived. The coordinate dimensions are 5, 4, 2, and 1, and the named
coordinates are `e3`, `e2`, `e0`, and `1`. Each step is a cycle outside the
complete incoming boundary space, and the final E5 representative is nonzero.

The raw named staircase is row 2852, `base="3"`, `diff=NULL`, `level=9995`.
Its E2 basis representative is row 2853, monomial `0,2,391,1`; raw row IDs
and basis IDs differ. The existing literal polynomial interpretation in
`Fact715PageCertificates` is reused. The unknown d5 is preserved and is not
included in the trace.

## Actual detector and assembly

`Detector.Input` retains four complete actual d2 meanings for Ceta and S0,
both complete current-map equations, actual quotient transitions and d3
naturality. The actual E3 coordinate maps are derived using
`Fact713D4SourceSearch.ActualDescent`; they are not supplied independently.
The Ceta E3 target has dimension zero. The full induced source map sends
Ceta coordinate `e0` to S0 coordinate `e1`, corresponding to raw S0 row 3076,
`base="1,3"`, `diff=NULL`, `level=9000`. Naturality proves its actual d3 zero.

The other S0 E3 basis column retains an explicit known-column mathematical
premise. Together with the derived additive E3 coordinates, this gives the
whole outgoing d3 equation. `Assembly.TargetInput.whole` uses that derived
equation and the complete actual incoming meaning to construct the actual
E4 target at `(15,139)`. `Assembly.FinalStep` uses precisely these constructed
coordinates for the main d4 equation. `Assembly.actual_E5` then proves the
fixed-input E5 result. There is no additional assumption that the unknown
row-3076 d3 column is zero.

## Tactic interface

```lean
theorem example_result
    (certificate : Prefix5 S pages initial)
    (input : (S.element 2 degree).carrier)
    (binding : initial.coordinates.equivalence input = Fact715PageCertificates.target) :
    ResultValid S pages initial input := by
  fact715_cert using certificate named binding
```

The one-argument form `fact715_cert using certificate` proves the result for
`raw initial`, or uses a matching input-binding hypothesis. The fully
assembled certificate is `Assembly.assemble prefix4 targetInput finalStep`.
`Assembly.actual_E5` itself uses the tactic with this assembled certificate.
The tactic checks the exact goal family and applies the kernel-checked
soundness theorem. Two negative examples reject wrong goals and a zero input;
`zero_input_rejected` proves the semantic rejection separately.

## Validation and scope

All five leaves compile serially with the pinned Lean toolchain. The model
audit independently checks all 13 prior trajectory comparisons, four complete
detector d2 comparisons, exact raw rows, nontrivially relabeled actual carriers,
all quotient and addition pairs, and every possible two-column S0 d3 map.
Compile logs and records retain source hashes and standard axiom reports;
earlier failed compilation logs remain separate.

```sh
python3 program/Fact715ConstructedActual/compile.py Basic Trace Tactic Detector Assembly
python3 program/Fact715ConstructedActual/check_models.py
```

Actual initial-page coordinates, known imported differential meanings,
quotient zero/addition laws, whole map transitions and d3 naturality remain
explicit mathematical premises. C++ certificates are rechecked in Lean;
hashes record provenance only. No source uses `sorry`, `admit`, custom
`axiom`, `native_decide`, or `unsafe`. This is a conditional actual E5 trace,
not a construction of the sphere Adams spectral sequence or a completed
topological proof of Fact 7.15.
