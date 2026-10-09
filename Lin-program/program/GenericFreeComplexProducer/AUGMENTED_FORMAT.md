# Generic augmented certificate producer

Build the separate binary without changing existing producers:

```
c++ -std=c++17 -O2 GenericFreeComplexProducer/augmented.cpp -o GenericFreeComplexProducer/generic-augmented
GenericFreeComplexProducer/generic-augmented DATA.jsonl AUGMENTATION.json T_MAX OUTPUT.jsonl
python3 GenericFreeComplexProducer/augmented_test.py
```

DATA is exactly one existing dense generic free-complex input record.
AUGMENTATION has canonical key order `{"values":[true,false,...],"version":1}`;
whitespace is accepted, but numeric values, unknown/duplicate fields and
unknown/null entries are rejected. The vector has exactly n Boolean values,
is supported in degree (0,0), and is not all zero. Every edge monomial must
have strictly positive weight. These are the same sufficient conditions as
Lean's generic field augmentation checker.

For each t=0..T_MAX the producer recomputes the full incoming actual Milnor
component, including every product witness and complete ordered coordinates.
It constructs the outgoing augmentation matrix from unit coefficients and
the declared generator values, then solves the binary contraction equations.
Output is one canonical AugmentedCertificate JSON record per internal degree,
with fields `down,incoming,t,up,version`. In particular t=0 includes the
augmentation row, whereas higher degrees have a zero-dimensional target.
No contraction is manually supplied. Missing contractions fail with the
component degree, and no partially successful output file is emitted.

Limits inherited from the component engine: rank 1..8, n<=32, t<=12,
component dimension<=64, bounded coproduct/output sizes and contraction
system size. These are resource limits, not mathematical assumptions.
The implementation is isolated in a separate source/binary and does not
modify the existing generic product or component producers.

The regression script regenerates t<=4 (5 certificates) and t<=8
(9 certificates), verifies determinism and independently rechecks raw source
edges, coordinate completeness, actual coproduct/product outputs, matrix
entries, augmentation annihilation and contraction identities. Nine malformed
or mathematically invalid inputs must fail. `augmented_audit.json` records
source/input/output hashes; hashes establish identity, not correctness.

`GenericAugmentedProducerExample.lean` imports the actual generated t4 unit
certificate, proves definitional equality with the earlier checked fixture,
and proves actual AugmentedExact via `lin_cert`. All nine t8 augmented
components subsequently passed direct kernel checking in
`ExtComplexCertificates/GenericAugmentedT8/`; that directory records the
actual exit statuses, resource measurements, and trust limits. All C++
remains untrusted.
