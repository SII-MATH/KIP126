# Exact conditional boundary

The principal theorem is

```lean
result_sound
  {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
  {I : Input S pages} (W : Witness I)
  (input : (S.element 2 namedDegree).carrier)
  (output : (S.element 5 namedDegree).carrier)
  (input_binding : input = I.initial)
  (output_binding : output = I.endpoint5.value) :
  ResultValid I input output
```

`namedDegree = (25,150)` throughout. The result unfolds to

```lean
input = I.initial /\ output = I.endpoint5.value /\
Nonempty (Trace S pages namedDegree 5 input output) /\
(output != S.zero 5 namedDegree /\
  forall y : (S.element 5 namedDegree).carrier,
    y = S.zero 5 namedDegree \/ y = output)
```

ASCII notation in the displayed expansion is explanatory; the Lean source
uses the standard logical symbols. The output equality is an explicit
binding to a constructed quotient, not an assumption of uniqueness.

Unresolved application premises are precisely the fields of `Input` and
`Witness`: actual graded product with ordinary Leibniz, six full cycle-pair
page-transition laws, five faithful maps from actual empty E2 targets to
the zero vector space, zero-compatible homology quotients, full actual
E4 differential coordinates including complete incoming coverage, actual
E4 named-product coordinates, and existing source-obstruction equations.

`candidateCycle` is the old upstream four-dimensional candidate condition
`candidate 0 = candidate 1`; it is not the desired named d4 cycle. That
named cycle is derived in `Input.cycle4`. The entire outgoing matrix and
finite complex law are not presumed zero/valid. `coordinates_complex`
derives the complex law and the finite constraints force outgoing zero.

This does not reconstruct those premises for the sphere, produce them from
trusted C++ output, or prove the original topological Fact 7.6(4).
