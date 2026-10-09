# Actual Cnu to S0 module map

`Basic.lean` treats a module monomial as a coefficient-ring monomial plus a
module-generator ID. Substitution multiplies the coefficient polynomial by
the supplied module-generator image. `MapValid` checks relation-ideal equality
and `mapValid_linear` proves the semantic statement for every R-linear map
M -> R compatible with those images and every valuation killing the target
relations. This uses the identity map on the coefficient ring R; it does not
claim semilinear behavior for maps with a different coefficient ring.

The Cnu top-cell map has filtration shift 0 and suspension 4. The exporter
uses source (s,t) -> target (s,t-4), reads actual Cnu/S0/map SQLite databases,
and correctly parses the trailing module-generator ID separately from the
coefficient generator/exponent pairs. Every used generator image must exist.
Unknown map values, malformed encodings and failed reductions stop export;
none are treated as zero. Explicit empty polynomial strings are database zero.

`python3 ModuleMapCertificates/export.py` from program regenerates
`Actual.lean` and `audit.json`. All 76 Cnu basis images with t <= 20, covering
all columns of every degree block in that range, have kernel-checked MapValid
proofs. The audit records both degrees, global basis IDs, relation row IDs,
and source database hashes. `Tests.lean` checks coefficient/module separation.

This implementation has not yet covered every Cnu degree or generalized to
all 179 module-related maps. Identifying the imported presentations with Ext
and the linear map with the actual topological map still requires independent
proofs. It does not assert a complete d2 matrix or a page-propagation theorem.
Standard mathlib axioms: propext, Classical.choice, Quot.sound; no added axioms.

`Import.lean` provides canonical JSON `Wire`, `module_map%`, and a `lin_cert`
instance for `Wire.Valid`. Shape checks require version 1, exact degree shift,
unique module-generator IDs and an explicit image for the used ID. Internal
degrees use integers: t < 4 maps to a negative target degree, never truncated
to zero. Those source images are explicitly the zero polynomial in this data.
`diagnose` separates version, degree, duplicate/missing image and polynomial
witness failures. `Imported.lean` checks all 76 exported JSON certificates in
`wire/`. Regenerating all wires and Lean sources gives identical hashes.
`ImportTests.lean` rejects changed output/degree and missing/duplicate images;
it also rejects duplicate and unknown JSON fields. All six modules compile.

## Whole matrices

`MatrixSemantics.lean` proves `matrixValid_linear` for arbitrary F2 vectors.
`MatrixImport.lean` checks complete matrix dimensions, source/target degree
shift, all used generator images and each decoded target column.
`MatrixActual.lean` proves all73 complete degree blocks covering the76
columns. Three blocks have two source columns. `MatrixTests.lean` rejects
altered shape, shift and missing inputs. Run `export_matrices.py` only when
regenerating certificates; it verifies source-basis coverage against SQLite.

`MatrixUse.lean` exposes `wire.allVectors` directly from a checked wire.
`MatrixDiagnostics.lean` reports structural errors and the exact failing
column/module-generator ID. `CheckMatrixFile.lean` checks JSONL batches and
adds line numbers; it rejects internal empty lines. Runtime acceptance is
not itself a theorem: imported wires use `lin_cert` for kernel proofs.
