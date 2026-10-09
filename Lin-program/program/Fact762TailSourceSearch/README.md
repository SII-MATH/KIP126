# Concrete outgoing sources and the remaining infinite tail of Fact 7.6(2)

This read-only search locates concrete spectrum/map arguments for the two
remaining finite outgoing candidates of the named sphere class at (14,139).
It does not infer an infinite Adams vanishing theorem from a finite database.

The fixed input is E2 basis row 3080, monomial `1,1,7,1,275,1`, and staircase
row 3080 with base `1`, raw NULL and level 9000. The monomial is
h1 h4 x109,12. Its d2 cycle/nonboundary and E3 coordinates are already checked
by `Fact762PageCertificates`.

## Actual source leads

The streamed proof search finds a d5 zero naturality event, ID 721503 in
proofs-part1 at physical line 1425549, explicitly naming `Csigmasq__S0`.
The corresponding top-cell map shifts (14,154) to (14,139). Its generator 1
maps to the unit, so E2 basis row 7441 with monomial
`1,1,7,1,275,1,1` maps to the exact named sphere monomial. The corresponding
staircase row is 7443, base `1`, raw NULL, with future d48 marker 9952.
That marker is only a finite prefix clue. It is not an all-page source
cycle proof. Csigmasq has no basis d2 column, so the existing strict complete
E2 comparison screen correctly reports this source unknown rather than
inventing zero d2 values. A complete staircase-coordinate interpretation,
quotient comparisons and actual d5 naturality still need construction.

For d9, trial ID 2397125 and conclusion ID 2397126 in proofs-part3 at physical
lines 890571 and 890572 identify multiplication by d0 as the detector.
The target candidate is at (23,147); multiplying by d0 shifts it to (27,165).
The source product at (18,157) is zero in the reported trial. A proof would
need actual d0 cycle and product meanings, product-source zero, and faithful
full E9 target multiplication. The trial and conclusion records are untrusted
search clues; they are not accepted as Lean premises.

`map_sources.py` screens all 43 configured direct module-to-sphere maps.
For those with complete E2/d2 data, it reduces all coefficient columns in
the source, incoming and outgoing neighboring degrees, checks both d2 chain
squares, and calculates the full E3 image. It finds 13 exact E3 lifts;
other maps have no lift or are explicitly unknown. Several lifted source
classes have known later outgoing events, so existence of an E3 lift alone
does not provide an all-page source cycle. Composite configured maps are
not included in this direct-map screen.

## Strict bound audit

The sphere database covers internal degree at most 261 and stored basis d2
through 177. Along this class's outgoing ray, the target of d_r is
(14+r,138+r), with fixed stem 124. Thus the finite basis window ends at
r=123 and the declared d2 window ends at r=39. Known staircase selection
leaves candidates only at r=5 and r=9 within that finite window, but raw
selection is not a proof of actual page completeness. Nonempty E2 rows at
r=42,43,44 have raw unknown basis d2 values, separately recorded in the audit.

Nonnegative Adams filtration bounds the incoming source pages by 14; it
places no upper bound on the outgoing ray. The existing all-page vanishing
line theorem requires the vanishing line as a mathematical premise. No
current sphere realization or Ext theorem proves such a line here.
The existing bounded or finite-source filtered two-term limit theorems
concern the constructed extension sequence of a filtered homomorphism;
they do not identify that sequence with the sphere Adams sequence and
cannot be used as its outgoing cutoff.

Consequently this search supplies concrete d5/d9 source tasks, but finds
no currently proved bound that closes the no-hit infinite outgoing tail.
The earlier `OutgoingCycleMapTransport` theorem closes a proved incoming-hit
branch using the actual homology law. It does not close this separate no-hit
branch or prove unconditional Fact 7.6(2).

## Reproduce

```sh
python3 program/Fact762TailSourceSearch/proof_search.py
python3 program/Fact762TailSourceSearch/map_sources.py
python3 program/Fact762TailSourceSearch/frontier.py
```

The proof CSVs are streamed, including SHA-256 computation. Search artifacts
retain raw rows, maps, reductions, failures and source hashes. The Python and
C++ calculations remain outside the Lean trust root; no new Lean theorem or
topological conclusion is claimed by this directory.
