# Final direct-build addendum

No correctness finding. `independent_build_review.py` exits zero and records
the final 65-module build in `independent-build-review.json`. The original
`independent-review.json` is preserved unchanged and identified by hash;
its initial-source snapshot is not silently reused for the later sources.

All 31 batch modules, `Imported`, 31 neighbor modules, `Coherence` and
`Coverage` have observed direct exit zero. Their 68 printed axiom reports
contain only standard Lean axioms. Final source hashes, imported data
hashes, log hashes and original object hashes match the recorded attempts.
The report separately compares current objects with the direct-build
objects, so a later root build does not rewrite historical evidence.

`Imported` retains the exact ordered 1234 entries. Its key code is strictly
increasing on this list; the generic key-order theorem therefore proves
uniqueness. Global injectivity of the numeric encoding is unnecessary and
is not claimed. Each of the 31 neighbor modules checks its exact batch
against the complete supplied family. The assembly theorem includes every
batch, then invokes the generic neighbor soundness theorem and all existing
entry-validity proofs.

Independent lookup evaluation verifies 933 adjacent differential matches
and 735 consecutive-page dimension matches. There are 301 absent outgoing
neighbors and 499 absent consecutive neighbors. They impose no equation
and do not imply zero. `Coverage` proves the named d2/d3 prefix, detects the
missing named d4 comparison, and proves failure to cover all requested
d2-through-d11 keys.

The formerly interrupted quadratic uniqueness attempt has observed exit
-15 and remains failed historical evidence. It is not counted among the
65 successful final modules. Lookup still scans the family, so this review
makes no globally subquadratic complexity claim.

The separate C++ reproduction finds 1195 byte-equal old witnesses and 39
alternative witnesses for the same complete complexes. This addendum
does not claim byte-for-byte reproduction of all old coordinate choices.
The alternative witnesses have their own checked quotient-coordinate
equivalences in `Fact713CppCoordinateChoices`; the coherent family keeps
its original fixed coordinates.
