# Module matrix semantics

`MatrixSemantics.lean` checks every source column against the polynomial
decoded from that exact matrix column and target basis. `matrixValid_linear`
proves the corresponding equality for every F2 vector under every compatible
R-linear map M -> R. Module source vectors use `interpretModule`; target
vectors use the existing ring-valued interpretation. This is a whole-matrix
semantic theorem, not only image membership of individual columns.

`MatrixImport.lean` checks dimensions, matrix lengths, source/target basis
counts, all certificate columns, unique and complete used generator images,
and source(s,t)->target(s,t-4). JSON is canonical and unknown/duplicate fields
are rejected. `module_matrix%` imports data; `lin_cert using ()` proves Valid.
`MatrixValid` then supplies the premise of the all-vector semantic theorem.

`export_matrices.py` regenerates all 73 complete degree matrices from the 76
actual t<=20 columns. It verifies the full source-basis ID list in SQLite for
each block. `MatrixActual.lean` proves all 73 imported certificates, including
1-by-2 matrices at (s,t)=(2,9),(3,10),(5,20). The JSON certificates are under
`matrices/` and basis-ID provenance is in `matrix_audit.json`. Degree shift,
source dimensions and missing images have negative tests in `MatrixTests`.

The coefficient-ring map is identity and the map is R-linear. No general
semilinear map, module-to-module target, or topological realization is asserted.
