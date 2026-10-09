# Semantics of every stage in a supplied finite trajectory

This library transports `Executable.PathValid` through explicit mathematical
page interpretations. It proves that every supplied representative is a
true cycle and is not a boundary, that its next-page class is nonzero,
that successive classes agree under the supplied transports, and that
the final differential has the claimed nonzero target.

The result covers every stage in the supplied list. This unindexed API
does not encode page numbers, a starting page, or a topology-to-Adams
realization. An empty path denotes zero prior transitions. A caller who
needs a prescribed page window must also supply indexed-family coverage
and interpretation; this library does not manufacture missing pages.
The actual6651 example imports its already checked full finite paths,
with two source stages and two target stages.

## Mathematical interface

`PageData` supplies actual incoming, current, outgoing and next-page types,
maps, zero objects and coordinate functions. `PageData.Meaning` requires
injective current/outgoing/next coordinates, the displayed zero coordinates,
the outgoing equation on every actual current object and the incoming
equation on every actual incoming source. The latter quantifies over the
whole actual domain: an omitted true incoming source invalidates the
interpretation. The next-page coordinate equation is required only on
true cycles; its total extension to other objects is never used.

`stage_transport` combines these equations with a checked `Stage.Valid`.
The interpretation does not contain `Stage.Valid` or the desired cycle,
nonboundary or next-nonzero conclusions. `CompleteMeaning` separately
requires surjective incoming coordinates; it is used only for the converse
direction of `next_zero_iff_boundary`, together with the complete finite
homology comparison.

`RealStage` names the actual class and its exact checked coordinates.
`Connections` supplies maps between pages whose coordinates commute for
every object, without assuming the desired class-to-class equality.
`path_transport` recursively derives that equality from `Linked`, and
derives the last endpoint equality from `EndsAt`. `all_stages_hold` exposes
the cycle and nonboundary theorem for every member of the path.

`EventData` binds both interpreted paths to the very same endpoints used
by its final differential. `event_transport` combines the full paths with
the all-source final differential equation; `bundle_sound` handles any
finite list of such interpreted events.

## Tactic and examples

For an imported finite wire and an explicit mathematical interpretation:

```lean
example (w : Executable.Wire) (d : EventData w)
    (h : Executable.check w = true) : d.Holds :=
  event_from_check w h d

example : Examples.event6651.Holds := by
  lin_cert using ()

example : ∀ i ∈ Examples.batch, i.data.Holds := by
  lin_cert using ()
```

The tactic checks the finite certificate. The user-provided interpretation
is itself a Lean term with proved coordinate equations; it is not trusted
external metadata. This includes the entire true incoming domain.

`Examples.lean` constructs the coordinate interpretation of the actual
event6651 certificate and proves all four prior stage conclusions plus
the final event and a batch result. It checks rejection of a changed prior
representative and a wrong terminal coordinate, including the exact
`source[1]: final projection mismatch` diagnostic.

`Counterexamples.lean` shows why the interpretation premises matter:
a true incoming identity contradicts the supposedly empty incoming
matrix; a falsely named coordinate is rejected; and coordinates that
collapse unequal outgoing objects cannot satisfy injectivity. Adding the
true incoming identity to a valid comparison makes the nonboundary stage
checker reject the class.

## Build and trust

```sh
python3 program/SemanticTrajectoryCertificates/compile.py
python3 program/SemanticTrajectoryCertificates/assert_current.py
```

The compiler runs Page, Path, Event, Examples and Counterexamples serially,
recording actual exits and all source/dependency/log/olean fingerprints.
`assert_current.py` also checks the 13 printed axiom reports. No `sorry`,
custom axiom, native evaluation shortcut or trust in the C++ exporter is
used. Hashes attest current inputs only. This library supplies a reusable
conditional mathematical bridge, not an Adams realization of the spectra.
