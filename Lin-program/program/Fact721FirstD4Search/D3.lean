import Fact721FirstD4Search.Comparison
namespace Fact721FirstD4Search.D3
open LinearCertificates PageTransitionCertificates Comparison
def sourceS : WireComparison := page_comparison% "Fact721FirstD4Search/d3wire/sourceS.json"
theorem sourceS_valid : sourceS.Valid := by lin_cert using ()
#print axioms sourceS_valid
def sourceD : WireComparison := page_comparison% "Fact721FirstD4Search/d3wire/sourceD.json"
theorem sourceD_valid : sourceD.Valid := by lin_cert using ()
#print axioms sourceD_valid
def targetS : WireComparison := page_comparison% "Fact721FirstD4Search/d3wire/targetS.json"
theorem targetS_valid : targetS.Valid := by lin_cert using ()
#print axioms targetS_valid
def targetD : WireComparison := page_comparison% "Fact721FirstD4Search/d3wire/targetD.json"
theorem targetD_valid : targetD.Valid := by lin_cert using ()
#print axioms targetD_valid
theorem source_compatible : CompatibleMap (matrixOf sourceS.k sourceS.m sourceS.outgoing) (matrixOf sourceS.m sourceS.n sourceS.incoming) (matrixOf sourceD.k sourceD.m sourceD.outgoing) (matrixOf sourceD.m sourceD.n sourceD.incoming) sE3 soE3 siE3 := by lin_cert using ()
#print axioms source_compatible
theorem target_compatible : CompatibleMap (matrixOf targetS.k targetS.m targetS.outgoing) (matrixOf targetS.m targetS.n targetS.incoming) (matrixOf targetD.k targetD.m targetD.outgoing) (matrixOf targetD.m targetD.n targetD.incoming) tE3 toE3 tiE3 := by lin_cert using ()
#print axioms target_compatible
end Fact721FirstD4Search.D3
