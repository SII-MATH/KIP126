# Finite bilinear products on actual homology quotients

Basic defines a dense F2 bilinear tensor and proves bilinearity in both
variables. Its exhaustive reference checker is exponential in chain-space
dimensions and exists only as a small-input fallback.

CycleWitness.checkCycles is the polynomial coefficient checker. Inputs are
three complete homology comparisons, a tensor, two full-kernel projectors
with correction matrices, and two boundary-preimage tensors. It checks:

- out*P=0 and P+down*out=identity, so P fixes every cycle;
- out(product(Px,Py))=0, coefficient by coefficient;
- product(incoming*u,Py)=incoming*leftWitness(u,y);
- product(Px,incoming*v)=incoming*rightWitness(x,v).

Witness proves that all tensor pre/post compositions represent actual linear
combinations on arbitrary vectors. checkCycles_sound therefore proves
cycle*cycle is a cycle and both boundary*cycle products are full boundaries.
There is no exhaustive enumeration of vectors in this checker. Witness also
provides a stronger sufficient chain-level checker for simple cases.

Quotient constructs the actual Homology×Homology→Homology function using
Quot.lift in both arguments, proves independence of both representatives,
and gives the coordinate formula projection(product(x,y)). This is a local
bilinear multiplication; it assumes no complete ring or associativity.

ActualH0 checks the actual products h0*h1=0 and h0*h0^4=h0^5 with imported
complete d2 comparisons. Its nonzero tensor is checked against the actual
Products_h0 matrix, whose relation and valuation theorems are in Row2858.
A corrupted kernel projector is rejected even for a zero product. The h0
complex was read from exact neighboring S0 degrees(-1,0),(1,1),(3,2):
empty, singleton(global1 mon0,1 d2empty), empty.

All mathematical modules compile directly with Lean -j1. The reference checker,
coefficient checker soundness, quotient definition and actual examples have
no sorry or added axioms. A full-degree multiplication family is not supplied by this bounded module.


## Producer, import and regression loop

`export.cpp` reuses the existing untrusted comparison elimination utility.
`page-product-export --batch INPUT.txt` reads one line per tensor:
`LEFT.json RIGHT.json TARGET.json TENSOR_BITS`. The three inputs are complete
comparison JSON files; tensor order is target,left,right with the right index
varying fastest. Use `-` for a zero-size tensor. Paths cannot contain spaces.
The producer uses P=identity+down*out and solves every left/right boundary
preimage by Gaussian elimination. Missing preimages and noncycle products
are rejected; every producer error identifies its input line. The C++ JSON
reader is a narrow untrusted reader; Lean's canonical parser is authoritative.

Output is canonical sorted-key JSONL version1 with the three comparisons,
tensor, projectors, corrections and boundary-preimage tensors. Import.lean
rejects wrong versions, all wrong array lengths, unknown/duplicate fields and
noncanonical serialization, including nested comparison fields. Missing
entries are never accepted via matrix zero padding because shape is checked.
`page_product% "path.json"` imports one record; `lin_cert using ()` proves
`wire.Valid`. checkCycles remains the coefficient checker behind this tactic.
`CheckFile.lean` streams batches and reports file, line, failing matrix/tensor
identity and index. CLI checks alone are not kernel proofs.

Build with `g++ -std=c++17 -O2 -Wall -Wextra -Werror
PageProductCertificates/export.cpp -o PageProductCertificates/page-product-export`.
Run `python3 PageProductCertificates/test_export.py` from program, then compile
Generated.lean and run `lean --run PageProductCertificates/CheckFile.lean
PageProductCertificates/actual.jsonl`. Generated proves both imported actual
products, with only propext/Quot.sound. The regression verifies deterministic
output and producer rejection of a noncycle target; Lean rejects corrupt
projector and truncated tensor fixtures with precise diagnostics.
