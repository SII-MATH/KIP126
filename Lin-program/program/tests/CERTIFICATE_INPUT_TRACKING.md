# Certificate input dependencies

`track_certificate_inputs.py` generates a separate Lake `needs` target for each
registered library that contains external JSON, JSONL, CSV or TXT path literals.
The targets use `inputBinFile`: every changed byte, including LF versus CRLF,
invalidates dependent modules. File hashes record input identity; they do not
establish mathematical correctness.

Run the generator after adding a file import or registering a library:

```sh
python3 tests/track_certificate_inputs.py
python3 tests/track_certificate_inputs.py --check
bash tests/build_all.sh
```

Discovery conservatively includes every existing file path literal in the
registered source, including helper function arguments. Computed file paths
need explicit entries in `tests/certificate-input-extras.json`, keyed by the
owning library. Unregistered experimental sources and runtime CLI arguments
are outside this build dependency manifest. A direct `lean` invocation always
checks its source again; it does not consult Lake's cache.

`test_lake_certificate_inputs.py` creates an isolated core-only package and
uses this same generator, including a long array of 81 input files. Eight
actual Lake runs test initial success, cache reuse, a changed value rejected
by a kernel proof, restoration, CRLF invalidation, an unrelated file change,
missing input failure, and final restoration. The independent library must
keep its compiled timestamp throughout. Unique run directories preserve logs
and failing executions. `lake-input-cache-runs/latest.json` records the most
recent successful run and exact generator digest.

Run input mutation regressions separately from the real project build.
Likewise, full CLI regressions use built Lean modules and must run only after
the root build has completed.
