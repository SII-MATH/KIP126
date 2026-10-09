# Fact 7.15: exact reduction of no-hit to d9

This package proves a reduction, not the remaining Fact 7.15 assertion.
For the same E2 input whose nonzero E5 representative was constructed in
`Fact715ConstructedActual`, it proves that cumulative incoming death is
equivalent to a d9 incoming hit on an actual E9 representative. It does
not assume that such an E9 representative exists. If an outgoing
differential prevents the input from reaching E9, the input is already
excluded from the cumulative boundary set.

## Exact meaning

In the system indexing convention, index n denotes Adams page n+2.
The cutoff is index3 (E5), the exceptional incoming map is index7 (d9),
and its boundary appears at index8 (E10).

`Basic.boundary_iff_exceptional_hit` states

```text
f.BInfinity x <-> exists cycle : f.Z q x,
  exists y, s.incoming q y = R.image q x cycle
```

under the full actual quotient realization, the differential laws and
vanishing of every incoming map after the cutoff except at q. The proof
uses increasing cumulative boundaries and their stabilization after q+1.
This equivalence even includes earlier boundaries: they give the zero
incoming image at q. Separately, `exceptional_image_nonzero` uses the
nonzero cutoff representative and vanishing maps before q to prove
that any representative at q is nonzero. These two results together make
the exceptional hit an actual nonzero d9 hit for the named Fact 7.15 class.

`outgoing_death_excludes_boundaries` proves that a nonzero outgoing
differential at any represented page excludes `BInfinity`. Thus the
reduction never requires E9 survival, permanence or a zero main outgoing
map. A total recursive advance returning zero after outgoing death cannot
be confused with a boundary: membership also requires the original input
to lie in the relevant cycle subset.

## Actual source coverage and input binding

`Actual.incoming_except_nine` combines the entire incoming sum from
`Fact715IncomingTail` with the E5(6,132)=0 theorem in
`Fact715Source2574`. The latter eliminates d5 through h2 product detection.
The former eliminates d6,d7,d8,d10,d11 and all higher pages. Both the zero
summand and every legally graded source element are included.

`Named.ReductionInput` retains the same initial additive chart and
`Fact715ConstructedActual.Prefix5`, so `cutoff_cycle` and `cutoff_nonzero`
refer to exactly its E2 input. `page9_nonzero` proves that any E9
representative of this input is nonzero, if it exists. `named_reduction`
accepts a supplied input only with the checked initial-name equality.

The remaining proposition is explicitly called `D9Exclusion`. It asks
that no actual d9 incoming image equal any E9 representative of that input.
It is weaker than requiring the whole d9 map to vanish, and does not ask
for existence of an E9 representative. No theorem in this package proves
`D9Exclusion` unconditionally.

## Tactics and remaining premise

The reduction tactic proves only the exact equivalence:

```lean
example (c : ReductionInput S pages product initial) :
    NotHit c.zeros (Fact715ConstructedActual.raw initial) <->
      D9Exclusion c.zeros (Fact715ConstructedActual.raw initial) := by
  fact715_nohit_reduction using c
```

The conditional constructor requires a certificate containing both the
input binding and a proof of the unresolved d9 exclusion:

```lean
example (c : ReductionInput S pages product initial)
    (certificate : Certificate c input) : ResultValid c.zeros initial input := by
  fact715_nohit_cert using c with certificate
```

`ResultValid` includes the original same-input nonzero E5 trace and no
cumulative boundary. Incorrect goals and missing d9 certificates are
rejected; the reduction tactic cannot prove the conditional result by
itself. The complete E2 and recorded differential interpretations,
product/naturality premises in the imported packages, and actual quotient
zero laws remain mathematical inputs. Neither C++ output nor a NULL
marker supplies these premises.

## Verification

```text
python3 program/Fact715NoHitReduction/compile.py
python3 program/Fact715NoHitReduction/review.py
```

Five modules compile serially. Every development attempt is retained in
`evidence/`; only current successful compile records are acceptance
evidence. The finite review distinguishes incoming death, outgoing death
and indefinite survival, checks the exact exceptional-hit equivalence,
and retains a counterexample when the remaining d9 exclusion is omitted.
No admitted proof, custom axiom, native proof evaluator or implicit C++
trust is used. Standard axiom reports are restricted to `propext`,
`Classical.choice` and `Quot.sound`.

The accepted run has 26 standard-axiom reports across five modules. The
independent review checks 23 semantic event models, including 16 models
satisfying the incoming-tail hypothesis, 11 outgoing-death cases, three
counterexamples to dropping the tail hypothesis, and ten monotone
boundary sequences. These finite tests supplement the general Lean
theorems; they are not their proof.
