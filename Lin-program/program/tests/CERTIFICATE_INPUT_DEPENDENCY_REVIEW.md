# Independent certificate-input dependency review

No missing compilation-time input dependency was found in the reviewed
snapshot. The independent comment-aware string walker found exactly the same
1,793 existing external file literals as `track_certificate_inputs.py`,
covering 75 libraries. No `certificate-input-extras.json` entries are required
for the current sources.

## Audit scope finding

The library globs explicitly list 969 local modules, while their local import
closure contains 972. The additional modules are
`AggregateCsigmaConditional.Basic`, `AggregateCsigmaConditional.Data`, and
`AggregateCsigmaConditional.Events`, reached through the registered
`AggregateCsigmaConditional.Matches`. An axiom audit generated only from
explicit globs omits their declarations. The parent was notified to include
the actual local import closure or register these modules explicitly.

This is a theorem-audit scope issue, not a missing certificate-file dependency:
all three modules contain inline Lean data and no external file readers.
Their object and Lake trace files exist, but this static review does not
independently claim an observed successful process exit for those builds.

## Reviewed input forms

- All compilation-time file-reading elaborators use `path:str`, with literal
  arguments at call sites. No computed compile-time path, directory traversal,
  process-produced input, environment-selected input, or binary file reader
  was found in the current local dependency closure.
- `ExtComplexCertificates.GenericFreeComplexProducerTests` calls `rejectFile`
  through `#eval` for three malformed JSON fixtures. All three helper-call
  literals are tracked under `ExtComplexCertificates`.
- `generic_augmented_line%` uses `IO.FS.Handle.mk` and reads one selected JSONL
  record. All nine callers bind the full
  `GenericFreeComplexProducer/actual_t8_augmented.jsonl` file as a binary input;
  selecting a line does not hide the dependency.
- Named `%` import elaborators, multiline arguments, JSONL batch elaborators,
  literal `IO.FS.readFile` calls, and negative fixture imports are covered.
- `RealMapCertificates.SemanticCheck` reads paths from a manifest, and other
  `CheckFile` modules receive paths as command-line arguments. These reads
  occur only when running the CLI, not when compiling its definition, so the
  runtime arguments are not additional Lake compilation dependencies.
- No current registered module reads CSV, TXT, SQLite, binary, HTML, or Markdown
  inputs at compilation time. The scanner supports CSV/TXT literal paths for
  future uses. Generated Lean constructors do not reread the database or CSV
  that an external generator originally used.

## Evidence and limits

`certificate-input-dependency-review.json` records the exact 969/972 snapshot,
every existing path and its source line/library, all file-reader sites, the
three closure-only modules, and hashes of the tracker, Lake configuration and
all 972 reviewed sources. The independent scan did not call Lake, change the
generator, or modify any Lean source.

The generator deliberately has a restricted literal path alphabet and file
extension set. A future computed path, absolute path, unusual filename, or
other format must be declared through explicit extras or added to the
discovery logic. This is a limit of future automatic discovery, not evidence
of a present missing file. The isolated cache-invalidation regression is
performed separately by the parent task; this review establishes input
discovery coverage only.
