# High-filtration d2 basis reconstruction

This finite-data extension reconstructs 25 local d2 matrices from complete
staircase bases and certifies 14 complete d2 page comparisons. The four roots
are events 6651, 7007, 7162 and 7247, with a dependency closure of 19 blocks.
This directory does not change any source database or accepted aggregate.

## Source and semantic boundary

The pinned input is `upstream/kervaire-49/S0_AdamsSS_t261.db`. Its E2 basis
coverage is `t_max = 261`; its raw d2 coverage is only `d2_t_max = 177`.
The 25 source degrees contain 24 columns: 9 known raw d2 columns and 15 raw
NULL columns. All known columns agree with the reconstructed matrices.
The NULL cells remain NULL in the source and in `report.json`.

Each full staircase basis vector has exactly one explicit semantic premise:

| Columns | Staircase source | Required meaning |
| --- | --- | --- |
| 2 | Level 9998 | d2 equals the recorded coordinate vector |
| 13 | Levels 2 through 4999 | The incoming boundary vector is a d2 cycle |
| 9 | Levels 9001 through 9997 | The later-page prefix vector is a d2 cycle |

No level 9000 occurs, and level 9000 does not supply a zero prefix. The audit
rejects unknown coordinate vectors. Full basis coverage and target coverage
are required even when a source or target dimension is zero.

`StaircaseMeaning w kinds d` in Lean is an explicit premise about an arbitrary
zero-preserving additive map `d`. It states the required value separately
for every basis vector. SQL row levels do not prove this premise. Therefore
the extension proves a conditional finite statement; it does not extend the
raw d2 metadata, reconstruct Adams E2 from topology, or prove the source
staircase semantics from the mathematical definition of the spectrum.

## Certificates and proofs

`HighFiltrationD2Certificates/Basic.lean` defines the F2 matrices, strict JSON
importer, executable checker, diagnostics and soundness theorems. A version-1
basis wire contains `rows`, `cols`, `basis`, `inverse`, `images`, and `matrix`.
All matrices are flat row-major Boolean lists of exact declared length;
fields use canonical sorted JSON encoding. Duplicate, unknown, malformed or
noncanonical fields are rejected during import.

The checker verifies both inverse identities for the complete basis matrix
`B` and verifies `A = Y * inverse(B)`. `additive_reconstruction` proves that
every additive map with those basis values equals `A` on every vector.
`staircase_reconstruction` specializes this to the explicit source meanings.
This is a mathematical uniqueness theorem, not string or hash equality.

`Data.lean` imports all 25 wires and proves each valid using
`lin_cert using ()`. It supplies `dS_T_reconstruct`,
`dS_T_staircase_reconstruct`, all zero-prefix image checks, and 9 raw-column
equalities. `Comparisons.lean` imports all 14 complete comparison wires,
proves their validity, and identifies both differential matrices with the
corresponding reconstructed matrices. The existing C++
`PageTransitionCertificates/page-transition-export` generates the comparison
witnesses. The C++ `d2-basis-export` generates complete basis inverse and
output witnesses, which the Python driver also reconstructs independently
and compares byte for byte. Both producers are outside Lean's trust root.

The basis exporter accepts `ROWS COLS BASIS_BITS IMAGE_BITS`; dimensions are
nonnegative decimal integers up to 256, matrices are exact row-major bit
strings, and an empty matrix is encoded by `-`. `--batch FILE` accepts one
such record per line and emits one canonical JSON witness per line. Singular
bases and malformed records fail with the field or batch line number.
The generator uses this interface for all 25 source degrees.

For example, `Data.d55_180_staircase_reconstruct d hz ha meaning` proves
`forall x, d x = eval Data.d55_180.outputMatrix x`. Here `hz`, `ha`, and
`meaning` are the displayed mathematical premises about `d`.

`Tests.lean` checks rejection of singular bases, incorrect inverses, altered
output matrices, bad lengths, unsupported versions, duplicate/unknown JSON
fields and NULL Boolean entries. It also checks an actual nonzero
reconstructed map and the zero-dimensional case. Diagnostics identify the
first failing matrix coordinate, such as `basis*inverse[0,0]` or
`matrix[0,0]`, and malformed field lengths by field name.

## Reproduce and audit

From `program/`:

```sh
make -C HighFiltrationD2Audit test
python3 HighFiltrationD2Audit/review.py
python3 HighFiltrationD2Audit/compile.py
```

`review.py` reruns generation and requires byte-for-byte identical artifacts.
It independently queries every source/target basis and staircase SQL row,
checks both inverse identities, all known raw columns, all six comparison
matrices and the complete homology identities, and records exact source and
artifact SHA-256 digests in `review.json`. SHA-256 establishes provenance
only. It does not prove the source mathematical meanings.

`test_export.py` checks the exact C++ output for all 25 single-record and
25 batch-record witnesses, and checks 12 malformed or singular cases.

`compile.py` compiles the four Lean modules serially with the specified
toolchain. `compile-audit.json` records the actual exit codes, source/log/
olean digests, and all 39 exact certificate inputs. A later Lake invocation
can produce different olean bytes; this manifest is a historical record of
the direct invocation, not a claim about different future artifacts.

The successful proof logs list only `propext` and `Quot.sound`. These modules
contain no `sorry`, custom axioms, or native evaluation proof shortcut.

## File inventory

| File | Role |
| --- | --- |
| `inspect.py` | Read-only finite source reconstruction and C++ comparison generation |
| `generate.py` | Canonical wires and Lean declaration generation |
| `export.cpp`, `Makefile`, `d2-basis-export` | C++ full-basis witness producer |
| `test_export.py`, `export-test.json` | Exact single/batch output and rejection tests |
| `review.py`, `review.json` | Independent SQL/matrix replay and provenance report |
| `compile.py`, `compile-audit.json` | Serial actual Lean invocation and evidence |
| `report.json` | All 25 degrees, exact SQL records, semantic tags, 14 comparisons |
| `wire/d*.json` | 25 complete basis reconstruction wires |
| `wire/c*.json` | 14 complete homology comparison wires |
| `Basic.log`, `Data.log`, `Comparisons.log`, `Tests.log` | Direct compiler output |
| `../HighFiltrationD2Certificates/Basic.lean` | Objects, checker, importer, soundness and semantic interfaces |
| `../HighFiltrationD2Certificates/Data.lean` | Generated 25 reconstruction and 9 raw-column proofs |
| `../HighFiltrationD2Certificates/Comparisons.lean` | Generated 14 comparison proofs and matrix links |
| `../HighFiltrationD2Certificates/Tests.lean` | Meaningful rejection tests and semantic example |
