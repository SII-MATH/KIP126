# Linear adjacent-key uniqueness check

`checkKeyOrder code family` maps each key through a caller-provided
`Key -> Nat` encoding and checks strict increase between adjacent codes.
For a family of length n it performs at most n-1 comparisons. This avoids
reducing the quadratic `Nodup` decision procedure for large generated
families.

`check_key_order_sound` proves the existing `UniqueKeys family`:
adjacent strict increase implies pairwise strict increase by transitivity,
which implies that the code list has no duplicates. A repeated original
key would repeat its code, so the original keys also have no duplicates.
The encoding need not be globally injective, and no bound on its input is
assumed. Collisions or an unsuitable ordering merely cause rejection.

Typical use:

```lean
have unique : IndexedFamilyCertificates.UniqueKeys family :=
  FamilyKeyOrder.check_key_order_sound code family (by decide)
```

The result proves uniqueness only. Complete comparisons, neighbor
coherence, requested-key coverage and actual mathematical interpretations
remain their separate existing obligations. `diagnose` reports the first
nonincreasing adjacent pair by zero-based entry indices.

`Examples.lean` checks empty/singleton/increasing inputs, reversed and
nonlocal duplicate inputs, first-error location, and a deliberately
noninjective page-only encoding. Distinct keys colliding under that
encoding are rejected while the existing uniqueness predicate still holds.

Compile the new leaves serially from `program/`:

```sh
python3 FamilyKeyOrder/compile.py Basic Examples
```

Both direct compilations return zero. Four printed theorem axiom reports
contain only `propext` and `Quot.sound`. Source and compile evidence are
pinned in `frozen-source.json`; previous failure logs are retained separately.
No existing module or generated family is modified.
