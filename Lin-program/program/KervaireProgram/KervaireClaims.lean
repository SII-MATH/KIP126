import KervaireProgram.Checker

namespace KervaireProgram

/-- Inventory entries contain no fabricated class IDs or theorem specifications. -/
structure ClaimRequirement where
  id : String
  location : String
  object : String
  input : String
  conclusion : String
  tables : String
  status : String
  externalInput : Bool
  deriving Repr, DecidableEq

/-- Every CSV row is retained verbatim. This is coverage, not a proof of the paper. -/
def claimCatalog : List ClaimRequirement :=
  [ ⟨"strategy-e2", "Introduction §1", "49 finite CW spectra", "CW spectra and Steenrod-algebra data", "Adams E2 pages and maps", "", "required input inventory", false⟩
  , ⟨"strategy-d2", "Introduction §1", "selected finite spectra", "secondary Steenrod algebra data", "selected Adams d2 differentials", "", "required input inventory", false⟩
  , ⟨"strategy-propagation", "Introduction §1", "all configured spectra/maps/cofiber sequences", "E2 pages, maps, d2 and propagation rules", "propagated Adams differentials and extensions", "", "required checker boundary", false⟩
  , ⟨"strategy-101-105", "Introduction §1", "stem 125 targets of h6^2", "105 additive generators plus inductive input", "101 targets ruled out", "2-9", "aggregate computational conclusion", false⟩
  , ⟨"fact-7.6-1", "§7 Fact 7.6(1)", "x126,8,4 + x126,8", "Appendix E2/differential tables", "survives to E6", "5;6;7;9", "Lean lemma", false⟩
  , ⟨"fact-7.6-2", "§7 Fact 7.6(2)", "h1 h4 x109,12", "survival and possible source targets", "permanent; only d6 or d12 can kill it", "5;6;7;9", "Lean lemma", false⟩
  , ⟨"fact-7.6-3", "§7 Fact 7.6(3)", "h0^2 x124,8", "Adams differential table", "survives to E-infinity", "5;7", "Lean lemma", false⟩
  , ⟨"fact-7.6-4", "§7 Fact 7.6(4)", "g^4 Delta h1 g", "stem 125 filtration 25", "only survivor through E5", "6;7", "Lean lemma", false⟩
  , ⟨"remark-7.7", "§7 Remark 7.7", "x126,6", "d3 output with a possible summand", "nonzero and cannot kill h1 h4 x109,12", "9", "candidate-set specification", false⟩
  , ⟨"fact-7.13", "§7 Fact 7.13", "x123,9 + h0 x123,8; x125,8", "Appendix tables", "survives to E12; exact d2(x125,8)", "3;7", "Lean lemma", false⟩
  , ⟨"fact-7.15", "§7 Fact 7.15", "h0^2 x125,9,2", "Adams differential table", "survives to E5", "7", "Lean lemma", false⟩
  , ⟨"fact-7.19", "§7 Fact 7.19", "h1 x121,7", "Adams differential table", "survives to E6", "2", "Lean lemma", false⟩
  , ⟨"fact-7.21", "§7 Fact 7.21", "h6 M d0; h5 x91,11", "Adams differential table", "both are permanent cycles", "2", "Lean lemma", false⟩
  , ⟨"prop-7.9", "§7 Proposition 7.9", "S0/nu stem 126", "h1 h4 x109,12[0]; r<=5", "not killed by any d_r; contradiction to the remaining case", "1", "Lean lemma", false⟩
  , ⟨"manual-1", "§8 Appendix", "S0", "manually added differential", "d5(h0^24 h6)=h0^2 P^6 d0", "", "external theorem/input", true⟩
  , ⟨"manual-2", "§8 Appendix", "S0", "manually added differential", "d6(h0^55 h7)=h0^2 x126,60", "", "external theorem/input", true⟩
  , ⟨"manual-3", "§8 Appendix", "tmf", "power-operations input", "d3(v2^16)=beta^5 g", "", "external theorem/input", true⟩
  ]

theorem claimCatalog_count : claimCatalog.length = 17 := by decide

theorem claimCatalog_unique : (claimCatalog.map ClaimRequirement.id).Nodup := by decide

def findClaim (id : String) : Option ClaimRequirement :=
  claimCatalog.find? (fun c => c.id == id)

end KervaireProgram
