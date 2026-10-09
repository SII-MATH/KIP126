import AggregateIncomingTargetCompletion.FinalTarget
import IndexedFamilyCertificates.RequestImport

namespace AggregateIncomingTargetCompletion.Bundle
open LinearCertificates PageTransitionCertificates IndexedFamilyCertificates
set_option maxRecDepth 20000
set_option maxHeartbeats 24000000

def importedFamily : Family := family_input% "AggregateIncomingTargetCompletion/family399.json"

theorem imported_exact : importedFamily = Final.family := rfl
theorem imported_coherent : Coherent importedFamily := by
  rw [imported_exact]
  exact Final.coherent

structure Item where
  row : AggregateEliminationCertificates.TargetRow
  event : BoundWire
  target : WireComparison

/-- The entire matrix and every indexed prefix are bound before concluding zero. -/
def Binding (item : Item) : Prop :=
  item.row.role = .incoming ∧
  AggregateEliminationCertificates.Matches item.row item.event ∧
  item.event.Valid importedFamily ∧
  lookup importedFamily (keyAt item.event.object item.event.event.eventPage
    item.event.event.targetDegree) = some item.target ∧
  item.target.Valid ∧
  item.target.m = item.event.event.finite.event.k ∧
  item.target.n = item.event.event.finite.event.m ∧
  item.target.incoming = item.event.event.finite.event.outgoing

def targetVector (item : Item) : Vec item.target.m :=
  fun i => item.event.event.finite.target[i.val]?.getD false

def sourceVector (item : Item) : Vec item.target.n :=
  fun i => item.event.event.finite.source[i.val]?.getD false

theorem binding_image (item : Item) (binding : Binding item) :
    InImage (matrixOf item.target.m item.target.n item.target.incoming) (targetVector item) := by
  have hm := binding.2.2.2.2.2.1
  have hn := binding.2.2.2.2.2.2.1
  have he := binding.2.2.2.2.2.2.2
  have equation := binding.2.2.1.2.1.2.2.2.2.2.1
  rcases item with ⟨row,event,target⟩
  rcases target with ⟨version,k,m,n,h,outgoing,incoming,inclusion,projection,up,down⟩
  dsimp at hm hn he
  subst m
  subst n
  subst incoming
  exact ⟨event.event.finite.sourceVector,equation⟩

theorem binding_quotient_zero (item : Item) (binding : Binding item) :
    ∃ cycle : Cycle (matrixOf item.target.k item.target.m item.target.outgoing),
      cycle.val = targetVector item ∧
      (Quot.mk _ cycle : Homology (matrixOf item.target.k item.target.m item.target.outgoing)
        (matrixOf item.target.m item.target.n item.target.incoming)) =
          Quot.mk _ (⟨zero,eval_zero _⟩ : PageTransitionCertificates.Cycle _) :=
  target_boundary_zero item.target binding.2.2.2.2.1 _ (binding_image item binding)

def item2572 : Item := ⟨AggregateEliminationCertificates.Data.row2572,IndexedHighD2Certificates.event2572,AggregateD5Conditional.Data.b_S0_7_132_d3⟩
theorem item2572_binding : Binding item2572 := by
  refine ⟨rfl,by decide,?_,by decide,AggregateD5Conditional.Data.b_S0_7_132_d3_complete,by decide,by decide,by decide⟩
  rw [imported_exact]
  exact IndexedD5Certificates.bound_extension Final.extends_original Final.unique
    (IndexedD5Certificates.bound_extension IndexedD5Certificates.extends_old IndexedD5Certificates.unique
      IndexedHighD2Certificates.event2572_valid)
def item2783 : Item := ⟨AggregateEliminationCertificates.Data.row2783,IndexedHighD2Certificates.event2783,AggregateD5Conditional.Data.b_S0_10_135_d2⟩
theorem item2783_binding : Binding item2783 := by
  refine ⟨rfl,by decide,?_,by decide,AggregateD5Conditional.Data.b_S0_10_135_d2_complete,by decide,by decide,by decide⟩
  rw [imported_exact]
  exact IndexedD5Certificates.bound_extension Final.extends_original Final.unique
    (IndexedD5Certificates.bound_extension IndexedD5Certificates.extends_old IndexedD5Certificates.unique
      IndexedHighD2Certificates.event2783_valid)
