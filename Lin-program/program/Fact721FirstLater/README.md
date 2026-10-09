# Fact 7.21 first class: nonzero E6 and no cumulative incoming boundary

The input is the existing `Fact721FirstD4Search.Constructed.Prefix5`,
whose nonzero E5 endpoint comes from the exact original E2 element
`h6 M d0` at `(11,133)`. This package constructs a nonzero E6 endpoint
from that same input, and proves that the original E2 element never lies
in the cumulative incoming boundary relation.

The d5 target is `(16,137)`. The existing product detector
`Row2907PDeltaDetection.Witness.d4_nonzero` proves a nonzero d4 on its
one-dimensional complete E4. Every E4 cycle is therefore zero, and
actual quotient surjectivity gives zero E5 at `(16,137)`. This proves
the whole d5 from the first class's degree is zero. No desired named
d5 cycle, target branch, or target d4 coordinate choice is assumed.

The source degrees of all incoming pages 5 through 11 have empty E2
bases: `(6,129)`, `(5,128)`, `(4,127)`, `(3,126)`, `(2,125)`, `(1,124)`,
and `(0,123)`. Above page 11 the source filtration is illegal. Actual
quotient surjectivity propagates the seven empty E2 carriers, and
`Incoming.zero` covers the full incoming carrier for every page `r >= 5`.
The E6 nonzero proof applies the actual quotient-zero equivalence to
the old nonzero E5 representative.

`NotHit` is the negation of the original E2 element's `BInfinity` predicate.
It follows already from the nonzero E5 endpoint and the full incoming
tail, without the product detector or survival beyond E5. It is distinct
from being a permanent cycle; later outgoing death is compatible with
this no-hit theorem.

```lean
example (certificate : Input previous product)
    (binding : initial.coordinates.equivalence input = Fact721PageCertificates.First.target) :
    ResultValid S pages initial input 6 := by
  fact721_first_e6_cert using certificate named binding

example (incoming : Incoming S) (zeros : ActualAdamsSystemBridge.ZeroMeaning S pages)
    (binding : initial.coordinates.equivalence input = Fact721PageCertificates.First.target) :
    NotHit zeros input := by
  fact721_first_no_hit_cert using previous with incoming via zeros named binding
```

`Request.lean` imports both a versioned JSON request and a JSONL batch.
The source is `[false,true]` and the output `[true]` is a nonvanishing
flag, not an unconstructed E6 coordinate. `fact721_first_request_cert`
checks one request or a batch and applies the actual E6 theorem.
Compiled rejection tests cover zero inputs, E7, wrong source, wrong output,
and a permanence claim. Batch diagnostics identify line 2 `output.length`.

## Trust and verification

The existing product detector's full E3 comparison and product meanings,
the recorded product d4 at row6934, and actual quotient laws remain
mathematical inputs. The known product differential is not the desired
source differential. This package reuses its proved Leibniz consequence;
it does not reinterpret row2907's NULL as a proof. The original row2622
and the next d6-target row2994 remain NULL in `source.json`.

No new C++ algebra operation is necessary: the complete comparisons and
product certificates were already exported and verified in the detector
package. The local review independently replays those complete quotients,
the seven empty source queries, nonzero one-dimensional maps, and finite
event models distinguishing no-hit from permanence. No admitted proof,
custom axiom, native proof evaluator, or implicit C++ trust is introduced.

```text
python3 program/Fact721FirstLater/generate.py
python3 program/Fact721FirstLater/compile.py
python3 program/Fact721FirstLater/review.py
```

All compile attempts are retained. One historical attempt changed inputs
while compiling and was rejected by the recorder; only the final serial
run with stable inputs is accepted. The actual E3 coordinate meanings
inherited from the product detector remain premises; this does not rebuild
Adams E2 from topology. E7 and permanence are not proved here: the next
d6 target `(17,138)` is not known to vanish.

The accepted run has six warning-free modules, seventeen standard-axiom
reports and two reports with no axioms. The finite audit replays 21 inherited
complete comparisons, 63 cycle vectors and 297 quotient pairs, checks all
seven empty incoming degrees and the known product event, and exercises
57 nonzero maps from a one-dimensional source. Its 255 valid no-hit event
models include 247 with later outgoing death. Source and request exports
reproduce byte-for-byte.
