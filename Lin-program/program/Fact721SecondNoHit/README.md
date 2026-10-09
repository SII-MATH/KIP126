# Fact 7.21 second class: all-page incoming exclusion

The same original E2 class h5*x91,11 has a proved nonzero actual E8
endpoint in Fact721SecondE6. Fact721SecondLater.Incoming proves that
every actual incoming map on every page r >= 8 vanishes, using the five
complete empty E2 source degrees and the filtration bound for r > 12.

This package combines those results with ActualFiniteNoHit.no_boundary_ever.
It proves the original E2 input does not lie in BInfinity. It does not
assume that the input survives beyond E8. An eventual outgoing death does
not invalidate incoming exclusion and does not establish permanence.

full_incoming_zero transfers the proof-indexed complete incoming source
to the full degree-indexed Incoming sum using their proved identical
PageBoundary images. The E8 cutoff has system index6, and cycles_from_trace
and trace_at bind the very same original input and endpoint. No equality
is inferred just from dimensions or from named staircase rows.

```lean
example (prefix : Fact721SecondE6.LaterInput P I)
    (emptySources : Fact721SecondLater.Incoming S)
    (binding : initial.coordinates.equivalence input = Fact721PageCertificates.Second.target) :
    NotHit prefix.zeros input := by
  fact721_second_no_hit_cert using prefix with emptySources
```

The tactic applies the sound mathematical theorem to a matching input
binding; the raw named-input form is also supported. The compiled rejection
test rejects a zero input. Complete initial-space meanings, recorded
differential/product interpretations and actual quotient-zero laws remain
explicit inputs inherited from the E8 proof. No E18 hypothesis is needed.

Run from the repository root:

```sh
python3 program/Fact721SecondNoHit/compile.py
```

Both modules compile successfully; all4 printed axiom reports use only
the standard propext, Classical.choice and Quot.sound axioms. Every failed
attempt remains separately recorded in evidence/. There is no admitted
proof, custom axiom, native proof computation or implicit C++ trust.
The parent JSON certificates remain untrusted input checked by Lean;
hashes record consistency only. Infinite outgoing permanence, convergence
and identification with the original topological spectrum remain unproved.
