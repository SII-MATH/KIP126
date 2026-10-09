# The complete successor of the unknown row3743 differential

The stored row3743 at `(23,147)` has a NULL differential. Its page4 target
`(27,150)` is one-dimensional, and its entire next d4 is nonzero: the known
row3986 sends local E2 basis3 to local E2 basis0 at `(31,153)`. Both classes
have checked cycle/nonboundary paths from E2 to E4. The complete successor
matrix is `[true]`, hence injective. Differential square zero then forces
the whole row3743 d4 map to vanish.

`Data.lean` strictly imports 12 new complete comparisons; `source.json`
records their 13-block predecessor closure including one previously checked
block. No member uses row3743's unknown d4. The original 358-comparison
snapshot and the raw NULL are unchanged. The source IDs are staircase
IDs; their associated E2 basis IDs are different and are recorded by the
independent SQL review.

`Basic.lean` proves injectivity, the all-input square-zero deduction, and
`actual_d4_zero` for an actual graded `AdamsSpectralSequence`. The source,
middle and final degrees are exactly `(23,147)`, `(27,150)`, `(31,153)`.
`Meaning` requires faithful full middle coordinates, compatible zeros, and
the known successor equation for every actual input.

`Links.lean` proves the two complete finite trajectories, their nonzero
E4 endpoints and the exact raw differential projection. `Named.lean`
constructs the full successor meaning from the single known row3986 equation:
faithful one-dimensional coordinates imply that every actual middle element
is zero or the named class. Thus `from_named_event` does not ask for a desired
row3743-zero premise or assume the entire successor equation separately.

```lean
example (S : AdamsSpectralSequence) (meaning : Row3743Successor.Meaning S)
    (x : (S.element 4 Row3743Successor.sourceDegree).carrier) :
    S.differential 4 Row3743Successor.sourceDegree x =
      S.zero 4 Row3743Successor.middleDegree := by
  row3743_cert using meaning
```

The known row3986 equation, actual coordinate meanings and identification
with the sphere Adams sequence still require Lean proofs. The finite
comparisons and SQL provenance do not prove those facts. In particular this
is a new conditional deduction, not a newly established topological d4.

## Verification

From the repository root:

```sh
python3 program/Row3743Successor/generate.py
python3 program/Row3743Successor/compile.py
python3 program/Row3743Successor/compile_links.py
python3 program/Row3743Successor/compile_named.py
python3 program/Row3743SuccessorReview/raw_review.py
python3 program/Row3743SuccessorReview/review.py
```

Four direct module compilations succeeded, with 11 standard-only axiom
reports. Failed development logs are archived separately and are not proof
evidence. The independent review rebuilds the relevant SQL kernels and images
without calling the comparison producer, checks all complete matrices and
raw projections, and rules out circular use of row3743's unknown d4.
Hashes identify the reviewed inputs; mathematical correctness is checked by
the Lean kernel through the imported data and proved soundness theorems.
