# Ctheta4 staircase reconstruction and obstruction

The Ctheta4 to S0 map has suspension30. Thus the N2149754 lead for
S0(17,138)d3 uses Ctheta4(17,168) and target Ctheta4(20,170).

`Basic.lean` proves that a complete invertible staircase basis determines a
linear map on every vector. `PartialCompletion` constrains only known
columns. `generate.py` checks coordinates and full basis invertibility;
it reconstructs d2 in the original E2 basis only when every staircase
column is specified. `Data.lean` checks basis inverses and the reconstruction
identities in Lean, then proves uniqueness for all input vectors.

Two complete finite d2 matrices are reconstructed: source(17,168) and
incoming source(18,169). The target(20,170) has an unknown staircase column:
row8974, base5, level9000, NULL. Its known mask is false, and the generator
exports `reconstructed_d2: null`. Zero placeholder bits in targetImages
are not conditions on that column. Other NULL rows with strictly later
stored outgoing levels specify a zero prefix under the imported finite
staircase interpretation; their raw NULL values remain in source.json.
This interpretation is an external mathematical premise, not an Adams
provenance theorem.

`Obstruction.lean` proves that for EVERY completion of the known target
columns, e0 is a cycle and is not a boundary of the complete incoming d2
matrix. Thus target_not_exact holds for every such completion. This is a
stronger negative readiness result than a failed attempt at finding a
zero-target certificate: the Ceta zero-codomain route cannot apply to this
Ctheta4 d3 target under these finite inputs. No Ctheta4 naturality result
or Fact713 zero differential has been inferred from its log event. The d4
lead still requires independent d3 data and complete higher comparisons.

All three Lean files passed direct compilation with -j1. The obstruction
uses only propext and Quot.sound. No sorry, new axiom or native_decide is
used. Register Fact713Ctheta4Certificates.Obstruction (which imports the
other two modules). Regenerate with `python3 Fact713Ctheta4Certificates/generate.py`.
