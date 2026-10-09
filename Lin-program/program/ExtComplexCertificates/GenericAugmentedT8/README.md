# Generated augmented t<=8 certificates

Case0 through Case8 import the generated augmentation and the corresponding
JSONL record with `generic_augmented_line%`. Each theorem proves actual
`AugmentedExact` for `GenericComponentT8.Sliced.bundle.data`. This uses the
imported data and the checked incoming arrow/minimality/augmentation
contraction; it does not assume the unfinished whole-complex `Wire.Valid`
theorem or imply a global Ext identification.

`verify.py` runs the cases sequentially with Lean -j1. `verification.json`
records exact input/source hashes, real exit statuses, wall times and the
Python RUSAGE_CHILDREN maximum RSS (a cumulative maximum across finished
children, in KiB on Linux). Per-case logs contain theorem axiom audits.
The unavailable /usr/bin/time was replaced by this Python measurement before
any case was run. No T8 sliced source proofs are edited or recompiled here.

Runtime CLI (diagnostics only, never a kernel theorem):

```
lake env lean -j1 --run ExtComplexCertificates/CheckAugmentedFile.lean GenericFreeComplexProducer/actual_t8.json GenericFreeComplexProducer/actual_t8_augmentation.json GenericFreeComplexProducer/actual_t8_augmented.jsonl
```

The CLI validates the data wire and declared augmentation, processes records
in chunks while retaining only one record (10 MB limit), prints path/line and
checker locations, continues after malformed records, and exits nonzero if
any record fails or the file is empty. The theorem importer is separate:
`generic_augmented_line% "path.jsonl", 1` materializes one record and
`lin_cert using certificate` proves it. The CLI accepts canonical ASCII JSON;
leading/trailing record whitespace is rejected by the exact roundtrip parser.

`freshness_audit.py` separately records current transitive source/imported
olean/data digests after the direct runs. Its output is explicitly a post-run
snapshot, not a retroactive assertion that those fingerprints were captured
at compilation start. A normal subsequent Lake build supplies dependency
tracking; prior source/input hashes and actual exit logs are preserved.

To import the third record (internal degree 2) directly:

```
def certificate : AugmentedCertificate := generic_augmented_line% "GenericFreeComplexProducer/actual_t8_augmented.jsonl", 3
```

The nine case modules are independent leaves, each importing only the generic
line importer and DataOnly; none imports another case. Generic CLI/import
modules do not import these examples, so ordinary users do not load Case8.

Completed direct verification: all nine cases exit 0, total approximately
432.8 seconds. Case8 took 234.2 seconds; the maximum recorded child RSS was
15,177,004 KiB (about 14.5 GiB). All nine axiom reports list only propext,
Classical.choice, and Quot.sound. These measurements are observed for this
run, not promised bounds. The runtime CLI rejects non-ASCII bytes per line
before decoding records, so invalid UTF-8 and split multibyte sequences cannot
panic the chunk reader. Header files use checked UTF-8 conversion.
