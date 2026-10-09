import AggregateCsigmaConditional.StageBasic
namespace AggregateCsigmaConditional.EliminationStage
open LinearCertificates PageTransitionCertificates StageBasic Data Events
theorem event2435_source_not_kernel : ¬ InKernel (matrixOf 3 1 b_S0_5_130_d2.outgoing) event2435Source := source_not_kernel event2435_differential event2435_target_nonzero
theorem event2435_page_earlier : 2 < 3 := by decide
theorem event2492_source_not_kernel : ¬ InKernel (matrixOf 4 2 b_S0_6_131_d4.outgoing) event2492Source := source_not_kernel event2492_differential event2492_target_nonzero
theorem event2492_page_equal : 4 = 4 := by decide
theorem event2493_source_not_kernel : ¬ InKernel (matrixOf 4 2 b_S0_6_131_d4.outgoing) event2493Source := source_not_kernel event2493_differential event2493_target_nonzero
theorem event2493_page_equal : 4 = 4 := by decide
theorem event2572_source_not_kernel : ¬ InKernel (matrixOf 1 1 b_S0_4_130_d3.outgoing) event2572Source := source_not_kernel event2572_differential event2572_target_nonzero
theorem event2572_page_earlier : 3 < 5 := by decide
theorem event2572_adjacent : (matrixOf 4 1 b_S0_7_132_d3.outgoing |> fun B => LinearCertificates.IsComplex B (matrixOf 1 1 b_S0_4_130_d3.outgoing)) := by
  have h := b_S0_7_132_d3_complete.2.1
  change LinearCertificates.IsComplex (matrixOf 4 1 b_S0_7_132_d3.outgoing) (matrixOf 1 1 b_S0_7_132_d3.incoming) at h
  rw [b_S0_7_132_d3_incoming_link] at h
  exact h
theorem event2572_target_zero_next : (Quot.mk _ (⟨event2572Target,image_cycle event2572_adjacent event2572_differential⟩ : Cycle (matrixOf 4 1 b_S0_7_132_d3.outgoing)) : Homology (matrixOf 4 1 b_S0_7_132_d3.outgoing) (matrixOf 1 1 b_S0_4_130_d3.outgoing)) = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) := image_zero_in_homology event2572_adjacent event2572_differential
theorem event2629_source_not_kernel : ¬ InKernel (matrixOf 2 1 b_S0_8_133_d3.outgoing) event2629Source := source_not_kernel event2629_differential event2629_target_nonzero
theorem event2629_page_earlier : 3 < 6 := by decide
theorem event2629_adjacent : (matrixOf 2 2 b_S0_11_135_d3.outgoing |> fun B => LinearCertificates.IsComplex B (matrixOf 2 1 b_S0_8_133_d3.outgoing)) := by
  have h := b_S0_11_135_d3_complete.2.1
  change LinearCertificates.IsComplex (matrixOf 2 2 b_S0_11_135_d3.outgoing) (matrixOf 2 1 b_S0_11_135_d3.incoming) at h
  rw [b_S0_11_135_d3_incoming_link] at h
  exact h
theorem event2629_target_zero_next : (Quot.mk _ (⟨event2629Target,image_cycle event2629_adjacent event2629_differential⟩ : Cycle (matrixOf 2 2 b_S0_11_135_d3.outgoing)) : Homology (matrixOf 2 2 b_S0_11_135_d3.outgoing) (matrixOf 2 1 b_S0_8_133_d3.outgoing)) = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) := image_zero_in_homology event2629_adjacent event2629_differential
theorem event2630_source_not_kernel : ¬ InKernel (matrixOf 5 2 b_S0_8_133_d2.outgoing) event2630Source := source_not_kernel event2630_differential event2630_target_nonzero
theorem event2630_page_earlier : 2 < 6 := by decide
theorem event2630_adjacent : (matrixOf 3 5 b_S0_10_134_d2.outgoing |> fun B => LinearCertificates.IsComplex B (matrixOf 5 2 b_S0_8_133_d2.outgoing)) := by
  have h := b_S0_10_134_d2_complete.2.1
  change LinearCertificates.IsComplex (matrixOf 3 5 b_S0_10_134_d2.outgoing) (matrixOf 5 2 b_S0_10_134_d2.incoming) at h
  rw [b_S0_10_134_d2_incoming_link] at h
  exact h
theorem event2630_target_zero_next : (Quot.mk _ (⟨event2630Target,image_cycle event2630_adjacent event2630_differential⟩ : Cycle (matrixOf 3 5 b_S0_10_134_d2.outgoing)) : Homology (matrixOf 3 5 b_S0_10_134_d2.outgoing) (matrixOf 5 2 b_S0_8_133_d2.outgoing)) = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) := image_zero_in_homology event2630_adjacent event2630_differential
theorem event2698_source_not_kernel : ¬ InKernel (matrixOf 5 5 b_S0_9_134_d2.outgoing) event2698Source := source_not_kernel event2698_differential event2698_target_nonzero
theorem event2698_page_earlier : 2 < 7 := by decide
theorem event2698_adjacent : (matrixOf 3 5 b_S0_11_135_d2.outgoing |> fun B => LinearCertificates.IsComplex B (matrixOf 5 5 b_S0_9_134_d2.outgoing)) := by
  have h := b_S0_11_135_d2_complete.2.1
  change LinearCertificates.IsComplex (matrixOf 3 5 b_S0_11_135_d2.outgoing) (matrixOf 5 5 b_S0_11_135_d2.incoming) at h
  rw [b_S0_11_135_d2_incoming_link] at h
  exact h
theorem event2698_target_zero_next : (Quot.mk _ (⟨event2698Target,image_cycle event2698_adjacent event2698_differential⟩ : Cycle (matrixOf 3 5 b_S0_11_135_d2.outgoing)) : Homology (matrixOf 3 5 b_S0_11_135_d2.outgoing) (matrixOf 5 5 b_S0_9_134_d2.outgoing)) = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) := image_zero_in_homology event2698_adjacent event2698_differential
theorem event2699_source_not_kernel : ¬ InKernel (matrixOf 5 5 b_S0_9_134_d2.outgoing) event2699Source := source_not_kernel event2699_differential event2699_target_nonzero
theorem event2699_page_earlier : 2 < 7 := by decide
theorem event2699_adjacent : (matrixOf 3 5 b_S0_11_135_d2.outgoing |> fun B => LinearCertificates.IsComplex B (matrixOf 5 5 b_S0_9_134_d2.outgoing)) := by
  have h := b_S0_11_135_d2_complete.2.1
  change LinearCertificates.IsComplex (matrixOf 3 5 b_S0_11_135_d2.outgoing) (matrixOf 5 5 b_S0_11_135_d2.incoming) at h
  rw [b_S0_11_135_d2_incoming_link] at h
  exact h
theorem event2699_target_zero_next : (Quot.mk _ (⟨event2699Target,image_cycle event2699_adjacent event2699_differential⟩ : Cycle (matrixOf 3 5 b_S0_11_135_d2.outgoing)) : Homology (matrixOf 3 5 b_S0_11_135_d2.outgoing) (matrixOf 5 5 b_S0_9_134_d2.outgoing)) = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) := image_zero_in_homology event2699_adjacent event2699_differential
theorem event2783_source_not_kernel : ¬ InKernel (matrixOf 5 6 b_S0_8_134_d2.outgoing) event2783Source := source_not_kernel event2783_differential event2783_target_nonzero
theorem event2783_page_earlier : 2 < 8 := by decide
theorem event2783_adjacent : (matrixOf 5 5 b_S0_10_135_d2.outgoing |> fun B => LinearCertificates.IsComplex B (matrixOf 5 6 b_S0_8_134_d2.outgoing)) := by
  have h := b_S0_10_135_d2_complete.2.1
  change LinearCertificates.IsComplex (matrixOf 5 5 b_S0_10_135_d2.outgoing) (matrixOf 5 6 b_S0_10_135_d2.incoming) at h
  rw [b_S0_10_135_d2_incoming_link] at h
  exact h
theorem event2783_target_zero_next : (Quot.mk _ (⟨event2783Target,image_cycle event2783_adjacent event2783_differential⟩ : Cycle (matrixOf 5 5 b_S0_10_135_d2.outgoing)) : Homology (matrixOf 5 5 b_S0_10_135_d2.outgoing) (matrixOf 5 6 b_S0_8_134_d2.outgoing)) = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) := image_zero_in_homology event2783_adjacent event2783_differential
theorem event2784_source_not_kernel : ¬ InKernel (matrixOf 3 1 b_S0_10_135_d3.outgoing) event2784Source := source_not_kernel event2784_differential event2784_target_nonzero
theorem event2784_page_earlier : 3 < 8 := by decide
theorem event2785_source_not_kernel : ¬ InKernel (matrixOf 5 5 b_S0_10_135_d2.outgoing) event2785Source := source_not_kernel event2785_differential event2785_target_nonzero
theorem event2785_page_earlier : 2 < 8 := by decide
theorem event2785_adjacent : (matrixOf 3 5 b_S0_12_136_d2.outgoing |> fun B => LinearCertificates.IsComplex B (matrixOf 5 5 b_S0_10_135_d2.outgoing)) := by
  have h := b_S0_12_136_d2_complete.2.1
  change LinearCertificates.IsComplex (matrixOf 3 5 b_S0_12_136_d2.outgoing) (matrixOf 5 5 b_S0_12_136_d2.incoming) at h
  rw [b_S0_12_136_d2_incoming_link] at h
  exact h
