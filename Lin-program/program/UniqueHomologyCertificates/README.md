# Unique nonzero class in the whole finite homology

`IsUniqueNonzeroClass outgoing incoming named` says the matrices form a
complex, the named vector is a cycle and not a boundary, and every cycle
is either a boundary or homologous to the named vector. This quantifies
every linear combination, not a finite list of candidate names.

The certificate is a complete one-dimensional homology comparison. Its
matrix identities prove all cycles modulo all incoming columns have one
F2 coordinate; checking the named cycle has nonzero coordinate proves the
specified result. `certificate_sound` binds the actual matrices and named
vector supplied in the theorem goal.

```lean
example : IsUniqueNonzeroClass outgoing incoming named := by
  unique_homology_cert using certificate
```

`Examples.both_boundary_choices` covers both explicit boundary choices in
the existing Fact 7.6(4) finite reduction. The matrices and their Adams
interpretations remain distinct: this is not an unconditional E5 theorem.

## Production and import

`unique-export K M N OUT IN NAMED` reuses the C++ complete comparison
solver. Matrices are row-major bit strings; `-` denotes an empty matrix.
`--batch REQUESTS.txt` processes one request per physical line, reports
line-specific errors and continues, returning nonzero if any request fails.
Discard the whole output when the producer exits nonzero.

Output is canonical JSON containing `comparison`, `named`, `version`.
`unique_homology% "file.json"` strictly parses it and rechecks the complete
comparison, homology dimension and named nonzero cycle. Unknown/duplicate
fields, malformed dimensions and incorrect results are rejected. Importing
does not authorize a theorem: `lin_cert` applies proved soundness and
kernel-reduces the checker.

The producer can propose a homology space of dimension other than one;
Lean rejects this as a uniqueness certificate. Hashes and C++ are not
mathematical premises. No new axioms or native proof shortcuts are used.

```sh
./UniqueHomologyCertificates/unique-export 1 4 2 1100 01010110 0010
lake env lean --run UniqueHomologyCertificates/CheckFile.lean CERTIFICATES.jsonl
python3 UniqueHomologyCertificates/test.py
```
