import AggregateTargetInventory.EventAudit.FiniteAPI
namespace AggregateTargetInventory.EventAudit.Certificates
open LinearCertificates PageTransitionCertificates FiniteAPI Data Events CoordinateLinks TrajectoryCycles TrajectoryNonboundary
def input2435 : Input := ⟨1,3,1,3,(fun i => ([true] : List Bool)[i.val]!),(fun i => ([false,false,true] : List Bool)[i.val]!),event2435Source,event2435Target,matrixOf 3 1 b_S0_5_130_d2.outgoing⟩
theorem path2435_source : NonzeroPath input2435.rawSource input2435.source := by
  change NonzeroPath (fun i => ([true] : List Bool)[i.val]!) event2435Source
  rw [event2435_source_recursive]
  exact NonzeroPath.refl _
theorem path2435_target : NonzeroPath input2435.rawTarget input2435.target := by
  change NonzeroPath (fun i => ([false,false,true] : List Bool)[i.val]!) event2435Target
  rw [event2435_target_recursive]
  exact NonzeroPath.refl _
theorem certificate2435 : Certificate input2435 := ⟨path2435_source,path2435_target,event2435_differential,event2435_target_nonzero⟩
theorem valid2435 : FiniteEventValid input2435 := by finite_event_cert using certificate2435
def input2492 : Input := ⟨2,5,2,4,(fun i => ([true,false] : List Bool)[i.val]!),(fun i => ([true,false,false,true,false] : List Bool)[i.val]!),event2492Source,event2492Target,matrixOf 4 2 b_S0_6_131_d4.outgoing⟩
theorem path2492_source : NonzeroPath input2492.rawSource input2492.source := by
  change NonzeroPath (fun i => ([true,false] : List Bool)[i.val]!) event2492Source
  rw [event2492_source_recursive]
  apply NonzeroPath.step b_S0_6_131_d2 rfl b_S0_6_131_d2_complete event2492_source_cycle_d2 event2492_source_d2_not_boundary
  apply NonzeroPath.step b_S0_6_131_d3 rfl b_S0_6_131_d3_complete event2492_source_cycle_d3 event2492_source_d3_not_boundary
  exact NonzeroPath.refl _
theorem path2492_target : NonzeroPath input2492.rawTarget input2492.target := by
  change NonzeroPath (fun i => ([true,false,false,true,false] : List Bool)[i.val]!) event2492Target
  rw [event2492_target_recursive]
  apply NonzeroPath.step b_S0_10_134_d2 rfl b_S0_10_134_d2_complete event2492_target_cycle_d2 event2492_target_d2_not_boundary
  apply NonzeroPath.step b_S0_10_134_d3 rfl b_S0_10_134_d3_complete event2492_target_cycle_d3 event2492_target_d3_not_boundary
  exact NonzeroPath.refl _
theorem certificate2492 : Certificate input2492 := ⟨path2492_source,path2492_target,event2492_differential,event2492_target_nonzero⟩
theorem valid2492 : FiniteEventValid input2492 := by finite_event_cert using certificate2492
def input2493 : Input := ⟨2,5,2,4,(fun i => ([false,true] : List Bool)[i.val]!),(fun i => ([true,true,false,true,true] : List Bool)[i.val]!),event2493Source,event2493Target,matrixOf 4 2 b_S0_6_131_d4.outgoing⟩
theorem path2493_source : NonzeroPath input2493.rawSource input2493.source := by
  change NonzeroPath (fun i => ([false,true] : List Bool)[i.val]!) event2493Source
  rw [event2493_source_recursive]
  apply NonzeroPath.step b_S0_6_131_d2 rfl b_S0_6_131_d2_complete event2493_source_cycle_d2 event2493_source_d2_not_boundary
  apply NonzeroPath.step b_S0_6_131_d3 rfl b_S0_6_131_d3_complete event2493_source_cycle_d3 event2493_source_d3_not_boundary
  exact NonzeroPath.refl _
theorem path2493_target : NonzeroPath input2493.rawTarget input2493.target := by
  change NonzeroPath (fun i => ([true,true,false,true,true] : List Bool)[i.val]!) event2493Target
  rw [event2493_target_recursive]
  apply NonzeroPath.step b_S0_10_134_d2 rfl b_S0_10_134_d2_complete event2493_target_cycle_d2 event2493_target_d2_not_boundary
  apply NonzeroPath.step b_S0_10_134_d3 rfl b_S0_10_134_d3_complete event2493_target_cycle_d3 event2493_target_d3_not_boundary
  exact NonzeroPath.refl _
theorem certificate2493 : Certificate input2493 := ⟨path2493_source,path2493_target,event2493_differential,event2493_target_nonzero⟩
theorem valid2493 : FiniteEventValid input2493 := by finite_event_cert using certificate2493
def input2572 : Input := ⟨2,1,1,1,(fun i => ([true,false] : List Bool)[i.val]!),(fun i => ([true] : List Bool)[i.val]!),event2572Source,event2572Target,matrixOf 1 1 b_S0_4_130_d3.outgoing⟩
theorem path2572_source : NonzeroPath input2572.rawSource input2572.source := by
  change NonzeroPath (fun i => ([true,false] : List Bool)[i.val]!) event2572Source
  rw [event2572_source_recursive]
  apply NonzeroPath.step b_S0_4_130_d2 rfl b_S0_4_130_d2_complete event2572_source_cycle_d2 event2572_source_d2_not_boundary
  exact NonzeroPath.refl _
theorem path2572_target : NonzeroPath input2572.rawTarget input2572.target := by
  change NonzeroPath (fun i => ([true] : List Bool)[i.val]!) event2572Target
  rw [event2572_target_recursive]
  apply NonzeroPath.step b_S0_7_132_d2 rfl b_S0_7_132_d2_complete event2572_target_cycle_d2 event2572_target_d2_not_boundary
  exact NonzeroPath.refl _
theorem certificate2572 : Certificate input2572 := ⟨path2572_source,path2572_target,event2572_differential,event2572_target_nonzero⟩
theorem valid2572 : FiniteEventValid input2572 := by finite_event_cert using certificate2572
def input2629 : Input := ⟨2,5,1,2,(fun i => ([true,false] : List Bool)[i.val]!),(fun i => ([true,false,false,false,false] : List Bool)[i.val]!),event2629Source,event2629Target,matrixOf 2 1 b_S0_8_133_d3.outgoing⟩
theorem path2629_source : NonzeroPath input2629.rawSource input2629.source := by
  change NonzeroPath (fun i => ([true,false] : List Bool)[i.val]!) event2629Source
  rw [event2629_source_recursive]
  apply NonzeroPath.step b_S0_8_133_d2 rfl b_S0_8_133_d2_complete event2629_source_cycle_d2 event2629_source_d2_not_boundary
  exact NonzeroPath.refl _
theorem path2629_target : NonzeroPath input2629.rawTarget input2629.target := by
  change NonzeroPath (fun i => ([true,false,false,false,false] : List Bool)[i.val]!) event2629Target
  rw [event2629_target_recursive]
  apply NonzeroPath.step b_S0_11_135_d2 rfl b_S0_11_135_d2_complete event2629_target_cycle_d2 event2629_target_d2_not_boundary
  exact NonzeroPath.refl _
theorem certificate2629 : Certificate input2629 := ⟨path2629_source,path2629_target,event2629_differential,event2629_target_nonzero⟩
theorem valid2629 : FiniteEventValid input2629 := by finite_event_cert using certificate2629
def input2630 : Input := ⟨2,5,2,5,(fun i => ([false,true] : List Bool)[i.val]!),(fun i => ([false,false,true,false,true] : List Bool)[i.val]!),event2630Source,event2630Target,matrixOf 5 2 b_S0_8_133_d2.outgoing⟩
theorem path2630_source : NonzeroPath input2630.rawSource input2630.source := by
  change NonzeroPath (fun i => ([false,true] : List Bool)[i.val]!) event2630Source
  rw [event2630_source_recursive]
  exact NonzeroPath.refl _
theorem path2630_target : NonzeroPath input2630.rawTarget input2630.target := by
  change NonzeroPath (fun i => ([false,false,true,false,true] : List Bool)[i.val]!) event2630Target
  rw [event2630_target_recursive]
  exact NonzeroPath.refl _
theorem certificate2630 : Certificate input2630 := ⟨path2630_source,path2630_target,event2630_differential,event2630_target_nonzero⟩
theorem valid2630 : FiniteEventValid input2630 := by finite_event_cert using certificate2630
def input2698 : Input := ⟨5,5,5,5,(fun i => ([true,false,false,false,false] : List Bool)[i.val]!),(fun i => ([false,false,false,true,true] : List Bool)[i.val]!),event2698Source,event2698Target,matrixOf 5 5 b_S0_9_134_d2.outgoing⟩
theorem path2698_source : NonzeroPath input2698.rawSource input2698.source := by
  change NonzeroPath (fun i => ([true,false,false,false,false] : List Bool)[i.val]!) event2698Source
  rw [event2698_source_recursive]
  exact NonzeroPath.refl _
theorem path2698_target : NonzeroPath input2698.rawTarget input2698.target := by
  change NonzeroPath (fun i => ([false,false,false,true,true] : List Bool)[i.val]!) event2698Target
  rw [event2698_target_recursive]
  exact NonzeroPath.refl _
theorem certificate2698 : Certificate input2698 := ⟨path2698_source,path2698_target,event2698_differential,event2698_target_nonzero⟩
theorem valid2698 : FiniteEventValid input2698 := by finite_event_cert using certificate2698
def input2699 : Input := ⟨5,5,5,5,(fun i => ([false,false,false,false,true] : List Bool)[i.val]!),(fun i => ([false,false,false,false,true] : List Bool)[i.val]!),event2699Source,event2699Target,matrixOf 5 5 b_S0_9_134_d2.outgoing⟩
theorem path2699_source : NonzeroPath input2699.rawSource input2699.source := by
  change NonzeroPath (fun i => ([false,false,false,false,true] : List Bool)[i.val]!) event2699Source
  rw [event2699_source_recursive]
  exact NonzeroPath.refl _
theorem path2699_target : NonzeroPath input2699.rawTarget input2699.target := by
  change NonzeroPath (fun i => ([false,false,false,false,true] : List Bool)[i.val]!) event2699Target
  rw [event2699_target_recursive]
  exact NonzeroPath.refl _
theorem certificate2699 : Certificate input2699 := ⟨path2699_source,path2699_target,event2699_differential,event2699_target_nonzero⟩
theorem valid2699 : FiniteEventValid input2699 := by finite_event_cert using certificate2699
def input2783 : Input := ⟨6,5,6,5,(fun i => ([false,true,false,false,false,false] : List Bool)[i.val]!),(fun i => ([false,false,false,true,false] : List Bool)[i.val]!),event2783Source,event2783Target,matrixOf 5 6 b_S0_8_134_d2.outgoing⟩
theorem path2783_source : NonzeroPath input2783.rawSource input2783.source := by
  change NonzeroPath (fun i => ([false,true,false,false,false,false] : List Bool)[i.val]!) event2783Source
  rw [event2783_source_recursive]
  exact NonzeroPath.refl _
theorem path2783_target : NonzeroPath input2783.rawTarget input2783.target := by
  change NonzeroPath (fun i => ([false,false,false,true,false] : List Bool)[i.val]!) event2783Target
  rw [event2783_target_recursive]
  exact NonzeroPath.refl _
theorem certificate2783 : Certificate input2783 := ⟨path2783_source,path2783_target,event2783_differential,event2783_target_nonzero⟩
theorem valid2783 : FiniteEventValid input2783 := by finite_event_cert using certificate2783
def input2784 : Input := ⟨5,4,1,3,(fun i => ([true,false,false,false,false] : List Bool)[i.val]!),(fun i => ([true,false,false,false] : List Bool)[i.val]!),event2784Source,event2784Target,matrixOf 3 1 b_S0_10_135_d3.outgoing⟩
theorem path2784_source : NonzeroPath input2784.rawSource input2784.source := by
  change NonzeroPath (fun i => ([true,false,false,false,false] : List Bool)[i.val]!) event2784Source
  rw [event2784_source_recursive]
  apply NonzeroPath.step b_S0_10_135_d2 rfl b_S0_10_135_d2_complete event2784_source_cycle_d2 event2784_source_d2_not_boundary
  exact NonzeroPath.refl _
theorem path2784_target : NonzeroPath input2784.rawTarget input2784.target := by
  change NonzeroPath (fun i => ([true,false,false,false] : List Bool)[i.val]!) event2784Target
  rw [event2784_target_recursive]
  apply NonzeroPath.step b_S0_13_137_d2 rfl b_S0_13_137_d2_complete event2784_target_cycle_d2 event2784_target_d2_not_boundary
  exact NonzeroPath.refl _