theorem event2785_target_zero_next : (Quot.mk _ (⟨event2785Target,image_cycle event2785_adjacent event2785_differential⟩ : Cycle (matrixOf 3 5 b_S0_12_136_d2.outgoing)) : Homology (matrixOf 3 5 b_S0_12_136_d2.outgoing) (matrixOf 5 5 b_S0_10_135_d2.outgoing)) = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) := image_zero_in_homology event2785_adjacent event2785_differential
theorem event2786_source_not_kernel : ¬ InKernel (matrixOf 5 5 b_S0_10_135_d2.outgoing) event2786Source := source_not_kernel event2786_differential event2786_target_nonzero
theorem event2786_page_earlier : 2 < 8 := by decide
theorem event2786_adjacent : (matrixOf 3 5 b_S0_12_136_d2.outgoing |> fun B => LinearCertificates.IsComplex B (matrixOf 5 5 b_S0_10_135_d2.outgoing)) := by
  have h := b_S0_12_136_d2_complete.2.1
  change LinearCertificates.IsComplex (matrixOf 3 5 b_S0_12_136_d2.outgoing) (matrixOf 5 5 b_S0_12_136_d2.incoming) at h
  rw [b_S0_12_136_d2_incoming_link] at h
  exact h
theorem event2786_target_zero_next : (Quot.mk _ (⟨event2786Target,image_cycle event2786_adjacent event2786_differential⟩ : Cycle (matrixOf 3 5 b_S0_12_136_d2.outgoing)) : Homology (matrixOf 3 5 b_S0_12_136_d2.outgoing) (matrixOf 5 5 b_S0_10_135_d2.outgoing)) = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) := image_zero_in_homology event2786_adjacent event2786_differential
theorem event2787_source_not_kernel : ¬ InKernel (matrixOf 5 5 b_S0_10_135_d2.outgoing) event2787Source := source_not_kernel event2787_differential event2787_target_nonzero
theorem event2787_page_earlier : 2 < 8 := by decide
theorem event2787_adjacent : (matrixOf 3 5 b_S0_12_136_d2.outgoing |> fun B => LinearCertificates.IsComplex B (matrixOf 5 5 b_S0_10_135_d2.outgoing)) := by
  have h := b_S0_12_136_d2_complete.2.1
  change LinearCertificates.IsComplex (matrixOf 3 5 b_S0_12_136_d2.outgoing) (matrixOf 5 5 b_S0_12_136_d2.incoming) at h
  rw [b_S0_12_136_d2_incoming_link] at h
  exact h
theorem event2787_target_zero_next : (Quot.mk _ (⟨event2787Target,image_cycle event2787_adjacent event2787_differential⟩ : Cycle (matrixOf 3 5 b_S0_12_136_d2.outgoing)) : Homology (matrixOf 3 5 b_S0_12_136_d2.outgoing) (matrixOf 5 5 b_S0_10_135_d2.outgoing)) = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) := image_zero_in_homology event2787_adjacent event2787_differential
theorem event2850_source_not_kernel : ¬ InKernel (matrixOf 4 4 b_S0_8_134_d3.outgoing) event2850Source := source_not_kernel event2850_differential event2850_target_nonzero
theorem event2850_page_earlier : 3 < 9 := by decide
theorem event2850_adjacent : (matrixOf 1 4 b_S0_11_136_d3.outgoing |> fun B => LinearCertificates.IsComplex B (matrixOf 4 4 b_S0_8_134_d3.outgoing)) := by
  have h := b_S0_11_136_d3_complete.2.1
  change LinearCertificates.IsComplex (matrixOf 1 4 b_S0_11_136_d3.outgoing) (matrixOf 4 4 b_S0_11_136_d3.incoming) at h
  rw [b_S0_11_136_d3_incoming_link] at h
  exact h
theorem event2850_target_zero_next : (Quot.mk _ (⟨event2850Target,image_cycle event2850_adjacent event2850_differential⟩ : Cycle (matrixOf 1 4 b_S0_11_136_d3.outgoing)) : Homology (matrixOf 1 4 b_S0_11_136_d3.outgoing) (matrixOf 4 4 b_S0_8_134_d3.outgoing)) = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) := image_zero_in_homology event2850_adjacent event2850_differential
theorem event2851_source_not_kernel : ¬ InKernel (matrixOf 4 4 b_S0_8_134_d3.outgoing) event2851Source := source_not_kernel event2851_differential event2851_target_nonzero
theorem event2851_page_earlier : 3 < 9 := by decide
theorem event2851_adjacent : (matrixOf 1 4 b_S0_11_136_d3.outgoing |> fun B => LinearCertificates.IsComplex B (matrixOf 4 4 b_S0_8_134_d3.outgoing)) := by
  have h := b_S0_11_136_d3_complete.2.1
  change LinearCertificates.IsComplex (matrixOf 1 4 b_S0_11_136_d3.outgoing) (matrixOf 4 4 b_S0_11_136_d3.incoming) at h
  rw [b_S0_11_136_d3_incoming_link] at h
  exact h
theorem event2851_target_zero_next : (Quot.mk _ (⟨event2851Target,image_cycle event2851_adjacent event2851_differential⟩ : Cycle (matrixOf 1 4 b_S0_11_136_d3.outgoing)) : Homology (matrixOf 1 4 b_S0_11_136_d3.outgoing) (matrixOf 4 4 b_S0_8_134_d3.outgoing)) = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) := image_zero_in_homology event2851_adjacent event2851_differential
theorem event2853_source_not_kernel : ¬ InKernel (matrixOf 2 2 b_S0_11_136_d4.outgoing) event2853Source := source_not_kernel event2853_differential event2853_target_nonzero
theorem event2853_page_earlier : 4 < 9 := by decide
theorem event2854_source_not_kernel : ¬ InKernel (matrixOf 4 5 b_S0_11_136_d2.outgoing) event2854Source := source_not_kernel event2854_differential event2854_target_nonzero
theorem event2854_page_earlier : 2 < 9 := by decide
theorem event2854_adjacent : (matrixOf 3 4 b_S0_13_137_d2.outgoing |> fun B => LinearCertificates.IsComplex B (matrixOf 4 5 b_S0_11_136_d2.outgoing)) := by
  have h := b_S0_13_137_d2_complete.2.1
  change LinearCertificates.IsComplex (matrixOf 3 4 b_S0_13_137_d2.outgoing) (matrixOf 4 5 b_S0_13_137_d2.incoming) at h
  rw [b_S0_13_137_d2_incoming_link] at h
  exact h
theorem event2854_target_zero_next : (Quot.mk _ (⟨event2854Target,image_cycle event2854_adjacent event2854_differential⟩ : Cycle (matrixOf 3 4 b_S0_13_137_d2.outgoing)) : Homology (matrixOf 3 4 b_S0_13_137_d2.outgoing) (matrixOf 4 5 b_S0_11_136_d2.outgoing)) = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) := image_zero_in_homology event2854_adjacent event2854_differential
theorem event2918_source_not_kernel : ¬ InKernel (matrixOf 5 5 b_S0_10_136_d2.outgoing) event2918Source := source_not_kernel event2918_differential event2918_target_nonzero
theorem event2918_page_earlier : 2 < 10 := by decide
theorem event2918_adjacent : (matrixOf 5 5 b_S0_12_137_d2.outgoing |> fun B => LinearCertificates.IsComplex B (matrixOf 5 5 b_S0_10_136_d2.outgoing)) := by
  have h := b_S0_12_137_d2_complete.2.1
  change LinearCertificates.IsComplex (matrixOf 5 5 b_S0_12_137_d2.outgoing) (matrixOf 5 5 b_S0_12_137_d2.incoming) at h
  rw [b_S0_12_137_d2_incoming_link] at h
  exact h
theorem event2918_target_zero_next : (Quot.mk _ (⟨event2918Target,image_cycle event2918_adjacent event2918_differential⟩ : Cycle (matrixOf 5 5 b_S0_12_137_d2.outgoing)) : Homology (matrixOf 5 5 b_S0_12_137_d2.outgoing) (matrixOf 5 5 b_S0_10_136_d2.outgoing)) = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) := image_zero_in_homology event2918_adjacent event2918_differential
theorem event2919_source_not_kernel : ¬ InKernel (matrixOf 2 4 b_S0_9_135_d3.outgoing) event2919Source := source_not_kernel event2919_differential event2919_target_nonzero
theorem event2919_page_earlier : 3 < 10 := by decide
theorem event2919_adjacent : (matrixOf 2 2 b_S0_12_137_d3.outgoing |> fun B => LinearCertificates.IsComplex B (matrixOf 2 4 b_S0_9_135_d3.outgoing)) := by
  have h := b_S0_12_137_d3_complete.2.1
  change LinearCertificates.IsComplex (matrixOf 2 2 b_S0_12_137_d3.outgoing) (matrixOf 2 4 b_S0_12_137_d3.incoming) at h
  rw [b_S0_12_137_d3_incoming_link] at h
  exact h
theorem event2919_target_zero_next : (Quot.mk _ (⟨event2919Target,image_cycle event2919_adjacent event2919_differential⟩ : Cycle (matrixOf 2 2 b_S0_12_137_d3.outgoing)) : Homology (matrixOf 2 2 b_S0_12_137_d3.outgoing) (matrixOf 2 4 b_S0_9_135_d3.outgoing)) = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) := image_zero_in_homology event2919_adjacent event2919_differential
theorem event2920_source_not_kernel : ¬ InKernel (matrixOf 2 4 b_S0_9_135_d3.outgoing) event2920Source := source_not_kernel event2920_differential event2920_target_nonzero
theorem event2920_page_earlier : 3 < 10 := by decide
theorem event2920_adjacent : (matrixOf 2 2 b_S0_12_137_d3.outgoing |> fun B => LinearCertificates.IsComplex B (matrixOf 2 4 b_S0_9_135_d3.outgoing)) := by
  have h := b_S0_12_137_d3_complete.2.1
  change LinearCertificates.IsComplex (matrixOf 2 2 b_S0_12_137_d3.outgoing) (matrixOf 2 4 b_S0_12_137_d3.incoming) at h
  rw [b_S0_12_137_d3_incoming_link] at h
  exact h
