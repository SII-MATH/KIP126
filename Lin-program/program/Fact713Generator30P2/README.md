# P-squared detection and explicit actual representatives

Multiplication by the sphere class P-squared at `(8,30)` sends Cnu generator
30 at `(10,55)` to raw staircase row 1183, base `0`, at `(18,85)`. The latter
is recorded as the d4 target of row 1078 at `(14,82)`. Its raw level 4 is
provenance, not a theorem that an arbitrary E3 element is a cycle.

Six complete action matrices and six complete d2 quotients verify the whole
source and target E3 maps `(1) -> (1,0)`. Five polynomial columns use eight
explicit relation reductions. Both adjacent d2 squares are checked. The
target map is injective, so the actual module Leibniz rule detects the d3
of generator 30 once the source product is known to be a cycle. The sphere
P-squared d3 is derived from its empty actual target.

`Detection.BoundaryRepresentative` states the precise remaining meaning:
an actual E3 cycle represents the actual E4 d4 boundary, through the supplied
actual homology identification. `generator_cycle` additionally requires
that this representative has the same complete quotient coordinate as the
computed P-squared product. It then proves the generator-30 d3 zero. These
actual representative inputs are not inferred from the raw database label.

`Assembly.row3247_d3_zero` connects this result to the alternate factorization
in `Fact713Row3247ProductSearch`, then to h0/d0 joint detection and the
Cnu-to-sphere top-cell map in `Fact713Row3247Source`. The factorization is
derived from the checked equality of full finite quotient classes and a
whole actual factor-action meaning. The d0-product-cycle premise is no
longer supplied directly. The h0-product-cycle and the actual P-squared
boundary representative still remain explicit mathematical inputs. No
comparison family is extended as an unconditional consequence of this rule.

The independent raw-source audit checks all relations, 15 complete vectors,
45 quotient pairs and ten adjacent-square vectors. The final compiler
records document the accepted proofs and their foundational axiom reports.
Neither SQL NULL nor a boundary/survival level is converted into an axiom.

```sh
python3 program/Fact713Generator30P2/generate.py
python3 program/Fact713Generator30P2/generate_comparison.py
python3 program/Fact713Generator30P2/audit.py
python3 program/Fact713Generator30P2/compile.py
```
