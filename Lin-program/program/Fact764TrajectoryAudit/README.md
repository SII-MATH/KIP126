# Fact7.6(4): exact six unknown row/page dependencies

trace.py streams all three pinned proof CSVs and records exact degree/page
events, full monomial summands, source hashes and physical line numbers in
sources.json. A same-degree event on a different vector is NOT evidence for
the requested vector. The final snapshot and historical branch state differ.

| Source row / page | Actual class | Relevant evidence | Remaining issue |
|---|---|---|---|
|3564 / d3 at(18,145)|h1*x126,17, local1/global3562|N382803 is on local4 with output2, not this class|No exact matching zero proof; nonzero target dimension3|
|3750 / d4 at(21,147)|x126,21, local0/global3748|T154532--154537 exclude six possibilities; later NULL2425016|Remaining affine candidates {0,1,2} plus optional3; no single d4 value|
|3993 / d3 at(25,150)|g^4*(Delta h1g), local2/global3994|N23221 concerns vector0,1,3, not local2|Target(28,152) selected E3 dimension0; complete d2 comparison can eliminate|
|3994 / d3 at(25,150)|x125,25,2+x125,25, local0+1|N23221 concerns vector0,1,3|Same zero-target route|
|3993 / d4 at(25,150)|g^4*(Delta h1g)|G154883 is on0,1, not local2|No exact matching d4 proof; target selected dimension1|
|3994 / d4 at(25,150)|x125,25,2+x125,25|G154883 explicitly records d4[0,1]=[]|Degree-reason outcome still requires historical target/candidate check|

BranchReplayCertificates already contains the finite six-candidate exclusion
and the remaining affine line for local0. D154545 concerns local1, not local0;
it cannot discharge row3750. Its seven hypothetical tests must not be reused
as though they prove the local0 value. Existing product/map semantics and
nonimage leaves are relevant, but historical page compatibility remains.
The previously solved row2858/Fact761 override is a different class/degree
and cannot be reused by matching a sentinel level.

Two of the six unknowns have the same zero target and can be handled by one
complete d2 homology comparison plus zero-codomain uniqueness. Four remain
nonzero-target issues, including an actually unknown d4 event, not merely
permanent sentinels. No unknown has been assigned zero in this audit.

An unconditional E4 prefix for the(21,147) source is NOT currently available:
it already needs incoming d3 row3564. The(25,150) target E4 prefix may become
available after checking its zero d3 target, but that does not establish the
source E4 or the historical unique-survivor assertion. Thus no fake
"no-unknown E4" trajectory is generated. The existing d2 quotient checks and
conditional BranchReplay conclusions remain valid at their stated scope.

## Target-side E4 now checked

Generated.lean in this audit directory (namespace Fact764TrajectoryCertificates)
checks four complete comparisons, including the entire d2 quotient of(28,152)
which is zero. The two raw-NULL rows retain NULL; their d3 coordinate values
are unique because the target is Vec0, with explicit zero-target theorems.
The local2 target representative has a linked finite E4 trajectory. This
eliminates those two finite coordinate blockers and proves target-side E4,
not source-side E4, d4 permanence, or the historical unique E5 survivor.
The module compiled directly with Lean -j1, exit0.
