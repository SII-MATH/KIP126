# Fact 7.19: constructed actual E6 trace

Three Lean modules construct the actual quotient trace for the named initial
vector of `h1 x121,7` at `(s,t)=(8,130)`. The only supplied coordinates at this
bidegree are the additive E2 coordinates. Four dependent step inputs provide
the complete neighboring actual differential meanings and local zero/addition
laws for the actual homology identification. All E3-E6 coordinates and quotient
formulas are then constructed.

`Trace.lean` proves the four incoming nonboundary statements, constructs the
same raw element's E6 endpoint and proves it is nonzero. `ResultValid` binds
the caller's exact E2 input to the existing named target and requires an actual
`ManualInputObligations.Trace` from that input to a nonzero E6 element.

```
example (certificate : Prefix6 S pages initial) :
    ResultValid S pages initial (raw initial) := by
  fact719_cert using certificate

example (certificate : Prefix6 S pages initial)
    (input : (S.element 2 degree).carrier)
    (binding : initial.coordinates.equivalence input = Fact719PageCertificates.target) :
    ResultValid S pages initial input := by
  fact719_cert using certificate named binding
```

The tactic checks the result type and applies `result_sound`; it can use a
local naming proof automatically. A wrong goal type gives a dedicated error;
a wrong input or prefix fails Lean's exact type check. Regression examples
confirm that the same evidence does not prove the result for the zero input.

The four fixed finite wires and initial polynomial naming reuse
`Fact719TrajectoryCertificates`. Their 36 full predecessor comparisons remain
unchanged. This package introduces no Fact 7.13-specific abstraction or data.
The generic quotient construction is imported directly from
`ActualAdamsHomologyCoordinates`.

Raw staircase row 2433 remains `(8,130,"0",NULL,9994)`. The finite prefix ends
before its unknown d6. Earlier imported zero-prefix assertions still require
the explicit whole actual differential interpretations. The structured prefix
is a package of mathematical proofs, not C++ evidence capable of discharging
those meanings. No actual sphere realization, E7 survival, or Lemma 7.20
extension is asserted.

Run from the repository root:

```
python3 program/Fact719ConstructedActual/compile.py
python3 program/Fact719ConstructedActual/check_models.py
```

All three leaves compile serially with exit zero and 21 standard axiom reports.
The finite oracle covers 32 carrier relabelings, including nonzero labels for
the actual zero, with 128 same-raw quotient steps and incorrect-input rejection.