def item2850 : Item := ⟨AggregateEliminationCertificates.Data.row2850,IndexedHighD2Certificates.event2850,AggregateD5Conditional.Data.b_S0_11_136_d3⟩
theorem item2850_binding : Binding item2850 := by
  refine ⟨rfl,by decide,?_,by decide,AggregateD5Conditional.Data.b_S0_11_136_d3_complete,by decide,by decide,by decide⟩
  rw [imported_exact]
  exact IndexedD5Certificates.bound_extension Final.extends_original Final.unique
    (IndexedD5Certificates.bound_extension IndexedD5Certificates.extends_old IndexedD5Certificates.unique
      IndexedHighD2Certificates.event2850_valid)
def item2851 : Item := ⟨AggregateEliminationCertificates.Data.row2851,IndexedHighD2Certificates.event2851,AggregateD5Conditional.Data.b_S0_11_136_d3⟩
theorem item2851_binding : Binding item2851 := by
  refine ⟨rfl,by decide,?_,by decide,AggregateD5Conditional.Data.b_S0_11_136_d3_complete,by decide,by decide,by decide⟩
  rw [imported_exact]
  exact IndexedD5Certificates.bound_extension Final.extends_original Final.unique
    (IndexedD5Certificates.bound_extension IndexedD5Certificates.extends_old IndexedD5Certificates.unique
      IndexedHighD2Certificates.event2851_valid)
def item2918 : Item := ⟨AggregateEliminationCertificates.Data.row2918,IndexedHighD2Certificates.event2918,AggregateD5Conditional.Data.b_S0_12_137_d2⟩
theorem item2918_binding : Binding item2918 := by
  refine ⟨rfl,by decide,?_,by decide,AggregateD5Conditional.Data.b_S0_12_137_d2_complete,by decide,by decide,by decide⟩
  rw [imported_exact]
  exact IndexedD5Certificates.bound_extension Final.extends_original Final.unique
    (IndexedD5Certificates.bound_extension IndexedD5Certificates.extends_old IndexedD5Certificates.unique
      IndexedHighD2Certificates.event2918_valid)
def item2919 : Item := ⟨AggregateEliminationCertificates.Data.row2919,IndexedHighD2Certificates.event2919,AggregateD5Conditional.Data.b_S0_12_137_d3⟩
theorem item2919_binding : Binding item2919 := by
  refine ⟨rfl,by decide,?_,by decide,AggregateD5Conditional.Data.b_S0_12_137_d3_complete,by decide,by decide,by decide⟩
  rw [imported_exact]
  exact IndexedD5Certificates.bound_extension Final.extends_original Final.unique
    (IndexedD5Certificates.bound_extension IndexedD5Certificates.extends_old IndexedD5Certificates.unique
      IndexedHighD2Certificates.event2919_valid)
def item2920 : Item := ⟨AggregateEliminationCertificates.Data.row2920,IndexedHighD2Certificates.event2920,AggregateD5Conditional.Data.b_S0_12_137_d3⟩
theorem item2920_binding : Binding item2920 := by
  refine ⟨rfl,by decide,?_,by decide,AggregateD5Conditional.Data.b_S0_12_137_d3_complete,by decide,by decide,by decide⟩
  rw [imported_exact]
  exact IndexedD5Certificates.bound_extension Final.extends_original Final.unique
    (IndexedD5Certificates.bound_extension IndexedD5Certificates.extends_old IndexedD5Certificates.unique
      IndexedHighD2Certificates.event2920_valid)
