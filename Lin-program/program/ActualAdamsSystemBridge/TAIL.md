# Incoming tail from actual filtration

`Tail.lean` proves the complete incoming type is a subsingleton whenever
`d.filtration < r`. Any nonzero-source summand would supply a bidegree `e`
and an equality `AdamsTarget r e = d`. Taking filtration gives
`e.filtration + r = d.filtration`, contradicting that strict bound because
filtration is a natural number. Consequently the only incoming encoding is
the explicitly supplied `Unit` zero summand.

The four results are:

- `incoming_eq_zero_source`: every incoming value equals `.inl ()`.
- `incoming_subsingleton_above_filtration`: the whole incoming type has at most one element.
- `incoming_tail`: the system-index cutoff condition is `d.filtration < cutoff+2`.
- `incoming_map_zero_above_filtration`: the full incoming map equals the actual page zero.

No claim about outgoing maps is inferred. Below this bound, multiple source
encodings may map to zero without forming a subsingleton type; the separate
`PermanentMapTailCertificates` extension accepts proved full-map vanishing in
that setting.

`compile-tail.py` records a successful direct serial build in
`Tail-compile.json` and `Tail.log`, with four standard-axiom reports. The
general theorem is kernel checked and uses no source database metadata.
The implementation author is `/root/map_search_next`; independent review,
when available, is recorded separately.
