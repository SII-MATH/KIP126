# Alternative C++ homology coordinates

The reproduced C++ export contains 1,234 wires. Of these, 1,195 match the
existing checked family exactly; 39 use different comparison witnesses for
the same dimensions, outgoing differential and incoming differential.
This directory imports those 39 wires, checks their full comparisons, and
constructs equivalences between their homology coordinates and the original
batch coordinates. The original family is unchanged.

Each `coordinatesN` definition uses `HomologyCoordinateChoice.equivalence`
on the identical complete complex. The proof transports the new complete
comparison using both `same_complexN` matrix equalities. All four dimensions
are made explicit, including the homology dimension hidden by JSON parsing;
this fixes the elaboration failure without relaxing any comparison check.

The generic equivalence factors through the actual cycle/boundary quotient,
has two-sided inverses, preserves addition, and is compatible with every
quotient class. The independent finite review finds a nonidentity coordinate
map in 34 cases. In the remaining five the witnesses differ but the induced
coordinate map is identity. No assertion allows reusing later matrices
unchanged after arbitrary basis replacement.

From `program/`:

```sh
python3 Fact713CppCoordinateChoices/generate.py
python3 Fact713CppCoordinateChoices/compile.py Data
python3 Fact713CppCoordinateChoices/independent_review.py
```

The generator reads the fixed manifest, complete original family, reproduced
C++ output and the existing 39 wire files. It verifies every index and exact
complex binding before regenerating `Data.lean`; it does not rewrite the
wire files. `generation.json` records all source input hashes. Repeated
generation is byte-identical. The direct Lean compilation returns zero and
prints 39 standard-only axiom reports.

Failed prior source/log/compile-record snapshots are preserved with
`before-dimension-fix-` names, and failed logs remain `failed-` files.
Only current successful compile records count as proof evidence.
`frozen-source.json` pins completed sources and inputs; later Lake object
hashes can change and must be recorded separately. C++ and hashes are not
part of the mathematical trust root.
