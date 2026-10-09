# Independent review of representative-square production

Two transport findings were identified during review and corrected by the
producer's author. Trailing NUL bytes were initially confused with end of input;
the producer now checks the parser's byte position after skipping legal JSON
whitespace. The batch importer initially trimmed the entire file, hiding leading
blank records and shifting physical diagnostic lines; it now removes only one
optional terminal LF and preserves every physical record for strict checking.
Final source/log confirmation is recorded in `independent-review.json`.

The C++ solver forms `[f H | K]` with right side `y + f x`, chooses pivots
deterministically, and sets free variables to zero. It checks its resulting
representative equations. Columnwise factor solves cover the entire generated
subgroup, including rank-deficient and redundant-generator cases. The `auto`
branch prefers f whenever its factorization exists; explicit f/p requests are
respected. The desired fourth extension is independently derived in Lean and
is neither an input condition nor an unchecked certificate field.

The independent script uses complete subgroup-image and representative
enumeration, not Gaussian elimination. It tests every scalar configuration
under all three branch requests plus 1,800 new dimension 0..3 cases: 14,088
inputs, 3,408 accepted and 10,680 rejected. It checks all emitted witnesses,
full factor equations, the final actual coset conclusion, output order, and
every physical rejection line. Repeating the mixed stream is byte-identical.
All 1,480 imported fixture outputs also reproduce exactly and pass independent
semantic checks. Full-rank and rank-32 dimension-64 models are included.

Twenty-two malformed-input cases are placed between two valid records to verify
continued streaming and exact line-2 diagnostics. These include the original
NUL regressions, duplicate keys, unknown/null/numeric bits, resource bounds, and
blank records. Failed records produce no certificate and a nonzero process
exit; consumers must retain stderr because output lines omit failed inputs.

`Imported.lean` proves the 1,480 count and every decoded wire's validity by kernel
reduction and proved batch-checker soundness. Seventeen compiled guard cases
exercise the corrected physical line parser, including empty input, leading,
internal, and trailing blank records, CRLF rejection, and valid input with or
without terminal LF. Direct build records also fingerprint all four imported
JSON files before and after compilation; source hashes alone cannot detect a
stale external fixture. Object status is recorded separately from source/log
success in the independent JSON report.

This is finite representative-square algebra. It supplies no actual paper
filtered product, essential crossing definition, synthetic/extension spectral
sequence, or Theorem 6.1 instance. C++, Python, hashes, parsing, and diagnostics
are outside the mathematical trust root. No custom axiom, admitted proof,
native evaluator, or implicit trust in C++ enters the Lean conclusion.

```sh
python3 program/RepresentativeSquareProducer/independent-review.py
```
