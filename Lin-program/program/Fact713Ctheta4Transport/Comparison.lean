import Fact713Ctheta4Transport.Maps
import PageTransitionCertificates.InducedMap
import PageTransitionCertificates.Import
set_option maxRecDepth 8192
set_option maxHeartbeats 8000000
namespace Fact713Ctheta4Transport.Comparison
open LinearCertificates PageTransitionCertificates
def c14_167_2 : WireComparison := page_comparison% "Fact713Ctheta4Transport/wire/c14_167_2.json"
theorem c14_167_2_valid : c14_167_2.Valid := by lin_cert using ()
#print axioms c14_167_2_valid
def c17_169_2 : WireComparison := page_comparison% "Fact713Ctheta4Transport/wire/c17_169_2.json"
theorem c17_169_2_valid : c17_169_2.Valid := by lin_cert using ()
#print axioms c17_169_2_valid
def c18_170_2 : WireComparison := page_comparison% "Fact713Ctheta4Transport/wire/c18_170_2.json"
theorem c18_170_2_valid : c18_170_2.Valid := by lin_cert using ()
#print axioms c18_170_2_valid
def c20_171_2 : WireComparison := page_comparison% "Fact713Ctheta4Transport/wire/c20_171_2.json"
theorem c20_171_2_valid : c20_171_2.Valid := by lin_cert using ()
#print axioms c20_171_2_valid
def c21_172_2 : WireComparison := page_comparison% "Fact713Ctheta4Transport/wire/c21_172_2.json"
theorem c21_172_2_valid : c21_172_2.Valid := by lin_cert using ()
#print axioms c21_172_2_valid
def c24_174_2 : WireComparison := page_comparison% "Fact713Ctheta4Transport/wire/c24_174_2.json"
theorem c24_174_2_valid : c24_174_2.Valid := by lin_cert using ()
#print axioms c24_174_2_valid
def s14_136_2 : WireComparison := page_comparison% "Fact713Ctheta4Transport/wire/s14_136_2.json"
theorem s14_136_2_valid : s14_136_2.Valid := by lin_cert using ()
#print axioms s14_136_2_valid
def s17_138_2 : WireComparison := page_comparison% "Fact713Ctheta4Transport/wire/s17_138_2.json"
theorem s17_138_2_valid : s17_138_2.Valid := by lin_cert using ()
#print axioms s17_138_2_valid
def s18_139_2 : WireComparison := page_comparison% "Fact713Ctheta4Transport/wire/s18_139_2.json"
theorem s18_139_2_valid : s18_139_2.Valid := by lin_cert using ()
#print axioms s18_139_2_valid
def s20_140_2 : WireComparison := page_comparison% "Fact713Ctheta4Transport/wire/s20_140_2.json"
theorem s20_140_2_valid : s20_140_2.Valid := by lin_cert using ()
#print axioms s20_140_2_valid
def s21_141_2 : WireComparison := page_comparison% "Fact713Ctheta4Transport/wire/s21_141_2.json"
theorem s21_141_2_valid : s21_141_2.Valid := by lin_cert using ()
#print axioms s21_141_2_valid
def s24_143_2 : WireComparison := page_comparison% "Fact713Ctheta4Transport/wire/s24_143_2.json"
theorem s24_143_2_valid : s24_143_2.Valid := by lin_cert using ()
#print axioms s24_143_2_valid
def c17_169_3 : WireComparison := page_comparison% "Fact713Ctheta4Transport/wire/c17_169_3.json"
theorem c17_169_3_valid : c17_169_3.Valid := by lin_cert using ()
#print axioms c17_169_3_valid
def s17_138_3 : WireComparison := page_comparison% "Fact713Ctheta4Transport/wire/s17_138_3.json"
theorem s17_138_3_valid : s17_138_3.Valid := by lin_cert using ()
#print axioms s17_138_3_valid
def s21_141_3 : WireComparison := page_comparison% "Fact713Ctheta4Transport/wire/s21_141_3.json"
theorem s21_141_3_valid : s21_141_3.Valid := by lin_cert using ()
#print axioms s21_141_3_valid
theorem f14_167_3_compatible : CompatibleMap (matrixOf c14_167_2.k c14_167_2.m c14_167_2.outgoing) (matrixOf c14_167_2.m c14_167_2.n c14_167_2.incoming) (matrixOf s14_136_2.k s14_136_2.m s14_136_2.outgoing) (matrixOf s14_136_2.m s14_136_2.n s14_136_2.incoming) (Maps.m14_167.algebra.mat) (Maps.m16_168.algebra.mat) (Maps.m12_166.algebra.mat) := by lin_cert using ()
def f14_167_3 := coordinateMap c14_167_2.comparison s14_136_2.comparison (Maps.m14_167.algebra.mat)
#print axioms f14_167_3_compatible
theorem f17_169_3_compatible : CompatibleMap (matrixOf c17_169_2.k c17_169_2.m c17_169_2.outgoing) (matrixOf c17_169_2.m c17_169_2.n c17_169_2.incoming) (matrixOf s17_138_2.k s17_138_2.m s17_138_2.outgoing) (matrixOf s17_138_2.m s17_138_2.n s17_138_2.incoming) (Maps.m17_169.algebra.mat) (Maps.m19_170.algebra.mat) (Maps.m15_168.algebra.mat) := by lin_cert using ()
def f17_169_3 := coordinateMap c17_169_2.comparison s17_138_2.comparison (Maps.m17_169.algebra.mat)
#print axioms f17_169_3_compatible
theorem f18_170_3_compatible : CompatibleMap (matrixOf c18_170_2.k c18_170_2.m c18_170_2.outgoing) (matrixOf c18_170_2.m c18_170_2.n c18_170_2.incoming) (matrixOf s18_139_2.k s18_139_2.m s18_139_2.outgoing) (matrixOf s18_139_2.m s18_139_2.n s18_139_2.incoming) (Maps.m18_170.algebra.mat) (Maps.m20_171.algebra.mat) (Maps.m16_169.algebra.mat) := by lin_cert using ()
def f18_170_3 := coordinateMap c18_170_2.comparison s18_139_2.comparison (Maps.m18_170.algebra.mat)
#print axioms f18_170_3_compatible
theorem f20_171_3_compatible : CompatibleMap (matrixOf c20_171_2.k c20_171_2.m c20_171_2.outgoing) (matrixOf c20_171_2.m c20_171_2.n c20_171_2.incoming) (matrixOf s20_140_2.k s20_140_2.m s20_140_2.outgoing) (matrixOf s20_140_2.m s20_140_2.n s20_140_2.incoming) (Maps.m20_171.algebra.mat) (Maps.m22_172.algebra.mat) (Maps.m18_170.algebra.mat) := by lin_cert using ()
def f20_171_3 := coordinateMap c20_171_2.comparison s20_140_2.comparison (Maps.m20_171.algebra.mat)
#print axioms f20_171_3_compatible
theorem f21_172_3_compatible : CompatibleMap (matrixOf c21_172_2.k c21_172_2.m c21_172_2.outgoing) (matrixOf c21_172_2.m c21_172_2.n c21_172_2.incoming) (matrixOf s21_141_2.k s21_141_2.m s21_141_2.outgoing) (matrixOf s21_141_2.m s21_141_2.n s21_141_2.incoming) (Maps.m21_172.algebra.mat) (Maps.m23_173.algebra.mat) (Maps.m19_171.algebra.mat) := by lin_cert using ()
def f21_172_3 := coordinateMap c21_172_2.comparison s21_141_2.comparison (Maps.m21_172.algebra.mat)
#print axioms f21_172_3_compatible
theorem f24_174_3_compatible : CompatibleMap (matrixOf c24_174_2.k c24_174_2.m c24_174_2.outgoing) (matrixOf c24_174_2.m c24_174_2.n c24_174_2.incoming) (matrixOf s24_143_2.k s24_143_2.m s24_143_2.outgoing) (matrixOf s24_143_2.m s24_143_2.n s24_143_2.incoming) (Maps.m24_174.algebra.mat) (Maps.m26_175.algebra.mat) (Maps.m22_173.algebra.mat) := by lin_cert using ()
def f24_174_3 := coordinateMap c24_174_2.comparison s24_143_2.comparison (Maps.m24_174.algebra.mat)
#print axioms f24_174_3_compatible
theorem f17_169_4_compatible : CompatibleMap (matrixOf c17_169_3.k c17_169_3.m c17_169_3.outgoing) (matrixOf c17_169_3.m c17_169_3.n c17_169_3.incoming) (matrixOf s17_138_3.k s17_138_3.m s17_138_3.outgoing) (matrixOf s17_138_3.m s17_138_3.n s17_138_3.incoming) (f17_169_3) (f20_171_3) (f14_167_3) := by lin_cert using ()
def f17_169_4 := coordinateMap c17_169_3.comparison s17_138_3.comparison (f17_169_3)
#print axioms f17_169_4_compatible
def named2 : Vec 8 := fun i => i.val < 3
def sphere2 : Vec 4 := fun i => i.val < 3
def named : Vec 5 := fun i => i.val == 4
def sphere : Vec 1 := fun _ => true
theorem named2_map : eval Maps.m17_169.algebra.mat named2 = sphere2 := by decide
theorem source2_cycle : InKernel (matrixOf c17_169_2.k 8 c17_169_2.outgoing) named2 := by lin_cert using ()
theorem source2_next : eval c17_169_2.comparison.projection named2 = named := by decide
theorem source3_cycle : InKernel (matrixOf c17_169_3.k 5 c17_169_3.outgoing) named := by lin_cert using ()
theorem source3_next : eval c17_169_3.comparison.projection named = named := by decide
theorem named_map3 : eval f17_169_3 named = sphere := by decide
theorem named_map4 : eval f17_169_4 named = sphere := by decide
theorem map3_surjective : ∀ y : Vec 1, ∃ x : Vec 5, eval f17_169_3 x = y := by decide
theorem map4_surjective : ∀ y : Vec 1, ∃ x : Vec 5, eval f17_169_4 x = y := by decide
#print axioms named2_map
#print axioms source2_cycle
#print axioms source2_next
#print axioms source3_cycle
#print axioms source3_next
#print axioms named_map3
#print axioms named_map4
#print axioms map3_surjective
#print axioms map4_surjective
end Fact713Ctheta4Transport.Comparison
