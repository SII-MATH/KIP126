# Finite prefix import and typed proof assembly

The canonical JSON envelope contains `firstPage:2`,
`schema:"lin.permanent-prefix"`, `stages`, and `version:1`. Each stage uses
the existing `Stage`/`WireComparison` format. Fields are sorted and values
use canonical Lean JSON encoding. Unknown or duplicate fields, unknown
matrix bits, empty prefixes, invalid stages and invalid page links are
rejected. The prefix always starts at page2, as required by `System.at`.

`parsePrefix_sound` proves every successful import has `PrefixWire.Valid`.
This includes the finite checker and linked trajectory. It does not claim
that JSON carries the mathematical meaning or any infinite-page proof.

```lean
def imported : PrefixWire :=
  permanent_prefix% "PermanentCycleCertificates/stable-prefix.json"

def certificate : Certificate Examples.stable true :=
  assemble Examples.stable true imported
    Examples.meaning Examples.certificate.tail

theorem imported_permanence : Examples.stable.Permanent true := by
  permanent_cert using certificate
```

The caller supplies `PrefixMeaning` and `TailVanishing` as proved Lean
terms. `assemble` cannot fabricate either proof. The kernel tactic rechecks
the finite stages and applies the existing soundness theorem.

## C++ producer

`prefix-export` invokes the existing C++ `trajectory-export` with first
page2 using `fork`/`exec`, without a shell. That exporter performs the
comparison construction. The wrapper adds the permanent-prefix schema;
it does not implement a separate Python certificate generator.

```sh
make -C program/PermanentCycleCertificates all
program/PermanentCycleCertificates/prefix-export STAGES_FILE
program/PermanentCycleCertificates/prefix-export --batch STAGE_PATHS.txt
```

A stages file has one `K M N OUT IN REPRESENTATIVE` row per page, matching
`trajectory-export`. In batch mode, each line is a literal stages-file path
relative to the working directory, or an absolute path. The producer emits
one JSONL record per successful path, reports failed input path-list line
numbers, continues after failed records, and exits nonzero if any failed.
Whitespace and shell metacharacters in paths remain literal. Output writes
and input reads are checked. Numerical output remains untrusted until Lean
checks it.

## Lean batch checker

```sh
lake env lean --run PermanentCycleCertificates/CheckFile.lean PREFIXES.jsonl
```

Run from `program/`. The checker reports `file:line` and, for stage errors,
the stage index and page. It continues after a bad record, rejects empty
batches, returns nonzero for any error, and reports the number of accepted
finite prefixes. Its message explicitly states that permanence still
requires the mathematical meaning and all-page tail vanishing proofs.

## Verification

```sh
python3 program/PermanentCycleCertificates/compile_import.py
make -C program/PermanentCycleCertificates test
python3 program/PermanentCycleCertificates/assert_import.py
```

Import, ImportExamples and CheckFile compile with actual exit0. Four printed
axiom reports contain only standard Lean axioms. The real C++/Lean runtime
regression checks deterministic canonical output, literal paths, failed
writes, batch recovery and line numbers, 15 malformed records and a separate
invalid-link record. The imported positive example proves permanence only
after adding the existing stable-system meaning and tail proofs.
