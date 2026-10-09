import Fact761PageCertificates.Survivor

namespace NamedPageComparison.Fact761
open LinearCertificates PageTransitionCertificates

-- Complete E3 representatives, in final staircase row order: e4, e0+e3, e3, e2.
def comparison : Comparison 5 6 2 4 where
  inclusion := fun i j =>
    if j.val = 0 then i.val == 4 else if j.val = 1 then i.val == 0 || i.val == 3
    else if j.val = 2 then i.val == 3 else i.val == 2
  projection := fun i j =>
    if i.val = 0 then j.val == 4 else if i.val = 1 then j.val == 0
    else if i.val = 2 then j.val == 0 || j.val == 3 else j.val == 2
  up := fun i j => i.val == 1 && j.val == 5
  down := fun i j => i.val == 1 && j.val == 3

theorem completeComparison : HomologyComparison Fact761PageCertificates.outgoing
    Fact761PageCertificates.incoming comparison := by lin_cert using ()

def equivalence : HomologyEquivalence Fact761PageCertificates.outgoing
    Fact761PageCertificates.incoming 4 :=
  homologyEquivalence _ _ comparison completeComparison

def namedCoordinates : Vec 4 := fun i => i.val == 1

theorem named_class_coordinates :
    equivalence.toCoordinates Fact761PageCertificates.targetClass = namedCoordinates := by
  change eval comparison.projection Fact761PageCertificates.target = namedCoordinates
  funext i
  have h : ∀ i, eval comparison.projection Fact761PageCertificates.target i = namedCoordinates i := by decide
  exact h i

theorem reconstruct_every_class (x : Homology Fact761PageCertificates.outgoing
    Fact761PageCertificates.incoming) :
    equivalence.fromCoordinates (equivalence.toCoordinates x) = x :=
  equivalence.leftInverse x

end NamedPageComparison.Fact761
