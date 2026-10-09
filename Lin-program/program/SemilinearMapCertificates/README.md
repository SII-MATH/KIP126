# The remaining module-to-tmf direct map

The map CW_sigma_nu_eta_2 -> tmf is semilinear over the explicit coefficient-ring
map S0 -> tmf (`over: S0__tmf` in ss.json). `Basic.lean` substitutes the
coefficient polynomial through that ring map before multiplying by the module
generator's image. `valid_semilinear` proves this operation agrees with any
semilinear map M -> S over a ring homomorphism R -> S compatible with the
imported generator images and target relations. Identity coefficients are not
assumed.

`Import.lean` requires every used coefficient/module generator image, rejects
duplicate IDs and numeric sentinels, and provides canonical JSON,
`semilinear_map%`, and `lin_cert`. The algebraic theorem is relative to supplied
presentations and compatible valuations, not an Ext/topology identification.

All source basis elements with t<=12 form 21 one-column complete degree blocks.
`Actual.lean` checks all 21 imported certificates. The producer reads the
actual map and S0->tmf coefficient images. In particular the module generator
0 image ';' is the unit, following the pinned upstream polynomial decoder;
it is never interpreted as zero. `Tests.lean` rejects that zero substitution,
missing images, missing coefficient images and numeric sentinel variables.
Audit lists source/target basis IDs and relation rows with input database hashes.

Compile order: Basic, Import, Actual, Tests. Regenerate with export.py from any
working directory. No full Lake build is performed by these scripts.
