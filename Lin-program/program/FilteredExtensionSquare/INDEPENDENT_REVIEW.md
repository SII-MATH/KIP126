# Independent review of the quotient extension square

The three frozen leaves pass review. `HasExtension` requires membership of
the original input in its filtration and permits a same-leading actual
cycle representative. The original input is not required to be a cycle.
The forward implication of `hasExtension_iff` composes two same-leading
relations; the reverse implication derives cycle membership from the actual
image equation. The square uses three such extensions, commutativity on
the whole source, and the stated page-defined no-crossing hypotheses.
The bound `n <= m+l` is retained when transporting the target index to
`(s+n)+(m+l-n)`. The proof does not assume the fourth extension.

`independent-review.py` independently checks 301,824 literal finite
quotient/ordinary-extension equivalences, including 2,376 examples whose
original representative is not a cycle but can be corrected. For all 928
commuting filtered squares on a nontrivial two-dimensional F2 flag, it
checks 165,152 fourth extensions: 55,360 length-zero outputs, 109,792
positive-length outputs and 10,192 nonzero input/output cases. The Lean
integer example also explicitly proves that its original representative
is not a cycle.

All three direct compilation records match source/log hashes, exit zero,
and six standard-or-no-axiom reports. Current object hashes match at review
time. No production file was modified and no global build was run.

The theorem concerns actual filtered additive groups and their constructed
quotient equations. No paper ESS, synthetic comparison, or sphere instance
is identified here. These limits are accurately stated in the README.
