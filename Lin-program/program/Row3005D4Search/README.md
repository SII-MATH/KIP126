# Row 3005: complete C2 top-cell transport of d4 = 0

The new theorem is `Actual.Certificate.whole_zero4`: the entire sphere
E4 group in bidegree `(14,138)` has zero d4. The named element is the
original sphere E2 basis ID 3005, local vector `[2]`, monomial `23,1,190,1`.
Its C2 lift is basis ID 3106, module generator 373 in `(14,139)`.

This is a conditional theorem about actual Adams page systems, with explicit
coordinate, naturality, and quotient-transition assumptions. It is not a
construction of the topological Adams spectral sequence. In particular the
inherited full sphere d3 meaning still needs its original mathematical
interpretation; a database NULL is not a theorem.

## Proof and trust boundary

1. Reuse the four complete d2 complexes and all 20 polynomial map columns
   from `Fact713C2Row3005`. C2 to S0 is a top-cell map with suspension 1:
   `(s,t)` maps to `(s,t-1)`. The old exporter docstring saying `t-2` and
   its audit range string `t<=20` are inaccurate descriptions; the actual
   checked wires, SQL rows, and map metadata use suspension 1 and the six
   full source degrees 138 through 142. Those frozen files are not edited.
2. The full induced E3 map on the d3 target is the identity on a
   one-dimensional group. The existing complete sphere d3 differential is
   zero. Actual naturality therefore reflects zero to every element of
   the C2 source E3 group. No desired-cycle or individual prefix premise is
   used in this step.
3. The original C2 E2 input has an actual E3 representative. Its newly
   proved d3 cycle is sent through the full actual boundary quotient.
   `Input.Transition3` quantifies over every actual cycle; it is not a
   prescribed coordinate for the desired output. The corresponding
   sphere E4 coordinate is constructed from its complete d3 comparison.
4. The complete C2 E2 basis in `(18,142)`, the d4 target, is empty. The
   full actual quotient and its zero law propagate this to E4. Naturality
   gives zero d4 on the named sphere class, and its full one-dimensional
   E4 chart gives zero d4 on the whole group.

The unknown C2 rows 3109 and 2933 prevent a fully determined finite C2 d3
matrix directly from the raw staircase. `c2-search.json` retains that
failure. The actual proof does not fill those unknown columns with zero;
it derives the zero map from the stated actual naturality assumptions.
Row 3110's NULL at level 9995 is preserved and is not a premise of the new
proof. No C2 E4 finite chart is manufactured or required.

`Certificate` requires complete source and target d2 meanings, actual
maps whose coordinate equations cover every element, actual quotient
transition laws, the inherited complete sphere d3 meaning, d3/d4
naturality, the complete empty C2 E2 target chart, and the zero quotient
law. No sphere d4 value or desired-cycle equation is supplied.

## Same input and tactic

`Actual.result_sound` binds the user's input to the exact sphere E2 chart
and proves its same-input E5 trace, nonzero E4 representative, and zero
d4. It does **not** claim a nonzero E5 representative; incoming d4 must
be handled by the continuation's complete comparison.

```lean
example {C S : AdamsSpectralSequence}
    (D : Row3005D4Search.Actual.Certificate C S)
    (input : (S.element 2 Row3005D4Search.Source.sDegree).carrier)
    (binding : D.input.stage2.sphereCoordinates.equivalence input =
      Row3005D4Search.Data.sphereRaw) :
    Row3005D4Search.Actual.ResultValid D input := by
  row3005_d4_cert using D named binding
```

The tactic checks the goal's semantic predicate and lets Lean check the
exact input binding. Tests reject a zero input, a goal with the wrong
predicate, and mutated outgoing/incoming comparisons. Parser failures
retain the certificate path; compile records retain source locations.

## Validation

`python3 program/Row3005D4Search/compile.py Data Source Actual Tactic`
uses pinned Lean 4.32.2, `-j1`, the process shim, and existing dependency
objects. It compiles only these owned new modules and never invokes Lake.
Each attempt records source, dependency, input, log, and output hashes.
Failed attempts are retained: initial finite decidability elaboration,
the early Source dependency preflight before Data finished, and Source
transparency at the quotient coordinate rewrite. A warning-only Tactic
attempt is also retained; the final accepted attempt has no warning.

`python3 program/Row3005D4Search/audit.py` independently verifies 12 SQL
basis groups, 34 d2 columns, 20 complete polynomial map columns, five
relation-reduction steps, 11 comparison checks and 2342 cycle pairs,
40 outgoing and 32 incoming square evaluations, and equality to both
inherited sphere d3 families. All 16 possible C2 source d3 matrices are
enumerated; naturality rejects the 15 nonzero choices. Relabelled models
exercise 96 chart choices and 3072 exact input bindings. SHA-256 binds
artifacts to the observed sources; it is not mathematical evidence.

`freeze.py` records accepted objects and standard-only axiom reports.
There are no admitted proofs, custom axioms, or native evaluation proof
shortcuts in the new Lean sources. Root registration and the exhaustive
declaration audit remain the responsibility of the parent build task.

## Files

- `Data.lean`, `wire/*.json`: imported full sphere d3 and empty-target
  comparisons, named vectors, checked target-map identity.
- `Source.lean`: full E2 map descent, actual d3 reflection, exact E4 trace.
- `Actual.lean`: empty-target d4 transport and semantic result predicate.
- `Tactic.lean`: automation and input/certificate rejection examples.
- `search_c2.py`, `c2-search.json`: complete-neighborhood search retaining
  failures; only new owned output is written.
- `proof_events.py`, `search_maps.py`, `screen_products.py` and associated
  JSON/log files: bounded provenance and alternative-route searches.
- `audit.py`, `audit.json`, `audit.log`: independent finite replay.
- `compile.py`, `*-compile.json`, `evidence/`: all compilation attempts.
- `freeze.py`, `modules.txt`, `file-list.txt`, `frozen-source.json`: frozen
  handoff and exact file inventory.