def item3008 : Item := ⟨AggregateEliminationCertificates.Data.row3008,IndexedHighD2Certificates.event3008,AggregateD5Conditional.Data.b_S0_13_138_d2⟩
theorem item3008_binding : Binding item3008 := by
  refine ⟨rfl,by decide,?_,by decide,AggregateD5Conditional.Data.b_S0_13_138_d2_complete,by decide,by decide,by decide⟩
  rw [imported_exact]
  exact IndexedD5Certificates.bound_extension Final.extends_original Final.unique
    (IndexedD5Certificates.bound_extension IndexedD5Certificates.extends_old IndexedD5Certificates.unique
      IndexedHighD2Certificates.event3008_valid)
def item3009 : Item := ⟨AggregateEliminationCertificates.Data.row3009,IndexedHighD2Certificates.event3009,AggregateD5Conditional.Data.b_S0_13_138_d2⟩
theorem item3009_binding : Binding item3009 := by
  refine ⟨rfl,by decide,?_,by decide,AggregateD5Conditional.Data.b_S0_13_138_d2_complete,by decide,by decide,by decide⟩
  rw [imported_exact]
  exact IndexedD5Certificates.bound_extension Final.extends_original Final.unique
    (IndexedD5Certificates.bound_extension IndexedD5Certificates.extends_old IndexedD5Certificates.unique
      IndexedHighD2Certificates.event3009_valid)
def item3010 : Item := ⟨AggregateEliminationCertificates.Data.row3010,IndexedHighD2Certificates.event3010,Stem125E5Search.Data.b_S0_13_138_d4⟩
theorem item3010_binding : Binding item3010 := by
  refine ⟨rfl,by decide,?_,by decide,Stem125E5Search.Data.b_S0_13_138_d4_complete,by decide,by decide,by decide⟩
  rw [imported_exact]
  exact IndexedD5Certificates.bound_extension Final.extends_original Final.unique
    (IndexedD5Certificates.bound_extension IndexedD5Certificates.extends_old IndexedD5Certificates.unique
      IndexedHighD2Certificates.event3010_valid)
def item3011 : Item := ⟨AggregateEliminationCertificates.Data.row3011,IndexedHighD2Certificates.event3011,Stem125E5Search.Data.b_S0_13_138_d4⟩
theorem item3011_binding : Binding item3011 := by
  refine ⟨rfl,by decide,?_,by decide,Stem125E5Search.Data.b_S0_13_138_d4_complete,by decide,by decide,by decide⟩
  rw [imported_exact]
  exact IndexedD5Certificates.bound_extension Final.extends_original Final.unique
    (IndexedD5Certificates.bound_extension IndexedD5Certificates.extends_old IndexedD5Certificates.unique
      IndexedHighD2Certificates.event3011_valid)
def item3079 : Item := ⟨AggregateEliminationCertificates.Data.row3079,IndexedHighD2Certificates.event3079,AggregateD5Conditional.Data.b_S0_14_139_d2⟩
theorem item3079_binding : Binding item3079 := by
  refine ⟨rfl,by decide,?_,by decide,AggregateD5Conditional.Data.b_S0_14_139_d2_complete,by decide,by decide,by decide⟩
  rw [imported_exact]
  exact IndexedD5Certificates.bound_extension Final.extends_original Final.unique
    (IndexedD5Certificates.bound_extension IndexedD5Certificates.extends_old IndexedD5Certificates.unique
      IndexedHighD2Certificates.event3079_valid)
def item3150 : Item := ⟨AggregateEliminationCertificates.Data.row3150,IndexedHighD2Certificates.event3150,AggregateD5Conditional.Data.b_S0_15_140_d2⟩
theorem item3150_binding : Binding item3150 := by
  refine ⟨rfl,by decide,?_,by decide,AggregateD5Conditional.Data.b_S0_15_140_d2_complete,by decide,by decide,by decide⟩
  rw [imported_exact]
  exact IndexedD5Certificates.bound_extension Final.extends_original Final.unique
    (IndexedD5Certificates.bound_extension IndexedD5Certificates.extends_old IndexedD5Certificates.unique
      IndexedHighD2Certificates.event3150_valid)
