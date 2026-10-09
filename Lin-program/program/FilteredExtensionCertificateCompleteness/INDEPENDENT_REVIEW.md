# Independent review of certificate and search completeness

No correctness finding in the four Lean leaves. The theorem is complete for
the unchanged `FilteredExtensionCertificates.ResultValid D`, including its
original source-cycle membership condition and the entire specified finite
filtrations with zero tails. It does not replace this condition with a weaker
leading-class event, and does not assert completeness for external topological
or imported partial data.

The linear proofs use actual source columns, each obtained by evaluation on a
unit vector. Whole range inclusion gives a preimage of every such column,
which supplies exactly the factor matrix checked by the existing checker.
The map-preservation construction applies this to the mapped source columns.
Redundant or empty generator lists and zero-dimensional ambient groups are
covered; there is no unsupported independence or rank assumption. The
extension equation yields actual source/target range-membership witnesses.

The certificate assembly supplies every structural and pointwise field:
complete source and target descent families, complete map-preservation
families, source/image/target memberships, and representative corrections.
It proves existence using classical choice. The separate executable search
uses explicit lists of Boolean functions and matrices; `mem_allCertificates`
covers every field combination of the nine-field certificate structure.
`find?` then applies the unchanged checker. Soundness handles a returned
certificate, and completeness ensures that failure means no semantic witness
exists. The empty-domain function enumeration is a singleton, as required.

The search is an exponential reference implementation, with the documented
bit count `depth*(ha^2+hb^2+hb*ha)+2*ha+3*hb+a`. It allocates lists and has no
claim of practical large-input performance. The tactic uses kernel reduction
and the proved `searchCheck_sound`. No completeness theorem for the separate
C++ producer or wire parser is inferred.

Examples exercise empty dimensions, an actual nonzero identity equation,
nonzero higher-source correction, wrong output, zero-tail membership,
nondecreasing input, and non-preserving input. The last two reject even when
the requested pointwise equation is zero, ensuring structural conditions are
not bypassed.

The independent Python audit checks 499 whole-range/factor equivalences and
1,871 membership equivalences across dimensions and generator counts 0--2.
It separately enumerates all scalar certificate fields for 672 input cases
with depths 0--2, obtaining 137 accepted and 535 rejected cases. Direct
quotient semantics agrees with certificate existence in every case. This
oracle supplements, rather than substitutes for, the general Lean proof.

All four observed direct compilations have exit zero, with 8+5+7+8 = 28
standard-only axiom reports. The final source, log, and current object hashes
matched the direct records at review time. Archived failed development logs
are not counted as proofs. Reproduce this review with
`python3 program/FilteredExtensionCertificateCompleteness/independent-review.py`.
