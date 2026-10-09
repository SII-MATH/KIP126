# Row3020 full target search

This screen uses exact raw row `[3020,11,138,"0",null,9000]`: E2 local0,
basis3018, not E2 basis3020. All70 configured S0 maps are screened against
both target basis vectors and their sum. `review.py` independently replays
all three directions and checks deterministic regeneration.

Four single maps detect the entire two-dimensional target while killing
the source: C2, C2h4, C2h5, and C2h6. There are no jointly detecting pairs
among individually noninjective eligible maps. C2 reuses the complete maps
already checked in `Row3019Detector`; `Row3020Detector` provides the new
named-class theorem. This directory itself is numerical search evidence.

```sh
python3 program/Row3020Search/search.py
python3 program/Row3020Search/review.py
```