def item3253 : Item := ⟨AggregateEliminationCertificates.Data.row3253,IndexedHighD2Certificates.event3253,AggregateD5Conditional.Data.b_S0_16_141_d2⟩
theorem item3253_binding : Binding item3253 := by
  refine ⟨rfl,by decide,?_,by decide,AggregateD5Conditional.Data.b_S0_16_141_d2_complete,by decide,by decide,by decide⟩
  rw [imported_exact]
  exact IndexedD5Certificates.bound_extension Final.extends_original Final.unique
    (IndexedD5Certificates.bound_extension IndexedD5Certificates.extends_old IndexedD5Certificates.unique
      IndexedHighD2Certificates.event3253_valid)
def item3254 : Item := ⟨AggregateEliminationCertificates.Data.row3254,IndexedHighD2Certificates.event3254,Stem125E5Search.Data.b_S0_16_141_d4⟩
theorem item3254_binding : Binding item3254 := by
  refine ⟨rfl,by decide,?_,by decide,Stem125E5Search.Data.b_S0_16_141_d4_complete,by decide,by decide,by decide⟩
  rw [imported_exact]
  exact IndexedD5Certificates.bound_extension Final.extends_original Final.unique
    (IndexedD5Certificates.bound_extension IndexedD5Certificates.extends_old IndexedD5Certificates.unique
      IndexedHighD2Certificates.event3254_valid)
def item3319 : Item := ⟨AggregateEliminationCertificates.Data.row3319,IndexedHighD2Certificates.event3319,AggregateD5Conditional.Data.b_S0_17_142_d2⟩
theorem item3319_binding : Binding item3319 := by
  refine ⟨rfl,by decide,?_,by decide,AggregateD5Conditional.Data.b_S0_17_142_d2_complete,by decide,by decide,by decide⟩
  rw [imported_exact]
  exact IndexedD5Certificates.bound_extension Final.extends_original Final.unique
    (IndexedD5Certificates.bound_extension IndexedD5Certificates.extends_old IndexedD5Certificates.unique
      IndexedHighD2Certificates.event3319_valid)
def item3556 : Item := ⟨AggregateEliminationCertificates.Data.row3556,IndexedHighD2Certificates.event3556,AggregateD5Conditional.Data.b_S0_20_145_d2⟩
theorem item3556_binding : Binding item3556 := by
  refine ⟨rfl,by decide,?_,by decide,AggregateD5Conditional.Data.b_S0_20_145_d2_complete,by decide,by decide,by decide⟩
  rw [imported_exact]
  exact IndexedD5Certificates.bound_extension Final.extends_original Final.unique
    (IndexedD5Certificates.bound_extension IndexedD5Certificates.extends_old IndexedD5Certificates.unique
      IndexedHighD2Certificates.event3556_valid)
def item3629 : Item := ⟨AggregateEliminationCertificates.Data.row3629,IndexedHighD2Certificates.event3629,Stem125E5Search.Data.b_S0_21_146_d4⟩
theorem item3629_binding : Binding item3629 := by
  refine ⟨rfl,by decide,?_,by decide,Stem125E5Search.Data.b_S0_21_146_d4_complete,by decide,by decide,by decide⟩
  rw [imported_exact]
  exact IndexedD5Certificates.bound_extension Final.extends_original Final.unique
    (IndexedD5Certificates.bound_extension IndexedD5Certificates.extends_old IndexedD5Certificates.unique
      IndexedHighD2Certificates.event3629_valid)
def item3744 : Item := ⟨AggregateEliminationCertificates.Data.row3744,IndexedHighD2Certificates.event3744,Stem125E5Search.Data.b_S0_22_147_d4⟩
theorem item3744_binding : Binding item3744 := by
  refine ⟨rfl,by decide,?_,by decide,Stem125E5Search.Data.b_S0_22_147_d4_complete,by decide,by decide,by decide⟩
  rw [imported_exact]
  exact IndexedD5Certificates.bound_extension Final.extends_original Final.unique
    (IndexedD5Certificates.bound_extension IndexedD5Certificates.extends_old IndexedD5Certificates.unique
      IndexedHighD2Certificates.event3744_valid)
