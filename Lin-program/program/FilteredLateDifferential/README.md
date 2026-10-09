# Finite prefixes and actual late differentials

`Basic.lean` constructs a filtered identity map on the finite additive group
`ZMod 2`. The source filtration is concentrated at zero. The target is the
whole group through a chosen length `late` and is zero afterward.

The source class of one is nonzero on every page through `late`. All earlier
extension differentials vanish; the differential at `late` is nonzero.
`actual_page_nonzero` states this for the constructed two-term system's
literal `pageD`, whose square-zero and homology-to-next-page theorems are
already proved. The target filtration is bounded and separated, so this
example does not rely on a nonseparated tail or infinite groups.

`arbitrary_finite_prefix cutoff` puts the nonzero differential at
`cutoff+1`. Thus a finite list of zero differentials cannot by itself prove
permanence, even in this concrete finite algebraic setting. An explicit
tail bound or a proof of the remaining differentials is still needed.
This is a mathematical boundary result, not a claim about a named Adams
class or the unknown values in Lin's database.

Run `python3 program/FilteredLateDifferential/compile.py` for direct serial
compilation. The successful record and earlier failed log are separate;
only successful compiler evidence counts as a proof. Subsequent Lake
builds have their own artifact provenance.
