# Independent diagnostic tactic review

The current `lin_cert_diagnose` implementation and its `Examples` and `Actual`
test leaves were read independently. No correctness or trust-boundary defect
was found.

The runtime expression evaluation returns only an optional structured error.
A reported failure aborts the tactic. An absent report, a missing diagnostic
instance, an open certificate, or a caught diagnostic-evaluation exception all
continue to the same proof path as `lin_cert`: the registered soundness theorem
applied to a kernel proof of the Boolean checker. Runtime evaluation never
provides that Boolean proof and never installs a proof term for the goal.

Diagnostic elaboration uses the exact goal and certificate type from the
diagnostic verifier. The exception handler restores tactic state before
falling back to the ordinary proof path. Successful elaboration retains only
constraints from the same certificate that is subsequently checked.

The fixture tests check a successful result, the exact coordinate error,
a diagnostic returning none for a false target, the absence of a diagnostic
instance, and an open certificate. The actual checker test checks the precise
full-matrix stability error. Assertions about expected errors save and restore
tactic state, then compare the actual error string. The false-target fixture
uses `fail_if_success`, so a diagnostic cannot silently accept the false
result.

The broad exception fallback affects diagnostics, not mathematical acceptance.
An instance-search failure before the guarded evaluator can still abort a
tactic rather than reaching the fallback; this is an error-path usability
limit and does not produce an invalid theorem.

Successful shadow compilation is separate from subsequent registered Lake
compilation. The independent JSON record binds the examined source files to
their actual shadow logs and objects. Only standard theorem axioms occur.
