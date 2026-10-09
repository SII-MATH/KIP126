# Fact 7.6(2): sphere g multiplication detector

This package derives the finite d5 vanishing of the specified sphere E2
class `h1*h4*x109,12`, basis3080 in bidegree (14,139), given a trace of that
same input to E5 and explicit actual Adams-page interpretations. It removes
the former need to assume the Csigmasq named source d5 cycle. It does not
construct the original topological Adams spectral sequence, prove a finite
prefix from a NULL marker, or prove all-page permanence.

## Exact arithmetic and source bindings

- g is basis72, monomial `13,1`, degree (4,24).
- Its possible d5 target has E2 basis86, monomial `15,1`, degree (9,28).
- Both products with named basis3080 reduce to zero by checked ring relations.
- The possible sphere d5 target is basis3389, monomial `8,1,293,1`, degree
  (19,143). Multiplication by g gives **E2 basis5572**, coordinate0 in (23,167).
  Its staircase row is **5574**, with `base=0, diff=NULL, level=9000`.
  Confusing E2 basis5574 with staircase row5574 gives the wrong product.
- The other E2 target basis3390 is a d2 boundary and has zero g product.
- Full detector dimensions are E2=5, E3=3, E4=2, E5=2. At E3 the basis order
  is staircase5573,5574,5575. The named g product is coordinate1, and becomes
  coordinate0 at E4/E5. Its incoming d3 image is only coordinate0 of E3.
- Three complete product tensors and all their boundary checks derive an
  E5 g multiplication matrix `[1,0]`, which detects the full one-dimensional
  sphere d5 target.

## Deriving the unknown detector entries

Five raw NULL entries are never interpreted as database zero facts:

1. Sphere ss5382, base2, degree (20,165), d3=0 follows from the by-sigma
   map `CW_nu_eta_2__S0_by_sigma`. Source E2 basis4429, monomial `328,1,6`,
   is staircase4427 (base2, NULL9955). Its specified finite d3 cycle prefix
   and actual naturality give the sphere zero entry. The source E3 quotient
   is dimension3, and the complete E2 source map is `[[],[],[2]]`.
2. Detector ss5574 d3/d4 cycles follow from the g product with basis3389.
   g and the sphere d5 target have complete empty d3/d4 codomains.
3. Detector ss5575 d3/d4 cycles follow from h0 times sphere basis5466,
   monomial `69,1,185,1`, at (22,166). Its staircase row is5468, NULL9995;
   its specified finite d3/d4 prefix is an explicit actual input.

`BySigma.incoming_cycle`, `Incoming.full_incoming`, and
`Assembly.incoming_from_by_sigma` derive the whole 3x2 incoming d3 matrix
from the derived zero column and the recorded nonzero column ss5383.
`Constructed.stage3` and `Constructed.stage4` construct both complete target
meanings using actual products. Their h0 product names on E3 and E4 follow
from the same E2 product via actual multiplicativity squares. The target
names are conclusions, not supplied later-page coordinate formulas.

The by-sigma E2 incoming column4337 is not silently zero: its coefficient
has a nonzero d2, and five module reductions make the product zero.
`D2Reduction.incoming4337` proves this from the actual coefficient d2,
module generator d2 and Leibniz law. The seven module generators used by
three complete E2 maps are densely indexed with their original IDs retained
in `by-sigma-maps.json`; all eight map columns are checked.

## Actual conclusion and remaining mathematical inputs

`ProductDescent.next_product_coordinates` uses complete actual homology
meanings and the all-cycle multiplicativity square to construct the next
product coordinates. `Detector.reflects` applies this three times.
`Trace.exists_initial` constructs an E2 trace for any later element using
actual quotient surjectivity. `Trace.annihilator` then propagates each full
E2 annihilator to E5. Consequently the correction `(d5 g)*x` is zero without
assuming or computing d5(g). Applying actual Leibniz and the detector gives
`Actual.named_d5_zero`.

`Relations.initial_product` and `Relations.initial_correction` connect the
checked relation identities to the actual E2 products using explicit
characteristic-two algebra interpretations. `Semantics` supplies all-vector
column semantics for the g and h0 tensors. `Assembly.result_sound` uses these
two annihilators directly.

Remaining inputs are deliberately mathematical:

- the same named sphere input's E2-to-E5 trace (provided by the existing
  source transport, not rebuilt here);
- actual E2 ring/module relations and basis interpretations, complete page
  differential/incoming meanings, and local quotient/product/naturality laws;
- CW_nu_eta_2 ss4427 finite d3 prefix and S0 ss5468 finite d3/d4 prefix;
- the recorded sphere d3 ss5383 (base0 -> base1) and other finite known
  predecessor events present in the complete comparison graph;
- identification of all these finite algebraic data with the desired
  topological objects, which remains outside this package.

A future differential marker gives no all-page statement. The wrapper
`Assembly.Certificate` accepts a completed detector; the supplied
`Constructed.stage3/stage4` path proves its five unknown entries, rather than
assuming them. General-purpose complete `Meaning` interfaces continue to
require actual semantics; raw JSON alone cannot instantiate them.

## Tactic and validation

```lean
example (c : Assembly.Certificate S pages P R)
    (input : (S.element 2 Actual.sourceDegree).carrier)
    (value : (S.element 5 Actual.sourceDegree).carrier)
    (trace : ManualInputObligations.Trace S pages Actual.sourceDegree 5 input value)
    (name : c.interpretation.source input =
      NamedElementCertificates.evaluate c.interpretation.valuation [[1,7,275]]) :
    S.differential 5 Actual.sourceDegree value = 0 := by
  sphere_g_d5_cert using c
```

`page_comparison%`, `page_product%`, `shifted_module_map%`, `module_bundle%`,
and `named_bundle%` import the canonical checked records. Existing diagnose
functions identify a failed matrix identity, tensor column or relation.
`Tests` rejects a poisoned incoming matrix, wrong relation output, wrong
module output and wrong filtration shift. It also demonstrates that a zero
multiplier cannot detect the target, and that omitting the incoming zero
proof allows the desired product to become a boundary.

All 18 modules in `modules.txt` compile serially. The 149 reported proof
axiom lists contain only propext, Classical.choice and Quot.sound. No
sorry/admit/custom axiom/native evaluation trust or implicit C++ trust is
used. Failed development logs are retained separately from successful
latest compile records.

The independent executable replay covers 81 full comparisons, 300 cycle
vectors, 3072 quotient pairs, the complete product checks and all imported
source/relationship bindings. Hashes establish input consistency only.

Reproduction order (run from Lin-program):

```text
python3 program/Fact762SphereGDetection/search.py
python3 program/Fact762SphereGDetection/provisional.py
python3 program/Fact762SphereGDetection/by_sigma_d2.py
python3 program/Fact762SphereGDetection/package.py
python3 program/Fact762SphereGDetection/by_sigma.py
python3 program/Fact762SphereGDetection/d2_package.py
python3 program/Fact762SphereGDetection/h0_product.py
python3 program/Fact762SphereGDetection/generate_detector.py
python3 program/Fact762SphereGDetection/semantics.py
python3 program/Fact762SphereGDetection/compile.py
python3 program/Fact762SphereGDetection/review.py
```

`provisional.py` is an explicitly marked certificate producer: its five
provisional columns are justified by the Lean constructions above, never
trusted because of that script. No frozen registered dependency is modified
or recompiled by this scope's compiler.
