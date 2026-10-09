# Full actual S0 generator region t <= 8

All sixteen raw S0 resolution generators with internal degree <=8 are included, including homological degrees 5 through 8. Every target of their differential lies in the selected region, and discarded Milnor coordinates are checked zero before rank-three encoding.

The source-sliced data path imports the 4,096 actual Milnor product witnesses and proves the generic finite free differential squares to zero. Nine independent batch files cover the complete rectangle 0<=s<=8, 0<=t<=8: 81 cells. This includes all 45 triangular cells s<=t and all 36 above-diagonal empty cells. There are 80 exactness candidates and one nonexact ordinary, unaugmented unit at (0,0). Every positive theorem concludes `ComponentExact` for the actual generic free-module differential through the proven coordinate/differential intertwining, not an assumed abstract matrix comparison.

`compile_audit.json` tracks actual compilation attempts; `compile.py` fingerprints recursive Lean sources and all imported `.json` AND `.jsonl` certificates. A generated candidate is not kernel certified until its compile succeeds. Failed attempts remain in history.

`generate.py` reproduces all input/output files and batches. `GenericFreeComplexProducer/audit_t8.py` independently validates source rows and all 4,096 tensor products; `component_t8_test.py` checks all 81 complete coordinate sets, genuine multiplication coefficients and contraction equations.

The initial monolithic Data proof is a substantial kernel computation. The initial compiler process was monitored independently of its orchestration timeout; runtime and actual exit status are recorded separately where they diverged. No successful status is inferred from an olean timestamp.

The first monolithic attempt was deliberately terminated after over 900 seconds; actual signal status 15 and the orchestration timeout are retained in `data_process_exit.json`. It is not a successful compile. The replacement `Sliced/` path checks each of sixteen source slices independently, then applies `wire_valid_of_sources` without rerunning the full conjunction.

The expanded complex has 13 nonzero two-edge products; the largest certified product degree is 8. This exercises additional nonzero cancellation while remaining inside the unchanged degree-12 producer limit.

Final kernel result: all 28 expected Lean files are current under the recursive source/certificate fingerprint audit. All sixteen source slices, the assembled `Valid` and differential-square-zero proof, and all nine component batches pass. The batches prove 80 actual `ComponentExact` statements and reject the supplied exactness certificate at the unaugmented origin; the rejection theorem alone is not a general nonexactness theorem. `#print axioms valid` reports only `propext`, `Classical.choice`, and `Quot.sound`.

The Data plus nine-batch serial run took 1,186.75 seconds, with peak child RSS 20,122,484 KiB (about 19.2 GiB), exit code zero, as recorded in `component_resources.json`. Individual batch times are retained in `compile_audit.json`. Historical failures remain visible: the original monolithic process was terminated, and the initial Source00 proof failed before explicit unfolding was added; neither is counted as a success.
