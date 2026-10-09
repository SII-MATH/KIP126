# The unique nonzero element of the actual next page

`IsOnlyNonzero S r d x` asserts both that x is nonzero in the actual page
and that every actual page element is zero or x. `next_unique` derives it
from `ActualAdamsUniqueBridge.IsUnique`, the complete homology quotient
identification, and its zero compatibility. No coordinate cardinality is
used as a replacement for actual surjectivity.

The zero condition is essential here: the earlier cardinality theorem
uses only a Type equivalence, which may swap zero and nonzero. `ZeroMeaning`
fixes that ambiguity, while the full inverse ensures that every actual
next-page element has a homology representative.

`Certificate` wraps the existing imported finite uniqueness certificate
with this mathematical zero proof. `adams_next_unique_cert using c` checks
the finite wire by kernel reduction and proves the actual next-page goal.
The `Fact764.unique_by_tactic` example binds the frozen false branch wire
at the exact sphere degree (25,150), and `unique_nonzero_e5` supports both
allowed branches. Actual input, complete differential coordinates, and
named-element meanings are still caller-supplied Lean proofs; this is not
an unconditional proof of the paper's Fact 7.6(4).

Run `python3 program/ActualAdamsUniqueNext/compile.py` for the two leaves.
Both passed and print four standard-axiom reports. Strict wire syntax,
batch producer, import errors and line diagnostics reuse
`UniqueHomologyCertificates` and its tests; no new JSON schema is needed.
