# Actual S0 to tmf E2 map certificates

`export.py` opens three actual upstream SQLite databases read-only and handles
all S0 basis elements with internal degree t <= 261: 23,822 basis images in
8,719 complete degree blocks, with zero unresolved images. The default CLI
limit is 40; full coverage uses `--max-t 261`. It reads the map's
id-to-polynomial generator images, substitutes into source basis monomials,
and reduces using actual target tmf relations. Every reduction has an explicit
relation-ideal witness. Missing generator images, unknown polynomial values,
and failed reductions are rejected rather than replaced by zero.

Run `python3 RealMapCertificates/export.py --max-t 261` from program. `audit.json` records
source database SHA-256 hashes, source and target global basis IDs, degrees,
relation row IDs, complete matrix blocks, and unresolved records. Generated
certificates are in `relations/`; `Generated.lean` retains the low-degree fixture; `batches/` has 235 complete
full-range modules with three theorem
families for each source element: matrix column membership, polynomial
relation reduction, and `IsMapEvaluation` for the actual generator substitution.

`Substitution.lean` computes the substitution in Lean and proves its semantics:
`substitute_hom` works for every ring homomorphism compatible with the supplied
generator images. `mapEvaluation_hom` additionally assumes the imported target
relations vanish in a characteristic-two target ring and concludes the image
of the original source monomial equals the output polynomial's value. Thus
substitution and relation manipulation are checked mathematical operations.
The generated total generator-image function has a zero default outside the
explicit used IDs; no theorem is generated for missing IDs, and export rejects
any used missing ID. These partial-data semantics must not be mistaken for a
verified complete map on every generator.

This is a real E2 algebra-map slice, not an induced Adams-page theorem. The tmf
basis table has no d2 column; its separate staircase table is not silently
interpreted as a complete differential matrix. No unknown differential is
filled with zero. The full generated scope is t <= 261 for S0 -> tmf, not every map.
The imported algebra presentations and generator images have not been proved
to model actual Ext groups or the topological unit S0 -> tmf. The displayed
homomorphism/valuation hypotheses identify precisely the remaining bridge.

Full batches are compiled strictly serially by `compile_batches.py`. The
persistent `compile_audit.json` reports actual exit status and errors; generated
certificates must not be claimed verified until their batch succeeds. Each
batch has a 180-second limit. Standard axiom dependencies for the universal
ring-semantic bridge are `propext`, `Classical.choice`, `Quot.sound`; these come
from mathlib algebra, with no additional assumptions introduced as axioms.

The initial full generator match exceeded elaboration resources and failed;
`compile_failed_initial.json` preserves those failures. Each corrected batch
now declares only generator images actually used by its source monomials.
`compile_batches.py` stops at the first unsuccessful batch rather than
repeating a common failure. Full-range generated counts and successful kernel
compilation counts are deliberately tracked separately.

Final full-range validation: all 235 batch modules compile successfully,
checking 71,466 kernel theorem declarations (three for each of 23,822 source
basis elements). `verification_summary.json` records final counts and timing.
A long monomial in Batch217 required raising the recursion limit to 4096;
its original failure is retained in `compile_failed_recdepth.json`. This is a
resource setting only. The compiler resumes only successful outputs newer
than their source files, and stops immediately on any new failure.
