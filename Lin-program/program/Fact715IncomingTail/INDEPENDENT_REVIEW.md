# Independent review of the later incoming sources

No correctness findings. The review preserves all 31 frozen files and
compiled objects and does not rerun the generator or compiler. Successful
compile evidence, source and input hashes all match; the direct imported
objects also match the hashes recorded at compilation.

## Whole incoming coverage

`Basic.lean:62` quantifies over every `Incoming S r degree`, with target
(11,136), lower bound r >= 5, and the explicit exclusions r != 5 and r != 9.
The incoming type includes both a zero summand and a dependent sum over
all possible source bidegrees. The proof handles both constructors.

For r <= 11, the target-degree equality forces the source to be
(11-r,137-r). After excluding 5 and 9, the remaining pages are exactly
6,7,8,10,11, with sources (5,131), (4,130), (3,129), (1,127), (0,126).
For r > 11, the nonnegative source filtration is impossible, as proved
by `incoming_map_zero_above_filtration`. The proof transports the zero
differential across the exact source-target degree equality. It does
not restrict to a named source class or sample vector.

## Complete earlier computations

The independent replay checks all 19 retained complete comparisons,
including the six exported wires. It enumerates all cycles and every
pair of cycle representatives to check that equality of projected
coordinates is exactly equality modulo the incoming image. Counts are
42 cycle vectors and 148 quotient pairs. All 35 raw d2 columns, two
higher columns and 12 selected quotient representatives also match.

The complete E3 spaces at (5,131) and (3,129) are zero. At (4,130), E3
is one-dimensional, and the recorded source staircase 2437 has base0,
d3[0]=[0], level9997. Its E2 source basis ID is 2436. The full target E3
at (7,132) is one-dimensional and the projected recorded target is its
nonzero generator; the earlier incoming E3 at (1,128) is zero. Thus the
complete outgoing d3 is [1], the incoming dimension is zero, and E4 is
zero. This is a stored nonzero event, not a NULL or future-prefix inference.

`EarlierSources.step7b` uses the exact current chart constructed by
`step7a.next`. Its complete actual E3 outgoing/incoming equations and
neighboring coordinate interpretations remain explicit mathematical
inputs. The two finite predecessor wires `source7Incoming2` and
`source7Target2` are checked, but the theorem does not construct their
actual meanings from those wires automatically. This limitation agrees
with the conditional theorem and documented trust boundary.

`empty_later` uses representative surjectivity of the actual quotient
identification and the explicit `ZeroMeaning` law. It proves every later
element is zero; no later-page dimension or vanishing premise is assumed.
Pages10 and11 use complete actual E2 charts to `Vec 0`, whose database
degrees are independently confirmed empty.

## Unknowns and audit limits

The source at (6,132) retains its NULL d3 and the failed complete comparison
attempt. The page9 source (2,128) retains NULL9993 and is not eliminated.
An unexported cached finite prefix comparison at that degree has dimension
one; it is not used as evidence that page9 vanishes. No excluded page is
silently folded into the incoming theorem.

All 29 source degrees, 42 E2 basis rows and 42 staircase rows match the
read-only source database and its SHA256. Hashes track consistency only.
`Basic` has five explicit reports, all using standard Lean axioms.
`Data` intentionally has zero printed reports; the root declaration audit
must cover its declarations. This review inspects the frozen sources and
replays their finite data independently, without claiming a new kernel
audit or original topological realization.

The reproducible review artifacts are `independent_review.py`,
`independent-review.json` and `independent-review.log`. Run from the root:

```text
python3 program/Fact715IncomingTail/independent_review.py
```
