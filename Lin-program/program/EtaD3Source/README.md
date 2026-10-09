# The eta d3 rule from h0 multiplication

The theorem `EtaD3Source.Actual.eta_d3_zero` proves that every actual element
in E3 bidegree `(1,2)` has zero d3, under explicit meanings for the checked
finite quotients and products and a named actual h0. No d3 value of h0 or h1
is an assumption.

Six full d2 comparisons cover h0 `(1,1)`, h1 `(1,2)`, the h0 d3 target `(4,3)`,
the h1 d3 target `(4,4)`, the product degree `(2,3)`, and the detection degree
`(5,5)`. The groups at `(4,3)` and `(2,3)` are zero. The h0 powers at `(4,4)`
and `(5,5)` each give one-dimensional E3 quotients. Two complete product
certificates prove h0*h1 is zero and multiplication by h0 on the h1 d3 target
has the identity one-dimensional matrix, hence is injective on all classes.

The actual proof uses Leibniz on h0*h1. Both its differential and the d3(h0)
term vanish because their actual carriers faithfully map into the checked
zero quotients. The remaining h0*d3(h1) term vanishes, and the complete
multiplication interpretation and proved injectivity force d3(h1)=0.

`Data.lean` imports certificates and proves their checks; `Basic.lean` proves
the full quotient multiplication is injective; `Semantics.lean` binds tensor
columns to characteristic-two ring evaluation; `Actual.lean` uses the actual
graded Leibniz rule. The original staircase NULL values for h0 and h1 are
retained and are not used to set any differential to zero.

The actual coordinate interpretations, multiplication interpretation, and
`CertifiedAdamsProduct` remain mathematical inputs. This module does not
realize the sphere Adams spectral sequence or prove an actual sphere result
without those inputs. In particular the supplied ring-relation interpretation
is not inferred from a database hash.

Run from the repository root:

```
python3 program/EtaD3Source/generate.py
python3 program/EtaD3Source/generate_semantics.py
python3 program/EtaD3Source/compile.py
python3 program/EtaD3Source/audit.py
```

Four leaves compile serially with exit code zero. Their 14 printed axiom
reports use only `propext`, `Classical.choice`, and `Quot.sound`. Failed
intermediate logs are preserved separately.
