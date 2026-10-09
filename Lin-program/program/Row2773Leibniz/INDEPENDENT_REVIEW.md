# Independent row2773 Leibniz review

No correctness findings in the four reviewed leaves `Data`, `Basic`,
`Actual`, and `Semantics`. Current source/log hashes match direct successful
compilations, with sixteen standard-only axiom reports. This review did not
recompile them or modify their sources.

The raw SQL staircase row is exactly `(2773,13,135,"1",NULL,9000)`.
Its NULL d3 value stays unknown in provenance. The argument does not treat
that sentinel as a proved zero, nor assume the named source is a d3 cycle.
The E2 source local1 is the monomial `h1^2*x351`, basis row2773. It is the
ordinary product of eta `h1` at `(1,2)` and local0 `h1*x351` at `(12,133)`.

The independent script queries every basis row at the incoming, center,
and outgoing d2 degrees for all six comparisons. It rebuilds both complete
d2 matrices from SQL, rejecting NULL and out-of-range coordinates. It then
enumerates all finite cycles, incoming images and quotient representatives,
checking 93 cycle-pair image/projection equivalences. The six quotient
dimensions are respectively 1,1,1,0,2,2. In particular `(15,135)` is an
actually empty center group in the finite d2 data, not a truncated chosen
subspace; its complete quotient is zero.

All four polynomial product columns are independently rechecked against the
original SQL monomials and relation rows. `h1*(h1*x351)` gives the exact
source local1; `h1*(h0*x365)` is zero using relation row1. Multiplication
of the full left-differential target basis `h0^4` with the two full right
E2 basis vectors is zero using relation rows1 and9235. The full 1-by-2
product tensor is zero on all eight vector pairs. The audit checks the
stored tensor columns and bindings to their exact comparison objects.
`Semantics` additionally proves evaluation in an arbitrary characteristic-2
commutative ring when those exact relations vanish; relation truth itself
is an explicit interpretation condition.

`Basic.left_all_zero` descends that full product-zero statement to every
left and right quotient class. Its proof does not select a candidate for
d3(eta). `right_target_all_zero` covers the entire zero-dimensional right
target quotient. The source named product equality and quotient coordinates
are proved separately from these two vanishing statements.

`Actual.Meaning` refers to the same `AdamsSpectralSequence S` and actual
`CertifiedAdamsProduct S` throughout. Its whole right-target interpretation
is faithful and preserves zero, so the entire actual right d3 map vanishes.
Its whole left-product interpretation sends **any** possible d3(eta) value
to zero. Actual Leibniz then proves the product d3 is zero, with the required
degree transport explicitly handled. Neither d3(eta)=0 nor the named
source's desired d3 vanishing occurs among the premises. Source faithfulness
identifies the named source with that product, deriving row2773's actual
d3 zero from the exact named factors.

The actual meanings remain explicit mathematical inputs: fidelity of source,
target and right-target interpretations, zero preservation, both full
product identities and the three naming equalities. The result removes the
separate desired d3-zero premise conditional on those meanings. It does not
construct an actual Adams realization from SQL or prove the original
topological naming obligations. In the finite certificate, the six d2
comparisons certify full finite homology; the relation certificates certify
products modulo the supplied polynomial relations.

Reproduce without invoking the producer or recompiling Lean:

```sh
python3 Row2773Leibniz/independent_review.py
```

The script imports no producer helper. It reads SQL and JSON independently,
replays relation witnesses, enumerates finite homology conditions, and
validates current source/log evidence. Its report is
`independent-review.json`. The pending Fact713 overlay is reviewed separately
because importing this local zero theorem alone does not establish full
family binding or preservation of previous accepted events.
