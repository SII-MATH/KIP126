# Complete actual-page semantics

`Meaning.lean` connects a checked finite homology comparison to an externally
defined actual page. It does not identify the imported data with the Adams
spectral sequence without the explicitly required mathematical proofs.

For each center, `WholeMeaning p plus` requires:

- The `PageData.CompleteMeaning` equations for every actual incoming element,
  every actual current element, and the next map on every actual cycle.
- Injective current, outgoing and next coordinate maps, with the stated zero
  elements mapped to zero.
- Surjective incoming coordinates, so every matrix boundary has an actual
  incoming preimage.
- Surjective current coordinates, so every finite cycle can be realized in
  the actual current space.
- Actual addition mapped to coordinate addition. Since the field is F2,
  addition is also the difference used in the boundary relation.

No equivalence between actual homology and finite homology is assumed. No
surjectivity of next coordinates is assumed. The checked inclusion and
projection equations, together with current-coordinate surjectivity, prove
that every next coordinate is realized by an actual cycle. There is no need
for outgoing-coordinate surjectivity: injectivity and the equation on every
actual current element already characterize the entire actual kernel.

`ActualHomology` is the quotient of actual cycles by the relation
`exists z, incoming z = plus x y`. `actualQuotientEquiv` is derived from the
cycle-coordinate bijection and the proved equivalence of actual and finite
boundary relations. `actual_quotient_eq_iff` shows that quotient equality is
exactly this boundary relation. `actualHomologyAdd` descends actual addition
on representatives; it is not defined by transporting coordinate addition.
The resulting equivalences preserve this addition.

`actualNextEquiv` identifies that actual boundary quotient with the given
actual next space. `actualNextEquiv_mk` proves it sends an actual cycle to
the supplied actual next map, and `every_next_class_represented` proves every
next element has such a cycle representative.

For a finite family of centers, the derived additive equivalence with
`Vec D` proves cardinality `2 ^ D`, both for the product of actual boundary
quotients and for the product of actual next spaces. The family must contain
all centers intended by the caller; this does not prove that centers omitted
from a SQL inventory vanish.

`MeaningExamples.lean` specializes the theorem to the 45 recorded d2 centers
and 44 resulting coordinates, while retaining `WholeMeaning` as an explicit
premise at every center. Its coordinate model demonstrates that the premises
are consistent. It makes no unconditional claim about an actual Adams page.

```lean
example
    (p : (i : Fin 45) -> PageData (D2.wires i))
    (plus : (i : Fin 45) -> (p i).Current -> (p i).Current -> (p i).Current)
    (meaning : forall i, WholeMeaning (p i) (plus i)) :
    Nat.card (ActualTotalHomology p plus) = 2 ^ 44 := by
  actual_stem_homology_cert using (⟨meaning⟩ : ActualTotalCertificate p plus)
```

The semantic proof field is provided in Lean; it is never decoded from JSON
or manufactured from a source hash. The tactic applies `checkActualTotal_sound`
and kernel-reduces the existing complete finite-matrix checker after reducing
away the semantic certificate parameter. It does not trust the C++ producer.

`MeaningCounterexamples.lean` proves two limitations of weaker interfaces:
injective current coordinates can miss an entire finite class even with
complete incoming data, and missing incoming surjectivity can make a finite
boundary have no actual incoming preimage. Both countermodels satisfy the
remaining supplied page equations.

Build the three leaves serially with `python3
Stem125HomologyCertificates/compile_meaning.py`. The resulting
`meaning-compile-audit.json` binds source, dependency, log and direct olean
fingerprints. `assert_meaning.py` checks those direct-build artifacts. Later
Lake builds need their own recorded artifacts because olean encoding changes.
The three builds expose 19 axiom reports, all confined to `propext`,
`Classical.choice` and `Quot.sound`.