theorem certificate2784 : Certificate input2784 := ⟨path2784_source,path2784_target,event2784_differential,event2784_target_nonzero⟩
theorem valid2784 : FiniteEventValid input2784 := by finite_event_cert using certificate2784
def input2785 : Input := ⟨5,5,5,5,(fun i => ([false,true,false,false,false] : List Bool)[i.val]!),(fun i => ([false,true,true,false,false] : List Bool)[i.val]!),event2785Source,event2785Target,matrixOf 5 5 b_S0_10_135_d2.outgoing⟩
theorem path2785_source : NonzeroPath input2785.rawSource input2785.source := by
  change NonzeroPath (fun i => ([false,true,false,false,false] : List Bool)[i.val]!) event2785Source
  rw [event2785_source_recursive]
  exact NonzeroPath.refl _
theorem path2785_target : NonzeroPath input2785.rawTarget input2785.target := by
  change NonzeroPath (fun i => ([false,true,true,false,false] : List Bool)[i.val]!) event2785Target
  rw [event2785_target_recursive]
  exact NonzeroPath.refl _
theorem certificate2785 : Certificate input2785 := ⟨path2785_source,path2785_target,event2785_differential,event2785_target_nonzero⟩
theorem valid2785 : FiniteEventValid input2785 := by finite_event_cert using certificate2785
def input2786 : Input := ⟨5,5,5,5,(fun i => ([false,false,true,false,false] : List Bool)[i.val]!),(fun i => ([false,false,false,true,true] : List Bool)[i.val]!),event2786Source,event2786Target,matrixOf 5 5 b_S0_10_135_d2.outgoing⟩
theorem path2786_source : NonzeroPath input2786.rawSource input2786.source := by
  change NonzeroPath (fun i => ([false,false,true,false,false] : List Bool)[i.val]!) event2786Source
  rw [event2786_source_recursive]
  exact NonzeroPath.refl _
theorem path2786_target : NonzeroPath input2786.rawTarget input2786.target := by
  change NonzeroPath (fun i => ([false,false,false,true,true] : List Bool)[i.val]!) event2786Target
  rw [event2786_target_recursive]
  exact NonzeroPath.refl _
theorem certificate2786 : Certificate input2786 := ⟨path2786_source,path2786_target,event2786_differential,event2786_target_nonzero⟩
theorem valid2786 : FiniteEventValid input2786 := by finite_event_cert using certificate2786
def input2787 : Input := ⟨5,5,5,5,(fun i => ([false,false,false,false,true] : List Bool)[i.val]!),(fun i => ([false,false,false,false,true] : List Bool)[i.val]!),event2787Source,event2787Target,matrixOf 5 5 b_S0_10_135_d2.outgoing⟩
theorem path2787_source : NonzeroPath input2787.rawSource input2787.source := by
  change NonzeroPath (fun i => ([false,false,false,false,true] : List Bool)[i.val]!) event2787Source
  rw [event2787_source_recursive]
  exact NonzeroPath.refl _
theorem path2787_target : NonzeroPath input2787.rawTarget input2787.target := by
  change NonzeroPath (fun i => ([false,false,false,false,true] : List Bool)[i.val]!) event2787Target
  rw [event2787_target_recursive]
  exact NonzeroPath.refl _
theorem certificate2787 : Certificate input2787 := ⟨path2787_source,path2787_target,event2787_differential,event2787_target_nonzero⟩
theorem valid2787 : FiniteEventValid input2787 := by finite_event_cert using certificate2787
def input2850 : Input := ⟨6,5,4,4,(fun i => ([false,false,false,true,false,false] : List Bool)[i.val]!),(fun i => ([false,true,false,false,false] : List Bool)[i.val]!),event2850Source,event2850Target,matrixOf 4 4 b_S0_8_134_d3.outgoing⟩
theorem path2850_source : NonzeroPath input2850.rawSource input2850.source := by
  change NonzeroPath (fun i => ([false,false,false,true,false,false] : List Bool)[i.val]!) event2850Source
  rw [event2850_source_recursive]
  apply NonzeroPath.step b_S0_8_134_d2 rfl b_S0_8_134_d2_complete event2850_source_cycle_d2 event2850_source_d2_not_boundary
  exact NonzeroPath.refl _
theorem path2850_target : NonzeroPath input2850.rawTarget input2850.target := by
  change NonzeroPath (fun i => ([false,true,false,false,false] : List Bool)[i.val]!) event2850Target
  rw [event2850_target_recursive]
  apply NonzeroPath.step b_S0_11_136_d2 rfl b_S0_11_136_d2_complete event2850_target_cycle_d2 event2850_target_d2_not_boundary
  exact NonzeroPath.refl _
theorem certificate2850 : Certificate input2850 := ⟨path2850_source,path2850_target,event2850_differential,event2850_target_nonzero⟩
theorem valid2850 : FiniteEventValid input2850 := by finite_event_cert using certificate2850
def input2851 : Input := ⟨6,5,4,4,(fun i => ([false,false,true,false,false,false] : List Bool)[i.val]!),(fun i => ([false,false,true,false,false] : List Bool)[i.val]!),event2851Source,event2851Target,matrixOf 4 4 b_S0_8_134_d3.outgoing⟩
theorem path2851_source : NonzeroPath input2851.rawSource input2851.source := by
  change NonzeroPath (fun i => ([false,false,true,false,false,false] : List Bool)[i.val]!) event2851Source
  rw [event2851_source_recursive]
  apply NonzeroPath.step b_S0_8_134_d2 rfl b_S0_8_134_d2_complete event2851_source_cycle_d2 event2851_source_d2_not_boundary
  exact NonzeroPath.refl _
theorem path2851_target : NonzeroPath input2851.rawTarget input2851.target := by
  change NonzeroPath (fun i => ([false,false,true,false,false] : List Bool)[i.val]!) event2851Target
  rw [event2851_target_recursive]
  apply NonzeroPath.step b_S0_11_136_d2 rfl b_S0_11_136_d2_complete event2851_target_cycle_d2 event2851_target_d2_not_boundary
  exact NonzeroPath.refl _
theorem certificate2851 : Certificate input2851 := ⟨path2851_source,path2851_target,event2851_differential,event2851_target_nonzero⟩
theorem valid2851 : FiniteEventValid input2851 := by finite_event_cert using certificate2851
def input2853 : Input := ⟨5,4,2,2,(fun i => ([true,false,false,false,false] : List Bool)[i.val]!),(fun i => ([true,false,false,false] : List Bool)[i.val]!),event2853Source,event2853Target,matrixOf 2 2 b_S0_11_136_d4.outgoing⟩
theorem path2853_source : NonzeroPath input2853.rawSource input2853.source := by
  change NonzeroPath (fun i => ([true,false,false,false,false] : List Bool)[i.val]!) event2853Source
  rw [event2853_source_recursive]
  apply NonzeroPath.step b_S0_11_136_d2 rfl b_S0_11_136_d2_complete event2853_source_cycle_d2 event2853_source_d2_not_boundary
  apply NonzeroPath.step b_S0_11_136_d3 rfl b_S0_11_136_d3_complete event2853_source_cycle_d3 event2853_source_d3_not_boundary
  exact NonzeroPath.refl _
theorem path2853_target : NonzeroPath input2853.rawTarget input2853.target := by
  change NonzeroPath (fun i => ([true,false,false,false] : List Bool)[i.val]!) event2853Target
  rw [event2853_target_recursive]
  apply NonzeroPath.step b_S0_15_139_d2 rfl b_S0_15_139_d2_complete event2853_target_cycle_d2 event2853_target_d2_not_boundary
  apply NonzeroPath.step b_S0_15_139_d3 rfl b_S0_15_139_d3_complete event2853_target_cycle_d3 event2853_target_d3_not_boundary
  exact NonzeroPath.refl _
theorem certificate2853 : Certificate input2853 := ⟨path2853_source,path2853_target,event2853_differential,event2853_target_nonzero⟩
theorem valid2853 : FiniteEventValid input2853 := by finite_event_cert using certificate2853
def input2854 : Input := ⟨5,4,5,4,(fun i => ([false,false,false,false,true] : List Bool)[i.val]!),(fun i => ([false,false,false,true] : List Bool)[i.val]!),event2854Source,event2854Target,matrixOf 4 5 b_S0_11_136_d2.outgoing⟩
theorem path2854_source : NonzeroPath input2854.rawSource input2854.source := by
  change NonzeroPath (fun i => ([false,false,false,false,true] : List Bool)[i.val]!) event2854Source
  rw [event2854_source_recursive]
  exact NonzeroPath.refl _
theorem path2854_target : NonzeroPath input2854.rawTarget input2854.target := by
  change NonzeroPath (fun i => ([false,false,false,true] : List Bool)[i.val]!) event2854Target
  rw [event2854_target_recursive]
  exact NonzeroPath.refl _
theorem certificate2854 : Certificate input2854 := ⟨path2854_source,path2854_target,event2854_differential,event2854_target_nonzero⟩
theorem valid2854 : FiniteEventValid input2854 := by finite_event_cert using certificate2854
def input2918 : Input := ⟨5,5,5,5,(fun i => ([true,false,false,false,false] : List Bool)[i.val]!),(fun i => ([false,false,true,false,false] : List Bool)[i.val]!),event2918Source,event2918Target,matrixOf 5 5 b_S0_10_136_d2.outgoing⟩
theorem path2918_source : NonzeroPath input2918.rawSource input2918.source := by
  change NonzeroPath (fun i => ([true,false,false,false,false] : List Bool)[i.val]!) event2918Source
  rw [event2918_source_recursive]
  exact NonzeroPath.refl _
theorem path2918_target : NonzeroPath input2918.rawTarget input2918.target := by
  change NonzeroPath (fun i => ([false,false,true,false,false] : List Bool)[i.val]!) event2918Target
  rw [event2918_target_recursive]
  exact NonzeroPath.refl _
theorem certificate2918 : Certificate input2918 := ⟨path2918_source,path2918_target,event2918_differential,event2918_target_nonzero⟩
theorem valid2918 : FiniteEventValid input2918 := by finite_event_cert using certificate2918
def input2919 : Input := ⟨6,5,4,2,(fun i => ([true,false,false,false,false,false] : List Bool)[i.val]!),(fun i => ([false,false,false,true,true] : List Bool)[i.val]!),event2919Source,event2919Target,matrixOf 2 4 b_S0_9_135_d3.outgoing⟩
theorem path2919_source : NonzeroPath input2919.rawSource input2919.source := by
  change NonzeroPath (fun i => ([true,false,false,false,false,false] : List Bool)[i.val]!) event2919Source
  rw [event2919_source_recursive]
  apply NonzeroPath.step b_S0_9_135_d2 rfl b_S0_9_135_d2_complete event2919_source_cycle_d2 event2919_source_d2_not_boundary
  exact NonzeroPath.refl _
theorem path2919_target : NonzeroPath input2919.rawTarget input2919.target := by
  change NonzeroPath (fun i => ([false,false,false,true,true] : List Bool)[i.val]!) event2919Target
  rw [event2919_target_recursive]
  apply NonzeroPath.step b_S0_12_137_d2 rfl b_S0_12_137_d2_complete event2919_target_cycle_d2 event2919_target_d2_not_boundary
  exact NonzeroPath.refl _
theorem certificate2919 : Certificate input2919 := ⟨path2919_source,path2919_target,event2919_differential,event2919_target_nonzero⟩
theorem valid2919 : FiniteEventValid input2919 := by finite_event_cert using certificate2919
def input2920 : Input := ⟨6,5,4,2,(fun i => ([true,false,false,true,false,false] : List Bool)[i.val]!),(fun i => ([false,false,false,false,true] : List Bool)[i.val]!),event2920Source,event2920Target,matrixOf 2 4 b_S0_9_135_d3.outgoing⟩
theorem path2920_source : NonzeroPath input2920.rawSource input2920.source := by
  change NonzeroPath (fun i => ([true,false,false,true,false,false] : List Bool)[i.val]!) event2920Source
  rw [event2920_source_recursive]
  apply NonzeroPath.step b_S0_9_135_d2 rfl b_S0_9_135_d2_complete event2920_source_cycle_d2 event2920_source_d2_not_boundary
  exact NonzeroPath.refl _
theorem path2920_target : NonzeroPath input2920.rawTarget input2920.target := by
  change NonzeroPath (fun i => ([false,false,false,false,true] : List Bool)[i.val]!) event2920Target
  rw [event2920_target_recursive]
  apply NonzeroPath.step b_S0_12_137_d2 rfl b_S0_12_137_d2_complete event2920_target_cycle_d2 event2920_target_d2_not_boundary
  exact NonzeroPath.refl _
