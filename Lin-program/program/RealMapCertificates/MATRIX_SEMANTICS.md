# Whole-matrix semantics

`MatrixSemantics.lean` checks every column in one certificate. The column's
output polynomial is decoded from the actual matrix bits and target basis;
it is not an independent claimed output. `MatrixValid` asserts the source
basis monomial's actual generator substitution equals that decoded target
polynomial modulo the supplied relations.

`matrixValid_hom` proves for every F2 vector x and compatible ring homomorphism
f that interpreting the output matrix vector equals f applied to interpreting
the input vector. It uses `interpret_matrix` and the proved substitution
semantics, so the conclusion quantifies all linear combinations, not just
listed columns. Source and target characteristic-two rings, vanishing target
relations, and agreement on generator images are explicit hypotheses. Basis
independence and a topological/Ext realization are not claimed.

`MatrixImport.lean` adds canonical `WireMatrixSemantics` JSON. Fields: version,
rows, cols, source monomial list, target polynomial list, row-major entries,
images (ID-polynomial pairs), relations, and per-column terms. Shape checks
require exact lengths, unique image IDs, and an explicit image for every
source generator used. The parser rejects unknown/duplicate JSON fields.
`semantic_map% "file.json"` imports data and `lin_cert using ()` proves `.Valid`.
`WireMatrixSemantics.allVectors` applies the complete semantic theorem directly
to that validity proof. The imported data is still subject to the stated
realization assumptions. File imports require explicit rebuild on changes.

`export_semantic.py` combines the actual S0->tmf data and existing relation
witnesses into 8,719 full-range matrix certificates under `semantic/`, leaving
the previously verified 235 batches unchanged. `SemanticExamples.lean`
contains kernel-checked actual blocks (s,t)=(1,1),(2,4),(21,147),(25,150).
`SemanticTests.lean` rejects changed matrix bits, malformed source/target,
missing/duplicate/wrong generator images. `SemanticCheck.lean` checks all
paths in `semantic_manifest.txt`; all 8,719 pass its executable checker.
This runtime batch result is separate from the four new kernel theorems.
The older 71,466 column-level kernel theorems remain available.

```sh
python3 RealMapCertificates/export_semantic.py
lake env lean --run RealMapCertificates/SemanticCheck.lean RealMapCertificates/semantic_manifest.txt
lake env lean RealMapCertificates/SemanticExamples.lean
```
