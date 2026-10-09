# Independent review of the actual additive limit

No correctness findings in frozen `Basic.lean` and `Certificate.lean`.
Successful source/log hashes match two direct exit codes 0 and five standard
axiom reports. The review changed no Lean source and ran no global build.
Current object hashes are recorded separately in `independent-review.json`.

`ZInfinity` is literally the intersection of all actual initial-page cycle
subgroups. `BInfinity` is their increasing cumulative boundary union, with
addition closure proved at the maximum of two witness indices. Actual boundary
coherence proves the union lies in the intersection. The quotient uses the
boundary subgroup pulled back along the inclusion of `ZInfinity`; hence
`limit_zero_iff` is the standard additive-quotient zero criterion, not a newly
assumed semantic law.

`permanent_iff_nonzero_limit` starts with an actual member of `ZInfinity` and
uses the previously proved strong permanence criterion. This correctly excludes
both zero and any initial class that later becomes a boundary. The intersection
tactic uses the outgoing-only prefix checker and full outgoing-map tail; the
nonzero-limit tactic uses the stronger nonboundary prefix and both full map
tails. The latter takes `x : ZInfinity`, so the membership may be proved first
with the former tactic. No desired limit nonzeroness is a certificate field.

The independent script enumerates all 355 compatible two-transition additive
quotient towers on F2^3 followed by constant tails, covering 2,840 initial
elements and 19,627 cycle-pair additive/quotient comparisons. It reconstructs
the actual cycle and boundary subgroups from recursive representatives, forms
literal limiting cosets, and checks the two distinct prefix implications.
Killed nonzero initial cycles and outgoing-only nonpermanent cases are included.
These finite checks support the review; the arbitrary-tail result is the Lean
theorem and is not inferred from a finite enumeration.

Actual spectral-sequence, certified homology identification, local additive
compatibility, and whole-map tail equations remain Lean mathematical inputs.
No JSON supplies these proofs. This is the algebraic limiting quotient; there
is no actual sphere instance, named paper-class instance, topological convergence,
or identification with independently specified paper filtrations. No admitted
proof, custom axiom, native evaluator, or trust in C++ is introduced.

```sh
python3 program/ActualAdamsLimit/independent-review.py
```