theorem certificate2920 : Certificate input2920 := ⟨path2920_source,path2920_target,event2920_differential,event2920_target_nonzero⟩
theorem valid2920 : FiniteEventValid input2920 := by finite_event_cert using certificate2920
def input2921 : Input := ⟨5,5,5,5,(fun i => ([false,true,false,false,false] : List Bool)[i.val]!),(fun i => ([false,false,false,false,true] : List Bool)[i.val]!),event2921Source,event2921Target,matrixOf 5 5 b_S0_12_137_d2.outgoing⟩
theorem path2921_source : NonzeroPath input2921.rawSource input2921.source := by
  change NonzeroPath (fun i => ([false,true,false,false,false] : List Bool)[i.val]!) event2921Source
  rw [event2921_source_recursive]
  exact NonzeroPath.refl _
theorem path2921_target : NonzeroPath input2921.rawTarget input2921.target := by
  change NonzeroPath (fun i => ([false,false,false,false,true] : List Bool)[i.val]!) event2921Target
  rw [event2921_target_recursive]
  exact NonzeroPath.refl _
theorem certificate2921 : Certificate input2921 := ⟨path2921_source,path2921_target,event2921_differential,event2921_target_nonzero⟩
theorem valid2921 : FiniteEventValid input2921 := by finite_event_cert using certificate2921
def input2922 : Input := ⟨5,5,5,5,(fun i => ([true,false,false,false,false] : List Bool)[i.val]!),(fun i => ([false,false,false,true,false] : List Bool)[i.val]!),event2922Source,event2922Target,matrixOf 5 5 b_S0_12_137_d2.outgoing⟩
theorem path2922_source : NonzeroPath input2922.rawSource input2922.source := by
  change NonzeroPath (fun i => ([true,false,false,false,false] : List Bool)[i.val]!) event2922Source
  rw [event2922_source_recursive]
  exact NonzeroPath.refl _
theorem path2922_target : NonzeroPath input2922.rawTarget input2922.target := by
  change NonzeroPath (fun i => ([false,false,false,true,false] : List Bool)[i.val]!) event2922Target
  rw [event2922_target_recursive]
  exact NonzeroPath.refl _
theorem certificate2922 : Certificate input2922 := ⟨path2922_source,path2922_target,event2922_differential,event2922_target_nonzero⟩
theorem valid2922 : FiniteEventValid input2922 := by finite_event_cert using certificate2922
def input3008 : Input := ⟨6,5,6,5,(fun i => ([true,false,false,false,false,false] : List Bool)[i.val]!),(fun i => ([false,false,false,true,false] : List Bool)[i.val]!),event3008Source,event3008Target,matrixOf 5 6 b_S0_11_137_d2.outgoing⟩
theorem path3008_source : NonzeroPath input3008.rawSource input3008.source := by
  change NonzeroPath (fun i => ([true,false,false,false,false,false] : List Bool)[i.val]!) event3008Source
  rw [event3008_source_recursive]
  exact NonzeroPath.refl _
theorem path3008_target : NonzeroPath input3008.rawTarget input3008.target := by
  change NonzeroPath (fun i => ([false,false,false,true,false] : List Bool)[i.val]!) event3008Target
  rw [event3008_target_recursive]
  exact NonzeroPath.refl _
theorem certificate3008 : Certificate input3008 := ⟨path3008_source,path3008_target,event3008_differential,event3008_target_nonzero⟩
theorem valid3008 : FiniteEventValid input3008 := by finite_event_cert using certificate3008
def input3009 : Input := ⟨6,5,6,5,(fun i => ([false,false,false,true,false,false] : List Bool)[i.val]!),(fun i => ([false,false,false,false,true] : List Bool)[i.val]!),event3009Source,event3009Target,matrixOf 5 6 b_S0_11_137_d2.outgoing⟩
theorem path3009_source : NonzeroPath input3009.rawSource input3009.source := by
  change NonzeroPath (fun i => ([false,false,false,true,false,false] : List Bool)[i.val]!) event3009Source
  rw [event3009_source_recursive]
  exact NonzeroPath.refl _
theorem path3009_target : NonzeroPath input3009.rawTarget input3009.target := by
  change NonzeroPath (fun i => ([false,false,false,false,true] : List Bool)[i.val]!) event3009Target
  rw [event3009_target_recursive]
  exact NonzeroPath.refl _
theorem certificate3009 : Certificate input3009 := ⟨path3009_source,path3009_target,event3009_differential,event3009_target_nonzero⟩
theorem valid3009 : FiniteEventValid input3009 := by finite_event_cert using certificate3009
def input3010 : Input := ⟨6,5,2,2,(fun i => ([false,false,true,false,false,false] : List Bool)[i.val]!),(fun i => ([true,false,false,false,false] : List Bool)[i.val]!),event3010Source,event3010Target,matrixOf 2 2 b_S0_9_135_d4.outgoing⟩
theorem path3010_source : NonzeroPath input3010.rawSource input3010.source := by
  change NonzeroPath (fun i => ([false,false,true,false,false,false] : List Bool)[i.val]!) event3010Source
  rw [event3010_source_recursive]
  apply NonzeroPath.step b_S0_9_135_d2 rfl b_S0_9_135_d2_complete event3010_source_cycle_d2 event3010_source_d2_not_boundary
  apply NonzeroPath.step b_S0_9_135_d3 rfl b_S0_9_135_d3_complete event3010_source_cycle_d3 event3010_source_d3_not_boundary
  exact NonzeroPath.refl _
theorem path3010_target : NonzeroPath input3010.rawTarget input3010.target := by
  change NonzeroPath (fun i => ([true,false,false,false,false] : List Bool)[i.val]!) event3010Target
  rw [event3010_target_recursive]
  apply NonzeroPath.step b_S0_13_138_d2 rfl b_S0_13_138_d2_complete event3010_target_cycle_d2 event3010_target_d2_not_boundary
  apply NonzeroPath.step b_S0_13_138_d3 rfl b_S0_13_138_d3_complete event3010_target_cycle_d3 event3010_target_d3_not_boundary
  exact NonzeroPath.refl _
theorem certificate3010 : Certificate input3010 := ⟨path3010_source,path3010_target,event3010_differential,event3010_target_nonzero⟩
theorem valid3010 : FiniteEventValid input3010 := by finite_event_cert using certificate3010
def input3011 : Input := ⟨6,5,2,2,(fun i => ([false,true,false,false,false,false] : List Bool)[i.val]!),(fun i => ([false,false,true,false,false] : List Bool)[i.val]!),event3011Source,event3011Target,matrixOf 2 2 b_S0_9_135_d4.outgoing⟩
theorem path3011_source : NonzeroPath input3011.rawSource input3011.source := by
  change NonzeroPath (fun i => ([false,true,false,false,false,false] : List Bool)[i.val]!) event3011Source
  rw [event3011_source_recursive]
  apply NonzeroPath.step b_S0_9_135_d2 rfl b_S0_9_135_d2_complete event3011_source_cycle_d2 event3011_source_d2_not_boundary
  apply NonzeroPath.step b_S0_9_135_d3 rfl b_S0_9_135_d3_complete event3011_source_cycle_d3 event3011_source_d3_not_boundary
  exact NonzeroPath.refl _
theorem path3011_target : NonzeroPath input3011.rawTarget input3011.target := by
  change NonzeroPath (fun i => ([false,false,true,false,false] : List Bool)[i.val]!) event3011Target
  rw [event3011_target_recursive]
  apply NonzeroPath.step b_S0_13_138_d2 rfl b_S0_13_138_d2_complete event3011_target_cycle_d2 event3011_target_d2_not_boundary
  apply NonzeroPath.step b_S0_13_138_d3 rfl b_S0_13_138_d3_complete event3011_target_cycle_d3 event3011_target_d3_not_boundary
  exact NonzeroPath.refl _
theorem certificate3011 : Certificate input3011 := ⟨path3011_source,path3011_target,event3011_differential,event3011_target_nonzero⟩
theorem valid3011 : FiniteEventValid input3011 := by finite_event_cert using certificate3011
def input3012 : Input := ⟨5,5,3,3,(fun i => ([false,true,false,false,false] : List Bool)[i.val]!),(fun i => ([false,true,false,false,false] : List Bool)[i.val]!),event3012Source,event3012Target,matrixOf 3 3 b_S0_13_138_d3.outgoing⟩
theorem path3012_source : NonzeroPath input3012.rawSource input3012.source := by
  change NonzeroPath (fun i => ([false,true,false,false,false] : List Bool)[i.val]!) event3012Source
  rw [event3012_source_recursive]
  apply NonzeroPath.step b_S0_13_138_d2 rfl b_S0_13_138_d2_complete event3012_source_cycle_d2 event3012_source_d2_not_boundary
  exact NonzeroPath.refl _
theorem path3012_target : NonzeroPath input3012.rawTarget input3012.target := by
  change NonzeroPath (fun i => ([false,true,false,false,false] : List Bool)[i.val]!) event3012Target
  rw [event3012_target_recursive]
  apply NonzeroPath.step b_S0_16_140_d2 rfl b_S0_16_140_d2_complete event3012_target_cycle_d2 event3012_target_d2_not_boundary
  exact NonzeroPath.refl _
theorem certificate3012 : Certificate input3012 := ⟨path3012_source,path3012_target,event3012_differential,event3012_target_nonzero⟩
theorem valid3012 : FiniteEventValid input3012 := by finite_event_cert using certificate3012
def input3079 : Input := ⟨5,3,5,3,(fun i => ([false,true,false,false,false] : List Bool)[i.val]!),(fun i => ([false,false,true] : List Bool)[i.val]!),event3079Source,event3079Target,matrixOf 3 5 b_S0_12_138_d2.outgoing⟩
theorem path3079_source : NonzeroPath input3079.rawSource input3079.source := by
  change NonzeroPath (fun i => ([false,true,false,false,false] : List Bool)[i.val]!) event3079Source
  rw [event3079_source_recursive]
  exact NonzeroPath.refl _
theorem path3079_target : NonzeroPath input3079.rawTarget input3079.target := by
  change NonzeroPath (fun i => ([false,false,true] : List Bool)[i.val]!) event3079Target
  rw [event3079_target_recursive]
  exact NonzeroPath.refl _
theorem certificate3079 : Certificate input3079 := ⟨path3079_source,path3079_target,event3079_differential,event3079_target_nonzero⟩
theorem valid3079 : FiniteEventValid input3079 := by finite_event_cert using certificate3079
def input3081 : Input := ⟨3,5,3,5,(fun i => ([true,false,false] : List Bool)[i.val]!),(fun i => ([false,false,true,false,false] : List Bool)[i.val]!),event3081Source,event3081Target,matrixOf 5 3 b_S0_14_139_d2.outgoing⟩
theorem path3081_source : NonzeroPath input3081.rawSource input3081.source := by
  change NonzeroPath (fun i => ([true,false,false] : List Bool)[i.val]!) event3081Source
  rw [event3081_source_recursive]
  exact NonzeroPath.refl _
theorem path3081_target : NonzeroPath input3081.rawTarget input3081.target := by
  change NonzeroPath (fun i => ([false,false,true,false,false] : List Bool)[i.val]!) event3081Target
  rw [event3081_target_recursive]
  exact NonzeroPath.refl _
theorem certificate3081 : Certificate input3081 := ⟨path3081_source,path3081_target,event3081_differential,event3081_target_nonzero⟩
theorem valid3081 : FiniteEventValid input3081 := by finite_event_cert using certificate3081
def input3150 : Input := ⟨3,5,3,5,(fun i => ([false,true,false] : List Bool)[i.val]!),(fun i => ([false,false,false,false,true] : List Bool)[i.val]!),event3150Source,event3150Target,matrixOf 5 3 b_S0_13_139_d2.outgoing⟩
theorem path3150_source : NonzeroPath input3150.rawSource input3150.source := by
  change NonzeroPath (fun i => ([false,true,false] : List Bool)[i.val]!) event3150Source
  rw [event3150_source_recursive]
  exact NonzeroPath.refl _
theorem path3150_target : NonzeroPath input3150.rawTarget input3150.target := by
  change NonzeroPath (fun i => ([false,false,false,false,true] : List Bool)[i.val]!) event3150Target
  rw [event3150_target_recursive]
  exact NonzeroPath.refl _
theorem certificate3150 : Certificate input3150 := ⟨path3150_source,path3150_target,event3150_differential,event3150_target_nonzero⟩
theorem valid3150 : FiniteEventValid input3150 := by finite_event_cert using certificate3150
def input3153 : Input := ⟨5,4,5,4,(fun i => ([true,false,false,false,false] : List Bool)[i.val]!),(fun i => ([false,false,false,true] : List Bool)[i.val]!),event3153Source,event3153Target,matrixOf 4 5 b_S0_15_140_d2.outgoing⟩
theorem path3153_source : NonzeroPath input3153.rawSource input3153.source := by
  change NonzeroPath (fun i => ([true,false,false,false,false] : List Bool)[i.val]!) event3153Source
  rw [event3153_source_recursive]
  exact NonzeroPath.refl _
