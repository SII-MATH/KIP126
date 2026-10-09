# Independent review of representative-square certificates

No correctness findings in the three frozen Lean leaves. Their source and
dependency hashes match successful direct compile records: three exit codes 0
and 14 reports using only standard axioms. This review changes no Lean sources
and runs no global build. See the JSON report for current object hashes.

`Vector` is a genuine XOR additive group, `hom` is the associated additive
homomorphism, and `higher` is its full image subgroup. The three extension
witnesses are checked through exact source/target preimage equations. The
commuting square and subgroup factorizations are full matrix equations, whose
proved linearity consequences apply to every vector. The checker verifies either
first factorization and the final factorization, then uses the representative
square theorem to construct the fourth extension. That extension is not a
certificate premise or supplied output witness.

Strict canonical JSON roundtrip detects duplicate/unknown fields and alternative
encodings; typed decoding checks all vector and matrix sizes, versions, and
branches. The decoded data fixes the proposition `WireValid`. File elaboration
constructs literals and reports advisory diagnostics; the final tactic proves
the Boolean check by kernel reduction and applies proved soundness. Batch
soundness propagates both decoding and semantic failures. External import files
must be tracked as build dependencies or explicitly regenerated, as documented.

The independent replay checks all 65,536 2x2 square combinations, all 65,536
factor combinations, 262,144 genuine extension witness triples, every one of
the 1,480 exported wires, and 16,441 single-bit witness mutations. Redundant
generator mutations are allowed to remain valid when their equations still
hold. Every accepted wire has independently checked full coset semantics.
The frozen examples additionally prove nonzero transfers with proper nonzero
subgroups and that omitting the final condition can make the conclusion false.

This certifies finite additive-group and representative-coset algebra. It does
not identify these subgroups with the paper's actual filtrations or crossing
definitions, and does not prove Theorem 6.1 or construct its spectral sequences.
No custom axiom, admitted proof, native evaluator, or C++ trust is introduced.

```sh
python3 program/RepresentativeSquareCertificates/independent-review.py
```