theorem event2920_target_zero_next : (Quot.mk _ (⟨event2920Target,image_cycle event2920_adjacent event2920_differential⟩ : Cycle (matrixOf 2 2 b_S0_12_137_d3.outgoing)) : Homology (matrixOf 2 2 b_S0_12_137_d3.outgoing) (matrixOf 2 4 b_S0_9_135_d3.outgoing)) = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) := image_zero_in_homology event2920_adjacent event2920_differential
theorem event2921_source_not_kernel : ¬ InKernel (matrixOf 5 5 b_S0_12_137_d2.outgoing) event2921Source := source_not_kernel event2921_differential event2921_target_nonzero
theorem event2921_page_earlier : 2 < 10 := by decide
theorem event2921_adjacent : (matrixOf 3 5 b_S0_14_138_d2.outgoing |> fun B => LinearCertificates.IsComplex B (matrixOf 5 5 b_S0_12_137_d2.outgoing)) := by
  have h := b_S0_14_138_d2_complete.2.1
  change LinearCertificates.IsComplex (matrixOf 3 5 b_S0_14_138_d2.outgoing) (matrixOf 5 5 b_S0_14_138_d2.incoming) at h
  rw [b_S0_14_138_d2_incoming_link] at h
  exact h
theorem event2921_target_zero_next : (Quot.mk _ (⟨event2921Target,image_cycle event2921_adjacent event2921_differential⟩ : Cycle (matrixOf 3 5 b_S0_14_138_d2.outgoing)) : Homology (matrixOf 3 5 b_S0_14_138_d2.outgoing) (matrixOf 5 5 b_S0_12_137_d2.outgoing)) = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) := image_zero_in_homology event2921_adjacent event2921_differential
theorem event2922_source_not_kernel : ¬ InKernel (matrixOf 5 5 b_S0_12_137_d2.outgoing) event2922Source := source_not_kernel event2922_differential event2922_target_nonzero
theorem event2922_page_earlier : 2 < 10 := by decide
theorem event2922_adjacent : (matrixOf 3 5 b_S0_14_138_d2.outgoing |> fun B => LinearCertificates.IsComplex B (matrixOf 5 5 b_S0_12_137_d2.outgoing)) := by
  have h := b_S0_14_138_d2_complete.2.1
  change LinearCertificates.IsComplex (matrixOf 3 5 b_S0_14_138_d2.outgoing) (matrixOf 5 5 b_S0_14_138_d2.incoming) at h
  rw [b_S0_14_138_d2_incoming_link] at h
  exact h
theorem event2922_target_zero_next : (Quot.mk _ (⟨event2922Target,image_cycle event2922_adjacent event2922_differential⟩ : Cycle (matrixOf 3 5 b_S0_14_138_d2.outgoing)) : Homology (matrixOf 3 5 b_S0_14_138_d2.outgoing) (matrixOf 5 5 b_S0_12_137_d2.outgoing)) = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) := image_zero_in_homology event2922_adjacent event2922_differential
theorem event3008_source_not_kernel : ¬ InKernel (matrixOf 5 6 b_S0_11_137_d2.outgoing) event3008Source := source_not_kernel event3008_differential event3008_target_nonzero
theorem event3008_page_earlier : 2 < 11 := by decide
theorem event3008_adjacent : (matrixOf 4 5 b_S0_13_138_d2.outgoing |> fun B => LinearCertificates.IsComplex B (matrixOf 5 6 b_S0_11_137_d2.outgoing)) := by
  have h := b_S0_13_138_d2_complete.2.1
  change LinearCertificates.IsComplex (matrixOf 4 5 b_S0_13_138_d2.outgoing) (matrixOf 5 6 b_S0_13_138_d2.incoming) at h
  rw [b_S0_13_138_d2_incoming_link] at h
  exact h
theorem event3008_target_zero_next : (Quot.mk _ (⟨event3008Target,image_cycle event3008_adjacent event3008_differential⟩ : Cycle (matrixOf 4 5 b_S0_13_138_d2.outgoing)) : Homology (matrixOf 4 5 b_S0_13_138_d2.outgoing) (matrixOf 5 6 b_S0_11_137_d2.outgoing)) = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) := image_zero_in_homology event3008_adjacent event3008_differential
theorem event3009_source_not_kernel : ¬ InKernel (matrixOf 5 6 b_S0_11_137_d2.outgoing) event3009Source := source_not_kernel event3009_differential event3009_target_nonzero
theorem event3009_page_earlier : 2 < 11 := by decide
theorem event3009_adjacent : (matrixOf 4 5 b_S0_13_138_d2.outgoing |> fun B => LinearCertificates.IsComplex B (matrixOf 5 6 b_S0_11_137_d2.outgoing)) := by
  have h := b_S0_13_138_d2_complete.2.1
  change LinearCertificates.IsComplex (matrixOf 4 5 b_S0_13_138_d2.outgoing) (matrixOf 5 6 b_S0_13_138_d2.incoming) at h
  rw [b_S0_13_138_d2_incoming_link] at h
  exact h
theorem event3009_target_zero_next : (Quot.mk _ (⟨event3009Target,image_cycle event3009_adjacent event3009_differential⟩ : Cycle (matrixOf 4 5 b_S0_13_138_d2.outgoing)) : Homology (matrixOf 4 5 b_S0_13_138_d2.outgoing) (matrixOf 5 6 b_S0_11_137_d2.outgoing)) = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) := image_zero_in_homology event3009_adjacent event3009_differential
theorem event3010_source_not_kernel : ¬ InKernel (matrixOf 2 2 b_S0_9_135_d4.outgoing) event3010Source := source_not_kernel event3010_differential event3010_target_nonzero
theorem event3010_page_earlier : 4 < 11 := by decide
theorem event3011_source_not_kernel : ¬ InKernel (matrixOf 2 2 b_S0_9_135_d4.outgoing) event3011Source := source_not_kernel event3011_differential event3011_target_nonzero
theorem event3011_page_earlier : 4 < 11 := by decide
theorem event3012_source_not_kernel : ¬ InKernel (matrixOf 3 3 b_S0_13_138_d3.outgoing) event3012Source := source_not_kernel event3012_differential event3012_target_nonzero
theorem event3012_page_earlier : 3 < 11 := by decide
theorem event3079_source_not_kernel : ¬ InKernel (matrixOf 3 5 b_S0_12_138_d2.outgoing) event3079Source := source_not_kernel event3079_differential event3079_target_nonzero
theorem event3079_page_earlier : 2 < 12 := by decide
theorem event3079_adjacent : (matrixOf 5 3 b_S0_14_139_d2.outgoing |> fun B => LinearCertificates.IsComplex B (matrixOf 3 5 b_S0_12_138_d2.outgoing)) := by
  have h := b_S0_14_139_d2_complete.2.1
  change LinearCertificates.IsComplex (matrixOf 5 3 b_S0_14_139_d2.outgoing) (matrixOf 3 5 b_S0_14_139_d2.incoming) at h
  rw [b_S0_14_139_d2_incoming_link] at h
  exact h
theorem event3079_target_zero_next : (Quot.mk _ (⟨event3079Target,image_cycle event3079_adjacent event3079_differential⟩ : Cycle (matrixOf 5 3 b_S0_14_139_d2.outgoing)) : Homology (matrixOf 5 3 b_S0_14_139_d2.outgoing) (matrixOf 3 5 b_S0_12_138_d2.outgoing)) = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) := image_zero_in_homology event3079_adjacent event3079_differential
theorem event3081_source_not_kernel : ¬ InKernel (matrixOf 5 3 b_S0_14_139_d2.outgoing) event3081Source := source_not_kernel event3081_differential event3081_target_nonzero
theorem event3081_page_earlier : 2 < 12 := by decide
theorem event3081_adjacent : (matrixOf 3 5 b_S0_16_140_d2.outgoing |> fun B => LinearCertificates.IsComplex B (matrixOf 5 3 b_S0_14_139_d2.outgoing)) := by
  have h := b_S0_16_140_d2_complete.2.1
  change LinearCertificates.IsComplex (matrixOf 3 5 b_S0_16_140_d2.outgoing) (matrixOf 5 3 b_S0_16_140_d2.incoming) at h
  rw [b_S0_16_140_d2_incoming_link] at h
  exact h
theorem event3081_target_zero_next : (Quot.mk _ (⟨event3081Target,image_cycle event3081_adjacent event3081_differential⟩ : Cycle (matrixOf 3 5 b_S0_16_140_d2.outgoing)) : Homology (matrixOf 3 5 b_S0_16_140_d2.outgoing) (matrixOf 5 3 b_S0_14_139_d2.outgoing)) = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) := image_zero_in_homology event3081_adjacent event3081_differential
theorem event3150_source_not_kernel : ¬ InKernel (matrixOf 5 3 b_S0_13_139_d2.outgoing) event3150Source := source_not_kernel event3150_differential event3150_target_nonzero
theorem event3150_page_earlier : 2 < 13 := by decide
theorem event3150_adjacent : (matrixOf 4 5 b_S0_15_140_d2.outgoing |> fun B => LinearCertificates.IsComplex B (matrixOf 5 3 b_S0_13_139_d2.outgoing)) := by
  have h := b_S0_15_140_d2_complete.2.1
  change LinearCertificates.IsComplex (matrixOf 4 5 b_S0_15_140_d2.outgoing) (matrixOf 5 3 b_S0_15_140_d2.incoming) at h
  rw [b_S0_15_140_d2_incoming_link] at h
  exact h
