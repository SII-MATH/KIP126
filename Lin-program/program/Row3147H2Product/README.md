# Row3147 h2 product

This package derives the named sphere row3147 `d3 = 0` from a source-side
product, using complete earlier quotients. It does not assume row3147 is a
d3 cycle and does not claim the entire three-dimensional source has zero d3.

## Exact input and coordinates

The raw database is `upstream/kervaire-49/S0_AdamsSS_t261.db`, SHA-256
`518a2ed86af6d4f7bcdc5db135ab6252bd50df34492ae208663aa1c140a820ed`.
All read degrees are inside `t_max = 261`, `d2_t_max = 177`.

| Role | E2 degree/dimension | Named E2 vector | Constructed E3 vector |
| --- | --- | --- | --- |
| h2 | (1,4), 1 | index 0 | index 0 |
| right factor | (15,136), 2 | index 0, basis 2839 | index 1 |
| row3147 product | (16,140), 5 | index 4, basis 3149 | index 1 in dimension 3 |
| d3 target | (19,142), 4 | none | dimension 2 |

The staircase ID 3147 is **not** raw E2 basis ID 3147. Its `base = "4"`
names E2 basis 3149 (`h0^2 x_(124,14)`). The exact d2 inclusion and projection
matrices are inherited from both frozen `Fact713SquareContinuation` branches.
The right-factor projection swaps the two coordinates. Matching dimensions
alone would give the wrong named E3 vector.

## Certificates and checking

`generate.py` reads the database in read-only mode, checks degree windows and
known d2 columns, and exports six complete comparisons plus both columns of
the E2 tensor `h2 * (15,136) -> (16,140)`. The columns are `[4]` and `[]`.
The first uses relation rows 6580, 10571, 6565, 10573 and 10902; the second uses
the stored `h1*h2 = 0` relation. Each is a finite polynomial-ideal witness.

`wire/*.json` uses the existing strict, versioned page-comparison/product
formats and canonical named-element format. `Data.lean` imports the wires
and checks all comparisons, polynomial identities and the complete tensor
using `lin_cert`. `Finite.lean` proves the entire quotient tensor equation
for all eight E2 input pairs, not just the named example.

`Actual.Stage2` supplies complete actual E2 charts, full incoming/outgoing
meanings, local zero laws and the full E2 multiplication equation. The
generic product-transition theorem then constructs the E3 charts and proves
the descended multiplication equation. These actual meanings are explicit
premises; the SQL hashes do not establish them.

The h2 d3 target `(4,6)` has an empty full E2 basis. A supplied complete
actual E2 zero chart and local quotient zero law construct the actual E3
zero chart, hence h2 has zero d3. `Stage2.Prefix` supplies the complete d3
meaning at `(15,136)` in its constructed chart. Its stored SS rows are
2839 (`base=1`, NULL, level 9994) and 2840 (`base=0`, NULL, level 9995):
these are earlier-zero-prefix data, not a proof from NULL. The complete
prefix meaning remains an explicit input.

Leibniz now proves `Stage2.named_d3_zero`. The package constructs a trace
from the same original E2 input through nonzero E3 to E4. **No E4
nonvanishing or no-hit conclusion is claimed**; that requires complete
incoming d3 semantics. The other two source d3 columns are not changed.

## Imported requests and tactic

`request.json` and `requests.jsonl` bind the exact five-bit original input,
the two-bit zero output, version and result ID. The request theorem includes
the actual differential equation, original-input trace and E3 nonvanishing.
With `I : Actual.Stage2 S pages P` and `K : I.Prefix`:

```lean
example (input : (S.element 2 Actual.productDegree).carrier)
    (binding : I.product.equivalence input = Finite.rawProduct) :
    RequestedValid K input request := by
  row3147_h2_cert using K
```

Batch requests use the same tactic. `ActualTraceRequests.diagnose` and
`diagnoseBatch` with `Row3147H2Product.spec` locate incorrect fields and
records. Strict import reports paths/line numbers and rejects unknown or
duplicate fields. `Request.lean` checks rejection of a wrong named input,
wrong dimension, wrong result/version, missing actual input binding and a
corrupted member of a batch. This tactic never turns a request string into
an actual Adams theorem without the stated meanings.

## Reproduction and audit

From `program/`:

```sh
python3 Row3147H2Product/generate.py
python3 Row3147H2Product/audit.py
python3 Row3147H2Product/reproduce.py
python3 Row3147H2Product/compile.py
```

`audit.py` independently checks raw SQL basis completeness, degrees, all d2
columns, relation rows, polynomial identities and quotient identities. It
checks 549 ordered cycle pairs and all 168 invertible relabelings of the
complete product E3 chart, with 1344 relabeled product inputs. It neither
imports the generator nor treats its report as proof.

Compilation is serial and retains every attempt under `evidence/`; failed
attempts are historical and not accepted. Current successful records must
match source and direct input hashes. Final logs check only the standard
Lean axioms `propext`, `Classical.choice`, `Quot.sound`. No trusted C++
evaluation, custom axiom or admitted proof occurs in accepted modules.
This package verifies finite algebra and conditional actual Adams
consequences; it does not identify the imported E2 presentation with the
original topological spectrum.