theorem path3153_target : NonzeroPath input3153.rawTarget input3153.target := by
  change NonzeroPath (fun i => ([false,false,false,true] : List Bool)[i.val]!) event3153Target
  rw [event3153_target_recursive]
  exact NonzeroPath.refl _
theorem certificate3153 : Certificate input3153 := ⟨path3153_source,path3153_target,event3153_differential,event3153_target_nonzero⟩
theorem valid3153 : FiniteEventValid input3153 := by finite_event_cert using certificate3153
def input3154 : Input := ⟨5,4,5,4,(fun i => ([false,false,false,true,false] : List Bool)[i.val]!),(fun i => ([false,true,false,false] : List Bool)[i.val]!),event3154Source,event3154Target,matrixOf 4 5 b_S0_15_140_d2.outgoing⟩
theorem path3154_source : NonzeroPath input3154.rawSource input3154.source := by
  change NonzeroPath (fun i => ([false,false,false,true,false] : List Bool)[i.val]!) event3154Source
  rw [event3154_source_recursive]
  exact NonzeroPath.refl _
theorem path3154_target : NonzeroPath input3154.rawTarget input3154.target := by
  change NonzeroPath (fun i => ([false,true,false,false] : List Bool)[i.val]!) event3154Target
  rw [event3154_target_recursive]
  exact NonzeroPath.refl _
theorem certificate3154 : Certificate input3154 := ⟨path3154_source,path3154_target,event3154_differential,event3154_target_nonzero⟩
theorem valid3154 : FiniteEventValid input3154 := by finite_event_cert using certificate3154
def input3253 : Input := ⟨4,4,4,4,(fun i => ([false,true,false,false] : List Bool)[i.val]!),(fun i => ([false,false,true,false] : List Bool)[i.val]!),event3253Source,event3253Target,matrixOf 4 4 b_S0_14_140_d2.outgoing⟩
theorem path3253_source : NonzeroPath input3253.rawSource input3253.source := by
  change NonzeroPath (fun i => ([false,true,false,false] : List Bool)[i.val]!) event3253Source
  rw [event3253_source_recursive]
  exact NonzeroPath.refl _
theorem path3253_target : NonzeroPath input3253.rawTarget input3253.target := by
  change NonzeroPath (fun i => ([false,false,true,false] : List Bool)[i.val]!) event3253Target
  rw [event3253_target_recursive]
  exact NonzeroPath.refl _
theorem certificate3253 : Certificate input3253 := ⟨path3253_source,path3253_target,event3253_differential,event3253_target_nonzero⟩
theorem valid3253 : FiniteEventValid input3253 := by finite_event_cert using certificate3253
def input3255 : Input := ⟨4,2,4,2,(fun i => ([true,false,false,false] : List Bool)[i.val]!),(fun i => ([true,true] : List Bool)[i.val]!),event3255Source,event3255Target,matrixOf 2 4 b_S0_16_141_d2.outgoing⟩
theorem path3255_source : NonzeroPath input3255.rawSource input3255.source := by
  change NonzeroPath (fun i => ([true,false,false,false] : List Bool)[i.val]!) event3255Source
  rw [event3255_source_recursive]
  exact NonzeroPath.refl _
theorem path3255_target : NonzeroPath input3255.rawTarget input3255.target := by
  change NonzeroPath (fun i => ([true,true] : List Bool)[i.val]!) event3255Target
  rw [event3255_target_recursive]
  exact NonzeroPath.refl _
theorem certificate3255 : Certificate input3255 := ⟨path3255_source,path3255_target,event3255_differential,event3255_target_nonzero⟩
theorem valid3255 : FiniteEventValid input3255 := by finite_event_cert using certificate3255
def input3256 : Input := ⟨4,2,4,2,(fun i => ([false,false,false,true] : List Bool)[i.val]!),(fun i => ([false,true] : List Bool)[i.val]!),event3256Source,event3256Target,matrixOf 2 4 b_S0_16_141_d2.outgoing⟩
theorem path3256_source : NonzeroPath input3256.rawSource input3256.source := by
  change NonzeroPath (fun i => ([false,false,false,true] : List Bool)[i.val]!) event3256Source
  rw [event3256_source_recursive]
  exact NonzeroPath.refl _
theorem path3256_target : NonzeroPath input3256.rawTarget input3256.target := by
  change NonzeroPath (fun i => ([false,true] : List Bool)[i.val]!) event3256Target
  rw [event3256_target_recursive]
  exact NonzeroPath.refl _
theorem certificate3256 : Certificate input3256 := ⟨path3256_source,path3256_target,event3256_differential,event3256_target_nonzero⟩
theorem valid3256 : FiniteEventValid input3256 := by finite_event_cert using certificate3256
def input3319 : Input := ⟨2,2,2,2,(fun i => ([true,false] : List Bool)[i.val]!),(fun i => ([true,false] : List Bool)[i.val]!),event3319Source,event3319Target,matrixOf 2 2 b_S0_15_141_d2.outgoing⟩
theorem path3319_source : NonzeroPath input3319.rawSource input3319.source := by
  change NonzeroPath (fun i => ([true,false] : List Bool)[i.val]!) event3319Source
  rw [event3319_source_recursive]
  exact NonzeroPath.refl _
theorem path3319_target : NonzeroPath input3319.rawTarget input3319.target := by
  change NonzeroPath (fun i => ([true,false] : List Bool)[i.val]!) event3319Target
  rw [event3319_target_recursive]
  exact NonzeroPath.refl _
theorem certificate3319 : Certificate input3319 := ⟨path3319_source,path3319_target,event3319_differential,event3319_target_nonzero⟩
theorem valid3319 : FiniteEventValid input3319 := by finite_event_cert using certificate3319
def input3320 : Input := ⟨2,2,2,2,(fun i => ([false,true] : List Bool)[i.val]!),(fun i => ([false,true] : List Bool)[i.val]!),event3320Source,event3320Target,matrixOf 2 2 b_S0_17_142_d2.outgoing⟩
theorem path3320_source : NonzeroPath input3320.rawSource input3320.source := by
  change NonzeroPath (fun i => ([false,true] : List Bool)[i.val]!) event3320Source
  rw [event3320_source_recursive]
  exact NonzeroPath.refl _
theorem path3320_target : NonzeroPath input3320.rawTarget input3320.target := by
  change NonzeroPath (fun i => ([false,true] : List Bool)[i.val]!) event3320Target
  rw [event3320_target_recursive]
  exact NonzeroPath.refl _
theorem certificate3320 : Certificate input3320 := ⟨path3320_source,path3320_target,event3320_differential,event3320_target_nonzero⟩
theorem valid3320 : FiniteEventValid input3320 := by finite_event_cert using certificate3320
def input3392 : Input := ⟨2,2,2,2,(fun i => ([false,true] : List Bool)[i.val]!),(fun i => ([false,true] : List Bool)[i.val]!),event3392Source,event3392Target,matrixOf 2 2 b_S0_18_143_d2.outgoing⟩
theorem path3392_source : NonzeroPath input3392.rawSource input3392.source := by
  change NonzeroPath (fun i => ([false,true] : List Bool)[i.val]!) event3392Source
  rw [event3392_source_recursive]
  exact NonzeroPath.refl _
theorem path3392_target : NonzeroPath input3392.rawTarget input3392.target := by
  change NonzeroPath (fun i => ([false,true] : List Bool)[i.val]!) event3392Target
  rw [event3392_target_recursive]
  exact NonzeroPath.refl _
theorem certificate3392 : Certificate input3392 := ⟨path3392_source,path3392_target,event3392_differential,event3392_target_nonzero⟩
theorem valid3392 : FiniteEventValid input3392 := by finite_event_cert using certificate3392
def input3486 : Input := ⟨3,4,1,1,(fun i => ([true,false,false] : List Bool)[i.val]!),(fun i => ([false,true,false,false] : List Bool)[i.val]!),event3486Source,event3486Target,matrixOf 1 1 b_S0_19_144_d3.outgoing⟩
theorem path3486_source : NonzeroPath input3486.rawSource input3486.source := by
  change NonzeroPath (fun i => ([true,false,false] : List Bool)[i.val]!) event3486Source
  rw [event3486_source_recursive]
  apply NonzeroPath.step b_S0_19_144_d2 rfl b_S0_19_144_d2_complete event3486_source_cycle_d2 event3486_source_d2_not_boundary
  exact NonzeroPath.refl _
theorem path3486_target : NonzeroPath input3486.rawTarget input3486.target := by
  change NonzeroPath (fun i => ([false,true,false,false] : List Bool)[i.val]!) event3486Target
  rw [event3486_target_recursive]
  apply NonzeroPath.step b_S0_22_146_d2 rfl b_S0_22_146_d2_complete event3486_target_cycle_d2 event3486_target_d2_not_boundary
  exact NonzeroPath.refl _
theorem certificate3486 : Certificate input3486 := ⟨path3486_source,path3486_target,event3486_differential,event3486_target_nonzero⟩
theorem valid3486 : FiniteEventValid input3486 := by finite_event_cert using certificate3486
def input3487 : Input := ⟨3,2,3,2,(fun i => ([false,false,true] : List Bool)[i.val]!),(fun i => ([false,true] : List Bool)[i.val]!),event3487Source,event3487Target,matrixOf 2 3 b_S0_19_144_d2.outgoing⟩
theorem path3487_source : NonzeroPath input3487.rawSource input3487.source := by
  change NonzeroPath (fun i => ([false,false,true] : List Bool)[i.val]!) event3487Source
  rw [event3487_source_recursive]
  exact NonzeroPath.refl _
theorem path3487_target : NonzeroPath input3487.rawTarget input3487.target := by
  change NonzeroPath (fun i => ([false,true] : List Bool)[i.val]!) event3487Target
  rw [event3487_target_recursive]
  exact NonzeroPath.refl _
theorem certificate3487 : Certificate input3487 := ⟨path3487_source,path3487_target,event3487_differential,event3487_target_nonzero⟩
theorem valid3487 : FiniteEventValid input3487 := by finite_event_cert using certificate3487
def input3488 : Input := ⟨3,2,3,2,(fun i => ([false,true,false] : List Bool)[i.val]!),(fun i => ([true,false] : List Bool)[i.val]!),event3488Source,event3488Target,matrixOf 2 3 b_S0_19_144_d2.outgoing⟩
theorem path3488_source : NonzeroPath input3488.rawSource input3488.source := by
  change NonzeroPath (fun i => ([false,true,false] : List Bool)[i.val]!) event3488Source
  rw [event3488_source_recursive]
  exact NonzeroPath.refl _
theorem path3488_target : NonzeroPath input3488.rawTarget input3488.target := by
  change NonzeroPath (fun i => ([true,false] : List Bool)[i.val]!) event3488Target
  rw [event3488_target_recursive]
  exact NonzeroPath.refl _
theorem certificate3488 : Certificate input3488 := ⟨path3488_source,path3488_target,event3488_differential,event3488_target_nonzero⟩
theorem valid3488 : FiniteEventValid input3488 := by finite_event_cert using certificate3488
def input3556 : Input := ⟨4,3,4,3,(fun i => ([true,false,false,false] : List Bool)[i.val]!),(fun i => ([false,true,false] : List Bool)[i.val]!),event3556Source,event3556Target,matrixOf 3 4 b_S0_18_144_d2.outgoing⟩
theorem path3556_source : NonzeroPath input3556.rawSource input3556.source := by
  change NonzeroPath (fun i => ([true,false,false,false] : List Bool)[i.val]!) event3556Source
  rw [event3556_source_recursive]
  exact NonzeroPath.refl _
theorem path3556_target : NonzeroPath input3556.rawTarget input3556.target := by
  change NonzeroPath (fun i => ([false,true,false] : List Bool)[i.val]!) event3556Target
  rw [event3556_target_recursive]
  exact NonzeroPath.refl _
theorem certificate3556 : Certificate input3556 := ⟨path3556_source,path3556_target,event3556_differential,event3556_target_nonzero⟩
theorem valid3556 : FiniteEventValid input3556 := by finite_event_cert using certificate3556
def input3557 : Input := ⟨3,4,1,2,(fun i => ([true,false,false] : List Bool)[i.val]!),(fun i => ([false,false,true,false] : List Bool)[i.val]!),event3557Source,event3557Target,matrixOf 2 1 b_S0_20_145_d3.outgoing⟩
theorem path3557_source : NonzeroPath input3557.rawSource input3557.source := by
  change NonzeroPath (fun i => ([true,false,false] : List Bool)[i.val]!) event3557Source
  rw [event3557_source_recursive]
  apply NonzeroPath.step b_S0_20_145_d2 rfl b_S0_20_145_d2_complete event3557_source_cycle_d2 event3557_source_d2_not_boundary
  exact NonzeroPath.refl _
