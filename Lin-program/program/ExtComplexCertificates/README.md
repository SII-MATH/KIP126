# Finite Hom complex

The module constructs `Hom(-, F2)` for an explicitly supplied finite chain
segment. `dual_pairing` proves the transpose matrix computes precomposition of
functionals, for every input vector. `checkDualComplex_sound` turns a checked
chain complex into the reversed dual cochain complex. `HomCycle` consists of
functionals vanishing on original boundaries; `homCycle_vanishes` proves this
for all linear combinations. `HomBoundary` is the actual image of the preceding
dual differential.

`NonzeroHomClass` asserts the dual complex condition, cocycle condition and
nonmembership in the space of coboundaries. The checker uses a separating
functional to reject every possible coboundary, not just named candidates.
`checkNonzeroHomClass_sound` is its soundness theorem and `lin_cert using
separator` is its tactic interface. Examples use the nontrivial three-dimensional
chain complex from `ResolutionCertificates` and reject a noncycle.

This construction is Hom of finite F2 vector-space maps, **not** Hom over the
Steenrod algebra. It does not identify its cohomology with topological Adams E2
or Ext_A. Such identification requires a graded A-module action, A-linearity,
augmentation, freeness/projectivity and a genuine A-module resolution. The
current Milnor finite-window coproduct checker does not establish these missing
structures. No topology realization or resolution hypothesis is hidden here.

The source audit scans all 362 SQLite files under `program/upstream` for table
names containing `resolution` or `_res_`; there are no matches. AdamsRes C++
source exists, but this naming audit is not proof that no encoded resolution
information exists. Available S0 databases provide AdamsE2 generators/relations/
basis and staircase data, not an identified chain resolution with differentials
for this Hom construction. `source_audit.json` records the scan result.

Basic and Examples compile directly. Both `dual_pairing` and
`checkNonzeroHomClass_sound` depend only on standard `propext` and `Quot.sound`.
No custom axiom, `sorry` or `native_decide` is used. This is a typed algebraic
bridge reusing existing matrices and certificates; no new raw resolution
dataset, quotient realization or resolution exporter is asserted.

`Equivariant.lean` restricts Hom to matrices intertwining a specified finite
family of source/target generator-action matrices. `checkEquivariant_sound`
extends commutation checks on matrix entries to all input vectors.
`EquivariantHom` is the subtype satisfying these actual equations.
`equivariant_precompose` and `homDifferential` prove precomposition by an
equivariant differential stays in that restricted Hom space.
`homDifferential_squared` proves the induced consecutive maps compose to zero.
The combined complex/equivariance checker has a `lin_cert` instance.

The examples use a nonzero square-zero 2-by-2 operator, prove its equivariant
complex and identity Hom map, construct the restricted differential, and reject
a projection that does not commute. These are specified generator actions;
the implementation does not automatically verify an entire Steenrod algebra
presentation. To identify these as A-linear maps one must prove the action
matrices satisfy all defining algebra relations and represent the intended A
action. To compute Ext one additionally needs a projective resolution and
its augmentation/exactness proofs. These obligations remain explicit.

`Presentation.lean` gives noncommutative F2 word-polynomial action semantics.
Words preserve generator order; polynomial lists add matrices by xor, including
cancellation. `word_append` proves concatenation acts by composition.
`checkPresentation_sound` proves each supplied relation acts as zero on every
vector. `relation_context` proves vanishing under multiplication on either side.
`equivariant_word` and `equivariant_polynomial` prove generator-equivariant maps
intertwine all words and word polynomials. This provides the action laws needed
for a specified free-associative-algebra presentation; it does not import actual
Steenrod relations or identify an abstract quotient type with Steenrod A.

`PresentationExamples.lean` uses two genuinely noncommuting upper/lower
nilpotent matrices. Their square-zero relations pass, while their proposed
commutativity relation is rejected. Thus these operations do not accidentally
reuse the commutative named-element polynomial representation.

`MilnorAction.lean` connects the presentation layer to checked Milnor products.
The degree-at-most-one basis is dual to 1 and xi_1. The two action-matrix columns
are constructed from the certified outputs of Sq1*1 and Sq1*Sq1.
`matrix_entry_semantics` proves each entry equals the dual-coproduct pairing
specified by `IsMilnorProduct`. The resulting nonzero operator satisfies the
word relation q^2=0. A further theorem cites the checked Sq1 square in the larger
degree-three window, explicitly checking the degree-two coefficient beyond
the degree-one cutoff. No general graded support theorem upgrades this to
unbounded product equality. This is a concrete truncated action example, not a full
Steenrod representation or topological action identification.

`SqOneResolution.lean` constructs the infinite periodic augmented complex
whose every positive differential is the certified Sq1 multiplication matrix.
`exact_every_degree` proves ker(q)=image(q) for all natural degrees using a
checked contraction. The augmentation to the trivial one-dimensional module
is equivariant, surjective and exact. `regular_coordinates` reconstructs vectors
on the pair (e0,q e0); it does not prove abstract module freeness.
`restricted_differential_zero` proves
Hom into the trivial module has zero differential in all degrees, and
`homCoordinate` gives an explicit bijection of each equivariant Hom space with
one Boolean coordinate (a type equivalence, not a constructed linear equivalence).
This is explicit data for the expected q-square-zero/A(0) model, not a formally
identified A(0)-free resolution or a resolution over the full Steenrod algebra.
It does not install a Mathlib
abstract quotient-ring/projective-resolution object or claim topological Ext.
