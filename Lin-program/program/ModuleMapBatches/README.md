# Full Cnu -> S0 finite module map verification

All available Cnu source basis elements through internal degree 200 are covered:
14,989 columns, 5,588 complete degree matrices, zero unresolved images.
All 148 batch modules compile successfully: 20,577 kernel theorem declarations.
`verification_summary.json`, `compile_audit.json`, and `generation_audit.json`
keep generated counts distinct from verified counts. No unknown/missing data
is filled by zero. Target degree is source degree minus 4 over the identity
S0 coefficient-ring map. The previous low-degree fixtures are preserved.

Scripts (from repository root):

```sh
python3 program/ModuleMapCertificates/export_full.py
python3 program/ModuleMapCertificates/compile_full.py
```

The batch directory is separate from the library namespace/glob. Compilation
uses direct Lean with one worker, 180 seconds per batch, and stops at the first
failure. Subsequent runs hash source, referenced JSON, transitive local checker
sources, external imported module artifacts and toolchain; unrelated local
library rebuild timestamps no longer invalidate resume. The first completed
run used the older broad-mtime digest, so its existing result hashes are not
eligible for the new resume key without rechecking. Its successful kernel
verification remains recorded; no fresh run was falsely claimed.

The theorems concern imported module presentations and linear-map generator
images. Ext identification, topological map realization and complete Adams
page data remain separate mathematical obligations.