def item3745 : Item := ⟨AggregateEliminationCertificates.Data.row3745,IndexedHighD2Certificates.event3745,Stem125E5Search.Data.b_S0_22_147_d4⟩
theorem item3745_binding : Binding item3745 := by
  refine ⟨rfl,by decide,?_,by decide,Stem125E5Search.Data.b_S0_22_147_d4_complete,by decide,by decide,by decide⟩
  rw [imported_exact]
  exact IndexedD5Certificates.bound_extension Final.extends_original Final.unique
    (IndexedD5Certificates.bound_extension IndexedD5Certificates.extends_old IndexedD5Certificates.unique
      IndexedHighD2Certificates.event3745_valid)
def item4263 : Item := ⟨AggregateEliminationCertificates.Data.row4263,IndexedHighD2Certificates.event4263,AggregateD5Conditional.Data.b_S0_28_153_d2⟩
theorem item4263_binding : Binding item4263 := by
  refine ⟨rfl,by decide,?_,by decide,AggregateD5Conditional.Data.b_S0_28_153_d2_complete,by decide,by decide,by decide⟩
  rw [imported_exact]
  exact IndexedD5Certificates.bound_extension Final.extends_original Final.unique
    (IndexedD5Certificates.bound_extension IndexedD5Certificates.extends_old IndexedD5Certificates.unique
      IndexedHighD2Certificates.event4263_valid)
def item4264 : Item := ⟨AggregateEliminationCertificates.Data.row4264,IndexedHighD2Certificates.event4264,AggregateD5Conditional.Data.b_S0_28_153_d2⟩
theorem item4264_binding : Binding item4264 := by
  refine ⟨rfl,by decide,?_,by decide,AggregateD5Conditional.Data.b_S0_28_153_d2_complete,by decide,by decide,by decide⟩
  rw [imported_exact]
  exact IndexedD5Certificates.bound_extension Final.extends_original Final.unique
    (IndexedD5Certificates.bound_extension IndexedD5Certificates.extends_old IndexedD5Certificates.unique
      IndexedHighD2Certificates.event4264_valid)
def item4337 : Item := ⟨AggregateEliminationCertificates.Data.row4337,IndexedHighD2Certificates.event4337,AggregateD5Conditional.Data.b_S0_29_154_d2⟩
theorem item4337_binding : Binding item4337 := by
  refine ⟨rfl,by decide,?_,by decide,AggregateD5Conditional.Data.b_S0_29_154_d2_complete,by decide,by decide,by decide⟩
  rw [imported_exact]
  exact IndexedD5Certificates.bound_extension Final.extends_original Final.unique
    (IndexedD5Certificates.bound_extension IndexedD5Certificates.extends_old IndexedD5Certificates.unique
      IndexedHighD2Certificates.event4337_valid)
def item4411 : Item := ⟨AggregateEliminationCertificates.Data.row4411,IndexedHighD2Certificates.event4411,AggregateD5Conditional.Data.b_S0_30_155_d2⟩
theorem item4411_binding : Binding item4411 := by
  refine ⟨rfl,by decide,?_,by decide,AggregateD5Conditional.Data.b_S0_30_155_d2_complete,by decide,by decide,by decide⟩
  rw [imported_exact]
  exact IndexedD5Certificates.bound_extension Final.extends_original Final.unique
    (IndexedD5Certificates.bound_extension IndexedD5Certificates.extends_old IndexedD5Certificates.unique
      IndexedHighD2Certificates.event4411_valid)
def item4501 : Item := ⟨AggregateEliminationCertificates.Data.row4501,IndexedHighD2Certificates.event4501,AggregateD5Conditional.Data.b_S0_31_156_d2⟩
theorem item4501_binding : Binding item4501 := by
  refine ⟨rfl,by decide,?_,by decide,AggregateD5Conditional.Data.b_S0_31_156_d2_complete,by decide,by decide,by decide⟩
  rw [imported_exact]
  exact IndexedD5Certificates.bound_extension Final.extends_original Final.unique
    (IndexedD5Certificates.bound_extension IndexedD5Certificates.extends_old IndexedD5Certificates.unique
      IndexedHighD2Certificates.event4501_valid)
