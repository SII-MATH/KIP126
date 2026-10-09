# Complete coverage of the actual 1413-entry families

This package proves the original PredecessorClosed predicate for both
Fact713Row2693Continuation families and combines it with their existing
Coherent theorem. It also proves that the original diagnostic returns
none. No entry is restricted to the named trajectory's subset.

Data.lean contains one balanced metadata tree and a matching tree of
incoming/current/outgoing paths. Each of the 1413 entries is covered;
all 2724 required predecessor paths are checked, with maximum depth 11.
The two families have identical metadata. Two kernel equality proofs
bind their complete ordered projections to the same tree's flattening.
Existing coherence supplies uniqueness of keys. One accepted tree check
then proves both original full-family closure statements.

The generator is untrusted. All data binding and path checking are proved
by Lean reduction. Hashes only record inputs. The checked predicate still
requires every higher-page block's three full preceding-page dimensions;
the matrix coherence proof remains a separate part of all_branches_valid.

Run from the repository root:

```sh
python3 program/IndexedPredecessorClosureTreeActual/generate.py
python3 program/IndexedPredecessorClosureTreeActual/compile.py
```

Direct compile session13398 exited0 for both Data and Fact713. The latter
prints six axiom reports: two empty, one using propext and three using
propext/Quot.sound. Root registration and exhaustive audit are separate
integration checks. Earlier unsuccessful full-Wire and compact-list
attempts remain under IndexedPredecessorClosureActual/evidence, with
observed Lean exits -15, and are never counted as accepted proofs.

This establishes finite-family coverage, not the actual topological
meaning of the imported matrices or all Kervaire claims.
