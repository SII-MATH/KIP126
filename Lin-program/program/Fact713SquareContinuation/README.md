# Square d5 continuation

The whole square d5 theorem fills row2684 at `(12,134)` in both retained
Ctheta4 families. Each gains 16 complete comparisons, giving 1385 entries
per family. Every previous entry, matrix and raw provenance record is
preserved exactly. The raw source `[2684,"0",null,9000]` is still recorded
as unknown data; its new zero value comes from the conditional Lean theorem.

The new comparisons include the complete source d5 and d6 blocks, the
complete row2994 d5 target block, and 13 recursively required neighboring
blocks. The main named trajectory at `(9,132)` remains E2-to-E10 with input
`[true,true]` and output `[true]`. Its d10 comparison is still missing; the
next obstruction is row3147 d3 at `(16,140)` with target dimension 2. No
E11 or E12 claim is made by this package. The two remaining b candidates
are not identified or selected.

## Actual semantics

`Actual.source_previous_exact` checks that the square witness's complete
source d2/d3/d4 comparisons equal the old family entries exactly. Its
`Witness` retains full source homology meanings, full factor d2/d3 meanings,
all E2 product tensor coordinates, the factor's complete d4-target quotient
vanishing, actual multiplicative quotient transitions and local zero laws.
The square factor's incoming d4, E5 nonzero and desired d5 value are not
premises. The whole source d5 is derived by the earlier square proof.

`Actual.Input` adds complete actual outgoing-target E5 coordinates,
complete zero-dimensional incoming-source coordinates and local quotient
addition/zero laws. The whole outgoing differential follows from the
square theorem, and the whole incoming differential follows from the
complete empty source. `Input.whole` assembles the full actual comparison,
constructs E6 coordinates and proves `same_input_E6`: the caller's exact
E2 source `[true,false,false]` reaches a nonzero E6 quotient.

`Target.Input` uses the already constructed Ctheta4 row2994 E5 coordinates,
the square witness on precisely the same S and page system, a complete
zero-dimensional outgoing target and local quotient laws. The whole square
d5 gives the full incoming column at `(17,138)`; the empty outgoing target
gives its whole d5 zero. Its full quotient construction proves a nonzero E6
endpoint for the original Ctheta4 sphere E2 input `[true,true,true,false]`.
No future coordinate function or desired incoming/outgoing matrix equation
is supplied to either actual construction.

These actual results do not automatically realize every other finite
family entry. All inherited product, finite-prefix, Ctheta4 source-cycle,
full-coordinate, quotient and naturality premises remain explicit.

## Import and tactics

`wire/` contains the 16 stable version-1 complete page-comparison JSON
records. `Data.lean` imports and kernel-checks every comparison; `extra.json`
and the two `*-family.json` files support whole-family batch processing.
`branches/` stores exact raw/theorem provenance and unresolved dependencies.

```lean
import Fact713SquareContinuation.Request
open Fact713SquareContinuation
open Fact713Row3143Continuation.Constructed

example (b : Bool) (prefix : Prefix10 S pages) :
    RequestedValid b prefix ActualTraceRequestsE10.e10 := by
  fact713_square_cert using prefix

example (D : Actual.Input S pages product) (input : (S.element 2 Actual.degree).carrier)
    (binding : D.square.source.initial.equivalence input = Row2684D5Search.Data.sourceVector) :
    SourceValid D input := by
  fact713_square_source_cert using D

example (D : Target.Input C S product) (input : (S.element 2 Target.degree).carrier)
    (binding : D.previous.ctheta.transport.stage.previous.target.equivalence input =
      Fact713Ctheta4Transport.Comparison.sphere2) : TargetValid D input := by
  fact713_square_target_cert using D
```

The main E10 request supports single requests and batches with the existing
strict version-1 schema, claim `fact-7.13:E10`, source `[true,true]`, output
`[true]`. The supplied complete same-input `Prefix10` remains necessary;
finite family coherence cannot supply actual interpretations. Incorrect
source/output vectors fail in negative examples. For field and record
locations use `ActualTraceRequests.diagnose` / `diagnoseBatch` with
`ActualTraceRequestsE10.spec`, or `IndexedFamilyCertificates.diagnoseFamily`.
The generic closed checker tactic is not advertised for free actual prefixes.

## Reproduction and limits

```sh
python3 program/Fact713SquareContinuation/generate.py
python3 program/Fact713SquareContinuation/package.py
python3 program/Fact713SquareContinuation/audit.py
python3 program/Fact713SquareContinuation/reproduce.py
python3 program/Fact713SquareContinuation/compile.py
python3 program/Fact713SquareContinuation/freeze.py
```

Generation recomputes the whole dependency graph with the new whole d5
rule. The independent finite audit checks every full matrix, chain homotopy,
cycle-pair quotient criterion, predecessor dimension, adjacent matrix,
consecutive page and family-key pair, plus exact previous provenance.
Small relabelled carrier tests check the same-input E5/E6 quotient. The
universal actual guarantees are Lean proofs. Stable byte reproduction and
hashes establish consistency only. Negative filtrations in helper graph
keys are retained as finite dependency bookkeeping; actual spectral-sequence
statements use legal natural-number filtrations.

Every compile attempt is retained, including historical errors; only
successful stable-input attempts are frozen. The accepted proofs use no
proof holes, custom axioms, native evaluator or implicit C++ trust. Only
standard `propext`, `Classical.choice` and `Quot.sound` are allowed by the
axiom audit. This verifies finite certificates and conditional actual
transport, not an Adams sequence constructed from original topology or an
unconditional Kervaire theorem.
