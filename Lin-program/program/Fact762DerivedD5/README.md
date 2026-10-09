# Same input with derived sphere d5

`Certificate` combines the existing Csigmasq-to-sphere E2-to-E5 source prefix
with the new sphere g detector. It uses the same actual sphere and the same
homology quotient maps. An all-element naming bridge relates the source
coordinate expression to the E2 ring interpretation used by the detector.

`Certificate.named_d5_zero` obtains the sphere d5 value from the g argument.
`result_sound` proves the same named E2 input has a nonzero E5 endpoint with
zero d5. `endpoint6` extends this exact trace to E6. The E6 representative
is not asserted nonzero: d5 incoming boundaries are a separate question.
The former Csigmasq named source d5-cycle and d5 target-map/naturality inputs
are not fields of this certificate.

```lean
example (c : Fact762DerivedD5.Certificate C S R) (input)
    (binding : c.source.stage.previous.previous.target.equivalence input =
      Fact762CsigmasqD5.Comparison.sphere2) :
    Fact762CsigmasqD5.Actual.ResultValid S c.source.stage.input.targetPages input := by
  fact762_derived_d5_cert using c
```

Finite importers, checkers and diagnostics are reused from
`Fact762CsigmasqD5` and `Fact762SphereGDetection`. Complete actual meanings,
the detector's explicit finite prefixes, quotient laws and naming remain
Lean proof inputs. The detector construction derives its five raw NULL
columns; neither NULL nor a future schedule is a proof. This assembly
does not prove all-page permanence or the original topological realization.

`Tests` rejects zero input, checks same-input E6 trace binding and exercises
the tactic's rejection without an input naming proof. Historical direct
compiler attempts and source hashes are retained separately from root
build and exhaustive axiom audit evidence.
