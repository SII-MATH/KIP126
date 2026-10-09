# Canonical family399 and all36 incoming targets

`export_family.py` writes `family399.json` in the exact order of the
proved Lean family: the original358 entries, then26 base completion
entries, then15 final conditional entries. The original95 bound events
and input/result/certificate requests are copied byte-for-byte into
`bound95.jsonl` and `requests95.jsonl` in this directory. The exporter
does not change any input or result vector.

`Bundle.imported_exact` identifies the imported canonical JSON with
`Final.family` by reflexivity. The imported family therefore has the
same proved coherence and original event bindings.

The36 `Bundle.Item` values are exactly the incoming rows of the original
accepted inventory, in its original order. Their `Binding` proofs check
the row's incoming role, exact object/degree/raw vector, valid full indexed
event and prefixes, target lookup, complete target comparison, matching
matrix dimensions, and equality of the whole target incoming matrix with
the source event's outgoing matrix. `binding_image` uses the event's
proved differential equation to recover an explicit target preimage.
`all_targets_zero` then proves that each named target is zero in its
finite homology quotient. It does not assume that all36 target homology
dimensions are zero: some of the original23 have nonzero quotient
dimension while their particular incoming named class is a boundary.

The conditional interpretation of row3743 and all prior interpretation
obligations remain as documented in `README.md`. This bundle does not
construct actual Adams page meanings or a sphere instance.

Run the executable checks from the repository root:

```sh
python3 program/AggregateIncomingTargetCompletion/export_family.py
python3 program/AggregateIncomingTargetCompletion/cli_test.py
python3 program/AggregateIncomingTargetCompletion/compile_bundle.py
```

The CLI test uses the existing actual Lean `CheckFile` and
`RequestCheckFile` executables. The observed results are399 coherent
blocks,95/95 accepted bound events, and95/95 accepted requested results.
Wrong object/page key, input vector, output vector, or unknown request
field is rejected at the corresponding physical input line. Valid rows
following failed rows are still checked; mixed input exits1.

An application can use the imported family with the existing interface:

```lean
example : DifferentialAt Bundle.importedFamily requestedKey input output := by
  indexed_family_cert using certificate
```

The goal fixes the requested key and vectors. The certificate cannot
select another input/result. Runtime acceptance supplies diagnostics;
the corresponding tactic invokes the proved checker soundness theorem
and kernel-reduced checks. No C++ output or content hash is trusted.