def item4502 : Item := ⟨AggregateEliminationCertificates.Data.row4502,IndexedHighD2Certificates.event4502,AggregateD5Conditional.Data.b_S0_31_156_d2⟩
theorem item4502_binding : Binding item4502 := by
  refine ⟨rfl,by decide,?_,by decide,AggregateD5Conditional.Data.b_S0_31_156_d2_complete,by decide,by decide,by decide⟩
  rw [imported_exact]
  exact IndexedD5Certificates.bound_extension Final.extends_original Final.unique
    (IndexedD5Certificates.bound_extension IndexedD5Certificates.extends_old IndexedD5Certificates.unique
      IndexedHighD2Certificates.event4502_valid)
def item4763 : Item := ⟨AggregateEliminationCertificates.Data.row4763,IndexedHighD2Certificates.event4763,AggregateD5Conditional.Data.b_S0_34_159_d2⟩
theorem item4763_binding : Binding item4763 := by
  refine ⟨rfl,by decide,?_,by decide,AggregateD5Conditional.Data.b_S0_34_159_d2_complete,by decide,by decide,by decide⟩
  rw [imported_exact]
  exact IndexedD5Certificates.bound_extension Final.extends_original Final.unique
    (IndexedD5Certificates.bound_extension IndexedD5Certificates.extends_old IndexedD5Certificates.unique
      IndexedHighD2Certificates.event4763_valid)
def item4764 : Item := ⟨AggregateEliminationCertificates.Data.row4764,IndexedHighD2Certificates.event4764,Stem125E4Search.Data.b_S0_34_159_d3⟩
theorem item4764_binding : Binding item4764 := by
  refine ⟨rfl,by decide,?_,by decide,Stem125E4Search.Data.b_S0_34_159_d3_complete,by decide,by decide,by decide⟩
  rw [imported_exact]
  exact IndexedD5Certificates.bound_extension Final.extends_original Final.unique
    (IndexedD5Certificates.bound_extension IndexedD5Certificates.extends_old IndexedD5Certificates.unique
      IndexedHighD2Certificates.event4764_valid)
def item4929 : Item := ⟨AggregateEliminationCertificates.Data.row4929,IndexedHighD2Certificates.event4929,Stem125E4Search.Data.b_S0_36_161_d3⟩
theorem item4929_binding : Binding item4929 := by
  refine ⟨rfl,by decide,?_,by decide,Stem125E4Search.Data.b_S0_36_161_d3_complete,by decide,by decide,by decide⟩
  rw [imported_exact]
  exact IndexedD5Certificates.bound_extension Final.extends_original Final.unique
    (IndexedD5Certificates.bound_extension IndexedD5Certificates.extends_old IndexedD5Certificates.unique
      IndexedHighD2Certificates.event4929_valid)
def item5027 : Item := ⟨AggregateEliminationCertificates.Data.row5027,IndexedHighD2Certificates.event5027,AggregateD5Conditional.Data.b_S0_37_162_d2⟩
theorem item5027_binding : Binding item5027 := by
  refine ⟨rfl,by decide,?_,by decide,AggregateD5Conditional.Data.b_S0_37_162_d2_complete,by decide,by decide,by decide⟩
  rw [imported_exact]
  exact IndexedD5Certificates.bound_extension Final.extends_original Final.unique
    (IndexedD5Certificates.bound_extension IndexedD5Certificates.extends_old IndexedD5Certificates.unique
      IndexedHighD2Certificates.event5027_valid)
def item5326 : Item := ⟨AggregateEliminationCertificates.Data.row5326,IndexedHighD2Certificates.event5326,AggregateD5Conditional.Data.b_S0_40_165_d2⟩
theorem item5326_binding : Binding item5326 := by
  refine ⟨rfl,by decide,?_,by decide,AggregateD5Conditional.Data.b_S0_40_165_d2_complete,by decide,by decide,by decide⟩
  rw [imported_exact]
  exact IndexedD5Certificates.bound_extension Final.extends_original Final.unique
    (IndexedD5Certificates.bound_extension IndexedD5Certificates.extends_old IndexedD5Certificates.unique
      IndexedHighD2Certificates.event5326_valid)
