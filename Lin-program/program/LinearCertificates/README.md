# Finite F2 linear certificates

`Basic.lean` defines vectors `Fin n -> Bool`, matrices `Fin m -> Fin n -> Bool`,
addition by XOR, dot products by parity, and matrix evaluation. `InImage A y`
means an actual preimage exists, not membership in a list of recorded classes.
`InKernel A x` means the entire evaluated vector is zero.

`Checker.lean` proves:

- `checkImage_sound`: a supplied preimage evaluates to the target.
- `checkNotImage_sound`: a functional annihilating every column but not the
  target excludes *all* linear combinations of columns.
- `checkKernel_sound`: every output coordinate vanishes.
- `checkComplex_sound`: the composite vanishes on all inputs after checking
  every column against every outgoing row.
- `checkChainMap_sound`: a square commutes on all inputs after checking its
  basis vectors. This checker is polynomial in the matrix dimensions.

Each result has a `CertificateVerifier` instance usable with `lin_cert using c`.
Image certificates are preimage vectors; nonimage certificates are functional
vectors; directly computed kernel/complex/chain-map certificates use `()`.
`Diagnostics.lean` identifies failing rows, columns, or the target pairing.

`Import.lean` decodes dense row-major matrices with explicit dimensions and
rejects wrong entry/vector counts. `WireCertificate` has fields `matrix`,
`target`, `witness`, `kind` (`image` or `nonimage`). Matrix fields are `rows`,
`cols`, `entries` (JSON booleans). These records are a standalone linear
subformat; they do not assert an Adams page or a topological provenance.
The public `parseCertificate` requires canonical JSON (sorted keys, compact
spacing, exactly the derived fields). Unknown fields, duplicate keys, and
noncanonical encodings are rejected. Unsupported result kinds are rejected. A SHA hash is
not used as mathematical evidence.

Build the untrusted batch witness generator from the program directory:

```sh
g++ -std=c++17 -O2 -Wall -Wextra -Werror LinearCertificates/linear_export.cpp -o LinearCertificates/linear_export
python3 LinearCertificates/test_export.py
```

Input is whitespace-separated records: `rows cols`, then `rows*cols` matrix
bits, then `rows` target bits. Dimensions range from 0 through 4096. Output
is one stable JSON object per record. Gaussian elimination chooses the first
available pivot and returns either a preimage or a separating functional.
No claim is made that this dense reference implementation scales to the
largest Lin Program datasets. Existing non-matrix Lin CSV rows cannot be
converted to a complete differential matrix without additional source data.

`Examples.lean` exercises sums of columns, nonmembership, complexes, and chain
maps, with negative cases. `ImportExamples.lean` exercises dimensions, malformed
result kinds, witnesses, and imported-data tactic proofs. The Python suite
checks all 2-by-3 matrices and targets, plus empty dimensions (262 cases),
against an exhaustive span oracle. It also checks deterministic output and
malformed input rejection. All Lean examples have been compiled directly.

The new soundness theorems depend only on standard Lean `propext` and
`Quot.sound` (function extensionality), as printed in `Examples.lean`. There
are no placeholders, custom axioms, native-decision proofs, or trusted C++
results. These theorems establish finite F2 linear semantics; identifying a
matrix with the Steenrod algebra, an Adams differential, or a topological map
requires separate mathematical theorems and complete input data.

`checkWire_sound` proves that `.ok true` entails `WireValid`: an explicitly
decoded matrix and target together with the actual image/nonimage proposition.
There is no malformed-input fallback to a zero matrix. The file elaborator
`linear_certificate% "LinearCertificates/sample_image.json"` imports typed
data; `example : WireValid certificate := by lin_cert using ()` rechecks it in
the kernel. The elaborator does not register file dependencies in Lake: force
rebuild after changing the JSON file, or use the explicit-source generator:

```sh
python3 LinearCertificates/import_jsonl.py LinearCertificates/sample.jsonl LinearCertificates/GeneratedExamples.lean
lake env lean LinearCertificates/GeneratedExamples.lean
lake env lean --run LinearCertificates/CheckMain.lean LinearCertificates/sample.jsonl
```

The Python generator rejects wrong fields, duplicate keys, bad dimensions,
and non-Boolean values. Generated Lean contains exact data and theorem
statements, and every theorem invokes the sound checker; the generator is
outside the trust root. The command-line executable check reports filename
and line but is not itself a kernel proof. `ImportExamples.lean` additionally
checks the file elaborator and `WireValid` proofs.
