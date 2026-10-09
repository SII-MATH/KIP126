# Same-coefficient-ring module-to-module map certificates

The implemented path is R-linear over the identity coefficient-ring map.
It is not a general semilinear map between different coefficient rings.
`Basic.lean` substitutes polynomial coefficients times module-generator images
and proves evaluation agrees with every compatible R-linear map M -> N.
Target relations may connect distinct module generators. `RingRelations.lean`
lifts a coefficient-ring relation into a target-generator coordinate and proves
it vanishes whenever that ring relation vanishes.

`Matrix.lean` decodes exact matrix columns into target-module expressions.
`checkMatrix_linear` proves the map equation for every F2 vector, assuming
compatibility on generator images and vanishing supplied module relations.
It handles arbitrary target R-modules, not merely the coefficient ring.

`Import.lean` requires full dense source/target-generator expression shapes,
all columns and witnesses, exact matrix dimensions, version 1, and equal
source/target bidegrees. Canonical JSON rejects duplicate/unknown fields.
`module_to_module%` imports typed data; `lin_cert using ()` rechecks it.
Malformed degree/dimension/expression shapes fail at import; invalid polynomial
witnesses fail the checker. Nothing missing is silently made a valid image.

The actual map is Cnu -> CW_nu_eta from ss.json, with coefficient ring S0,
filtration 0 and suspension 0. All source basis elements with t <= 12 occur
in 30 complete degree matrices, all kernel-checked in `Actual.lean`.
One block (s,t)=(2,10) uses actual target module relation row 3,
h_1 h_3[0]=0; the remaining blocks need no relation reduction.
`audit.json` records exact basis IDs, relation IDs and source database hashes.
No source or target unknown image is replaced by zero. Generator names that
are NULL are not mathematical coefficients and are not used.

```sh
python3 ModuleToModuleCertificates/export_actual.py
python3 ModuleToModuleCertificates/compile_one.py Basic Matrix Import Actual Tests RingRelations
```

`Tests.lean` rejects matrix changes, missing images, wrong degrees, truncated
targets, duplicate fields and unknown fields. Topological/Ext realization of
the imported presentation and map remains an explicit external mathematical
obligation. Higher-degree and other module maps are not claimed verified.
