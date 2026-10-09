# Reproduce the 2026-09-21 continuation

From program/ with the existing checked source archives:

1. `make all test` builds every C++ exporter and runs independent small tests.
2. `python3 NamedElementCertificates/export.py` regenerates the exact-name audit and relation witnesses.
3. `python3 StaircaseCertificates/export_all.py` exports all configured source staircase bases and inverses.
4. `python3 StaircaseCertificates/generate_named.py` binds scalar coordinates to staircase coordinates.
5. `python3 StaircaseCertificates/test_export.py` independently checks source rows and inverses.
6. `python3 PageTransitionCertificates/export_release.py` constructs complete actual d2 homology comparisons.
7. `python3 tests/generate_continuation_batches.py` generates explicit Lean proof modules.
8. `bash tests/build_all.sh` and `bash tests/lean-sequential.sh` check maintained modules.
9. `bash tests/check_transition_kernel.sh` and `bash tests/check_staircase_kernel.sh` check all generated proofs serially.
10. `python3 tests/assert_continuation.py` checks the exact artifact counts, timestamps and success markers.

Generated modules avoid trusting file parsers during theorem extraction. Every
matrix identity is reduced by Lean's kernel using the proved checker. The
semantic conclusions remain about the supplied algebraic structures, not
about arbitrary spectra identified by strings. External JSON changes require
recompilation of every importing module (file elaborators do not automatically
register dependency edges with Lake).
