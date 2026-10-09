# Fact7.6(2) d4 source: configured-map E4 search

The source raw row is `(2858,10,136,"2",NULL,9000)` and its full E3 quotient
is one-dimensional. The proposed d4 target `(14,139)` has a complete finite
E4 quotient of dimension1 represented by E2 local1, the Fact7.6(2) target.
`search.py` screens every one of the 70 configured S0 maps, with full raw
d2/d3 source and target comparisons where available.

Eight maps annihilate the source and detect the target at the earlier E3
level. None currently has a complete E4 detector: 59 records have an
unavailable complete comparison; the other 11 have noninjective target
maps. Six earlier candidates already have zero E4 source images, but all
six target comparisons are unresolved:

| Map | Unknown target d3 row |
|---|---|
| S0__C2 | 3109 |
| S0__Cnu | 4411 |
| S0__CW_nu_sigma | 5408 |
| S0__CW_nu_eta | 4798 |
| S0__C2h5 | 4447 |
| S0__C2h6 | 3412 |

The remaining earlier candidates `S0__Cnu_by_eta` and `S0__C2_by_eta` also
have incomplete E4 source images. No NULL differential is chosen and no
selected page list is treated as an actual complete basis.

`review.py` independently replays every computed polynomial reduction,
full raw degree contents, complete comparison identities, selected map
list and computed E4 coordinates. The reviewed comparison union contains
672 complete finite comparisons, including 496 d2 comparisons and 142
relation-reduction steps. Inherited conditional columns retain their
explicit provenance and require their existing mathematical premises.

This is a numerical availability search, with no new Lean map theorem.
A future naturality route needs an actual full compatible map, a full
source realization or compatible completions, and proof that the target
map detects the named E4 class. Earlier E3 detection alone is insufficient.

```sh
python3 program/Fact762Source4Search/search.py
python3 program/Fact762Source4Search/review.py
```

The separately compiled `Fact762Source4Certificates/KernelBranch.lean`
provides a different explicit complete-kernel implication; it does not
turn this unsuccessful map screen into a detector.
