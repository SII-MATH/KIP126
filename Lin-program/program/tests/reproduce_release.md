# Reproduce fixed-release checks

The downloaded archive checksums are in release-provenance.json, original
Zenodo metadata in upstream/zenodo-record.json. Extraction required the local
unrar build, whose source is also archived under upstream/. Source archives
remain untrusted mathematical inputs.

From program/ after make all:

```sh
python3 upstream/normalize_inventory.py
python3 PropagationCertificates/audit_proofs.py
python3 tests/export_release.py
python3 tests/test_d2_export.py
python3 tests/release_matrix_queries.py
python3 tests/release_complexes.py
python3 tests/generate_release_batches.py
bash tests/check_release_kernel.sh
bash tests/check_complex_kernel.sh
```

The exact matrix theorem input is already preserved in lean-batches/. The
JSONL-to-Lean generator is LinearCertificates/import_jsonl.py; partition input
into groups of at most 100 records to avoid accumulating kernel environments
for thousands of declarations in one process. Each batch has its own namespace.

Each proof is about the matrix shown in its declaration. Source name, degree
and source checksums establish traceability, not an Adams comparison theorem.

The producer d2-export links SQLite3 and opens databases read-only. The reference
linear producer limits dimensions to4096; appendix query generation uses a
smaller explicit size cap and records skipped blocks as unresolved. No skipped
block is treated as empty or nonhit. Producer caps limit applicability, not the
soundness of accepted Lean proofs.