theorem event3150_target_zero_next : (Quot.mk _ (⟨event3150Target,image_cycle event3150_adjacent event3150_differential⟩ : Cycle (matrixOf 4 5 b_S0_15_140_d2.outgoing)) : Homology (matrixOf 4 5 b_S0_15_140_d2.outgoing) (matrixOf 5 3 b_S0_13_139_d2.outgoing)) = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) := image_zero_in_homology event3150_adjacent event3150_differential
theorem event3153_source_not_kernel : ¬ InKernel (matrixOf 4 5 b_S0_15_140_d2.outgoing) event3153Source := source_not_kernel event3153_differential event3153_target_nonzero
theorem event3153_page_earlier : 2 < 13 := by decide
theorem event3153_adjacent : (matrixOf 4 4 b_S0_17_141_d2.outgoing |> fun B => LinearCertificates.IsComplex B (matrixOf 4 5 b_S0_15_140_d2.outgoing)) := by
  have h := b_S0_17_141_d2_complete.2.1
  change LinearCertificates.IsComplex (matrixOf 4 4 b_S0_17_141_d2.outgoing) (matrixOf 4 5 b_S0_17_141_d2.incoming) at h
  rw [b_S0_17_141_d2_incoming_link] at h
  exact h
theorem event3153_target_zero_next : (Quot.mk _ (⟨event3153Target,image_cycle event3153_adjacent event3153_differential⟩ : Cycle (matrixOf 4 4 b_S0_17_141_d2.outgoing)) : Homology (matrixOf 4 4 b_S0_17_141_d2.outgoing) (matrixOf 4 5 b_S0_15_140_d2.outgoing)) = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) := image_zero_in_homology event3153_adjacent event3153_differential
theorem event3154_source_not_kernel : ¬ InKernel (matrixOf 4 5 b_S0_15_140_d2.outgoing) event3154Source := source_not_kernel event3154_differential event3154_target_nonzero
theorem event3154_page_earlier : 2 < 13 := by decide
theorem event3154_adjacent : (matrixOf 4 4 b_S0_17_141_d2.outgoing |> fun B => LinearCertificates.IsComplex B (matrixOf 4 5 b_S0_15_140_d2.outgoing)) := by
  have h := b_S0_17_141_d2_complete.2.1
  change LinearCertificates.IsComplex (matrixOf 4 4 b_S0_17_141_d2.outgoing) (matrixOf 4 5 b_S0_17_141_d2.incoming) at h
  rw [b_S0_17_141_d2_incoming_link] at h
  exact h
theorem event3154_target_zero_next : (Quot.mk _ (⟨event3154Target,image_cycle event3154_adjacent event3154_differential⟩ : Cycle (matrixOf 4 4 b_S0_17_141_d2.outgoing)) : Homology (matrixOf 4 4 b_S0_17_141_d2.outgoing) (matrixOf 4 5 b_S0_15_140_d2.outgoing)) = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) := image_zero_in_homology event3154_adjacent event3154_differential
theorem event3253_source_not_kernel : ¬ InKernel (matrixOf 4 4 b_S0_14_140_d2.outgoing) event3253Source := source_not_kernel event3253_differential event3253_target_nonzero
theorem event3253_page_earlier : 2 < 14 := by decide
theorem event3253_adjacent : (matrixOf 2 4 b_S0_16_141_d2.outgoing |> fun B => LinearCertificates.IsComplex B (matrixOf 4 4 b_S0_14_140_d2.outgoing)) := by
  have h := b_S0_16_141_d2_complete.2.1
  change LinearCertificates.IsComplex (matrixOf 2 4 b_S0_16_141_d2.outgoing) (matrixOf 4 4 b_S0_16_141_d2.incoming) at h
  rw [b_S0_16_141_d2_incoming_link] at h
  exact h
theorem event3253_target_zero_next : (Quot.mk _ (⟨event3253Target,image_cycle event3253_adjacent event3253_differential⟩ : Cycle (matrixOf 2 4 b_S0_16_141_d2.outgoing)) : Homology (matrixOf 2 4 b_S0_16_141_d2.outgoing) (matrixOf 4 4 b_S0_14_140_d2.outgoing)) = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) := image_zero_in_homology event3253_adjacent event3253_differential
theorem event3255_source_not_kernel : ¬ InKernel (matrixOf 2 4 b_S0_16_141_d2.outgoing) event3255Source := source_not_kernel event3255_differential event3255_target_nonzero
theorem event3255_page_earlier : 2 < 14 := by decide
theorem event3255_adjacent : (matrixOf 1 2 b_S0_18_142_d2.outgoing |> fun B => LinearCertificates.IsComplex B (matrixOf 2 4 b_S0_16_141_d2.outgoing)) := by
  have h := b_S0_18_142_d2_complete.2.1
  change LinearCertificates.IsComplex (matrixOf 1 2 b_S0_18_142_d2.outgoing) (matrixOf 2 4 b_S0_18_142_d2.incoming) at h
  rw [b_S0_18_142_d2_incoming_link] at h
  exact h
theorem event3255_target_zero_next : (Quot.mk _ (⟨event3255Target,image_cycle event3255_adjacent event3255_differential⟩ : Cycle (matrixOf 1 2 b_S0_18_142_d2.outgoing)) : Homology (matrixOf 1 2 b_S0_18_142_d2.outgoing) (matrixOf 2 4 b_S0_16_141_d2.outgoing)) = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) := image_zero_in_homology event3255_adjacent event3255_differential
theorem event3256_source_not_kernel : ¬ InKernel (matrixOf 2 4 b_S0_16_141_d2.outgoing) event3256Source := source_not_kernel event3256_differential event3256_target_nonzero
theorem event3256_page_earlier : 2 < 14 := by decide
theorem event3256_adjacent : (matrixOf 1 2 b_S0_18_142_d2.outgoing |> fun B => LinearCertificates.IsComplex B (matrixOf 2 4 b_S0_16_141_d2.outgoing)) := by
  have h := b_S0_18_142_d2_complete.2.1
  change LinearCertificates.IsComplex (matrixOf 1 2 b_S0_18_142_d2.outgoing) (matrixOf 2 4 b_S0_18_142_d2.incoming) at h
  rw [b_S0_18_142_d2_incoming_link] at h
  exact h
theorem event3256_target_zero_next : (Quot.mk _ (⟨event3256Target,image_cycle event3256_adjacent event3256_differential⟩ : Cycle (matrixOf 1 2 b_S0_18_142_d2.outgoing)) : Homology (matrixOf 1 2 b_S0_18_142_d2.outgoing) (matrixOf 2 4 b_S0_16_141_d2.outgoing)) = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) := image_zero_in_homology event3256_adjacent event3256_differential
theorem event3319_source_not_kernel : ¬ InKernel (matrixOf 2 2 b_S0_15_141_d2.outgoing) event3319Source := source_not_kernel event3319_differential event3319_target_nonzero
theorem event3319_page_earlier : 2 < 15 := by decide
theorem event3319_adjacent : (matrixOf 2 2 b_S0_17_142_d2.outgoing |> fun B => LinearCertificates.IsComplex B (matrixOf 2 2 b_S0_15_141_d2.outgoing)) := by
  have h := b_S0_17_142_d2_complete.2.1
  change LinearCertificates.IsComplex (matrixOf 2 2 b_S0_17_142_d2.outgoing) (matrixOf 2 2 b_S0_17_142_d2.incoming) at h
  rw [b_S0_17_142_d2_incoming_link] at h
  exact h
theorem event3319_target_zero_next : (Quot.mk _ (⟨event3319Target,image_cycle event3319_adjacent event3319_differential⟩ : Cycle (matrixOf 2 2 b_S0_17_142_d2.outgoing)) : Homology (matrixOf 2 2 b_S0_17_142_d2.outgoing) (matrixOf 2 2 b_S0_15_141_d2.outgoing)) = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) := image_zero_in_homology event3319_adjacent event3319_differential
theorem event3320_source_not_kernel : ¬ InKernel (matrixOf 2 2 b_S0_17_142_d2.outgoing) event3320Source := source_not_kernel event3320_differential event3320_target_nonzero
theorem event3320_page_earlier : 2 < 15 := by decide
theorem event3320_adjacent : (matrixOf 0 2 b_S0_19_143_d2.outgoing |> fun B => LinearCertificates.IsComplex B (matrixOf 2 2 b_S0_17_142_d2.outgoing)) := by
  have h := b_S0_19_143_d2_complete.2.1
  change LinearCertificates.IsComplex (matrixOf 0 2 b_S0_19_143_d2.outgoing) (matrixOf 2 2 b_S0_19_143_d2.incoming) at h
  rw [b_S0_19_143_d2_incoming_link] at h
  exact h
theorem event3320_target_zero_next : (Quot.mk _ (⟨event3320Target,image_cycle event3320_adjacent event3320_differential⟩ : Cycle (matrixOf 0 2 b_S0_19_143_d2.outgoing)) : Homology (matrixOf 0 2 b_S0_19_143_d2.outgoing) (matrixOf 2 2 b_S0_17_142_d2.outgoing)) = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) := image_zero_in_homology event3320_adjacent event3320_differential
theorem event3392_source_not_kernel : ¬ InKernel (matrixOf 2 2 b_S0_18_143_d2.outgoing) event3392Source := source_not_kernel event3392_differential event3392_target_nonzero
theorem event3392_page_earlier : 2 < 16 := by decide
theorem event3392_adjacent : (matrixOf 0 2 b_S0_20_144_d2.outgoing |> fun B => LinearCertificates.IsComplex B (matrixOf 2 2 b_S0_18_143_d2.outgoing)) := by
  have h := b_S0_20_144_d2_complete.2.1
  change LinearCertificates.IsComplex (matrixOf 0 2 b_S0_20_144_d2.outgoing) (matrixOf 2 2 b_S0_20_144_d2.incoming) at h
  rw [b_S0_20_144_d2_incoming_link] at h
  exact h