def item5862 : Item := ⟨AggregateEliminationCertificates.Data.row5862,IndexedHighD2Certificates.event5862,Stem125E4Search.Data.b_S0_45_170_d3⟩
theorem item5862_binding : Binding item5862 := by
  refine ⟨rfl,by decide,?_,by decide,Stem125E4Search.Data.b_S0_45_170_d3_complete,by decide,by decide,by decide⟩
  rw [imported_exact]
  exact IndexedD5Certificates.bound_extension Final.extends_original Final.unique
    (IndexedD5Certificates.bound_extension IndexedD5Certificates.extends_old IndexedD5Certificates.unique
      IndexedHighD2Certificates.event5862_valid)
def item5977 : Item := ⟨AggregateEliminationCertificates.Data.row5977,IndexedHighD2Certificates.event5977,Stem125E5Search.Data.b_S0_46_171_d4⟩
theorem item5977_binding : Binding item5977 := by
  refine ⟨rfl,by decide,?_,by decide,Stem125E5Search.Data.b_S0_46_171_d4_complete,by decide,by decide,by decide⟩
  rw [imported_exact]
  exact IndexedD5Certificates.bound_extension Final.extends_original Final.unique
    (IndexedD5Certificates.bound_extension IndexedD5Certificates.extends_old IndexedD5Certificates.unique
      IndexedHighD2Certificates.event5977_valid)
def item6296 : Item := ⟨AggregateEliminationCertificates.Data.row6296,IndexedHighD2Certificates.event6296,Stem125E5Search.Data.b_S0_49_174_d4⟩
theorem item6296_binding : Binding item6296 := by
  refine ⟨rfl,by decide,?_,by decide,Stem125E5Search.Data.b_S0_49_174_d4_complete,by decide,by decide,by decide⟩
  rw [imported_exact]
  exact IndexedD5Certificates.bound_extension Final.extends_original Final.unique
    (IndexedD5Certificates.bound_extension IndexedD5Certificates.extends_old IndexedD5Certificates.unique
      IndexedHighD2Certificates.event6296_valid)
def item7247 : Item := ⟨AggregateEliminationCertificates.Data.row7247,IndexedHighD2Certificates.event7247,Stem125E4Search.Data.b_S0_57_182_d3⟩
theorem item7247_binding : Binding item7247 := by
  refine ⟨rfl,by decide,?_,by decide,Stem125E4Search.Data.b_S0_57_182_d3_complete,by decide,by decide,by decide⟩
  rw [imported_exact]
  exact IndexedD5Certificates.bound_extension Final.extends_original Final.unique
    (IndexedD5Certificates.bound_extension IndexedD5Certificates.extends_old IndexedD5Certificates.unique
      IndexedHighD2Certificates.event7247_valid)
def item3391 : Item := ⟨AggregateEliminationCertificates.Data.row3391,IndexedD5Certificates.event3391,Final.target3391⟩
theorem item3391_binding : Binding item3391 := by
  refine ⟨rfl,by decide,?_,by decide,Final.target3391_complete,by decide,by decide,by decide⟩
  rw [imported_exact]
  exact Final.event3391_same_family
