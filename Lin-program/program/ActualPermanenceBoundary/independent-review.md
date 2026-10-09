# Independent semantic review

No soundness finding in the reviewed `Basic.lean` and `Cases.lean` interfaces.
The four stage vectors match the existing named targets: Fact7.6(2) local1
at (14,139), Fact7.6(3) local4 at (10,134), and the two Fact7.21 targets local1
at (11,133) and local0 at (12,134). Independent finite replay checks the full
comparison identities, each target's outgoing value, all incoming vectors,
and a nonzero projected class.

`PageData.Meaning` contains all-vector incoming/outgoing equations, faithful
coordinates, zero meanings and a cycle-to-next projection equation. These
are actual mathematical premises. In particular, the actual nonboundary
conclusion covers arbitrary incoming elements; it is not restricted to a
list of named classes. Incoming coordinate surjectivity is unnecessary for
this direction of the implication.

The singleton prefix covers System index0, Adams page2. Its length1 cutoff
starts the tail at System index1, Adams page3. `TailVanishing s 1` requires
the full actual incoming and outgoing spaces to be subsingletons from that
point onward. This condition does not mention the selected element or its
permanence, so the implication is not circular. It is nevertheless a strong
assumption, and this directory does not prove that the actual Kervaire
targets satisfy it. The actual quotient law `System.homology_zero` is also
an explicit mathematical input.

`permanent_cert` uses a `Certificate s x` indexed by exactly the system and
initial element in the goal. Its finite Boolean prefix check is proved via
kernel `decide`; the semantic meaning and infinite tail are proof fields,
not inferred from the check or the C++ producer.

The review is conditional at the same boundary as the code. It does not
establish actual topology, a full Adams realization, the row-prefix source
semantics, or infinite tail vanishing. The named polynomial-to-topological
identification additionally needs the existing expression theorems and their
interpretation. The parent's build process owns compilation evidence; this
review does not interpret historical failed logs as current results.

Reproduce the arithmetic replay and source digest record with
`python3 program/ActualPermanenceBoundary/independent-review.py` from the
repository root. `independent-review.json` records the exact reviewed sources.
