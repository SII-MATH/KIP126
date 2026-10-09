# Two branches, one common event

This pipeline exports both exhaustive row2574 branches through the strict
C++ finite-event, indexed-event and family-binding producers. They certify
one common event, row2697 d3, with source E2 basis2696 at (9,134) and target
basis2845 at (12,136). The two branch records are not two different paper
events and are not appended to the old 94-event snapshot.

Each branch has its own family with exactly three supplied keys:
`S0:9,134:d2`, `S0:12,136:d2`, and `S0:9,134:d3`. These contain the complete
event comparison and both complete prior-stage comparisons. The existing
family checker verifies every supplied entry and pair. Explicit requested
coverage checks cover those three keys only; neighboring d3 comparisons
and the next d4 comparison are absent and rejected when requested.

`Branch0` and `Branch1` freshly import actual C++ outputs, prove the finite,
indexed and bound certificates valid, prove family coherence and requested
coverage, and link every wire to the already checked branch data.
The fixed-goal tactic proves:

```lean
theorem result : DifferentialAt family ⟨"S0",3,9,134⟩
    [false,false,true] [true] := by
  indexed_family_cert using certificate
```

Each branch also checks the existing batch interface. `Both.each_branch`
and `Both.each_coherent` quantify over both Boolean branches without
selecting either. Certificates exchanged between branches are rejected
because their full incoming matrices differ, although the displayed
nonzero differential equation is the same.

The branch proofs retain the product, detector and stored-value premises
listed in `provenance.json`. The older selected next-page list contains two
vectors, while each checked branch has one-dimensional E4. That list cannot
be an independent complete basis in these branches. The sparse old
351-entry family does not itself include that conflicting d3/d4 block, so
we do not claim its pairwise union necessarily fails. What is not justified
is selecting one branch unconditionally or retaining the incompatible
next-page basis interpretation.

```sh
python3 program/AffineRemainingSearch/Pipeline/prepare.py
python3 program/AffineRemainingSearch/Pipeline/generate.py
python3 program/AffineRemainingSearch/Pipeline/review.py
python3 program/AffineRemainingSearch/Pipeline/compile.py
python3 program/AffineRemainingSearch/Pipeline/assert_current.py
```

`review.py` checks exact raw SQL source/target identities, all four prior
stages, all 18 ordered family-pair checks, byte-identical regeneration,
cross-branch rejection and missing-key diagnostics with input line numbers.
The Lean tests additionally reject wrong requested input/output and missing
coverage. Three sequential modules record actual exits and all proof-input,
log and olean hashes. C++ and hashes remain outside the mathematical trust
boundary; the kernel checks the soundness applications and imported data.