def items : List Item := [item2572,item2783,item2850,item2851,item2918,item2919,item2920,item3008,item3009,item3010,item3011,item3079,item3150,item3253,item3254,item3319,item3556,item3629,item3744,item3745,item4263,item4264,item4337,item4411,item4501,item4502,item4763,item4764,item4929,item5027,item5326,item5862,item5977,item6296,item7247,item3391]
theorem item_count : items.length = 36 := by decide
theorem all_bindings : ∀ item ∈ items, Binding item := by
  unfold items
  refine List.forall_mem_cons.mpr ⟨item2572_binding,?_⟩
  refine List.forall_mem_cons.mpr ⟨item2783_binding,?_⟩
  refine List.forall_mem_cons.mpr ⟨item2850_binding,?_⟩
  refine List.forall_mem_cons.mpr ⟨item2851_binding,?_⟩
  refine List.forall_mem_cons.mpr ⟨item2918_binding,?_⟩
  refine List.forall_mem_cons.mpr ⟨item2919_binding,?_⟩
  refine List.forall_mem_cons.mpr ⟨item2920_binding,?_⟩
  refine List.forall_mem_cons.mpr ⟨item3008_binding,?_⟩
  refine List.forall_mem_cons.mpr ⟨item3009_binding,?_⟩
  refine List.forall_mem_cons.mpr ⟨item3010_binding,?_⟩
  refine List.forall_mem_cons.mpr ⟨item3011_binding,?_⟩
  refine List.forall_mem_cons.mpr ⟨item3079_binding,?_⟩
  refine List.forall_mem_cons.mpr ⟨item3150_binding,?_⟩
  refine List.forall_mem_cons.mpr ⟨item3253_binding,?_⟩
  refine List.forall_mem_cons.mpr ⟨item3254_binding,?_⟩
  refine List.forall_mem_cons.mpr ⟨item3319_binding,?_⟩
  refine List.forall_mem_cons.mpr ⟨item3556_binding,?_⟩
  refine List.forall_mem_cons.mpr ⟨item3629_binding,?_⟩
  refine List.forall_mem_cons.mpr ⟨item3744_binding,?_⟩
  refine List.forall_mem_cons.mpr ⟨item3745_binding,?_⟩
  refine List.forall_mem_cons.mpr ⟨item4263_binding,?_⟩
  refine List.forall_mem_cons.mpr ⟨item4264_binding,?_⟩
  refine List.forall_mem_cons.mpr ⟨item4337_binding,?_⟩
  refine List.forall_mem_cons.mpr ⟨item4411_binding,?_⟩
  refine List.forall_mem_cons.mpr ⟨item4501_binding,?_⟩
  refine List.forall_mem_cons.mpr ⟨item4502_binding,?_⟩
  refine List.forall_mem_cons.mpr ⟨item4763_binding,?_⟩
  refine List.forall_mem_cons.mpr ⟨item4764_binding,?_⟩
  refine List.forall_mem_cons.mpr ⟨item4929_binding,?_⟩
  refine List.forall_mem_cons.mpr ⟨item5027_binding,?_⟩
  refine List.forall_mem_cons.mpr ⟨item5326_binding,?_⟩
  refine List.forall_mem_cons.mpr ⟨item5862_binding,?_⟩
  refine List.forall_mem_cons.mpr ⟨item5977_binding,?_⟩
  refine List.forall_mem_cons.mpr ⟨item6296_binding,?_⟩
  refine List.forall_mem_cons.mpr ⟨item7247_binding,?_⟩
  refine List.forall_mem_cons.mpr ⟨item3391_binding,?_⟩
  intro item h
  exact False.elim (List.not_mem_nil h)
theorem exact_incoming_inventory : items.map (fun item => item.row.id) =
    (AggregateEliminationCertificates.Data.accepted.filter
      (fun item => item.row.role == .incoming)).map (fun item => item.row.id) := by decide
theorem all_targets_zero : ∀ item ∈ items,
    ∃ cycle : Cycle (matrixOf item.target.k item.target.m item.target.outgoing),
      cycle.val = targetVector item ∧
      (Quot.mk _ cycle : Homology (matrixOf item.target.k item.target.m item.target.outgoing)
        (matrixOf item.target.m item.target.n item.target.incoming)) =
          Quot.mk _ (⟨zero,eval_zero _⟩ : PageTransitionCertificates.Cycle _) :=
  fun item member => binding_quotient_zero item (all_bindings item member)
#print axioms all_bindings
#print axioms exact_incoming_inventory
#print axioms all_targets_zero
#print axioms imported_exact
#print axioms imported_coherent
#print axioms binding_image
#print axioms binding_quotient_zero
end AggregateIncomingTargetCompletion.Bundle