theorem event3392_target_zero_next : (Quot.mk _ (⟨event3392Target,image_cycle event3392_adjacent event3392_differential⟩ : Cycle (matrixOf 0 2 b_S0_20_144_d2.outgoing)) : Homology (matrixOf 0 2 b_S0_20_144_d2.outgoing) (matrixOf 2 2 b_S0_18_143_d2.outgoing)) = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) := image_zero_in_homology event3392_adjacent event3392_differential
theorem event3486_source_not_kernel : ¬ InKernel (matrixOf 1 1 b_S0_19_144_d3.outgoing) event3486Source := source_not_kernel event3486_differential event3486_target_nonzero
theorem event3486_page_earlier : 3 < 17 := by decide
theorem event3486_adjacent : (matrixOf 0 1 b_S0_22_146_d3.outgoing |> fun B => LinearCertificates.IsComplex B (matrixOf 1 1 b_S0_19_144_d3.outgoing)) := by
  have h := b_S0_22_146_d3_complete.2.1
  change LinearCertificates.IsComplex (matrixOf 0 1 b_S0_22_146_d3.outgoing) (matrixOf 1 1 b_S0_22_146_d3.incoming) at h
  rw [b_S0_22_146_d3_incoming_link] at h
  exact h
theorem event3486_target_zero_next : (Quot.mk _ (⟨event3486Target,image_cycle event3486_adjacent event3486_differential⟩ : Cycle (matrixOf 0 1 b_S0_22_146_d3.outgoing)) : Homology (matrixOf 0 1 b_S0_22_146_d3.outgoing) (matrixOf 1 1 b_S0_19_144_d3.outgoing)) = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) := image_zero_in_homology event3486_adjacent event3486_differential
theorem event3487_source_not_kernel : ¬ InKernel (matrixOf 2 3 b_S0_19_144_d2.outgoing) event3487Source := source_not_kernel event3487_differential event3487_target_nonzero
theorem event3487_page_earlier : 2 < 17 := by decide
theorem event3487_adjacent : (matrixOf 1 2 b_S0_21_145_d2.outgoing |> fun B => LinearCertificates.IsComplex B (matrixOf 2 3 b_S0_19_144_d2.outgoing)) := by
  have h := b_S0_21_145_d2_complete.2.1
  change LinearCertificates.IsComplex (matrixOf 1 2 b_S0_21_145_d2.outgoing) (matrixOf 2 3 b_S0_21_145_d2.incoming) at h
  rw [b_S0_21_145_d2_incoming_link] at h
  exact h
theorem event3487_target_zero_next : (Quot.mk _ (⟨event3487Target,image_cycle event3487_adjacent event3487_differential⟩ : Cycle (matrixOf 1 2 b_S0_21_145_d2.outgoing)) : Homology (matrixOf 1 2 b_S0_21_145_d2.outgoing) (matrixOf 2 3 b_S0_19_144_d2.outgoing)) = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) := image_zero_in_homology event3487_adjacent event3487_differential
theorem event3488_source_not_kernel : ¬ InKernel (matrixOf 2 3 b_S0_19_144_d2.outgoing) event3488Source := source_not_kernel event3488_differential event3488_target_nonzero
theorem event3488_page_earlier : 2 < 17 := by decide
theorem event3488_adjacent : (matrixOf 1 2 b_S0_21_145_d2.outgoing |> fun B => LinearCertificates.IsComplex B (matrixOf 2 3 b_S0_19_144_d2.outgoing)) := by
  have h := b_S0_21_145_d2_complete.2.1
  change LinearCertificates.IsComplex (matrixOf 1 2 b_S0_21_145_d2.outgoing) (matrixOf 2 3 b_S0_21_145_d2.incoming) at h
  rw [b_S0_21_145_d2_incoming_link] at h
  exact h
theorem event3488_target_zero_next : (Quot.mk _ (⟨event3488Target,image_cycle event3488_adjacent event3488_differential⟩ : Cycle (matrixOf 1 2 b_S0_21_145_d2.outgoing)) : Homology (matrixOf 1 2 b_S0_21_145_d2.outgoing) (matrixOf 2 3 b_S0_19_144_d2.outgoing)) = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) := image_zero_in_homology event3488_adjacent event3488_differential
theorem event3556_source_not_kernel : ¬ InKernel (matrixOf 3 4 b_S0_18_144_d2.outgoing) event3556Source := source_not_kernel event3556_differential event3556_target_nonzero
theorem event3556_page_earlier : 2 < 18 := by decide
theorem event3556_adjacent : (matrixOf 4 3 b_S0_20_145_d2.outgoing |> fun B => LinearCertificates.IsComplex B (matrixOf 3 4 b_S0_18_144_d2.outgoing)) := by
  have h := b_S0_20_145_d2_complete.2.1
  change LinearCertificates.IsComplex (matrixOf 4 3 b_S0_20_145_d2.outgoing) (matrixOf 3 4 b_S0_20_145_d2.incoming) at h
  rw [b_S0_20_145_d2_incoming_link] at h
  exact h
theorem event3556_target_zero_next : (Quot.mk _ (⟨event3556Target,image_cycle event3556_adjacent event3556_differential⟩ : Cycle (matrixOf 4 3 b_S0_20_145_d2.outgoing)) : Homology (matrixOf 4 3 b_S0_20_145_d2.outgoing) (matrixOf 3 4 b_S0_18_144_d2.outgoing)) = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) := image_zero_in_homology event3556_adjacent event3556_differential
theorem event3557_source_not_kernel : ¬ InKernel (matrixOf 2 1 b_S0_20_145_d3.outgoing) event3557Source := source_not_kernel event3557_differential event3557_target_nonzero
theorem event3557_page_earlier : 3 < 18 := by decide
theorem event3558_source_not_kernel : ¬ InKernel (matrixOf 4 3 b_S0_20_145_d2.outgoing) event3558Source := source_not_kernel event3558_differential event3558_target_nonzero
theorem event3558_page_earlier : 2 < 18 := by decide
theorem event3558_adjacent : (matrixOf 3 4 b_S0_22_146_d2.outgoing |> fun B => LinearCertificates.IsComplex B (matrixOf 4 3 b_S0_20_145_d2.outgoing)) := by
  have h := b_S0_22_146_d2_complete.2.1
  change LinearCertificates.IsComplex (matrixOf 3 4 b_S0_22_146_d2.outgoing) (matrixOf 4 3 b_S0_22_146_d2.incoming) at h
  rw [b_S0_22_146_d2_incoming_link] at h
  exact h
theorem event3558_target_zero_next : (Quot.mk _ (⟨event3558Target,image_cycle event3558_adjacent event3558_differential⟩ : Cycle (matrixOf 3 4 b_S0_22_146_d2.outgoing)) : Homology (matrixOf 3 4 b_S0_22_146_d2.outgoing) (matrixOf 4 3 b_S0_20_145_d2.outgoing)) = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) := image_zero_in_homology event3558_adjacent event3558_differential
theorem event3629_source_not_kernel : ¬ InKernel (matrixOf 1 2 b_S0_17_143_d4.outgoing) event3629Source := source_not_kernel event3629_differential event3629_target_nonzero
theorem event3629_page_earlier : 4 < 19 := by decide
theorem event3630_source_not_kernel : ¬ InKernel (matrixOf 4 3 b_S0_21_146_d2.outgoing) event3630Source := source_not_kernel event3630_differential event3630_target_nonzero
theorem event3630_page_earlier : 2 < 19 := by decide
theorem event3630_adjacent : (matrixOf 0 4 b_S0_23_147_d2.outgoing |> fun B => LinearCertificates.IsComplex B (matrixOf 4 3 b_S0_21_146_d2.outgoing)) := by
  have h := b_S0_23_147_d2_complete.2.1
  change LinearCertificates.IsComplex (matrixOf 0 4 b_S0_23_147_d2.outgoing) (matrixOf 4 3 b_S0_23_147_d2.incoming) at h
  rw [b_S0_23_147_d2_incoming_link] at h
  exact h
theorem event3630_target_zero_next : (Quot.mk _ (⟨event3630Target,image_cycle event3630_adjacent event3630_differential⟩ : Cycle (matrixOf 0 4 b_S0_23_147_d2.outgoing)) : Homology (matrixOf 0 4 b_S0_23_147_d2.outgoing) (matrixOf 4 3 b_S0_21_146_d2.outgoing)) = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) := image_zero_in_homology event3630_adjacent event3630_differential
theorem event3631_source_not_kernel : ¬ InKernel (matrixOf 4 3 b_S0_21_146_d2.outgoing) event3631Source := source_not_kernel event3631_differential event3631_target_nonzero
theorem event3631_page_earlier : 2 < 19 := by decide
theorem event3631_adjacent : (matrixOf 0 4 b_S0_23_147_d2.outgoing |> fun B => LinearCertificates.IsComplex B (matrixOf 4 3 b_S0_21_146_d2.outgoing)) := by
  have h := b_S0_23_147_d2_complete.2.1
  change LinearCertificates.IsComplex (matrixOf 0 4 b_S0_23_147_d2.outgoing) (matrixOf 4 3 b_S0_23_147_d2.incoming) at h
  rw [b_S0_23_147_d2_incoming_link] at h
  exact h
theorem event3631_target_zero_next : (Quot.mk _ (⟨event3631Target,image_cycle event3631_adjacent event3631_differential⟩ : Cycle (matrixOf 0 4 b_S0_23_147_d2.outgoing)) : Homology (matrixOf 0 4 b_S0_23_147_d2.outgoing) (matrixOf 4 3 b_S0_21_146_d2.outgoing)) = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) := image_zero_in_homology event3631_adjacent event3631_differential
theorem event3746_source_not_kernel : ¬ InKernel (matrixOf 2 4 b_S0_22_147_d2.outgoing) event3746Source := source_not_kernel event3746_differential event3746_target_nonzero
theorem event3746_page_earlier : 2 < 20 := by decide
theorem event3746_adjacent : (matrixOf 2 2 b_S0_24_148_d2.outgoing |> fun B => LinearCertificates.IsComplex B (matrixOf 2 4 b_S0_22_147_d2.outgoing)) := by
  have h := b_S0_24_148_d2_complete.2.1
  change LinearCertificates.IsComplex (matrixOf 2 2 b_S0_24_148_d2.outgoing) (matrixOf 2 4 b_S0_24_148_d2.incoming) at h
  rw [b_S0_24_148_d2_incoming_link] at h
  exact h
