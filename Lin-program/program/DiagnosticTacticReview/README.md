# Diagnostic tactic regression

The previous `lin_cert_diagnose` displayed a generic message without calling
`DiagnosticCertificateVerifier.diagnose`. The repaired implementation obtains
the diagnostic instance for the exact goal, elaborates the certificate at its
expected type, and reports the returned kind, location and message.

Runtime evaluation is only for diagnostics. When it returns no failure, the
tactic still applies `CertificateVerifier.sound` with a kernel-checked
`by decide` proof. A false claim cannot pass merely because its diagnostics
return `none`. Open terms, missing diagnostic instances and evaluation
failures use the usual proof path. Failed diagnostic elaboration restores
the saved state before fallback. No runtime evaluation produces a proof.

`Examples.lean` checks exact witness-coordinate messages, successful proofs,
the absence of a diagnostic instance, an open certificate and a deliberately
incomplete diagnostic function which must not accept a false result.
`Actual.lean` checks the real filtered-map crossing message:

```text
representative-square: stability: row 0, column 1: matrix composite bits differ
```

The isolated direct compiler places artifacts in `build/`, with copies of
the unchanged support objects, to test the repaired tactic without changing
registered artifacts during other direct builds. Root Lake integration and
the exhaustive axiom audit supply the final project-level evidence. Historical
failed logs and the old tactic source are retained separately.
