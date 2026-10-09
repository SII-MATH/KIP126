# General relation-reduction supplement

The base low-degree run proved 2,886 blocks and reported 199 unresolved.
This separate supplement resolves exactly those 199, with no overlap and
without changing any base certificate. Both batches compile; independent
source-data checks and content fingerprints are recorded. Together the runs
prove all 3,085 source degree blocks through t<=12 for all 135 configured
same-S0 module-to-module direct maps. This is not full internal-degree or
topological coverage.

`reduce_general.py` uses both multi-term target-module relations and lifted
coefficient-ring relations. It orders terms lexicographically by module
generator ID, coefficient length, then the sorted coefficient-generator tuple.
For a fixed finite generator set and coefficient length, only finitely many
tuples occur; natural-number generator ID and length are well founded. Every
rewritten term is replaced by strictly smaller terms (checked explicitly), and
there is also a 10,000-step limit. This declared order is not asserted to be
the upstream C++ comparator. Missing reductions or nondecreasing steps are
rejected. Every successful step carries an explicit relation multiplier;
Lean's semantic checker, not the producer's termination argument, establishes
the result.

Reproduce from repository root:

```sh
python3 program/ModuleToModuleCertificates/reduce_general.py
python3 program/ModuleToModuleCertificates/compile_supplement.py
python3 program/ModuleToModuleCertificates/test_supplement_sources.py
python3 program/ModuleToModuleCertificates/audit_supplement.py
```

`combined_summary.json` gives the bounded union counts. The older base audit
retains its original unresolved status as history; the supplement closes those
specific map/degree keys. All generic Ext/topological interpretation hypotheses
remain explicit and unchanged.
