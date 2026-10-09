import Fact762Source4Certificates.KernelBranch
import Fact762Source7Certificates.Semantics

namespace Fact762AssemblyCertificates
open LinearCertificates PageTransitionCertificates Fact762IncomingCertificates

/-- Proof-bearing input for the row2708 complete-kernel route. Its kernel
and actual coordinate hypotheses are not inferred from the database. -/
structure Page4Route (sys : IncomingSystem) where
  targetDimension : Nat
  outgoing : Matrix targetDimension 1
  incomingD3 : Matrix 1 2
  complex : IsComplex outgoing incomingD3
  survivorCycle : InKernel incomingD3 (fun i => i.val == 0)
  completeKernel : AffineRemainingSearch.Kernel.KernelSpanned incomingD3
    AffineRemainingSearch.Kernel.incoming AffineRemainingSearch.Kernel.survivor
  coordinates : sys.Source 4 → Homology outgoing incomingD3
  faithful : Function.Injective coordinates
  zeroMeaning : coordinates (sys.zeroSource 4) =
    Fact762Source4Certificates.zeroClass outgoing incomingD3

theorem Page4Route.vanishes {sys : IncomingSystem} (route : Page4Route sys) :
    VanishesAt (sys.differential 4) (sys.zeroTarget 4) :=
  Fact762Source4Certificates.page4_incoming_vanishes sys route.outgoing route.incomingD3
    route.complex route.survivorCycle route.completeKernel route.coordinates
    route.faithful route.zeroMeaning

/-- Proof-bearing input for the full-source row2632 prefix route. The named
class may become zero; only its stated cycles and representatives are used. -/
structure Page7Route (sys : IncomingSystem) where
  tower : PageTower
  named : (q : Nat) → tower.Carrier q
  meaning3 : Fact762Source7Certificates.FiniteSourceE3 → tower.Carrier 3
  covers3 : Function.Surjective meaning3
  zero3 : meaning3 Fact762Source7Certificates.sourceZero = tower.zero 3
  named3 : meaning3 Fact762Source7Certificates.sourceNamed = named 3
  row2632_cycles : ∀ q, 3 ≤ q → q < 7 → tower.isCycle q (named q)
  namedStep : ∀ q (lo : 3 ≤ q) (hi : q < 7),
    tower.next q ⟨named q,row2632_cycles q lo hi⟩ = named (q+1)
  meaning7 : tower.Carrier 7 → sys.Source 7
  covers7 : Function.Surjective meaning7
  zero7 : meaning7 (tower.zero 7) = sys.zeroSource 7
  row2632_d7_prefix : sys.differential 7 (meaning7 (named 7)) = sys.zeroTarget 7

theorem Page7Route.vanishes {sys : IncomingSystem} (route : Page7Route sys) :
    VanishesAt (sys.differential 7) (sys.zeroTarget 7) :=
  Fact762Source7Certificates.page7_incoming_vanishes sys route.tower route.named
    route.meaning3 route.covers3 route.zero3 route.named3 route.row2632_cycles
    route.namedStep route.meaning7 route.covers7 route.zero7 route.row2632_d7_prefix

#print axioms Page4Route.vanishes
#print axioms Page7Route.vanishes
end Fact762AssemblyCertificates