theorem path3557_target : NonzeroPath input3557.rawTarget input3557.target := by
  change NonzeroPath (fun i => ([false,false,true,false] : List Bool)[i.val]!) event3557Target
  rw [event3557_target_recursive]
  apply NonzeroPath.step b_S0_23_147_d2 rfl b_S0_23_147_d2_complete event3557_target_cycle_d2 event3557_target_d2_not_boundary
  exact NonzeroPath.refl _
theorem certificate3557 : Certificate input3557 := ⟨path3557_source,path3557_target,event3557_differential,event3557_target_nonzero⟩
theorem valid3557 : FiniteEventValid input3557 := by finite_event_cert using certificate3557
def input3558 : Input := ⟨3,4,3,4,(fun i => ([false,false,true] : List Bool)[i.val]!),(fun i => ([false,false,false,true] : List Bool)[i.val]!),event3558Source,event3558Target,matrixOf 4 3 b_S0_20_145_d2.outgoing⟩
theorem path3558_source : NonzeroPath input3558.rawSource input3558.source := by
  change NonzeroPath (fun i => ([false,false,true] : List Bool)[i.val]!) event3558Source
  rw [event3558_source_recursive]
  exact NonzeroPath.refl _
theorem path3558_target : NonzeroPath input3558.rawTarget input3558.target := by
  change NonzeroPath (fun i => ([false,false,false,true] : List Bool)[i.val]!) event3558Target
  rw [event3558_target_recursive]
  exact NonzeroPath.refl _
theorem certificate3558 : Certificate input3558 := ⟨path3558_source,path3558_target,event3558_differential,event3558_target_nonzero⟩
theorem valid3558 : FiniteEventValid input3558 := by finite_event_cert using certificate3558
def input3629 : Input := ⟨4,3,2,1,(fun i => ([false,true,false,false] : List Bool)[i.val]!),(fun i => ([true,false,false] : List Bool)[i.val]!),event3629Source,event3629Target,matrixOf 1 2 b_S0_17_143_d4.outgoing⟩
theorem path3629_source : NonzeroPath input3629.rawSource input3629.source := by
  change NonzeroPath (fun i => ([false,true,false,false] : List Bool)[i.val]!) event3629Source
  rw [event3629_source_recursive]
  apply NonzeroPath.step b_S0_17_143_d2 rfl b_S0_17_143_d2_complete event3629_source_cycle_d2 event3629_source_d2_not_boundary
  apply NonzeroPath.step b_S0_17_143_d3 rfl b_S0_17_143_d3_complete event3629_source_cycle_d3 event3629_source_d3_not_boundary
  exact NonzeroPath.refl _
theorem path3629_target : NonzeroPath input3629.rawTarget input3629.target := by
  change NonzeroPath (fun i => ([true,false,false] : List Bool)[i.val]!) event3629Target
  rw [event3629_target_recursive]
  apply NonzeroPath.step b_S0_21_146_d2 rfl b_S0_21_146_d2_complete event3629_target_cycle_d2 event3629_target_d2_not_boundary
  apply NonzeroPath.step b_S0_21_146_d3 rfl b_S0_21_146_d3_complete event3629_target_cycle_d3 event3629_target_d3_not_boundary
  exact NonzeroPath.refl _
theorem certificate3629 : Certificate input3629 := ⟨path3629_source,path3629_target,event3629_differential,event3629_target_nonzero⟩
theorem valid3629 : FiniteEventValid input3629 := by finite_event_cert using certificate3629
def input3630 : Input := ⟨3,4,3,4,(fun i => ([false,false,true] : List Bool)[i.val]!),(fun i => ([false,false,false,true] : List Bool)[i.val]!),event3630Source,event3630Target,matrixOf 4 3 b_S0_21_146_d2.outgoing⟩
theorem path3630_source : NonzeroPath input3630.rawSource input3630.source := by
  change NonzeroPath (fun i => ([false,false,true] : List Bool)[i.val]!) event3630Source
  rw [event3630_source_recursive]
  exact NonzeroPath.refl _
theorem path3630_target : NonzeroPath input3630.rawTarget input3630.target := by
  change NonzeroPath (fun i => ([false,false,false,true] : List Bool)[i.val]!) event3630Target
  rw [event3630_target_recursive]
  exact NonzeroPath.refl _
theorem certificate3630 : Certificate input3630 := ⟨path3630_source,path3630_target,event3630_differential,event3630_target_nonzero⟩
theorem valid3630 : FiniteEventValid input3630 := by finite_event_cert using certificate3630
def input3631 : Input := ⟨3,4,3,4,(fun i => ([false,true,false] : List Bool)[i.val]!),(fun i => ([false,true,true,false] : List Bool)[i.val]!),event3631Source,event3631Target,matrixOf 4 3 b_S0_21_146_d2.outgoing⟩
theorem path3631_source : NonzeroPath input3631.rawSource input3631.source := by
  change NonzeroPath (fun i => ([false,true,false] : List Bool)[i.val]!) event3631Source
  rw [event3631_source_recursive]
  exact NonzeroPath.refl _
theorem path3631_target : NonzeroPath input3631.rawTarget input3631.target := by
  change NonzeroPath (fun i => ([false,true,true,false] : List Bool)[i.val]!) event3631Target
  rw [event3631_target_recursive]
  exact NonzeroPath.refl _
theorem certificate3631 : Certificate input3631 := ⟨path3631_source,path3631_target,event3631_differential,event3631_target_nonzero⟩
theorem valid3631 : FiniteEventValid input3631 := by finite_event_cert using certificate3631
def input3746 : Input := ⟨4,2,4,2,(fun i => ([false,false,false,true] : List Bool)[i.val]!),(fun i => ([false,true] : List Bool)[i.val]!),event3746Source,event3746Target,matrixOf 2 4 b_S0_22_147_d2.outgoing⟩
theorem path3746_source : NonzeroPath input3746.rawSource input3746.source := by
  change NonzeroPath (fun i => ([false,false,false,true] : List Bool)[i.val]!) event3746Source
  rw [event3746_source_recursive]
  exact NonzeroPath.refl _
theorem path3746_target : NonzeroPath input3746.rawTarget input3746.target := by
  change NonzeroPath (fun i => ([false,true] : List Bool)[i.val]!) event3746Target
  rw [event3746_target_recursive]
  exact NonzeroPath.refl _
theorem certificate3746 : Certificate input3746 := ⟨path3746_source,path3746_target,event3746_differential,event3746_target_nonzero⟩
theorem valid3746 : FiniteEventValid input3746 := by finite_event_cert using certificate3746
def input3747 : Input := ⟨4,2,4,2,(fun i => ([false,false,true,false] : List Bool)[i.val]!),(fun i => ([true,false] : List Bool)[i.val]!),event3747Source,event3747Target,matrixOf 2 4 b_S0_22_147_d2.outgoing⟩
theorem path3747_source : NonzeroPath input3747.rawSource input3747.source := by
  change NonzeroPath (fun i => ([false,false,true,false] : List Bool)[i.val]!) event3747Source
  rw [event3747_source_recursive]
  exact NonzeroPath.refl _
theorem path3747_target : NonzeroPath input3747.rawTarget input3747.target := by
  change NonzeroPath (fun i => ([true,false] : List Bool)[i.val]!) event3747Target
  rw [event3747_target_recursive]
  exact NonzeroPath.refl _
theorem certificate3747 : Certificate input3747 := ⟨path3747_source,path3747_target,event3747_differential,event3747_target_nonzero⟩
theorem valid3747 : FiniteEventValid input3747 := by finite_event_cert using certificate3747
def input3812 : Input := ⟨2,4,1,2,(fun i => ([true,false] : List Bool)[i.val]!),(fun i => ([false,false,true,false] : List Bool)[i.val]!),event3812Source,event3812Target,matrixOf 2 1 b_S0_23_148_d3.outgoing⟩
theorem path3812_source : NonzeroPath input3812.rawSource input3812.source := by
  change NonzeroPath (fun i => ([true,false] : List Bool)[i.val]!) event3812Source
  rw [event3812_source_recursive]
  apply NonzeroPath.step b_S0_23_148_d2 rfl b_S0_23_148_d2_complete event3812_source_cycle_d2 event3812_source_d2_not_boundary
  exact NonzeroPath.refl _
theorem path3812_target : NonzeroPath input3812.rawTarget input3812.target := by
  change NonzeroPath (fun i => ([false,false,true,false] : List Bool)[i.val]!) event3812Target
  rw [event3812_target_recursive]
  apply NonzeroPath.step b_S0_26_150_d2 rfl b_S0_26_150_d2_complete event3812_target_cycle_d2 event3812_target_d2_not_boundary
  exact NonzeroPath.refl _
theorem certificate3812 : Certificate input3812 := ⟨path3812_source,path3812_target,event3812_differential,event3812_target_nonzero⟩
theorem valid3812 : FiniteEventValid input3812 := by finite_event_cert using certificate3812
def input3813 : Input := ⟨2,3,2,3,(fun i => ([false,true] : List Bool)[i.val]!),(fun i => ([false,false,true] : List Bool)[i.val]!),event3813Source,event3813Target,matrixOf 3 2 b_S0_23_148_d2.outgoing⟩
theorem path3813_source : NonzeroPath input3813.rawSource input3813.source := by
  change NonzeroPath (fun i => ([false,true] : List Bool)[i.val]!) event3813Source
  rw [event3813_source_recursive]
  exact NonzeroPath.refl _
theorem path3813_target : NonzeroPath input3813.rawTarget input3813.target := by
  change NonzeroPath (fun i => ([false,false,true] : List Bool)[i.val]!) event3813Target
  rw [event3813_target_recursive]
  exact NonzeroPath.refl _
theorem certificate3813 : Certificate input3813 := ⟨path3813_source,path3813_target,event3813_differential,event3813_target_nonzero⟩
theorem valid3813 : FiniteEventValid input3813 := by finite_event_cert using certificate3813
def input3896 : Input := ⟨1,4,1,4,(fun i => ([true] : List Bool)[i.val]!),(fun i => ([false,true,false,false] : List Bool)[i.val]!),event3896Source,event3896Target,matrixOf 4 1 b_S0_24_149_d2.outgoing⟩
theorem path3896_source : NonzeroPath input3896.rawSource input3896.source := by
  change NonzeroPath (fun i => ([true] : List Bool)[i.val]!) event3896Source
  rw [event3896_source_recursive]
  exact NonzeroPath.refl _
theorem path3896_target : NonzeroPath input3896.rawTarget input3896.target := by
  change NonzeroPath (fun i => ([false,true,false,false] : List Bool)[i.val]!) event3896Target
  rw [event3896_target_recursive]
  exact NonzeroPath.refl _
theorem certificate3896 : Certificate input3896 := ⟨path3896_source,path3896_target,event3896_differential,event3896_target_nonzero⟩
theorem valid3896 : FiniteEventValid input3896 := by finite_event_cert using certificate3896
def input3995 : Input := ⟨4,2,4,2,(fun i => ([false,true,false,false] : List Bool)[i.val]!),(fun i => ([true,false] : List Bool)[i.val]!),event3995Source,event3995Target,matrixOf 2 4 b_S0_25_150_d2.outgoing⟩
theorem path3995_source : NonzeroPath input3995.rawSource input3995.source := by
  change NonzeroPath (fun i => ([false,true,false,false] : List Bool)[i.val]!) event3995Source
  rw [event3995_source_recursive]
  exact NonzeroPath.refl _
theorem path3995_target : NonzeroPath input3995.rawTarget input3995.target := by
  change NonzeroPath (fun i => ([true,false] : List Bool)[i.val]!) event3995Target
  rw [event3995_target_recursive]
  exact NonzeroPath.refl _
theorem certificate3995 : Certificate input3995 := ⟨path3995_source,path3995_target,event3995_differential,event3995_target_nonzero⟩
theorem valid3995 : FiniteEventValid input3995 := by finite_event_cert using certificate3995
def input4092 : Input := ⟨1,2,1,2,(fun i => ([true] : List Bool)[i.val]!),(fun i => ([false,true] : List Bool)[i.val]!),event4092Source,event4092Target,matrixOf 2 1 b_S0_26_151_d2.outgoing⟩
theorem path4092_source : NonzeroPath input4092.rawSource input4092.source := by
  change NonzeroPath (fun i => ([true] : List Bool)[i.val]!) event4092Source
  rw [event4092_source_recursive]
  exact NonzeroPath.refl _
theorem path4092_target : NonzeroPath input4092.rawTarget input4092.target := by
  change NonzeroPath (fun i => ([false,true] : List Bool)[i.val]!) event4092Target
  rw [event4092_target_recursive]
  exact NonzeroPath.refl _