theorem event3746_target_zero_next : (Quot.mk _ (⟨event3746Target,image_cycle event3746_adjacent event3746_differential⟩ : Cycle (matrixOf 2 2 b_S0_24_148_d2.outgoing)) : Homology (matrixOf 2 2 b_S0_24_148_d2.outgoing) (matrixOf 2 4 b_S0_22_147_d2.outgoing)) = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) := image_zero_in_homology event3746_adjacent event3746_differential
theorem event3747_source_not_kernel : ¬ InKernel (matrixOf 2 4 b_S0_22_147_d2.outgoing) event3747Source := source_not_kernel event3747_differential event3747_target_nonzero
theorem event3747_page_earlier : 2 < 20 := by decide
theorem event3747_adjacent : (matrixOf 2 2 b_S0_24_148_d2.outgoing |> fun B => LinearCertificates.IsComplex B (matrixOf 2 4 b_S0_22_147_d2.outgoing)) := by
  have h := b_S0_24_148_d2_complete.2.1
  change LinearCertificates.IsComplex (matrixOf 2 2 b_S0_24_148_d2.outgoing) (matrixOf 2 4 b_S0_24_148_d2.incoming) at h
  rw [b_S0_24_148_d2_incoming_link] at h
  exact h
theorem event3747_target_zero_next : (Quot.mk _ (⟨event3747Target,image_cycle event3747_adjacent event3747_differential⟩ : Cycle (matrixOf 2 2 b_S0_24_148_d2.outgoing)) : Homology (matrixOf 2 2 b_S0_24_148_d2.outgoing) (matrixOf 2 4 b_S0_22_147_d2.outgoing)) = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) := image_zero_in_homology event3747_adjacent event3747_differential
theorem event3812_source_not_kernel : ¬ InKernel (matrixOf 2 1 b_S0_23_148_d3.outgoing) event3812Source := source_not_kernel event3812_differential event3812_target_nonzero
theorem event3812_page_earlier : 3 < 21 := by decide
theorem event3813_source_not_kernel : ¬ InKernel (matrixOf 3 2 b_S0_23_148_d2.outgoing) event3813Source := source_not_kernel event3813_differential event3813_target_nonzero
theorem event3813_page_earlier : 2 < 21 := by decide
theorem event3813_adjacent : (matrixOf 4 3 b_S0_25_149_d2.outgoing |> fun B => LinearCertificates.IsComplex B (matrixOf 3 2 b_S0_23_148_d2.outgoing)) := by
  have h := b_S0_25_149_d2_complete.2.1
  change LinearCertificates.IsComplex (matrixOf 4 3 b_S0_25_149_d2.outgoing) (matrixOf 3 2 b_S0_25_149_d2.incoming) at h
  rw [b_S0_25_149_d2_incoming_link] at h
  exact h
theorem event3813_target_zero_next : (Quot.mk _ (⟨event3813Target,image_cycle event3813_adjacent event3813_differential⟩ : Cycle (matrixOf 4 3 b_S0_25_149_d2.outgoing)) : Homology (matrixOf 4 3 b_S0_25_149_d2.outgoing) (matrixOf 3 2 b_S0_23_148_d2.outgoing)) = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) := image_zero_in_homology event3813_adjacent event3813_differential
theorem event3896_source_not_kernel : ¬ InKernel (matrixOf 4 1 b_S0_24_149_d2.outgoing) event3896Source := source_not_kernel event3896_differential event3896_target_nonzero
theorem event3896_page_earlier : 2 < 22 := by decide
theorem event3896_adjacent : (matrixOf 2 4 b_S0_26_150_d2.outgoing |> fun B => LinearCertificates.IsComplex B (matrixOf 4 1 b_S0_24_149_d2.outgoing)) := by
  have h := b_S0_26_150_d2_complete.2.1
  change LinearCertificates.IsComplex (matrixOf 2 4 b_S0_26_150_d2.outgoing) (matrixOf 4 1 b_S0_26_150_d2.incoming) at h
  rw [b_S0_26_150_d2_incoming_link] at h
  exact h
theorem event3896_target_zero_next : (Quot.mk _ (⟨event3896Target,image_cycle event3896_adjacent event3896_differential⟩ : Cycle (matrixOf 2 4 b_S0_26_150_d2.outgoing)) : Homology (matrixOf 2 4 b_S0_26_150_d2.outgoing) (matrixOf 4 1 b_S0_24_149_d2.outgoing)) = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) := image_zero_in_homology event3896_adjacent event3896_differential
theorem event3995_source_not_kernel : ¬ InKernel (matrixOf 2 4 b_S0_25_150_d2.outgoing) event3995Source := source_not_kernel event3995_differential event3995_target_nonzero
theorem event3995_page_earlier : 2 < 23 := by decide
theorem event4092_source_not_kernel : ¬ InKernel (matrixOf 2 1 b_S0_26_151_d2.outgoing) event4092Source := source_not_kernel event4092_differential event4092_target_nonzero
theorem event4092_page_earlier : 2 < 24 := by decide
theorem event4092_adjacent : (matrixOf 3 2 b_S0_28_152_d2.outgoing |> fun B => LinearCertificates.IsComplex B (matrixOf 2 1 b_S0_26_151_d2.outgoing)) := by
  have h := b_S0_28_152_d2_complete.2.1
  change LinearCertificates.IsComplex (matrixOf 3 2 b_S0_28_152_d2.outgoing) (matrixOf 2 1 b_S0_28_152_d2.incoming) at h
  rw [b_S0_28_152_d2_incoming_link] at h
  exact h
theorem event4092_target_zero_next : (Quot.mk _ (⟨event4092Target,image_cycle event4092_adjacent event4092_differential⟩ : Cycle (matrixOf 3 2 b_S0_28_152_d2.outgoing)) : Homology (matrixOf 3 2 b_S0_28_152_d2.outgoing) (matrixOf 2 1 b_S0_26_151_d2.outgoing)) = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) := image_zero_in_homology event4092_adjacent event4092_differential
theorem event4162_source_not_kernel : ¬ InKernel (matrixOf 3 2 b_S0_27_152_d2.outgoing) event4162Source := source_not_kernel event4162_differential event4162_target_nonzero
theorem event4162_page_earlier : 2 < 25 := by decide
theorem event4163_source_not_kernel : ¬ InKernel (matrixOf 3 2 b_S0_27_152_d2.outgoing) event4163Source := source_not_kernel event4163_differential event4163_target_nonzero
theorem event4163_page_earlier : 2 < 25 := by decide
theorem event4263_source_not_kernel : ¬ InKernel (matrixOf 4 4 b_S0_26_152_d2.outgoing) event4263Source := source_not_kernel event4263_differential event4263_target_nonzero
theorem event4263_page_earlier : 2 < 26 := by decide
theorem event4263_adjacent : (matrixOf 2 4 b_S0_28_153_d2.outgoing |> fun B => LinearCertificates.IsComplex B (matrixOf 4 4 b_S0_26_152_d2.outgoing)) := by
  have h := b_S0_28_153_d2_complete.2.1
  change LinearCertificates.IsComplex (matrixOf 2 4 b_S0_28_153_d2.outgoing) (matrixOf 4 4 b_S0_28_153_d2.incoming) at h
  rw [b_S0_28_153_d2_incoming_link] at h
  exact h
theorem event4263_target_zero_next : (Quot.mk _ (⟨event4263Target,image_cycle event4263_adjacent event4263_differential⟩ : Cycle (matrixOf 2 4 b_S0_28_153_d2.outgoing)) : Homology (matrixOf 2 4 b_S0_28_153_d2.outgoing) (matrixOf 4 4 b_S0_26_152_d2.outgoing)) = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) := image_zero_in_homology event4263_adjacent event4263_differential
theorem event4264_source_not_kernel : ¬ InKernel (matrixOf 4 4 b_S0_26_152_d2.outgoing) event4264Source := source_not_kernel event4264_differential event4264_target_nonzero
theorem event4264_page_earlier : 2 < 26 := by decide
theorem event4264_adjacent : (matrixOf 2 4 b_S0_28_153_d2.outgoing |> fun B => LinearCertificates.IsComplex B (matrixOf 4 4 b_S0_26_152_d2.outgoing)) := by
  have h := b_S0_28_153_d2_complete.2.1
  change LinearCertificates.IsComplex (matrixOf 2 4 b_S0_28_153_d2.outgoing) (matrixOf 4 4 b_S0_28_153_d2.incoming) at h
  rw [b_S0_28_153_d2_incoming_link] at h
  exact h
theorem event4264_target_zero_next : (Quot.mk _ (⟨event4264Target,image_cycle event4264_adjacent event4264_differential⟩ : Cycle (matrixOf 2 4 b_S0_28_153_d2.outgoing)) : Homology (matrixOf 2 4 b_S0_28_153_d2.outgoing) (matrixOf 4 4 b_S0_26_152_d2.outgoing)) = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) := image_zero_in_homology event4264_adjacent event4264_differential
theorem event4265_source_not_kernel : ¬ InKernel (matrixOf 2 4 b_S0_28_153_d2.outgoing) event4265Source := source_not_kernel event4265_differential event4265_target_nonzero
theorem event4265_page_earlier : 2 < 26 := by decide
theorem event4266_source_not_kernel : ¬ InKernel (matrixOf 2 4 b_S0_28_153_d2.outgoing) event4266Source := source_not_kernel event4266_differential event4266_target_nonzero
theorem event4266_page_earlier : 2 < 26 := by decide
theorem event4337_source_not_kernel : ¬ InKernel (matrixOf 2 5 b_S0_27_153_d2.outgoing) event4337Source := source_not_kernel event4337_differential event4337_target_nonzero
theorem event4337_page_earlier : 2 < 27 := by decide
theorem event4337_adjacent : (matrixOf 1 2 b_S0_29_154_d2.outgoing |> fun B => LinearCertificates.IsComplex B (matrixOf 2 5 b_S0_27_153_d2.outgoing)) := by
  have h := b_S0_29_154_d2_complete.2.1
  change LinearCertificates.IsComplex (matrixOf 1 2 b_S0_29_154_d2.outgoing) (matrixOf 2 5 b_S0_29_154_d2.incoming) at h
  rw [b_S0_29_154_d2_incoming_link] at h
  exact h
