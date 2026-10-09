# Complete predecessor closure of the 1431-entry families

`Actual.all_closed` proves predecessor closure for every entry of both
frozen `Fact713Row3005Continuation.family` branches. `Actual.all_valid`
is named `Fact713Row3005Closure.all_valid` and combines this with their
existing coherence theorem. No requested-key subset replaces the full
families, and a required predecessor of dimension zero must still exist.

`generate.py` emits one balanced tree of all 1431 compact entries and a
parallel tree containing three predecessor paths for every entry after d2.
The two branches have exactly the same keys and dimensions, so both bind
to the same metadata tree by Lean definitional equality. The maximum path
length is 11, and all 2775 required predecessor paths are checked.

The generic tree soundness theorem checks keys and dimensions at every
path endpoint, requires the certificate tree to cover the same complete
shape, and uses the original family's proved key uniqueness. It concludes
the original `IndexedPredecessorClosure.PredecessorClosed` predicate.
The checked matrices remain in the original family; compact projection
only avoids repeatedly searching their large terms.

Both modules compile with exit zero. The seven reported theorems use only
standard Lean axioms. The independent `review.py` replay checks both exact
family projections and rejects a mismatched tree shape, an empty required
path and a changed incoming dimension. The generated Lean tree and JSON
tree certificate reproduce byte for byte.

This separate package completes the pending closure proof recorded in the
original continuation's historical partial freeze. It does not modify its
100 frozen files or erase the two terminated linear-lookup attempts. It
does not add assumptions to the actual source E5 or main E11 results.

Run from `program/`:

```sh
python3 Fact713Row3005Closure/generate.py
python3 Fact713Row3005Closure/compile.py
python3 Fact713Row3005Closure/review.py
```

The tree certificate and its generator are untrusted input. Lean checks
the exact full-family binding and the executable checker's soundness.
