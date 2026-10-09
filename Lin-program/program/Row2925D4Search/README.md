# Row2925 d4: complete two-dimensional target screen

The exact source row is `(2925,11,137,"1,2",NULL,9000)`.
The full S0 E4 target at (15,140) has two basis representatives, E2 local1
and local2. `search.py` considers all 70 configured S0 maps and attempts
complete d2/d3 source and target comparisons. It checks both target columns;
nonzero detection of one column is insufficient for injectivity.

The numerical result is 64 unavailable cases, four maps with a
noninjective target, two nonzero source images and no complete detector.
`S0__S0_by_eta` has zero source image but sends target columns to `[0]`
and `[1]`. It could only restrict one coordinate after a full map proof.
`S0__Cnu_by_eta` annihilates the source but lacks target d3 row5066 at
Cnu(13,144). `S0__DC2h6` has independent target images `[1,0,0]` and
`[0,0,1]`, while its source E3 image `[0,1,1,0]` is nonzero and the source
d3 row3135 is unknown. None is promoted to a d4-zero theorem.

`review.py` independently replays every computed relation reduction,
checks complete comparison identities against raw SQL, checks all source
and target coordinates and verifies the entire configured map list.
Inherited conditional d2/d3 data remain explicitly identified, including
high-filtration raw NULL columns. These are numerical availability results;
there is no Lean detector module in this directory.

```sh
python3 program/Row2925D4Search/search.py
python3 program/Row2925D4Search/review.py
```