theorem event4337_target_zero_next : (Quot.mk _ (⟨event4337Target,image_cycle event4337_adjacent event4337_differential⟩ : Cycle (matrixOf 1 2 b_S0_29_154_d2.outgoing)) : Homology (matrixOf 1 2 b_S0_29_154_d2.outgoing) (matrixOf 2 5 b_S0_27_153_d2.outgoing)) = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) := image_zero_in_homology event4337_adjacent event4337_differential
theorem event4338_source_not_kernel : ¬ InKernel (matrixOf 1 1 b_S0_29_154_d3.outgoing) event4338Source := source_not_kernel event4338_differential event4338_target_nonzero
theorem event4338_page_earlier : 3 < 27 := by decide
theorem event4411_source_not_kernel : ¬ InKernel (matrixOf 2 3 b_S0_28_154_d2.outgoing) event4411Source := source_not_kernel event4411_differential event4411_target_nonzero
theorem event4411_page_earlier : 2 < 28 := by decide
theorem event4411_adjacent : (matrixOf 2 2 b_S0_30_155_d2.outgoing |> fun B => LinearCertificates.IsComplex B (matrixOf 2 3 b_S0_28_154_d2.outgoing)) := by
  have h := b_S0_30_155_d2_complete.2.1
  change LinearCertificates.IsComplex (matrixOf 2 2 b_S0_30_155_d2.outgoing) (matrixOf 2 3 b_S0_30_155_d2.incoming) at h
  rw [b_S0_30_155_d2_incoming_link] at h
  exact h
theorem event4411_target_zero_next : (Quot.mk _ (⟨event4411Target,image_cycle event4411_adjacent event4411_differential⟩ : Cycle (matrixOf 2 2 b_S0_30_155_d2.outgoing)) : Homology (matrixOf 2 2 b_S0_30_155_d2.outgoing) (matrixOf 2 3 b_S0_28_154_d2.outgoing)) = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) := image_zero_in_homology event4411_adjacent event4411_differential
theorem event4412_source_not_kernel : ¬ InKernel (matrixOf 2 2 b_S0_30_155_d2.outgoing) event4412Source := source_not_kernel event4412_differential event4412_target_nonzero
theorem event4412_page_earlier : 2 < 28 := by decide
theorem event4412_adjacent : (matrixOf 1 2 b_S0_32_156_d2.outgoing |> fun B => LinearCertificates.IsComplex B (matrixOf 2 2 b_S0_30_155_d2.outgoing)) := by
  have h := b_S0_32_156_d2_complete.2.1
  change LinearCertificates.IsComplex (matrixOf 1 2 b_S0_32_156_d2.outgoing) (matrixOf 2 2 b_S0_32_156_d2.incoming) at h
  rw [b_S0_32_156_d2_incoming_link] at h
  exact h
theorem event4412_target_zero_next : (Quot.mk _ (⟨event4412Target,image_cycle event4412_adjacent event4412_differential⟩ : Cycle (matrixOf 1 2 b_S0_32_156_d2.outgoing)) : Homology (matrixOf 1 2 b_S0_32_156_d2.outgoing) (matrixOf 2 2 b_S0_30_155_d2.outgoing)) = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) := image_zero_in_homology event4412_adjacent event4412_differential
theorem event4501_source_not_kernel : ¬ InKernel (matrixOf 3 3 b_S0_29_155_d2.outgoing) event4501Source := source_not_kernel event4501_differential event4501_target_nonzero
theorem event4501_page_earlier : 2 < 29 := by decide
theorem event4501_adjacent : (matrixOf 0 3 b_S0_31_156_d2.outgoing |> fun B => LinearCertificates.IsComplex B (matrixOf 3 3 b_S0_29_155_d2.outgoing)) := by
  have h := b_S0_31_156_d2_complete.2.1
  change LinearCertificates.IsComplex (matrixOf 0 3 b_S0_31_156_d2.outgoing) (matrixOf 3 3 b_S0_31_156_d2.incoming) at h
  rw [b_S0_31_156_d2_incoming_link] at h
  exact h
theorem event4501_target_zero_next : (Quot.mk _ (⟨event4501Target,image_cycle event4501_adjacent event4501_differential⟩ : Cycle (matrixOf 0 3 b_S0_31_156_d2.outgoing)) : Homology (matrixOf 0 3 b_S0_31_156_d2.outgoing) (matrixOf 3 3 b_S0_29_155_d2.outgoing)) = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) := image_zero_in_homology event4501_adjacent event4501_differential
theorem event4502_source_not_kernel : ¬ InKernel (matrixOf 3 3 b_S0_29_155_d2.outgoing) event4502Source := source_not_kernel event4502_differential event4502_target_nonzero
theorem event4502_page_earlier : 2 < 29 := by decide
theorem event4502_adjacent : (matrixOf 0 3 b_S0_31_156_d2.outgoing |> fun B => LinearCertificates.IsComplex B (matrixOf 3 3 b_S0_29_155_d2.outgoing)) := by
  have h := b_S0_31_156_d2_complete.2.1
  change LinearCertificates.IsComplex (matrixOf 0 3 b_S0_31_156_d2.outgoing) (matrixOf 3 3 b_S0_31_156_d2.incoming) at h
  rw [b_S0_31_156_d2_incoming_link] at h
  exact h
theorem event4502_target_zero_next : (Quot.mk _ (⟨event4502Target,image_cycle event4502_adjacent event4502_differential⟩ : Cycle (matrixOf 0 3 b_S0_31_156_d2.outgoing)) : Homology (matrixOf 0 3 b_S0_31_156_d2.outgoing) (matrixOf 3 3 b_S0_29_155_d2.outgoing)) = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) := image_zero_in_homology event4502_adjacent event4502_differential
theorem event4503_source_not_kernel : ¬ InKernel (matrixOf 1 1 b_S0_31_156_d4.outgoing) event4503Source := source_not_kernel event4503_differential event4503_target_nonzero
theorem event4503_page_earlier : 4 < 29 := by decide
theorem event4671_source_not_kernel : ¬ InKernel (matrixOf 2 1 b_S0_33_158_d2.outgoing) event4671Source := source_not_kernel event4671_differential event4671_target_nonzero
theorem event4671_page_earlier : 2 < 31 := by decide
theorem event4671_adjacent : (matrixOf 1 2 b_S0_35_159_d2.outgoing |> fun B => LinearCertificates.IsComplex B (matrixOf 2 1 b_S0_33_158_d2.outgoing)) := by
  have h := b_S0_35_159_d2_complete.2.1
  change LinearCertificates.IsComplex (matrixOf 1 2 b_S0_35_159_d2.outgoing) (matrixOf 2 1 b_S0_35_159_d2.incoming) at h
  rw [b_S0_35_159_d2_incoming_link] at h
  exact h
theorem event4671_target_zero_next : (Quot.mk _ (⟨event4671Target,image_cycle event4671_adjacent event4671_differential⟩ : Cycle (matrixOf 1 2 b_S0_35_159_d2.outgoing)) : Homology (matrixOf 1 2 b_S0_35_159_d2.outgoing) (matrixOf 2 1 b_S0_33_158_d2.outgoing)) = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) := image_zero_in_homology event4671_adjacent event4671_differential
theorem event4763_source_not_kernel : ¬ InKernel (matrixOf 2 2 b_S0_32_158_d2.outgoing) event4763Source := source_not_kernel event4763_differential event4763_target_nonzero
theorem event4763_page_earlier : 2 < 32 := by decide
theorem event4763_adjacent : (matrixOf 0 2 b_S0_34_159_d2.outgoing |> fun B => LinearCertificates.IsComplex B (matrixOf 2 2 b_S0_32_158_d2.outgoing)) := by
  have h := b_S0_34_159_d2_complete.2.1
  change LinearCertificates.IsComplex (matrixOf 0 2 b_S0_34_159_d2.outgoing) (matrixOf 2 2 b_S0_34_159_d2.incoming) at h
  rw [b_S0_34_159_d2_incoming_link] at h
  exact h
theorem event4763_target_zero_next : (Quot.mk _ (⟨event4763Target,image_cycle event4763_adjacent event4763_differential⟩ : Cycle (matrixOf 0 2 b_S0_34_159_d2.outgoing)) : Homology (matrixOf 0 2 b_S0_34_159_d2.outgoing) (matrixOf 2 2 b_S0_32_158_d2.outgoing)) = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) := image_zero_in_homology event4763_adjacent event4763_differential
theorem event4764_source_not_kernel : ¬ InKernel (matrixOf 1 2 b_S0_31_157_d3.outgoing) event4764Source := source_not_kernel event4764_differential event4764_target_nonzero
theorem event4764_page_earlier : 3 < 32 := by decide
theorem event4929_source_not_kernel : ¬ InKernel (matrixOf 1 2 b_S0_33_159_d3.outgoing) event4929Source := source_not_kernel event4929_differential event4929_target_nonzero
theorem event4929_page_earlier : 3 < 34 := by decide
theorem event4930_source_not_kernel : ¬ InKernel (matrixOf 2 2 b_S0_36_161_d2.outgoing) event4930Source := source_not_kernel event4930_differential event4930_target_nonzero
theorem event4930_page_earlier : 2 < 34 := by decide
theorem event5027_source_not_kernel : ¬ InKernel (matrixOf 2 2 b_S0_35_161_d2.outgoing) event5027Source := source_not_kernel event5027_differential event5027_target_nonzero
theorem event5027_page_earlier : 2 < 35 := by decide
theorem event5027_adjacent : (matrixOf 1 2 b_S0_37_162_d2.outgoing |> fun B => LinearCertificates.IsComplex B (matrixOf 2 2 b_S0_35_161_d2.outgoing)) := by
  have h := b_S0_37_162_d2_complete.2.1
  change LinearCertificates.IsComplex (matrixOf 1 2 b_S0_37_162_d2.outgoing) (matrixOf 2 2 b_S0_37_162_d2.incoming) at h
  rw [b_S0_37_162_d2_incoming_link] at h
  exact h
