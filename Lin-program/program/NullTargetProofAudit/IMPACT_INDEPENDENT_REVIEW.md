# Independent NULL-marker impact review

The accepted 95 obstruction certificates are not contaminated by the two
NULL outgoing markers. The audit checks both the exact accepted row list in
`AggregateEliminationCertificates.Data` and source-degree/raw-vector matches
against all 95 actual bound records. Rows 2696 and 2852 are absent from both;
the proved exact residual list explicitly retains them.

There is a metadata wording risk. `AggregateTargetInventory.generate.py`
classifies every level strictly between 9000 and 9999 as `stored_outgoing`
without checking `diff`. Consequently the count of 63 outgoing inventory rows
includes row 2696 at level 9993 with NULL and row 2852 at level 9995 with NULL.
The corresponding `TargetRow.role = outgoing` supplies a matching orientation
only. It is not evidence of a nonzero differential. Phrases such as "known
incoming/outgoing" and "excluding each of 101 entries" in the older inventory
README must not be read as saying those two differentials are known nonzero.

The upstream `SetDifferential` implementation distinguishes NULL from a
nonempty target: `dx == NULL_DIFF` stores an undetermined level `10000-r`,
whereas `dx.empty()` increments r before storing NULL at the next level.
Thus these NULL markers identify the next undetermined page. They supply
neither a zero nor a nonzero value on that page. The exact proof records
2422885 (part3 physical line 935536) and 2423248 (line 935913) both retain
`dx=[NULL]` and `reason=[NULL]`, consistent with the hint interpretation.

`AggregateEliminationCertificates.obstruction_sound` requires an actual
valid bound wire, including the checked nonzero target, before producing
`source_not_kernel`. Its semantic transport similarly uses an explicit
indexed event interpretation. No theorem in this path concludes nonzero from
the role label alone. The 59 accepted outgoing and 36 accepted incoming
obstructions therefore remain separate from the 63/38 inventory counts.

The older `RemainingThreeAudit` correctly retains NULL as missing and does
not choose an explicit target. Its hypothetical discussion of a future
nonzero d7/d5 certificate is a possible obstruction route, not evidence that
a nonzero value is forced. A continuation must retain zero as a candidate
unless separately excluded. The `RemainingUnknownImpact` dependency ranking
is also a candidate-search inventory, not a list of established events.

No registered source, inventory, certificate, or old report was modified by
this review. The independent script saves exact input hashes and the exclusion
checks in `impact-independent-review.json`. Reproduce with
`python3 program/NullTargetProofAudit/impact-independent-review.py`.
