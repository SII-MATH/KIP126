# Independent review of the actual-trace request adapters

No findings were identified in the seven frozen modules. The review did not
modify a frozen source, its compiled object, or a compiled dependency.

## Semantics reviewed

`Fact715.RequestedValid` starts its actual trace from the inverse of the supplied
initial coordinate equivalence applied to the request's source vector. Its
endpoint is required to be nonzero and to have exactly the request's output
coordinates under the constructed E5 equivalence. `Fact719.RequestedValid`
uses the same construction through E6. Both definitions explicitly require
the correct input and output lengths, version and claim. The soundness proofs
rewrite the input to the very same named source as the previously constructed
trace, then provide that trace's endpoint and its coordinate theorem.

The semantic prefix remains a typed mathematical premise: complete actual
differential meanings and quotient laws cannot be replaced by request data.
The `Unit` certificate instance evaluates only the closed request; its soundness
proof still requires that prefix. These are conditional actual E5/E6 results,
not permanent-cycle results or a sphere Adams realization.

`batch_sound` quantifies over exactly the given list. Empty in-memory lists
satisfy this vacuous proposition, while the file importer rejects empty batches.
Neither behavior asserts coverage of all paper claims. `diagnose_none_iff` and
`diagnoseBatch_none_iff` connect diagnostics to the same Boolean check; batch
diagnostics report the first invalid request at the supplied starting index.

## Evidence

- All 14 frozen inputs match their recorded SHA-256 values. All seven leaf
  source/log/object records, 11 direct dependency hashes and four imported
  file hashes match. The seven direct compile records have observed exit 0.
- Eleven axiom reports use only the explicitly identified standard Lean
  axioms `propext`, `Classical.choice` and `Quot.sound`. No custom axiom,
  `sorry`, `admit`, `native_decide`, `unsafe` or `Lean.ofReduceBool` was found.
- The original examples contain four successful imported single/batch proofs
  and six tactic rejection cases. The original parser run has observed exit 0.
- `IndependentRuntime.lean` has observed run exit 0. It checks 16,002 requests
  spanning both claims, three versions, three claim strings, every Boolean
  input of lengths 0 through 6, and every output of lengths 0 through 2.
  All 16,000 rejected requests agree on the exact diagnostic field and on
  localization at line 2 in a batch.
- The independent runtime rejects 36 malformed records and 12 malformed
  batches, checks 12 distinct parser line locations, and accepts 20 valid
  batches. Cases include duplicate fields in both positions, unknown fields,
  wrong scalar/vector types, fractional/negative/unsupported versions,
  surrounding whitespace, blank lines, repeated final newlines and CRLF.
- Independent finite-carrier models use 16 labelings for Fact 7.15 and 32 for
  Fact 7.19, including nontrivially labeled zero. They check 42,672 semantic
  requests, 176 steps from the same requested raw input, and 48 accepted
  complete traces. All 6,192 padding/truncation aliases are rejected.
- The adapter generator is replayed into an in-memory sink; both generated
  Lean adapters are byte-identical to the frozen sources.

The parser's single-file elaborator trims surrounding whitespace; JSONL is
strict. The tactic's failure message refers users to `diagnose` or
`diagnoseBatch`; it does not itself print the invalid field. This matches the
current README and is an interface limitation rather than a proof gap.

## Reproduce

From the repository root, with the existing dependency objects available:

```sh
python3 program/ActualTraceRequests/run_independent_runtime.py
python3 program/ActualTraceRequests/independent_review.py
```

Machine-readable results are `independent-runtime.json` and
`independent-review.json`. The runtime oracle is additional testing; the
mathematical trust boundary remains the kernel-checked soundness proofs.
