# Completeness for the exact filtered crossing certificate semantics

The existing `FilteredCrossingCertificates.ResultValid D` requires the
actual quotient extension equation and the absence of `NoPageCrossing`
through the specified entire finite interval. This module proves it is
equivalent to existence of an accepted existing crossing certificate.
No checker field or semantic condition is removed.

The base extension certificate is complete by
`FilteredExtensionCertificateCompleteness.check_complete`. The additional
whole-subgroup stability factor is complete because
`noPageCrossing_iff_higher` identifies the existing crossing absence with

```text
f(F_(s+1)) <= G_(s+n+1).
```

Choosing preimages of every specified generator column supplies the exact
matrix factor checked by `checkPreserves`. The source and target generators
need not be independent. A `WellFormed` witness obtained from the extension
result is sufficient to extract stability; the same stability then proves
crossing absence for every `WellFormed` proof of that input.

The result is also equivalent to the base extension result together with
the statement that every representative in its entire higher-source coset
has the same target leading class. This is the exact existing algebraic
predicate, which includes inessential quotient classes and length-zero
crossings. It is stronger than some essential-class crossing restrictions;
this module does not identify it with every no-crossing rule in the paper.

## Reference search

`Search.lean` reuses the explicit base certificate enumeration and adds all
stability matrices. It proves both

```lean
search D = none ↔ ¬ FilteredCrossingCertificates.ResultValid D
(∃ cert, search D = some cert) ↔ FilteredCrossingCertificates.ResultValid D
```

For tiny inputs, users can supply just the exact input and result in `Data`:

```lean
example : FilteredCrossingCertificates.ResultValid mySmallInput := by
  filtered_stable_search
```

The tactic uses `searchCheck_sound` and `decide +kernel`. The reference
search is exponential, with `hb*ha` additional enumerated bits beyond the
base extension search. It should not replace efficient C++ witness
generation for large inputs. C++ outputs remain subject to the unchanged
checker and its soundness proof.

Examples cover empty data, a nonzero identity equation, and a corrected
extension that is valid for the base checker but fails the additional
whole-representative stability. The last example makes the stronger
semantics explicit rather than claiming completeness for a weaker result.

## Validation

Run the new leaves serially, then validate their evidence:

```bash
python3 program/FilteredCrossingCertificateCompleteness/compile.py
python3 program/FilteredCrossingCertificateCompleteness/assert_current.py
```

Recorded exit codes and axiom reports are in `proof-review.json`. Initial
failed proof attempts, if any, remain in separately named logs. Source
existence alone does not imply successful verification.

Both final modules completed with observed direct exit code 0. All eleven
printed reports contain only `propext`, `Classical.choice`, and `Quot.sound`;
the final source/log/object hash validation also exited 0.

This is finite algebraic completeness. It does not prove actual Adams
data realization, topology convergence, every paper no-crossing condition,
or completeness/resource bounds of the particular C++ producer.
