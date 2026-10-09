# Independent fixed-path actual trace review

No correctness findings in the final `Basic.lean` and `generate.py`.
The recorded direct compilation returned zero and printed ten standard-only
axiom reports. The review checks the exact source/log hashes and evaluates
the generator's in-memory construction without executing its file write;
the generated source is byte-identical to the reviewed leaf.

The fixed degree is `(9,132)`. `vector2=[1,1]` is definitionally bound to
the existing `Fact713PageCertificates.target`, not chosen by a certificate.
`raw` is its inverse image under the supplied actual E2 coordinate
equivalence. The subsequent vectors are fixed as `[1,0]`, `[1]`, `[1]`,
and `[1]`. Naming the actual E2 class this way remains conditional on the
caller realizing the intended original E2 coordinates; a matching degree
alone does not identify a topological class.

Every page coordinate object uses the same `AdamsSpectralSequence S`,
`CertifiedAdamsPages S`, and fixed degree. Consecutive `StepMeaning` objects
share the exact intervening coordinate equivalence. Each interprets the
whole outgoing differential, the entire incoming carrier via an equivalence,
and the actual quotient map on every actual cycle. The full incoming
interpretations are used in `nonboundary2` through `nonboundary5`, rather
than being replaced by a selected incoming list or a prefix.

The four finite statements independently check the outgoing cycle equation,
the exact projection to the next fixed vector, and absence from the entire
incoming image. The review's Python oracle rechecks all finite cycles and
their quotient equivalence against the original four wire matrices.
`advance` obtains an actual cycle from the whole outgoing interpretation,
takes its actual quotient class, and extends `ManualInputObligations.Trace`.
The next endpoint coordinate follows from the whole quotient law; it is not
an extra final-coordinate premise. Four advances produce the actual E6
trace starting at that fixed raw element.

`nonzero6` follows from the derived nonzero coordinate and explicit zero
preservation of `M.page6`. A separate `ZeroMeaning` assumption is unnecessary
here because every actual transition has its explicit quotient-coordinate
law and the coordinate maps preserve zero. The final theorem asserts actual
E6 nonzero survival under the supplied whole-map interpretations. It makes
no E12, convergence, stable-homotopy or sphere-realization claim.

The interpretation premises are substantial and remain visible. In
particular the old d3 wire at `(9,132)` includes the row2569 selected
zero-prefix interpretation; `M.step3` still requires its whole actual map
meaning. The new row2773 Leibniz theorem does not automatically discharge
all four `StepMeaning` objects. The theorem is a conditional transport of
the finite four-step path, not a claim that SQL alone provides actual
Adams differentials.

The independent oracle also relabels each actual central carrier through
all zero-preserving coordinate bijections. It constructs outgoing maps,
whole incoming images and quotient transitions by transport, checking every
actual element's boundary status, every actual cycle's next zero status and
the four-step named trace. These finite carrier models verify the local
coordinate logic; they do not construct a global Adams spectral sequence.

Reproduce the read-only audit from `program/`:

```sh
python3 Fact713NamedActual/independent_review.py
```

Exact counts and hashes are in `independent-review.json`. No Lean source,
generator, imported matrix or original compilation record was changed.
