# Unique nonzero class in an actual cycle quotient

`IsUnique wire page plus element` quantifies every actual cycle and every
actual incoming element. It states that the incoming image consists of
cycles, the fixed element is a cycle and not a boundary, and every actual
cycle is either a boundary or differs from that element by a boundary.
The result concerns the entire quotient and all linear combinations.

`transport` derives it from the existing finite uniqueness theorem.
`WholeMeaning` supplies faithful coordinates, full incoming/current
coordinate coverage, zero and addition compatibility, and differential
equations on every actual element. Incoming coordinate surjectivity is
used in `image_iff` to turn a finite boundary witness back into an actual
incoming element. No actual uniqueness or quotient equivalence is assumed.

`Certificate wire page plus element` stores a finite representative plus
proved meanings and an equation fixing the caller's actual element. The
executable checker is the existing full comparison/one-dimensional
homology checker. `actual_unique_homology_cert using certificate` applies
`check_sound`, with kernel reduction for the finite check. C++ cannot
create the mathematical proof fields.

`Examples.lean` reuses the strict imported `UniqueHomologyCertificates`
sample, proves the coordinate model and shows the same tactic with arbitrary
actual objects and supplied meaning proofs. The original finite export,
JSONL batch import and diagnostics are unchanged; this directory adds the
semantic transport to arbitrary actual objects. All missing Adams meanings
and the actual Fact7.6(4) differential premises remain obligations.

Run `python3 program/ActualUniqueHomologyCertificates/compile.py` from the
repository root for a serial direct build. Successful logs list only the
standard Lean axioms; failed attempts are preserved separately.