theorem certificate4092 : Certificate input4092 := ⟨path4092_source,path4092_target,event4092_differential,event4092_target_nonzero⟩
theorem valid4092 : FiniteEventValid input4092 := by finite_event_cert using certificate4092
def input4162 : Input := ⟨2,3,2,3,(fun i => ([false,true] : List Bool)[i.val]!),(fun i => ([false,false,true] : List Bool)[i.val]!),event4162Source,event4162Target,matrixOf 3 2 b_S0_27_152_d2.outgoing⟩
theorem path4162_source : NonzeroPath input4162.rawSource input4162.source := by
  change NonzeroPath (fun i => ([false,true] : List Bool)[i.val]!) event4162Source
  rw [event4162_source_recursive]
  exact NonzeroPath.refl _
theorem path4162_target : NonzeroPath input4162.rawTarget input4162.target := by
  change NonzeroPath (fun i => ([false,false,true] : List Bool)[i.val]!) event4162Target
  rw [event4162_target_recursive]
  exact NonzeroPath.refl _
theorem certificate4162 : Certificate input4162 := ⟨path4162_source,path4162_target,event4162_differential,event4162_target_nonzero⟩
theorem valid4162 : FiniteEventValid input4162 := by finite_event_cert using certificate4162
def input4163 : Input := ⟨2,3,2,3,(fun i => ([true,false] : List Bool)[i.val]!),(fun i => ([true,false,false] : List Bool)[i.val]!),event4163Source,event4163Target,matrixOf 3 2 b_S0_27_152_d2.outgoing⟩
theorem path4163_source : NonzeroPath input4163.rawSource input4163.source := by
  change NonzeroPath (fun i => ([true,false] : List Bool)[i.val]!) event4163Source
  rw [event4163_source_recursive]
  exact NonzeroPath.refl _
theorem path4163_target : NonzeroPath input4163.rawTarget input4163.target := by
  change NonzeroPath (fun i => ([true,false,false] : List Bool)[i.val]!) event4163Target
  rw [event4163_target_recursive]
  exact NonzeroPath.refl _
theorem certificate4163 : Certificate input4163 := ⟨path4163_source,path4163_target,event4163_differential,event4163_target_nonzero⟩
theorem valid4163 : FiniteEventValid input4163 := by finite_event_cert using certificate4163
def input4263 : Input := ⟨4,4,4,4,(fun i => ([true,false,false,false] : List Bool)[i.val]!),(fun i => ([false,false,true,false] : List Bool)[i.val]!),event4263Source,event4263Target,matrixOf 4 4 b_S0_26_152_d2.outgoing⟩
theorem path4263_source : NonzeroPath input4263.rawSource input4263.source := by
  change NonzeroPath (fun i => ([true,false,false,false] : List Bool)[i.val]!) event4263Source
  rw [event4263_source_recursive]
  exact NonzeroPath.refl _
theorem path4263_target : NonzeroPath input4263.rawTarget input4263.target := by
  change NonzeroPath (fun i => ([false,false,true,false] : List Bool)[i.val]!) event4263Target
  rw [event4263_target_recursive]
  exact NonzeroPath.refl _
theorem certificate4263 : Certificate input4263 := ⟨path4263_source,path4263_target,event4263_differential,event4263_target_nonzero⟩
theorem valid4263 : FiniteEventValid input4263 := by finite_event_cert using certificate4263
def input4264 : Input := ⟨4,4,4,4,(fun i => ([false,true,false,false] : List Bool)[i.val]!),(fun i => ([false,true,false,false] : List Bool)[i.val]!),event4264Source,event4264Target,matrixOf 4 4 b_S0_26_152_d2.outgoing⟩
theorem path4264_source : NonzeroPath input4264.rawSource input4264.source := by
  change NonzeroPath (fun i => ([false,true,false,false] : List Bool)[i.val]!) event4264Source
  rw [event4264_source_recursive]
  exact NonzeroPath.refl _
theorem path4264_target : NonzeroPath input4264.rawTarget input4264.target := by
  change NonzeroPath (fun i => ([false,true,false,false] : List Bool)[i.val]!) event4264Target
  rw [event4264_target_recursive]
  exact NonzeroPath.refl _
theorem certificate4264 : Certificate input4264 := ⟨path4264_source,path4264_target,event4264_differential,event4264_target_nonzero⟩
theorem valid4264 : FiniteEventValid input4264 := by finite_event_cert using certificate4264
def input4265 : Input := ⟨4,2,4,2,(fun i => ([false,false,false,true] : List Bool)[i.val]!),(fun i => ([false,true] : List Bool)[i.val]!),event4265Source,event4265Target,matrixOf 2 4 b_S0_28_153_d2.outgoing⟩
theorem path4265_source : NonzeroPath input4265.rawSource input4265.source := by
  change NonzeroPath (fun i => ([false,false,false,true] : List Bool)[i.val]!) event4265Source
  rw [event4265_source_recursive]
  exact NonzeroPath.refl _
theorem path4265_target : NonzeroPath input4265.rawTarget input4265.target := by
  change NonzeroPath (fun i => ([false,true] : List Bool)[i.val]!) event4265Target
  rw [event4265_target_recursive]
  exact NonzeroPath.refl _
theorem certificate4265 : Certificate input4265 := ⟨path4265_source,path4265_target,event4265_differential,event4265_target_nonzero⟩
theorem valid4265 : FiniteEventValid input4265 := by finite_event_cert using certificate4265
def input4266 : Input := ⟨4,2,4,2,(fun i => ([true,false,false,false] : List Bool)[i.val]!),(fun i => ([true,false] : List Bool)[i.val]!),event4266Source,event4266Target,matrixOf 2 4 b_S0_28_153_d2.outgoing⟩
theorem path4266_source : NonzeroPath input4266.rawSource input4266.source := by
  change NonzeroPath (fun i => ([true,false,false,false] : List Bool)[i.val]!) event4266Source
  rw [event4266_source_recursive]
  exact NonzeroPath.refl _
theorem path4266_target : NonzeroPath input4266.rawTarget input4266.target := by
  change NonzeroPath (fun i => ([true,false] : List Bool)[i.val]!) event4266Target
  rw [event4266_target_recursive]
  exact NonzeroPath.refl _
theorem certificate4266 : Certificate input4266 := ⟨path4266_source,path4266_target,event4266_differential,event4266_target_nonzero⟩
theorem valid4266 : FiniteEventValid input4266 := by finite_event_cert using certificate4266
def input4337 : Input := ⟨5,2,5,2,(fun i => ([true,false,false,false,false] : List Bool)[i.val]!),(fun i => ([true,false] : List Bool)[i.val]!),event4337Source,event4337Target,matrixOf 2 5 b_S0_27_153_d2.outgoing⟩
theorem path4337_source : NonzeroPath input4337.rawSource input4337.source := by
  change NonzeroPath (fun i => ([true,false,false,false,false] : List Bool)[i.val]!) event4337Source
  rw [event4337_source_recursive]
  exact NonzeroPath.refl _
theorem path4337_target : NonzeroPath input4337.rawTarget input4337.target := by
  change NonzeroPath (fun i => ([true,false] : List Bool)[i.val]!) event4337Target
  rw [event4337_target_recursive]
  exact NonzeroPath.refl _
theorem certificate4337 : Certificate input4337 := ⟨path4337_source,path4337_target,event4337_differential,event4337_target_nonzero⟩
theorem valid4337 : FiniteEventValid input4337 := by finite_event_cert using certificate4337
def input4338 : Input := ⟨2,2,1,1,(fun i => ([false,true] : List Bool)[i.val]!),(fun i => ([true,false] : List Bool)[i.val]!),event4338Source,event4338Target,matrixOf 1 1 b_S0_29_154_d3.outgoing⟩
theorem path4338_source : NonzeroPath input4338.rawSource input4338.source := by
  change NonzeroPath (fun i => ([false,true] : List Bool)[i.val]!) event4338Source
  rw [event4338_source_recursive]
  apply NonzeroPath.step b_S0_29_154_d2 rfl b_S0_29_154_d2_complete event4338_source_cycle_d2 event4338_source_d2_not_boundary
  exact NonzeroPath.refl _
theorem path4338_target : NonzeroPath input4338.rawTarget input4338.target := by
  change NonzeroPath (fun i => ([true,false] : List Bool)[i.val]!) event4338Target
  rw [event4338_target_recursive]
  apply NonzeroPath.step b_S0_32_156_d2 rfl b_S0_32_156_d2_complete event4338_target_cycle_d2 event4338_target_d2_not_boundary
  exact NonzeroPath.refl _
theorem certificate4338 : Certificate input4338 := ⟨path4338_source,path4338_target,event4338_differential,event4338_target_nonzero⟩
theorem valid4338 : FiniteEventValid input4338 := by finite_event_cert using certificate4338
def input4411 : Input := ⟨3,2,3,2,(fun i => ([true,false,false] : List Bool)[i.val]!),(fun i => ([false,true] : List Bool)[i.val]!),event4411Source,event4411Target,matrixOf 2 3 b_S0_28_154_d2.outgoing⟩
theorem path4411_source : NonzeroPath input4411.rawSource input4411.source := by
  change NonzeroPath (fun i => ([true,false,false] : List Bool)[i.val]!) event4411Source
  rw [event4411_source_recursive]
  exact NonzeroPath.refl _
theorem path4411_target : NonzeroPath input4411.rawTarget input4411.target := by
  change NonzeroPath (fun i => ([false,true] : List Bool)[i.val]!) event4411Target
  rw [event4411_target_recursive]
  exact NonzeroPath.refl _
theorem certificate4411 : Certificate input4411 := ⟨path4411_source,path4411_target,event4411_differential,event4411_target_nonzero⟩
theorem valid4411 : FiniteEventValid input4411 := by finite_event_cert using certificate4411
def input4412 : Input := ⟨2,2,2,2,(fun i => ([true,false] : List Bool)[i.val]!),(fun i => ([false,true] : List Bool)[i.val]!),event4412Source,event4412Target,matrixOf 2 2 b_S0_30_155_d2.outgoing⟩
theorem path4412_source : NonzeroPath input4412.rawSource input4412.source := by
  change NonzeroPath (fun i => ([true,false] : List Bool)[i.val]!) event4412Source
  rw [event4412_source_recursive]
  exact NonzeroPath.refl _
theorem path4412_target : NonzeroPath input4412.rawTarget input4412.target := by
  change NonzeroPath (fun i => ([false,true] : List Bool)[i.val]!) event4412Target
  rw [event4412_target_recursive]
  exact NonzeroPath.refl _
theorem certificate4412 : Certificate input4412 := ⟨path4412_source,path4412_target,event4412_differential,event4412_target_nonzero⟩
theorem valid4412 : FiniteEventValid input4412 := by finite_event_cert using certificate4412
def input4501 : Input := ⟨3,3,3,3,(fun i => ([true,false,false] : List Bool)[i.val]!),(fun i => ([false,true,false] : List Bool)[i.val]!),event4501Source,event4501Target,matrixOf 3 3 b_S0_29_155_d2.outgoing⟩
theorem path4501_source : NonzeroPath input4501.rawSource input4501.source := by
  change NonzeroPath (fun i => ([true,false,false] : List Bool)[i.val]!) event4501Source
  rw [event4501_source_recursive]
  exact NonzeroPath.refl _
theorem path4501_target : NonzeroPath input4501.rawTarget input4501.target := by
  change NonzeroPath (fun i => ([false,true,false] : List Bool)[i.val]!) event4501Target
  rw [event4501_target_recursive]
  exact NonzeroPath.refl _
theorem certificate4501 : Certificate input4501 := ⟨path4501_source,path4501_target,event4501_differential,event4501_target_nonzero⟩
theorem valid4501 : FiniteEventValid input4501 := by finite_event_cert using certificate4501
def input4502 : Input := ⟨3,3,3,3,(fun i => ([false,true,false] : List Bool)[i.val]!),(fun i => ([false,false,true] : List Bool)[i.val]!),event4502Source,event4502Target,matrixOf 3 3 b_S0_29_155_d2.outgoing⟩
theorem path4502_source : NonzeroPath input4502.rawSource input4502.source := by
  change NonzeroPath (fun i => ([false,true,false] : List Bool)[i.val]!) event4502Source
  rw [event4502_source_recursive]
  exact NonzeroPath.refl _
theorem path4502_target : NonzeroPath input4502.rawTarget input4502.target := by
  change NonzeroPath (fun i => ([false,false,true] : List Bool)[i.val]!) event4502Target
  rw [event4502_target_recursive]
  exact NonzeroPath.refl _
theorem certificate4502 : Certificate input4502 := ⟨path4502_source,path4502_target,event4502_differential,event4502_target_nonzero⟩
theorem valid4502 : FiniteEventValid input4502 := by finite_event_cert using certificate4502
def input4503 : Input := ⟨3,2,1,1,(fun i => ([true,false,false] : List Bool)[i.val]!),(fun i => ([true,false] : List Bool)[i.val]!),event4503Source,event4503Target,matrixOf 1 1 b_S0_31_156_d4.outgoing⟩
theorem path4503_source : NonzeroPath input4503.rawSource input4503.source := by
  change NonzeroPath (fun i => ([true,false,false] : List Bool)[i.val]!) event4503Source
  rw [event4503_source_recursive]
  apply NonzeroPath.step b_S0_31_156_d2 rfl b_S0_31_156_d2_complete event4503_source_cycle_d2 event4503_source_d2_not_boundary
  apply NonzeroPath.step b_S0_31_156_d3 rfl b_S0_31_156_d3_complete event4503_source_cycle_d3 event4503_source_d3_not_boundary
  exact NonzeroPath.refl _
