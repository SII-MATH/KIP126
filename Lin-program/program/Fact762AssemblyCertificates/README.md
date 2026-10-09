# Fact7.6(2): precise conditional incoming-page assembly

`Assembly.only_six_or_twelve` (fully qualified name
`Fact762AssemblyCertificates.only_six_or_twelve`) assembles the two proved
conditional routes for pages4 and7 with the remaining explicit inputs in
`Fact762IncomingCertificates.only_six_or_twelve`.

The conclusion says: if the named target on the queried page `q` is
nonzero, `2 <= q`, and an incoming differential hits it, then `q=6` or
`q=12`. Nonzeroness is assumed only on that queried page. No all-page
nonzero condition or permanent-survival assumption is present.

## Inputs and conclusions

`Routes.Page4Route` stores the actual full matrix interpretation required
by the row2708 route: complex law, survivor cycle, complete kernel span,
and a faithful full source coordinate map preserving zero. Its `vanishes`
theorem invokes `Fact762Source4Certificates.page4_incoming_vanishes`.
The complete-kernel premise implies that the full E4 source quotient is
zero. The old proposed row2858 nonboundary is not retained and would be
inconsistent with that premise. The complete-kernel premise itself still
requires a mathematical proof.

`Routes.Page7Route` stores full E3 realization, an actual `PageTower`, the
row2632 cycles and named representatives on pages3..6, full E7 source
realization, and the explicit row2632 d7-zero prefix. Its `vanishes` theorem
invokes `Fact762Source7Certificates.page7_incoming_vanishes`. The full E7
source need not be zero; the result is zero differential on every source
element. No database level number supplies a proof field.

`Assumptions sys` then contains:

- Actual no-hit proofs for pages2 and3. The existing finite nonimage and
  zero-map theorems still require their actual coordinate interpretations.
- `Page4Route sys` and `Page7Route sys`, with every mathematical premise
  explicit; no bare page4/page7 vanishing conclusion is accepted instead.
- Actual source-zero proofs for every page in `{5,8,9,10,11,13,14}`. Their
  finite quotient proofs and actual zero propagation are documented in
  `Fact762IncomingCertificates`; transport is not inferred automatically.
- Actual absence of the full incoming source when integer filtration
  `14-q` is negative, covering all `q>14`.

`only_six_or_twelve` derives the conditional incoming restriction, and
`no_hit_elsewhere` excludes any queried page other than6 or12 when its
target is nonzero. `routed_pages` exposes both all-source map-zero results.

```lean
example {sys : Fact762IncomingCertificates.IncomingSystem}
    (evidence : Fact762AssemblyCertificates.Assumptions sys)
    (q : Nat) (hq : 2 <= q)
    (nonzero : Not (sys.target q = sys.zeroTarget q))
    (hit : sys.HitAt q) : Or (q = 6) (q = 12) := by
  exact Fact762AssemblyCertificates.only_six_or_twelve evidence q hq nonzero hit
```

The evidence is a proof-bearing structure, not a serialized certificate
that manufactures actual topological hypotheses. No extra tactic is needed
for this theorem application; finite subcertificates use their existing
kernel-checked tactics.

## Scope and review

This assembly concerns incoming differentials only. An element with zero
outgoing differential can still be hit by an incoming differential. The
paper's use of "permanent cycle" for outgoing-zero behavior must not be
identified with the stronger `PermanentCycleCertificates.System.Permanent`
predicate requiring nonboundary survival on every page. Neither predicate
is asserted by this module.

`IncomingSystem` is an abstract system: it does not automatically identify
targets across pages or provide the original topological realization. A
caller must supply those mathematical meanings. This module does not prove
the row2708 kernel premise, row2632 prefix, all actual source coordinates,
or the queried target's nonzeroness. It therefore does not finish the
unconditional Fact7.6(2) statement.

Both Lean modules compile with five standard-only axiom reports. No
`sorry`, `native_decide`, custom axioms or C++ trust are used. Compilation
and review commands from the repository root are:

```sh
python3 program/Fact762AssemblyCertificates/compile.py
python3 program/Fact762AssemblyCertificates/review.py
python3 program/Fact762AssemblyCertificates/assert_current.py
```

The accepted event snapshot and all prior modules are unchanged.
