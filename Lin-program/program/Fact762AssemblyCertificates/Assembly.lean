import Fact762AssemblyCertificates.Routes

namespace Fact762AssemblyCertificates
open Fact762IncomingCertificates

/-- Remaining semantic inputs cover all earlier exclusions and actual source
zeros. They are proof terms, not automatically generated finite certificates. -/
structure Assumptions (sys : IncomingSystem) where
  page2 : ¬ sys.HitAt 2
  page3 : ¬ sys.HitAt 3
  page4 : Page4Route sys
  page7 : Page7Route sys
  zeroSources : ∀ q, ProvedZeroSourcePage q → ∀ x : sys.Source q, x = sys.zeroSource q
  negativeFiltration : ∀ q : Nat, (14 : Int) - (q : Int) < 0 →
    ∀ x : sys.Source q, x = sys.zeroSource q

/-- Every nonzero incoming hit at the queried page is on page6 or page12,
under the explicitly assembled mathematical inputs. No other page's named
target is assumed nonzero, and no outgoing-permanence claim is made. -/
theorem only_six_or_twelve {sys : IncomingSystem} (evidence : Assumptions sys)
    (q : Nat) (page : 2 ≤ q) (nonzero : sys.target q ≠ sys.zeroTarget q)
    (hit : sys.HitAt q) : AllowedPage q :=
  Fact762IncomingCertificates.only_six_or_twelve sys evidence.page2 evidence.page3
    evidence.page4.vanishes evidence.page7.vanishes evidence.zeroSources
    evidence.negativeFiltration q page nonzero hit

theorem no_hit_elsewhere {sys : IncomingSystem} (evidence : Assumptions sys)
    (q : Nat) (page : 2 ≤ q) (nonzero : sys.target q ≠ sys.zeroTarget q)
    (notSix : q ≠ 6) (notTwelve : q ≠ 12) : ¬ sys.HitAt q := by
  intro hit
  rcases only_six_or_twelve evidence q page nonzero hit with h | h
  · exact notSix h
  · exact notTwelve h

/-- The page4 and page7 obligations are discharged by their full-source
routes, rather than accepted as bare conclusions in the assembled input. -/
theorem routed_pages {sys : IncomingSystem} (evidence : Assumptions sys) :
    VanishesAt (sys.differential 4) (sys.zeroTarget 4) ∧
    VanishesAt (sys.differential 7) (sys.zeroTarget 7) :=
  ⟨evidence.page4.vanishes,evidence.page7.vanishes⟩

example {sys : IncomingSystem} (evidence : Assumptions sys)
    (q : Nat) (hq : 2 ≤ q) (nonzero : sys.target q ≠ sys.zeroTarget q)
    (hit : sys.HitAt q) : q = 6 ∨ q = 12 :=
  only_six_or_twelve evidence q hq nonzero hit

#print axioms only_six_or_twelve
#print axioms no_hit_elsewhere
#print axioms routed_pages
end Fact762AssemblyCertificates