theorem path4503_target : NonzeroPath input4503.rawTarget input4503.target := by
  change NonzeroPath (fun i => ([true,false] : List Bool)[i.val]!) event4503Target
  rw [event4503_target_recursive]
  apply NonzeroPath.step b_S0_35_159_d2 rfl b_S0_35_159_d2_complete event4503_target_cycle_d2 event4503_target_d2_not_boundary
  apply NonzeroPath.step b_S0_35_159_d3 rfl b_S0_35_159_d3_complete event4503_target_cycle_d3 event4503_target_d3_not_boundary
  exact NonzeroPath.refl _
theorem certificate4503 : Certificate input4503 := ⟨path4503_source,path4503_target,event4503_differential,event4503_target_nonzero⟩
theorem valid4503 : FiniteEventValid input4503 := by finite_event_cert using certificate4503
def input4671 : Input := ⟨1,2,1,2,(fun i => ([true] : List Bool)[i.val]!),(fun i => ([false,true] : List Bool)[i.val]!),event4671Source,event4671Target,matrixOf 2 1 b_S0_33_158_d2.outgoing⟩
theorem path4671_source : NonzeroPath input4671.rawSource input4671.source := by
  change NonzeroPath (fun i => ([true] : List Bool)[i.val]!) event4671Source
  rw [event4671_source_recursive]
  exact NonzeroPath.refl _
theorem path4671_target : NonzeroPath input4671.rawTarget input4671.target := by
  change NonzeroPath (fun i => ([false,true] : List Bool)[i.val]!) event4671Target
  rw [event4671_target_recursive]
  exact NonzeroPath.refl _
theorem certificate4671 : Certificate input4671 := ⟨path4671_source,path4671_target,event4671_differential,event4671_target_nonzero⟩
theorem valid4671 : FiniteEventValid input4671 := by finite_event_cert using certificate4671
def input4763 : Input := ⟨2,2,2,2,(fun i => ([true,false] : List Bool)[i.val]!),(fun i => ([false,true] : List Bool)[i.val]!),event4763Source,event4763Target,matrixOf 2 2 b_S0_32_158_d2.outgoing⟩
theorem path4763_source : NonzeroPath input4763.rawSource input4763.source := by
  change NonzeroPath (fun i => ([true,false] : List Bool)[i.val]!) event4763Source
  rw [event4763_source_recursive]
  exact NonzeroPath.refl _
theorem path4763_target : NonzeroPath input4763.rawTarget input4763.target := by
  change NonzeroPath (fun i => ([false,true] : List Bool)[i.val]!) event4763Target
  rw [event4763_target_recursive]
  exact NonzeroPath.refl _
theorem certificate4763 : Certificate input4763 := ⟨path4763_source,path4763_target,event4763_differential,event4763_target_nonzero⟩
theorem valid4763 : FiniteEventValid input4763 := by finite_event_cert using certificate4763
def input4764 : Input := ⟨2,2,2,1,(fun i => ([true,false] : List Bool)[i.val]!),(fun i => ([true,false] : List Bool)[i.val]!),event4764Source,event4764Target,matrixOf 1 2 b_S0_31_157_d3.outgoing⟩
theorem path4764_source : NonzeroPath input4764.rawSource input4764.source := by
  change NonzeroPath (fun i => ([true,false] : List Bool)[i.val]!) event4764Source
  rw [event4764_source_recursive]
  apply NonzeroPath.step b_S0_31_157_d2 rfl b_S0_31_157_d2_complete event4764_source_cycle_d2 event4764_source_d2_not_boundary
  exact NonzeroPath.refl _
theorem path4764_target : NonzeroPath input4764.rawTarget input4764.target := by
  change NonzeroPath (fun i => ([true,false] : List Bool)[i.val]!) event4764Target
  rw [event4764_target_recursive]
  apply NonzeroPath.step b_S0_34_159_d2 rfl b_S0_34_159_d2_complete event4764_target_cycle_d2 event4764_target_d2_not_boundary
  exact NonzeroPath.refl _
theorem certificate4764 : Certificate input4764 := ⟨path4764_source,path4764_target,event4764_differential,event4764_target_nonzero⟩
theorem valid4764 : FiniteEventValid input4764 := by finite_event_cert using certificate4764
def input4929 : Input := ⟨3,2,2,1,(fun i => ([true,false,false] : List Bool)[i.val]!),(fun i => ([false,true] : List Bool)[i.val]!),event4929Source,event4929Target,matrixOf 1 2 b_S0_33_159_d3.outgoing⟩
theorem path4929_source : NonzeroPath input4929.rawSource input4929.source := by
  change NonzeroPath (fun i => ([true,false,false] : List Bool)[i.val]!) event4929Source
  rw [event4929_source_recursive]
  apply NonzeroPath.step b_S0_33_159_d2 rfl b_S0_33_159_d2_complete event4929_source_cycle_d2 event4929_source_d2_not_boundary
  exact NonzeroPath.refl _
theorem path4929_target : NonzeroPath input4929.rawTarget input4929.target := by
  change NonzeroPath (fun i => ([false,true] : List Bool)[i.val]!) event4929Target
  rw [event4929_target_recursive]
  apply NonzeroPath.step b_S0_36_161_d2 rfl b_S0_36_161_d2_complete event4929_target_cycle_d2 event4929_target_d2_not_boundary
  exact NonzeroPath.refl _
theorem certificate4929 : Certificate input4929 := ⟨path4929_source,path4929_target,event4929_differential,event4929_target_nonzero⟩
theorem valid4929 : FiniteEventValid input4929 := by finite_event_cert using certificate4929
def input4930 : Input := ⟨2,2,2,2,(fun i => ([true,false] : List Bool)[i.val]!),(fun i => ([false,true] : List Bool)[i.val]!),event4930Source,event4930Target,matrixOf 2 2 b_S0_36_161_d2.outgoing⟩
theorem path4930_source : NonzeroPath input4930.rawSource input4930.source := by
  change NonzeroPath (fun i => ([true,false] : List Bool)[i.val]!) event4930Source
  rw [event4930_source_recursive]
  exact NonzeroPath.refl _
theorem path4930_target : NonzeroPath input4930.rawTarget input4930.target := by
  change NonzeroPath (fun i => ([false,true] : List Bool)[i.val]!) event4930Target
  rw [event4930_target_recursive]
  exact NonzeroPath.refl _
theorem certificate4930 : Certificate input4930 := ⟨path4930_source,path4930_target,event4930_differential,event4930_target_nonzero⟩
theorem valid4930 : FiniteEventValid input4930 := by finite_event_cert using certificate4930
def input5027 : Input := ⟨2,2,2,2,(fun i => ([true,false] : List Bool)[i.val]!),(fun i => ([false,true] : List Bool)[i.val]!),event5027Source,event5027Target,matrixOf 2 2 b_S0_35_161_d2.outgoing⟩
theorem path5027_source : NonzeroPath input5027.rawSource input5027.source := by
  change NonzeroPath (fun i => ([true,false] : List Bool)[i.val]!) event5027Source
  rw [event5027_source_recursive]
  exact NonzeroPath.refl _
theorem path5027_target : NonzeroPath input5027.rawTarget input5027.target := by
  change NonzeroPath (fun i => ([false,true] : List Bool)[i.val]!) event5027Target
  rw [event5027_target_recursive]
  exact NonzeroPath.refl _
theorem certificate5027 : Certificate input5027 := ⟨path5027_source,path5027_target,event5027_differential,event5027_target_nonzero⟩
theorem valid5027 : FiniteEventValid input5027 := by finite_event_cert using certificate5027
def input5028 : Input := ⟨2,1,2,1,(fun i => ([true,false] : List Bool)[i.val]!),(fun i => ([true] : List Bool)[i.val]!),event5028Source,event5028Target,matrixOf 1 2 b_S0_37_162_d2.outgoing⟩
theorem path5028_source : NonzeroPath input5028.rawSource input5028.source := by
  change NonzeroPath (fun i => ([true,false] : List Bool)[i.val]!) event5028Source
  rw [event5028_source_recursive]
  exact NonzeroPath.refl _
theorem path5028_target : NonzeroPath input5028.rawTarget input5028.target := by
  change NonzeroPath (fun i => ([true] : List Bool)[i.val]!) event5028Target
  rw [event5028_target_recursive]
  exact NonzeroPath.refl _
theorem certificate5028 : Certificate input5028 := ⟨path5028_source,path5028_target,event5028_differential,event5028_target_nonzero⟩
theorem valid5028 : FiniteEventValid input5028 := by finite_event_cert using certificate5028
def input5143 : Input := ⟨1,3,1,2,(fun i => ([true] : List Bool)[i.val]!),(fun i => ([false,true,true] : List Bool)[i.val]!),event5143Source,event5143Target,matrixOf 2 1 b_S0_38_163_d3.outgoing⟩
theorem path5143_source : NonzeroPath input5143.rawSource input5143.source := by
  change NonzeroPath (fun i => ([true] : List Bool)[i.val]!) event5143Source
  rw [event5143_source_recursive]
  apply NonzeroPath.step b_S0_38_163_d2 rfl b_S0_38_163_d2_complete event5143_source_cycle_d2 event5143_source_d2_not_boundary
  exact NonzeroPath.refl _
theorem path5143_target : NonzeroPath input5143.rawTarget input5143.target := by
  change NonzeroPath (fun i => ([false,true,true] : List Bool)[i.val]!) event5143Target
  rw [event5143_target_recursive]
  apply NonzeroPath.step b_S0_41_165_d2 rfl b_S0_41_165_d2_complete event5143_target_cycle_d2 event5143_target_d2_not_boundary
  exact NonzeroPath.refl _
theorem certificate5143 : Certificate input5143 := ⟨path5143_source,path5143_target,event5143_differential,event5143_target_nonzero⟩
theorem valid5143 : FiniteEventValid input5143 := by finite_event_cert using certificate5143
def input5217 : Input := ⟨1,2,1,1,(fun i => ([true] : List Bool)[i.val]!),(fun i => ([true,false] : List Bool)[i.val]!),event5217Source,event5217Target,matrixOf 1 1 b_S0_39_164_d4.outgoing⟩
theorem path5217_source : NonzeroPath input5217.rawSource input5217.source := by
  change NonzeroPath (fun i => ([true] : List Bool)[i.val]!) event5217Source
  rw [event5217_source_recursive]
  apply NonzeroPath.step b_S0_39_164_d2 rfl b_S0_39_164_d2_complete event5217_source_cycle_d2 event5217_source_d2_not_boundary
  apply NonzeroPath.step b_S0_39_164_d3 rfl b_S0_39_164_d3_complete event5217_source_cycle_d3 event5217_source_d3_not_boundary
  exact NonzeroPath.refl _
theorem path5217_target : NonzeroPath input5217.rawTarget input5217.target := by
  change NonzeroPath (fun i => ([true,false] : List Bool)[i.val]!) event5217Target
  rw [event5217_target_recursive]
  apply NonzeroPath.step b_S0_43_167_d2 rfl b_S0_43_167_d2_complete event5217_target_cycle_d2 event5217_target_d2_not_boundary
  apply NonzeroPath.step b_S0_43_167_d3 rfl b_S0_43_167_d3_complete event5217_target_cycle_d3 event5217_target_d3_not_boundary
  exact NonzeroPath.refl _
theorem certificate5217 : Certificate input5217 := ⟨path5217_source,path5217_target,event5217_differential,event5217_target_nonzero⟩
theorem valid5217 : FiniteEventValid input5217 := by finite_event_cert using certificate5217
def input5326 : Input := ⟨1,2,1,2,(fun i => ([true] : List Bool)[i.val]!),(fun i => ([false,true] : List Bool)[i.val]!),event5326Source,event5326Target,matrixOf 2 1 b_S0_38_164_d2.outgoing⟩
theorem path5326_source : NonzeroPath input5326.rawSource input5326.source := by
  change NonzeroPath (fun i => ([true] : List Bool)[i.val]!) event5326Source
  rw [event5326_source_recursive]
  exact NonzeroPath.refl _
theorem path5326_target : NonzeroPath input5326.rawTarget input5326.target := by
  change NonzeroPath (fun i => ([false,true] : List Bool)[i.val]!) event5326Target
  rw [event5326_target_recursive]
  exact NonzeroPath.refl _
