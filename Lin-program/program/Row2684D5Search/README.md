# Row2684 whole d5 from an actual square

The package proves `Actual.whole_d5_zero`: every actual element on E5 in
degree `(12,134)` has zero d5, under explicit complete page/product meanings.
The named element is `h5 * x91,11`. Its staircase row is 2684 with base `0`;
its raw E2 basis row is 2682. Raw basis row 2684 is a different element,
`h0 * h6 * Md0`, which is an incoming d2 boundary.

## Mathematical route

The factor in degree `(6,67)` is the sum of raw generators 75 and 74,
represented by staircase row 450 with base `0,1`. The four complete E2
product columns into the three-dimensional source are

```text
75*75 -> (1,1,0)
75*74 -> (0,1,1)
74*75 -> (0,1,1)
74*74 -> (0,1,1)
```

Thus `(75+74)^2` has E2 coordinates `(1,0,1)`. Its source d2 quotient is
the same as the requested named vector `(1,0,0)`, since their difference
is the complete incoming d2 boundary `(0,0,1)`. The source d3 and d4
quotients then give the unique nonzero one-dimensional E5 coordinate.

The factor's complete d2 and d3 comparisons construct its E4 representative.
Its d4 target `(10,70)` has zero E3 homology; actual quotient surjectivity
and zero compatibility imply the entire E4 target is zero. This constructs
the factor's actual E5 quotient representative without selecting any
incoming d4 value. In particular the raw row400 d4 of `h5^2` remains unknown.

Three complete multiplicativity squares for pages 2, 3, and 4 identify the
same named actual E5 source with the square of that constructed factor.
The graded characteristic-two Leibniz law makes its d5 zero even if the
factor's d5 is nonzero. Complete one-dimensional source coordinates promote
the named equation to the entire outgoing d5 map.

## Files and interfaces

- `Data.lean`: six strict imported comparisons, four complete polynomial
  product-column certificates, and exact named vector paths.
- `Semantics.lean`: every product column and all coefficient vectors have
  the claimed interpretation in every commutative characteristic-two ring
  satisfying the imported relations.
- `Descent.lean`: complete actual source coordinates E2 through E5 and
  factor E2 through E4 are constructed recursively. The factor E5 endpoint
  is an actual quotient, with no assumed E5 coordinate chart.
- `Actual.lean`: `Witness.named3`, `.named4`, `.named5` bind the same
  representatives; `named_d5_zero` and `whole_d5_zero` use ordinary Leibniz.
- `Tactic.lean`: strict caller-input and differential-result binding,
  with zero-input and arbitrary-result rejection tests.

```lean
example (W : Row2684D5Search.Actual.Witness S pages P) :
    Row2684D5Search.Actual.ResultValid W W.source.raw 0 := by
  row2684_d5_cert using W

example (W : Row2684D5Search.Actual.Witness S pages P) :
    S.differential 5 Row2684D5Search.sourceDegree x = 0 := by
  exact Row2684D5Search.Actual.whole_d5_zero W x
```

The explicit-binding form is
`row2684_d5_cert using W named inputEquality yielding resultEquality`.
`ResultValid` uses the actual trace of that exact E2 input and the actual d5
of its exact E5 endpoint. It does not certify an unrelated element with a
matching string or degree.

## Provenance and limits

`proof_events.py` streamed all 2,672,275 fixed proof rows. Event XX71662
(`proofs-part1.csv`, physical line 66232) records d5 of `0,2` as zero;
the implementation proves the square argument independently. D153610
and its test T153609 concern base `1`, so they cannot directly prove the
requested named equation. `proof-events.json` preserves exact rows and
source file hashes.

`search_maps.py` screened all 70 configured sphere maps at E3. Seven maps
have zero source image and a nonzero target image there, but this is not
an E5 detector theorem. The screen is retained as a search artifact only.

`factor.py` retains an unsuccessful complete factor d4 comparison attempt:
unknown row400 prevents that comparison. The actual square proof requires
only the whole outgoing target to vanish and does not pretend that the
failed incoming comparison was resolved.

The complete actual meanings and product-transition laws remain Lean proof
inputs. No actual d5 equation, target nonzero condition, selected factor d4
incoming value, or named E5 factorization is accepted as a premise. The
source's already derived d3/d4 finite comparisons still require their full
actual interpretations. This is not an unconditional sphere computation or
proof of Fact 7.21 permanence. No C++/Python result or hash is trusted as a
mathematical theorem.

## Validation

Five direct modules compiled successfully using pinned Lean v4.32.2 and
`-j1`, with 38 standard-only theorem reports. Historical failed attempts
are retained, including one dependency-lookup failure before Lean launched.
Only `propext`, `Classical.choice`, and `Quot.sound` occur in accepted reports.

`audit.py` imports no producer. It replays 12 SQL relation occurrences,
all four product columns, six complete comparisons and 93 cycle-pair
equivalences. It checks 8640 relabeled local models, 34560 product/quotient
squares, 207360 complete-input trace steps, 17280 possible d5 coefficients,
and 138240 input/result requests (129600 rejected). These are local finite
models, not a global topological Adams realization.

```sh
python3 program/Row2684D5Search/audit.py
python3 program/Row2684D5Search/compile.py
```

The root agent owns registration, root builds, and exhaustive axiom auditing.
