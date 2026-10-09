# Row 2773 d4 through whole-product descent

The raw row `[2773,13,135,"1",null,9000]` is represented on E3 by
`h1 * (h1*x_(120,11))`. This directory proves its actual next-page d4 is zero
using complete finite product certificates and the actual homology quotient.
The conclusion is independent of either row-2994 d3 candidate.

The left Leibniz product is multiplication from degrees `(5,5)` and `(12,133)`
to `(17,138)`. Its entire E2 tensor is zero modulo the recorded ring relations.
The right product is multiplication from `(1,2)` and `(16,136)` to `(17,138)`.
Its nonzero E2 value is basis 2996, a checked incoming d2 boundary. Thus the
entire right product is zero on the full E3 cycle/boundary quotient. The proof
does not mistake this boundary for a literal zero polynomial.

Six complete d2 comparisons and three complete product tensors contain six
polynomial columns and five relation-reduction steps. `Semantics.lean` binds
every column and every vector to arbitrary characteristic-two ring evaluation.
`Basic.lean` proves both E3 whole-product vanishing results. No possible factor
or differential value is omitted by checking only a named vector.

`Descent.whole_zero_next` proves a general statement: an actual product which
vanishes on an entire page vanishes on the next page, provided the complete
multiplicativity square and local zero meaning hold. It derives surjectivity
from `CertifiedAdamsPages`, chooses cycle representatives through the actual
homology quotient, and applies the square. It takes neither next-page product
vanishing nor next-page coordinates as input.

`Actual.actual_product_d4_zero` applies this theorem to both Leibniz terms.
It needs no value of d4(h1) or of the right factor's d4. The named theorem
`Actual.actual_row2773_d4_zero` constructs the named E4 element from the actual
E3 cycle: `EtaD3Source` proves h1 is a d3 cycle; the previous row-2773 proof
supplies the right factor's d3 zero and the E3 naming equation; the third
complete multiplicativity square transports that factorization to E4.

All actual E3 coordinate/product meanings, the actual page identifications,
three multiplicativity squares and the local zero meaning remain explicit
mathematical inputs. No d3/d4 NULL value is used as proof. The database raw
row is retained unchanged, and this is not an unconditional topological
Kervaire theorem.

## Files and verification

- `Data.lean`, product/comparison JSON, `generate.py`, `provenance.json`:
  complete finite comparisons, tensors and exact SQL reduction provenance.
- `Basic.lean`, `Semantics.lean`, `generate_semantics.py`: whole quotient
  product arguments and all-vector coefficient-ring meaning.
- `Descent.lean`, `Actual.lean`: generic actual page descent and typed d4 proof.
- `CoordinateBridge.lean`: complete E3 quotient-coordinate swap, then E4
  coordinates constructed from the actual d3 comparison; the named E4 value
  and its uniqueness follow from the E3 named class.
- `audit.py`, `audit.json`: independent SQL, polynomial and quotient replay.
- `compile.py`, logs, `*-compile.json`: all six direct compilations pass;
  historical failure logs remain separately identified.

The audit checks 36 vectors, 96 cycle pairs, 12 cycle-product pairs and 12
boundary-product pairs. No `sorry`, custom axiom, native proof evaluator or
implicit C++ trust is introduced. Hashes bind bytes, not mathematical truth.

```sh
python3 program/Row2773D4Leibniz/generate.py
python3 program/Row2773D4Leibniz/generate_semantics.py
python3 program/Row2773D4Leibniz/audit.py
python3 program/Row2773D4Leibniz/compile.py
```
