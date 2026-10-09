import ActualFiniteNoHit.Basic
import Fact713Row3143Continuation.Constructed

namespace ActualFiniteNoHit.Fact713
open ManualInputObligations.Reference ActualAdamsSystemBridge ActualAdamsFiltration
open Fact713ConstructedNamed Fact713Row3143Continuation.Constructed

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}

def NotKilledByAnyDifferential (zeros : ZeroMeaning S pages) (P : Prefix10 S pages) : Prop :=
  ¬ (filtration (system S pages zeros degree)
      (differentialLaws S pages zeros degree)).BInfinity P.raw

theorem not_killed (zeros : ZeroMeaning S pages) (P : Prefix10 S pages) :
    NotKilledByAnyDifferential zeros P :=
  actual_no_boundary_ever S pages zeros degree 8 (by decide) P.raw P.endpoint10.value
    P.endpoint10.trace P.nonzero10

syntax "fact713_no_hit_cert" " using " term " with " term : tactic
macro_rules
  | `(tactic| fact713_no_hit_cert using $p:term with $z:term) =>
    `(tactic| exact not_killed $z $p)

example (zeros : ZeroMeaning S pages) (P : Prefix10 S pages) :
    NotKilledByAnyDifferential zeros P := by fact713_no_hit_cert using P with zeros

#print axioms not_killed
end ActualFiniteNoHit.Fact713
