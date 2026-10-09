import Fact713D4SourceSearch.Comparison
namespace Fact713D4SourceSearch.Parameters
open LinearCertificates PageTransitionCertificates Comparison
set_option maxRecDepth 100000
set_option maxHeartbeats 8000000
def sourceS : WireComparison := page_comparison% "Fact713D4SourceSearch/d3wire/sourceS.json"
theorem sourceS_valid : sourceS.Valid := by lin_cert using ()
def targetS : WireComparison := page_comparison% "Fact713D4SourceSearch/d3wire/targetS.json"
theorem targetS_valid : targetS.Valid := by lin_cert using ()
def sourceD000 : WireComparison := page_comparison% "Fact713D4SourceSearch/d3wire/sourceD000.json"
theorem sourceD000_valid : sourceD000.Valid := by lin_cert using ()
def sourceD001 : WireComparison := page_comparison% "Fact713D4SourceSearch/d3wire/sourceD001.json"
theorem sourceD001_valid : sourceD001.Valid := by lin_cert using ()
def sourceD010 : WireComparison := page_comparison% "Fact713D4SourceSearch/d3wire/sourceD010.json"
theorem sourceD010_valid : sourceD010.Valid := by lin_cert using ()
def sourceD011 : WireComparison := page_comparison% "Fact713D4SourceSearch/d3wire/sourceD011.json"
theorem sourceD011_valid : sourceD011.Valid := by lin_cert using ()
def sourceD100 : WireComparison := page_comparison% "Fact713D4SourceSearch/d3wire/sourceD100.json"
theorem sourceD100_valid : sourceD100.Valid := by lin_cert using ()
def sourceD101 : WireComparison := page_comparison% "Fact713D4SourceSearch/d3wire/sourceD101.json"
theorem sourceD101_valid : sourceD101.Valid := by lin_cert using ()
def sourceD110 : WireComparison := page_comparison% "Fact713D4SourceSearch/d3wire/sourceD110.json"
theorem sourceD110_valid : sourceD110.Valid := by lin_cert using ()
def sourceD111 : WireComparison := page_comparison% "Fact713D4SourceSearch/d3wire/sourceD111.json"
theorem sourceD111_valid : sourceD111.Valid := by lin_cert using ()
def targetD00 : WireComparison := page_comparison% "Fact713D4SourceSearch/d3wire/targetD00.json"
theorem targetD00_valid : targetD00.Valid := by lin_cert using ()
def targetD01 : WireComparison := page_comparison% "Fact713D4SourceSearch/d3wire/targetD01.json"
theorem targetD01_valid : targetD01.Valid := by lin_cert using ()
def targetD10 : WireComparison := page_comparison% "Fact713D4SourceSearch/d3wire/targetD10.json"
theorem targetD10_valid : targetD10.Valid := by lin_cert using ()
def targetD11 : WireComparison := page_comparison% "Fact713D4SourceSearch/d3wire/targetD11.json"
theorem targetD11_valid : targetD11.Valid := by lin_cert using ()
def sourceDSelected (a b c : Bool) : WireComparison :=
  match a, b, c with
  | false, false, false => sourceD000
  | false, false, true => sourceD001
  | false, true, false => sourceD010
  | false, true, true => sourceD011
  | true, false, false => sourceD100
  | true, false, true => sourceD101
  | true, true, false => sourceD110
  | true, true, true => sourceD111
def sourceD (a b c : Bool) : WireComparison :=
  let w := sourceDSelected a b c
  ⟨1,3,1,2,w.h,w.outgoing,w.incoming,w.inclusion,w.projection,w.up,w.down⟩
theorem sourceD_valid (a b c : Bool) : (sourceD a b c).Valid := by
  cases a <;> cases b <;> cases c <;> lin_cert using ()
def targetDSelected (u v : Bool) : WireComparison :=
  match u, v with
  | false, false => targetD00
  | false, true => targetD01
  | true, false => targetD10
  | true, true => targetD11
def targetD (u v : Bool) : WireComparison :=
  let w := targetDSelected u v
  ⟨1,2,4,4,w.h,w.outgoing,w.incoming,w.inclusion,w.projection,w.up,w.down⟩
theorem targetD_valid (u v : Bool) : (targetD u v).Valid := by
  cases u <;> cases v <;> lin_cert using ()
theorem source_compatible (a b c : Bool) : CompatibleMap
    (matrixOf sourceS.k sourceS.m sourceS.outgoing) (matrixOf sourceS.m sourceS.n sourceS.incoming)
    (matrixOf (sourceD a b c).k (sourceD a b c).m (sourceD a b c).outgoing)
    (matrixOf (sourceD a b c).m (sourceD a b c).n (sourceD a b c).incoming) sE3 soE3 siE3 := by
  cases a <;> cases b <;> cases c <;> lin_cert using ()
theorem target_compatible (u v : Bool) : CompatibleMap
    (matrixOf targetS.k targetS.m targetS.outgoing) (matrixOf targetS.m targetS.n targetS.incoming)
    (matrixOf (targetD u v).k (targetD u v).m (targetD u v).outgoing)
    (matrixOf (targetD u v).m (targetD u v).n (targetD u v).incoming) tE3 toE3 tiE3 := by
  cases u <;> cases v <;> lin_cert using ()
#print axioms sourceD_valid
#print axioms targetD_valid
#print axioms source_compatible
#print axioms target_compatible
end Fact713D4SourceSearch.Parameters
