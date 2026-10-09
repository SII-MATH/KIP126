# Staircase coordinate certificates

The release stores a complete triangular basis in each bidegree, with levels
and unknown differential flags. C++ exports the square basis and an inverse.
Lean checks both matrix products against the identity. `selected_iff_coordinates`
proves membership in any selected span iff all excluded coordinates vanish,
quantifying arbitrary linear combinations. A nonzero excluded coordinate
proves nonmembership with `checkNotSelected_sound`.

The producer opens SQLite read-only and preserves level and SQL NULL flags.
It does NOT interpret level9000 as topological permanence. A query on selected
coordinates is a statement about an explicitly chosen span, not a proved Adams
page unless a separate mathematical comparison has been established.

`export_all.py` processes all49 configured spectra. `generate_named.py` binds
actual audited scalar expressions to their staircase coordinates and emits
kernel proofs for each inverse and coordinate computation. In particular the
Fact7.6(4) raw staircase has more than one permanent sentinel; the paper's
unique-survival result additionally uses hypothetical d4 exclusion branches.

```sh
c++ -std=c++17 -O2 -Wall -Wextra -Werror StaircaseCertificates/export.cpp -lsqlite3 -o StaircaseCertificates/staircase-export
python3 StaircaseCertificates/export_all.py
lake env lean --run StaircaseCertificates/CheckMain.lean staircase-release/appendix.jsonl
```

`Survival.lean` defines selected cycle/boundary spans of an explicitly supplied
finite filtration and checks all pages in a bounded interval. `FiniteClaims.lean`
binds four named source expressions to this conditional software filtration
through pages6,12,5,6 respectively. These theorems deliberately do not assert
that the filtration has been identified with the classical Adams tower.

To prove a supplied typed change of basis:

```lean
example : IsBasis certificate := by lin_cert using ()
```

For a finite selected filtration, use
`SurvivesThrough model first last vector` with a nonzero surviving coordinate
as the certificate. `checkSurvives_sound` proves all bounded page conditions.

`Coherence.lean` additionally checks that boundaries lie in cycles, cycles
decrease and boundaries increase over the declared interval. Its soundness
theorem quantifies over every vector in each span. `CoherenceExamples.lean`
checks these laws for all four named finite filtrations and rejects a boundary
outside the cycle span. These necessary laws do not construct differentials
or establish the Adams comparison.
