# Conditional override propagation across all zero-target candidates

This independently regenerates the31-candidate recursive batch allowing
the already proved Ceta row3076 zero. It adds one complete block,
S0(15,139)d3, to the120 unconditional finite comparisons. The candidate
count remains17 resolved and14 unresolved: this override alone does not
close any of the14 remaining target chains. In particular the first
blocker for S0(18,141)d6 changes from row3076 to row3147.

`Matches.lean` proves CetaMatches ds from the actual local Ceta naturality
square. Its conclusion retains both ds sphereClass = zeroS and equality
of the exact generated column with the quotient coordinates of that
value. conditional_block pairs this semantic match with the complete
comparison. The raw row signature (3076,[1,3],NULL,9000) is checked by the
generator; its NULL remains in source.json. The finite matrix comparison
alone is not presented as an actual differential theorem.

`dependency-status.json` traverses every candidate's full predecessor DAG,
not just its first failing branch. Row3076 occurs in seven of those DAGs;
row2858 occurs in none. Therefore the existing conditional row2858 Leibniz
argument cannot reduce these particular14 zero-target blockers. This does
not assert it is irrelevant to other paper claims. The generator includes
a guarded row2858 hook for its exact raw signature, but no such override
is used or exported here, and no detached Leibniz premise is introduced.

`review.py` checks deterministic generation, all predecessor coverage,
all conditional uses, and all internal zero-codomain justifications.
The17 concrete zero-target theorems concern the same unchanged candidates
as AllClaimZeroTargetCertificates. All other unknowns fail closed.

Run from program:

```
python3 AllClaimConditionalZeroCertificates/generate.py
python3 AllClaimConditionalZeroCertificates/review.py
```

The scope remains imported finite algebra. Local Adams naturality and
provenance of the stored known/prefix differentials are not derived from
original topology. No sorry, custom axiom, native_decide or log trust is
introduced. Register AllClaimConditionalZeroCertificates.Matches.

Basic, Data and Matches all passed direct Lean -j1 compilation. The main
conditional_block theorem uses only propext and Quot.sound. Source review
and deterministic regeneration passed.
