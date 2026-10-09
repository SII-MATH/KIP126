# Checked absence of filtered-map crossings

The input is the complete finite filtered additive map of
`FilteredExtensionCertificates`: exact Boolean matrices, complete decreasing
filtrations with an explicitly specified zero tail, a source cycle `x`, a
target `y`, and the extension length `n` at filtration `s`.

`ResultValid D` includes its actual quotient differential equation and
`NoPageCrossing F G f s (s+1) (s+n+1)` for every well-formedness proof for the
same input. This is the crossing definition from `FilteredMapExtension`:
an actual quotient differential with exact leading source and target degrees.
The entire higher-source subgroup is considered, including inessential
quotient differentials. There is no selected list of corrections.

`Certificate D` adds a factor matrix to the existing extension certificate.
The checker verifies `f * source(s+1) = target(s+n+1) * factor` on every
column. `checkPreserves_sound` transports this equation to all vectors and
`noPageCrossing_iff_higher` proves absence of crossings. `check_sound` proves
the result; `all_representatives` proves that every representative with the
specified leading source has the requested leading image.

## Generation and import

```sh
make -C program FilteredCrossingCertificates/filtered-stable-export
program/FilteredCrossingCertificates/filtered-stable-export input.jsonl > output.jsonl
python3 program/FilteredCrossingCertificates/test.py
```

The producer accepts the existing extension query format
`{"version":1,"data":...}`. It emits canonical JSONL with exactly
`version`, `extension` (the complete existing certificate), and `stability`
(the row-major `hb * ha` Boolean factor). It reuses the deterministic
untrusted linear solver. A crossing yields a `stability` diagnostic; invalid
records include their physical line number, later records are processed,
and any failure makes the process exit with status 1.

`filtered_stable_certificate%` and `filtered_stable_batch%` parse the exact
canonical format, reject missing/extra/duplicate fields, malformed lengths,
unknown values, blank records and CR, and report witness level or matrix
row/column. The import creates Lean data. The kernel checks the Boolean
equations in the proof; parsing, C++, Python and source hashes are untrusted.

`Examples.lean` fixes the mathematical input independently of the imported
witnesses and proves:

```lean
theorem requested_result : ResultValid input := by
  filtered_stable_cert using certificate
```

`lin_cert_diagnose using certificate` supplies factor-level failure details.
The same file proves all 596 producer outputs using `checkBatch_sound` and
contains an extension whose quotient equation holds but whose crossing makes
the stronger checker reject it. Alternative factor witnesses may be valid;
changing a bit is not assumed to make a certificate false.

## Evidence and scope

`producer-audit.json` records an exhaustive full-subgroup check on the 604
accepted upstream extension fixtures: 596 stable and 8 crossing, with three
byte-identical reproductions and strict malformed-record recovery tests.
The Lean compile records preserve observed exits, source/input/log/object
hashes. Failed elaboration logs remain separate and prove nothing.

This proves finite filtered-map statements with their actual quotient
semantics. It does not identify these groups with a named spectrum, construct
synthetic spectra, or discharge the paper's Theorem 6.1 comparison theorems.
In particular, the finite input requires the original `x` to be a cycle;
the more general `FilteredExtensionSquare.HasExtension` allows an initial
noncycle representative which can be corrected, and is a separate API.
