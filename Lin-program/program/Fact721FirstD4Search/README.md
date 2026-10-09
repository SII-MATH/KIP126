# Fact 7.21 first class: C2h6 d4 detector and actual E5 prefix

The new detector proves the complete actual d4 map at sphere degree
`(11,133)` is zero, conditional on the displayed actual homology meanings,
map interpretations, quotient transition laws and d4 naturality. It extends
the existing same-input E4 prefix of `h6 M d0` to a nonzero E5 endpoint.
This is not a permanence result.

## Complete source computation

`search.py` screens all 70 configured S0 maps at source `(11,133,e1)` and
all three nonzero vectors of the full target `(15,136)`. Exactly `C2h6` and
`DC2h6` kill the named source at E3 and inject the full E3 target. It retains
21 unknown map records, 17 nonzero sources and 30 noninjective targets.
`review_search.py` independently replays every reduction and quotient and
checks byte-identical regeneration.

The selected `S0__C2h6` detector has 16 full E2 matrices, 34 columns and 13
explicit module-relation reductions. The importer checks these in
`Maps.lean`. `Comparison.lean` checks 12 complete d2 complexes and both
squares for each of six full E3 maps. `D3.lean` checks four complete d3
complexes and both adjacent squares for each of two full E4 maps:

| Position | Sphere E4 dimension | C2h6 E4 dimension | Induced map |
| --- | ---: | ---: | --- |
| Source `(11,133)` | 1 | 0 | Zero on every element |
| Target `(15,136)` | 2 | 2 | Identity in canonical coordinates |

The target injection is on the entire two-dimensional quotient. Neither a
single chosen target column nor the raw level-9000 marker supplies it.

The C2h6 incoming d3 at `(11,133)` requires a nontrivial coordinate change:
the staircase vectors `(1,1)` and `(0,1)` have images 0 and 1, so its two
canonical columns are both 1. The sphere incoming column is `(1,1)` in
canonical coordinates. `audit.py` independently reconstructs every d3 column
from the SQL rows before checking all quotient identities and chain maps.

The two sphere d3 NULLs are preserved as explicit existing conditional
theorems: row2622 uses `Fact713DC2h6Source.Actual.actual_row2622_d3_zero`,
and row2684 uses `Fact713NextSourceSearch.Actual.actual_row2684_d3_zero`.
Future event prefixes and boundary columns are still imported data whose
actual interpretation is a premise. No raw unknown value is changed.

## Actual semantics and tactic

`Actual.actual_row2622_d4_zero` applies to every element of the actual sphere
E4 carrier. Its `Meaning` supplies entire d3 complex interpretations and
current map coordinate laws; `ActualDescent.Input.Transition` supplies the
actual quotient map law. The generic proved descent theorem derives the
E4 coordinate formula. d4 naturality and the zero C2h6 source then force
the sphere d4 to vanish by full target injection. No desired d4 value or
next-page coordinate formula is supplied.

`Constructed.assemble` uses that whole-map theorem on the existing
`Fact721ConstructedActual.First.Prefix4` endpoint, irrespective of its
coordinate naming in the detector. The existing prefix is the same raw E2
input. Complete zero-dimensional actual incoming coordinates at `(7,130)`
force the incoming d4 to vanish. Actual target coordinates and local
quotient zero/addition laws remain explicit. Its next E5 coordinates,
quotient trace and nonzero endpoint are constructed.

```lean
example (P : Fact721FirstD4Search.Constructed.Prefix5 S pages initial) :
    Fact721FirstD4Search.Constructed.ResultValid S pages initial
      (Fact721ConstructedActual.First.raw initial) := by
  fact721_first_e5_cert using P
```

The alternative `fact721_first_e5_cert using P named bindingProof` checks a
supplied input against the exact raw class. Wrong goal and zero input
examples must fail before the negative test closes. `MapSemantics.lean`
proves all-vector interpretations of the checked coefficient matrices
under actual generator-image and relation-vanishing premises.

## Verification and remaining scope

Run scripts from the repository root:

```sh
python3 program/Fact721FirstD4Search/review_search.py
python3 program/Fact721FirstD4Search/audit_matrices.py
python3 program/Fact721FirstD4Search/audit.py
python3 program/Fact721FirstD4Search/check_models.py
python3 program/Fact721FirstD4Search/compile.py
```

The recorder preserves each actual Lean attempt, including failed source
iterations. Failed elaborations may print `sorryAx` as Lean error recovery;
only successful checked outputs enter the accepted record. All successful
axiom reports contain only standard Lean axioms. No source proof uses
`sorry`, a custom axiom or `native_decide`. SHA-256 records provenance and
byte identity only.

Original Adams realization, topology, actual naturality and imported row
interpretations are not established here. The exact incoming E4 zero
comparison at `(7,130)` already exists in the checked finite family; its
actual coordinate interpretation remains explicit. No outgoing tail or
later E6-to-permanence statement is proved. The historical earlier E4-only
reports remain unchanged; this directory records the new conditional E5
extension separately.