theorem event5027_target_zero_next : (Quot.mk _ (⟨event5027Target,image_cycle event5027_adjacent event5027_differential⟩ : Cycle (matrixOf 1 2 b_S0_37_162_d2.outgoing)) : Homology (matrixOf 1 2 b_S0_37_162_d2.outgoing) (matrixOf 2 2 b_S0_35_161_d2.outgoing)) = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) := image_zero_in_homology event5027_adjacent event5027_differential
theorem event5028_source_not_kernel : ¬ InKernel (matrixOf 1 2 b_S0_37_162_d2.outgoing) event5028Source := source_not_kernel event5028_differential event5028_target_nonzero
theorem event5028_page_earlier : 2 < 35 := by decide
theorem event5143_source_not_kernel : ¬ InKernel (matrixOf 2 1 b_S0_38_163_d3.outgoing) event5143Source := source_not_kernel event5143_differential event5143_target_nonzero
theorem event5143_page_earlier : 3 < 36 := by decide
theorem event5217_source_not_kernel : ¬ InKernel (matrixOf 1 1 b_S0_39_164_d4.outgoing) event5217Source := source_not_kernel event5217_differential event5217_target_nonzero
theorem event5217_page_earlier : 4 < 37 := by decide
theorem event5326_source_not_kernel : ¬ InKernel (matrixOf 2 1 b_S0_38_164_d2.outgoing) event5326Source := source_not_kernel event5326_differential event5326_target_nonzero
theorem event5326_page_earlier : 2 < 38 := by decide
theorem event5326_adjacent : (matrixOf 2 2 b_S0_40_165_d2.outgoing |> fun B => LinearCertificates.IsComplex B (matrixOf 2 1 b_S0_38_164_d2.outgoing)) := by
  have h := b_S0_40_165_d2_complete.2.1
  change LinearCertificates.IsComplex (matrixOf 2 2 b_S0_40_165_d2.outgoing) (matrixOf 2 1 b_S0_40_165_d2.incoming) at h
  rw [b_S0_40_165_d2_incoming_link] at h
  exact h
theorem event5326_target_zero_next : (Quot.mk _ (⟨event5326Target,image_cycle event5326_adjacent event5326_differential⟩ : Cycle (matrixOf 2 2 b_S0_40_165_d2.outgoing)) : Homology (matrixOf 2 2 b_S0_40_165_d2.outgoing) (matrixOf 2 1 b_S0_38_164_d2.outgoing)) = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) := image_zero_in_homology event5326_adjacent event5326_differential
theorem event5327_source_not_kernel : ¬ InKernel (matrixOf 2 2 b_S0_40_165_d2.outgoing) event5327Source := source_not_kernel event5327_differential event5327_target_nonzero
theorem event5327_page_earlier : 2 < 38 := by decide
theorem event5327_adjacent : (matrixOf 1 2 b_S0_42_166_d2.outgoing |> fun B => LinearCertificates.IsComplex B (matrixOf 2 2 b_S0_40_165_d2.outgoing)) := by
  have h := b_S0_42_166_d2_complete.2.1
  change LinearCertificates.IsComplex (matrixOf 1 2 b_S0_42_166_d2.outgoing) (matrixOf 2 2 b_S0_42_166_d2.incoming) at h
  rw [b_S0_42_166_d2_incoming_link] at h
  exact h
theorem event5327_target_zero_next : (Quot.mk _ (⟨event5327Target,image_cycle event5327_adjacent event5327_differential⟩ : Cycle (matrixOf 1 2 b_S0_42_166_d2.outgoing)) : Homology (matrixOf 1 2 b_S0_42_166_d2.outgoing) (matrixOf 2 2 b_S0_40_165_d2.outgoing)) = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) := image_zero_in_homology event5327_adjacent event5327_differential
theorem event5441_source_not_kernel : ¬ InKernel (matrixOf 1 1 b_S0_41_166_d3.outgoing) event5441Source := source_not_kernel event5441_differential event5441_target_nonzero
theorem event5441_page_earlier : 3 < 39 := by decide
theorem event5442_source_not_kernel : ¬ InKernel (matrixOf 2 2 b_S0_41_166_d2.outgoing) event5442Source := source_not_kernel event5442_differential event5442_target_nonzero
theorem event5442_page_earlier : 2 < 39 := by decide
theorem event5442_adjacent : (matrixOf 1 2 b_S0_43_167_d2.outgoing |> fun B => LinearCertificates.IsComplex B (matrixOf 2 2 b_S0_41_166_d2.outgoing)) := by
  have h := b_S0_43_167_d2_complete.2.1
  change LinearCertificates.IsComplex (matrixOf 1 2 b_S0_43_167_d2.outgoing) (matrixOf 2 2 b_S0_43_167_d2.incoming) at h
  rw [b_S0_43_167_d2_incoming_link] at h
  exact h
theorem event5442_target_zero_next : (Quot.mk _ (⟨event5442Target,image_cycle event5442_adjacent event5442_differential⟩ : Cycle (matrixOf 1 2 b_S0_43_167_d2.outgoing)) : Homology (matrixOf 1 2 b_S0_43_167_d2.outgoing) (matrixOf 2 2 b_S0_41_166_d2.outgoing)) = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) := image_zero_in_homology event5442_adjacent event5442_differential
theorem event5540_source_not_kernel : ¬ InKernel (matrixOf 2 1 b_S0_42_167_d2.outgoing) event5540Source := source_not_kernel event5540_differential event5540_target_nonzero
theorem event5540_page_earlier : 2 < 40 := by decide
theorem event5540_adjacent : (matrixOf 0 2 b_S0_44_168_d2.outgoing |> fun B => LinearCertificates.IsComplex B (matrixOf 2 1 b_S0_42_167_d2.outgoing)) := by
  have h := b_S0_44_168_d2_complete.2.1
  change LinearCertificates.IsComplex (matrixOf 0 2 b_S0_44_168_d2.outgoing) (matrixOf 2 1 b_S0_44_168_d2.incoming) at h
  rw [b_S0_44_168_d2_incoming_link] at h
  exact h
theorem event5540_target_zero_next : (Quot.mk _ (⟨event5540Target,image_cycle event5540_adjacent event5540_differential⟩ : Cycle (matrixOf 0 2 b_S0_44_168_d2.outgoing)) : Homology (matrixOf 0 2 b_S0_44_168_d2.outgoing) (matrixOf 2 1 b_S0_42_167_d2.outgoing)) = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) := image_zero_in_homology event5540_adjacent event5540_differential
theorem event5635_source_not_kernel : ¬ InKernel (matrixOf 1 1 b_S0_43_168_d4.outgoing) event5635Source := source_not_kernel event5635_differential event5635_target_nonzero
theorem event5635_page_earlier : 4 < 41 := by decide
theorem event5636_source_not_kernel : ¬ InKernel (matrixOf 1 2 b_S0_43_168_d2.outgoing) event5636Source := source_not_kernel event5636_differential event5636_target_nonzero
theorem event5636_page_earlier : 2 < 41 := by decide
theorem event5772_source_not_kernel : ¬ InKernel (matrixOf 1 1 b_S0_44_169_d2.outgoing) event5772Source := source_not_kernel event5772_differential event5772_target_nonzero
theorem event5772_page_earlier : 2 < 42 := by decide
theorem event5772_adjacent : (matrixOf 1 1 b_S0_46_170_d2.outgoing |> fun B => LinearCertificates.IsComplex B (matrixOf 1 1 b_S0_44_169_d2.outgoing)) := by
  have h := b_S0_46_170_d2_complete.2.1
  change LinearCertificates.IsComplex (matrixOf 1 1 b_S0_46_170_d2.outgoing) (matrixOf 1 1 b_S0_46_170_d2.incoming) at h
  rw [b_S0_46_170_d2_incoming_link] at h
  exact h
theorem event5772_target_zero_next : (Quot.mk _ (⟨event5772Target,image_cycle event5772_adjacent event5772_differential⟩ : Cycle (matrixOf 1 1 b_S0_46_170_d2.outgoing)) : Homology (matrixOf 1 1 b_S0_46_170_d2.outgoing) (matrixOf 1 1 b_S0_44_169_d2.outgoing)) = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) := image_zero_in_homology event5772_adjacent event5772_differential
theorem event5862_source_not_kernel : ¬ InKernel (matrixOf 1 3 b_S0_42_168_d3.outgoing) event5862Source := source_not_kernel event5862_differential event5862_target_nonzero
theorem event5862_page_earlier : 3 < 43 := by decide
theorem event5977_source_not_kernel : ¬ InKernel (matrixOf 1 2 b_S0_42_168_d4.outgoing) event5977Source := source_not_kernel event5977_differential event5977_target_nonzero
theorem event5977_page_earlier : 4 < 44 := by decide
theorem event6296_source_not_kernel : ¬ InKernel (matrixOf 1 2 b_S0_45_171_d4.outgoing) event6296Source := source_not_kernel event6296_differential event6296_target_nonzero
theorem event6296_page_earlier : 4 < 47 := by decide
end AggregateCsigmaConditional.EliminationStage