theorem certificate5326 : Certificate input5326 := ⟨path5326_source,path5326_target,event5326_differential,event5326_target_nonzero⟩
theorem valid5326 : FiniteEventValid input5326 := by finite_event_cert using certificate5326
def input5327 : Input := ⟨2,2,2,2,(fun i => ([true,false] : List Bool)[i.val]!),(fun i => ([false,true] : List Bool)[i.val]!),event5327Source,event5327Target,matrixOf 2 2 b_S0_40_165_d2.outgoing⟩
theorem path5327_source : NonzeroPath input5327.rawSource input5327.source := by
  change NonzeroPath (fun i => ([true,false] : List Bool)[i.val]!) event5327Source
  rw [event5327_source_recursive]
  exact NonzeroPath.refl _
theorem path5327_target : NonzeroPath input5327.rawTarget input5327.target := by
  change NonzeroPath (fun i => ([false,true] : List Bool)[i.val]!) event5327Target
  rw [event5327_target_recursive]
  exact NonzeroPath.refl _
theorem certificate5327 : Certificate input5327 := ⟨path5327_source,path5327_target,event5327_differential,event5327_target_nonzero⟩
theorem valid5327 : FiniteEventValid input5327 := by finite_event_cert using certificate5327
def input5441 : Input := ⟨2,2,1,1,(fun i => ([true,false] : List Bool)[i.val]!),(fun i => ([true,false] : List Bool)[i.val]!),event5441Source,event5441Target,matrixOf 1 1 b_S0_41_166_d3.outgoing⟩
theorem path5441_source : NonzeroPath input5441.rawSource input5441.source := by
  change NonzeroPath (fun i => ([true,false] : List Bool)[i.val]!) event5441Source
  rw [event5441_source_recursive]
  apply NonzeroPath.step b_S0_41_166_d2 rfl b_S0_41_166_d2_complete event5441_source_cycle_d2 event5441_source_d2_not_boundary
  exact NonzeroPath.refl _
theorem path5441_target : NonzeroPath input5441.rawTarget input5441.target := by
  change NonzeroPath (fun i => ([true,false] : List Bool)[i.val]!) event5441Target
  rw [event5441_target_recursive]
  apply NonzeroPath.step b_S0_44_168_d2 rfl b_S0_44_168_d2_complete event5441_target_cycle_d2 event5441_target_d2_not_boundary
  exact NonzeroPath.refl _
theorem certificate5441 : Certificate input5441 := ⟨path5441_source,path5441_target,event5441_differential,event5441_target_nonzero⟩
theorem valid5441 : FiniteEventValid input5441 := by finite_event_cert using certificate5441
def input5442 : Input := ⟨2,2,2,2,(fun i => ([false,true] : List Bool)[i.val]!),(fun i => ([false,true] : List Bool)[i.val]!),event5442Source,event5442Target,matrixOf 2 2 b_S0_41_166_d2.outgoing⟩
theorem path5442_source : NonzeroPath input5442.rawSource input5442.source := by
  change NonzeroPath (fun i => ([false,true] : List Bool)[i.val]!) event5442Source
  rw [event5442_source_recursive]
  exact NonzeroPath.refl _
theorem path5442_target : NonzeroPath input5442.rawTarget input5442.target := by
  change NonzeroPath (fun i => ([false,true] : List Bool)[i.val]!) event5442Target
  rw [event5442_target_recursive]
  exact NonzeroPath.refl _
theorem certificate5442 : Certificate input5442 := ⟨path5442_source,path5442_target,event5442_differential,event5442_target_nonzero⟩
theorem valid5442 : FiniteEventValid input5442 := by finite_event_cert using certificate5442
def input5540 : Input := ⟨1,2,1,2,(fun i => ([true] : List Bool)[i.val]!),(fun i => ([false,true] : List Bool)[i.val]!),event5540Source,event5540Target,matrixOf 2 1 b_S0_42_167_d2.outgoing⟩
theorem path5540_source : NonzeroPath input5540.rawSource input5540.source := by
  change NonzeroPath (fun i => ([true] : List Bool)[i.val]!) event5540Source
  rw [event5540_source_recursive]
  exact NonzeroPath.refl _
theorem path5540_target : NonzeroPath input5540.rawTarget input5540.target := by
  change NonzeroPath (fun i => ([false,true] : List Bool)[i.val]!) event5540Target
  rw [event5540_target_recursive]
  exact NonzeroPath.refl _
theorem certificate5540 : Certificate input5540 := ⟨path5540_source,path5540_target,event5540_differential,event5540_target_nonzero⟩
theorem valid5540 : FiniteEventValid input5540 := by finite_event_cert using certificate5540
def input5635 : Input := ⟨2,1,1,1,(fun i => ([true,false] : List Bool)[i.val]!),(fun i => ([true] : List Bool)[i.val]!),event5635Source,event5635Target,matrixOf 1 1 b_S0_43_168_d4.outgoing⟩
theorem path5635_source : NonzeroPath input5635.rawSource input5635.source := by
  change NonzeroPath (fun i => ([true,false] : List Bool)[i.val]!) event5635Source
  rw [event5635_source_recursive]
  apply NonzeroPath.step b_S0_43_168_d2 rfl b_S0_43_168_d2_complete event5635_source_cycle_d2 event5635_source_d2_not_boundary
  apply NonzeroPath.step b_S0_43_168_d3 rfl b_S0_43_168_d3_complete event5635_source_cycle_d3 event5635_source_d3_not_boundary
  exact NonzeroPath.refl _
theorem path5635_target : NonzeroPath input5635.rawTarget input5635.target := by
  change NonzeroPath (fun i => ([true] : List Bool)[i.val]!) event5635Target
  rw [event5635_target_recursive]
  apply NonzeroPath.step b_S0_47_171_d2 rfl b_S0_47_171_d2_complete event5635_target_cycle_d2 event5635_target_d2_not_boundary
  apply NonzeroPath.step b_S0_47_171_d3 rfl b_S0_47_171_d3_complete event5635_target_cycle_d3 event5635_target_d3_not_boundary
  exact NonzeroPath.refl _
theorem certificate5635 : Certificate input5635 := ⟨path5635_source,path5635_target,event5635_differential,event5635_target_nonzero⟩
theorem valid5635 : FiniteEventValid input5635 := by finite_event_cert using certificate5635
def input5636 : Input := ⟨2,1,2,1,(fun i => ([false,true] : List Bool)[i.val]!),(fun i => ([true] : List Bool)[i.val]!),event5636Source,event5636Target,matrixOf 1 2 b_S0_43_168_d2.outgoing⟩
theorem path5636_source : NonzeroPath input5636.rawSource input5636.source := by
  change NonzeroPath (fun i => ([false,true] : List Bool)[i.val]!) event5636Source
  rw [event5636_source_recursive]
  exact NonzeroPath.refl _
theorem path5636_target : NonzeroPath input5636.rawTarget input5636.target := by
  change NonzeroPath (fun i => ([true] : List Bool)[i.val]!) event5636Target
  rw [event5636_target_recursive]
  exact NonzeroPath.refl _
theorem certificate5636 : Certificate input5636 := ⟨path5636_source,path5636_target,event5636_differential,event5636_target_nonzero⟩
theorem valid5636 : FiniteEventValid input5636 := by finite_event_cert using certificate5636
def input5772 : Input := ⟨1,1,1,1,(fun i => ([true] : List Bool)[i.val]!),(fun i => ([true] : List Bool)[i.val]!),event5772Source,event5772Target,matrixOf 1 1 b_S0_44_169_d2.outgoing⟩
theorem path5772_source : NonzeroPath input5772.rawSource input5772.source := by
  change NonzeroPath (fun i => ([true] : List Bool)[i.val]!) event5772Source
  rw [event5772_source_recursive]
  exact NonzeroPath.refl _
theorem path5772_target : NonzeroPath input5772.rawTarget input5772.target := by
  change NonzeroPath (fun i => ([true] : List Bool)[i.val]!) event5772Target
  rw [event5772_target_recursive]
  exact NonzeroPath.refl _
theorem certificate5772 : Certificate input5772 := ⟨path5772_source,path5772_target,event5772_differential,event5772_target_nonzero⟩
theorem valid5772 : FiniteEventValid input5772 := by finite_event_cert using certificate5772
def input5862 : Input := ⟨4,1,3,1,(fun i => ([true,false,false,false] : List Bool)[i.val]!),(fun i => ([true] : List Bool)[i.val]!),event5862Source,event5862Target,matrixOf 1 3 b_S0_42_168_d3.outgoing⟩
theorem path5862_source : NonzeroPath input5862.rawSource input5862.source := by
  change NonzeroPath (fun i => ([true,false,false,false] : List Bool)[i.val]!) event5862Source
  rw [event5862_source_recursive]
  apply NonzeroPath.step b_S0_42_168_d2 rfl b_S0_42_168_d2_complete event5862_source_cycle_d2 event5862_source_d2_not_boundary
  exact NonzeroPath.refl _
theorem path5862_target : NonzeroPath input5862.rawTarget input5862.target := by
  change NonzeroPath (fun i => ([true] : List Bool)[i.val]!) event5862Target
  rw [event5862_target_recursive]
  apply NonzeroPath.step b_S0_45_170_d2 rfl b_S0_45_170_d2_complete event5862_target_cycle_d2 event5862_target_d2_not_boundary
  exact NonzeroPath.refl _
theorem certificate5862 : Certificate input5862 := ⟨path5862_source,path5862_target,event5862_differential,event5862_target_nonzero⟩
theorem valid5862 : FiniteEventValid input5862 := by finite_event_cert using certificate5862
def input5977 : Input := ⟨4,1,2,1,(fun i => ([false,false,true,false] : List Bool)[i.val]!),(fun i => ([true] : List Bool)[i.val]!),event5977Source,event5977Target,matrixOf 1 2 b_S0_42_168_d4.outgoing⟩
theorem path5977_source : NonzeroPath input5977.rawSource input5977.source := by
  change NonzeroPath (fun i => ([false,false,true,false] : List Bool)[i.val]!) event5977Source
  rw [event5977_source_recursive]
  apply NonzeroPath.step b_S0_42_168_d2 rfl b_S0_42_168_d2_complete event5977_source_cycle_d2 event5977_source_d2_not_boundary
  apply NonzeroPath.step b_S0_42_168_d3 rfl b_S0_42_168_d3_complete event5977_source_cycle_d3 event5977_source_d3_not_boundary
  exact NonzeroPath.refl _
theorem path5977_target : NonzeroPath input5977.rawTarget input5977.target := by
  change NonzeroPath (fun i => ([true] : List Bool)[i.val]!) event5977Target
  rw [event5977_target_recursive]
  apply NonzeroPath.step b_S0_46_171_d2 rfl b_S0_46_171_d2_complete event5977_target_cycle_d2 event5977_target_d2_not_boundary
  apply NonzeroPath.step b_S0_46_171_d3 rfl b_S0_46_171_d3_complete event5977_target_cycle_d3 event5977_target_d3_not_boundary
  exact NonzeroPath.refl _
theorem certificate5977 : Certificate input5977 := ⟨path5977_source,path5977_target,event5977_differential,event5977_target_nonzero⟩
theorem valid5977 : FiniteEventValid input5977 := by finite_event_cert using certificate5977
def input6296 : Input := ⟨2,1,2,1,(fun i => ([true,false] : List Bool)[i.val]!),(fun i => ([true] : List Bool)[i.val]!),event6296Source,event6296Target,matrixOf 1 2 b_S0_45_171_d4.outgoing⟩
theorem path6296_source : NonzeroPath input6296.rawSource input6296.source := by
  change NonzeroPath (fun i => ([true,false] : List Bool)[i.val]!) event6296Source
  rw [event6296_source_recursive]
  apply NonzeroPath.step b_S0_45_171_d2 rfl b_S0_45_171_d2_complete event6296_source_cycle_d2 event6296_source_d2_not_boundary
  apply NonzeroPath.step b_S0_45_171_d3 rfl b_S0_45_171_d3_complete event6296_source_cycle_d3 event6296_source_d3_not_boundary
  exact NonzeroPath.refl _
theorem path6296_target : NonzeroPath input6296.rawTarget input6296.target := by
  change NonzeroPath (fun i => ([true] : List Bool)[i.val]!) event6296Target
  rw [event6296_target_recursive]
  apply NonzeroPath.step b_S0_49_174_d2 rfl b_S0_49_174_d2_complete event6296_target_cycle_d2 event6296_target_d2_not_boundary
  apply NonzeroPath.step b_S0_49_174_d3 rfl b_S0_49_174_d3_complete event6296_target_cycle_d3 event6296_target_d3_not_boundary
  exact NonzeroPath.refl _
theorem certificate6296 : Certificate input6296 := ⟨path6296_source,path6296_target,event6296_differential,event6296_target_nonzero⟩
theorem valid6296 : FiniteEventValid input6296 := by finite_event_cert using certificate6296
end AggregateTargetInventory.EventAudit.Certificates
