# Independent root review

The final three-module package and token update pass source review and
independent path-model validation. All 33 frozen files match their hashes.
The Basic source used by both successful actual-family instances remains
unchanged by the tactic syntax update.

Successful path lookup yields membership in the flattened tree. UniqueKeys
then makes that member equal the original first-match lookup result.
The root review includes a duplicate-key counterexample showing why that
premise is necessary. It is supplied by existing matrix coherence in the
actual instances, not assumed without evidence.

The recursive checker requires identical table/witness tree shapes and
checks every leaf, including explicit witnesses for base-page leaves.
Every higher-page leaf checks incoming/current/outgoing keys and whole
homology dimensions. The proof recovers the existing compact Boolean
checker and then the original PredecessorClosed predicate under an exact
projection equality. It does not redefine correctness to accept fewer rows.

Independent models cover 3000 permuted leaf situations and 18000 bad-path
or wrong-key mutations. Actual 1413/1431 tree bindings and acceptance
are reviewed separately. New syntax uses with_paths/with_unique, avoiding
ordinary declaration-name token conflicts. No untrusted tree generator,
hash, or native proof shortcut belongs to the mathematical trust root.
