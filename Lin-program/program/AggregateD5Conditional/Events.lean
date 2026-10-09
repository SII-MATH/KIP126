import AggregateD5Conditional.Data
namespace AggregateD5Conditional.Events
open LinearCertificates PageTransitionCertificates Data
def event2435Source : Vec 1 := (fun i => ([true] : List Bool)[i.val]!)
def event2435Target : Vec 3 := (fun i => ([false,false,true] : List Bool)[i.val]!)
theorem event2435_differential : eval (matrixOf 3 1 b_S0_5_130_d2.outgoing) event2435Source = event2435Target := by funext i; exact (show ∀ i, eval (matrixOf 3 1 b_S0_5_130_d2.outgoing) event2435Source i = event2435Target i from by decide) i
theorem event2435_target_nonzero : event2435Target ≠ zero := by intro h; have hh := congrFun h ⟨2,by decide⟩; contradiction
theorem event2435_target_in_image : InImage (matrixOf 3 1 b_S0_5_130_d2.outgoing) event2435Target := ⟨event2435Source,event2435_differential⟩
def event2492Source : Vec 2 := (fun i => ([true,false] : List Bool)[i.val]!)
def event2492Target : Vec 4 := (fun i => ([true,false,false,false] : List Bool)[i.val]!)
theorem event2492_differential : eval (matrixOf 4 2 b_S0_6_131_d4.outgoing) event2492Source = event2492Target := by funext i; exact (show ∀ i, eval (matrixOf 4 2 b_S0_6_131_d4.outgoing) event2492Source i = event2492Target i from by decide) i
theorem event2492_target_nonzero : event2492Target ≠ zero := by intro h; have hh := congrFun h ⟨0,by decide⟩; contradiction
theorem event2492_target_in_image : InImage (matrixOf 4 2 b_S0_6_131_d4.outgoing) event2492Target := ⟨event2492Source,event2492_differential⟩
def event2493Source : Vec 2 := (fun i => ([false,true] : List Bool)[i.val]!)
def event2493Target : Vec 4 := (fun i => ([true,true,false,false] : List Bool)[i.val]!)
theorem event2493_differential : eval (matrixOf 4 2 b_S0_6_131_d4.outgoing) event2493Source = event2493Target := by funext i; exact (show ∀ i, eval (matrixOf 4 2 b_S0_6_131_d4.outgoing) event2493Source i = event2493Target i from by decide) i
theorem event2493_target_nonzero : event2493Target ≠ zero := by intro h; have hh := congrFun h ⟨0,by decide⟩; contradiction
theorem event2493_target_in_image : InImage (matrixOf 4 2 b_S0_6_131_d4.outgoing) event2493Target := ⟨event2493Source,event2493_differential⟩
def event2572Source : Vec 1 := (fun i => ([true] : List Bool)[i.val]!)
def event2572Target : Vec 1 := (fun i => ([true] : List Bool)[i.val]!)
theorem event2572_differential : eval (matrixOf 1 1 b_S0_4_130_d3.outgoing) event2572Source = event2572Target := by funext i; exact (show ∀ i, eval (matrixOf 1 1 b_S0_4_130_d3.outgoing) event2572Source i = event2572Target i from by decide) i
theorem event2572_target_nonzero : event2572Target ≠ zero := by intro h; have hh := congrFun h ⟨0,by decide⟩; contradiction
theorem event2572_target_in_image : InImage (matrixOf 1 1 b_S0_4_130_d3.outgoing) event2572Target := ⟨event2572Source,event2572_differential⟩
def event2629Source : Vec 1 := (fun i => ([true] : List Bool)[i.val]!)
def event2629Target : Vec 2 := (fun i => ([true,false] : List Bool)[i.val]!)
theorem event2629_differential : eval (matrixOf 2 1 b_S0_8_133_d3.outgoing) event2629Source = event2629Target := by funext i; exact (show ∀ i, eval (matrixOf 2 1 b_S0_8_133_d3.outgoing) event2629Source i = event2629Target i from by decide) i
theorem event2629_target_nonzero : event2629Target ≠ zero := by intro h; have hh := congrFun h ⟨0,by decide⟩; contradiction
theorem event2629_target_in_image : InImage (matrixOf 2 1 b_S0_8_133_d3.outgoing) event2629Target := ⟨event2629Source,event2629_differential⟩
def event2630Source : Vec 2 := (fun i => ([false,true] : List Bool)[i.val]!)
def event2630Target : Vec 5 := (fun i => ([false,false,true,false,true] : List Bool)[i.val]!)
theorem event2630_differential : eval (matrixOf 5 2 b_S0_8_133_d2.outgoing) event2630Source = event2630Target := by funext i; exact (show ∀ i, eval (matrixOf 5 2 b_S0_8_133_d2.outgoing) event2630Source i = event2630Target i from by decide) i
theorem event2630_target_nonzero : event2630Target ≠ zero := by intro h; have hh := congrFun h ⟨2,by decide⟩; contradiction
theorem event2630_target_in_image : InImage (matrixOf 5 2 b_S0_8_133_d2.outgoing) event2630Target := ⟨event2630Source,event2630_differential⟩
def event2698Source : Vec 5 := (fun i => ([true,false,false,false,false] : List Bool)[i.val]!)
def event2698Target : Vec 5 := (fun i => ([false,false,false,true,true] : List Bool)[i.val]!)
theorem event2698_differential : eval (matrixOf 5 5 b_S0_9_134_d2.outgoing) event2698Source = event2698Target := by funext i; exact (show ∀ i, eval (matrixOf 5 5 b_S0_9_134_d2.outgoing) event2698Source i = event2698Target i from by decide) i
theorem event2698_target_nonzero : event2698Target ≠ zero := by intro h; have hh := congrFun h ⟨3,by decide⟩; contradiction
theorem event2698_target_in_image : InImage (matrixOf 5 5 b_S0_9_134_d2.outgoing) event2698Target := ⟨event2698Source,event2698_differential⟩
def event2699Source : Vec 5 := (fun i => ([false,false,false,false,true] : List Bool)[i.val]!)
def event2699Target : Vec 5 := (fun i => ([false,false,false,false,true] : List Bool)[i.val]!)
theorem event2699_differential : eval (matrixOf 5 5 b_S0_9_134_d2.outgoing) event2699Source = event2699Target := by funext i; exact (show ∀ i, eval (matrixOf 5 5 b_S0_9_134_d2.outgoing) event2699Source i = event2699Target i from by decide) i
theorem event2699_target_nonzero : event2699Target ≠ zero := by intro h; have hh := congrFun h ⟨4,by decide⟩; contradiction
theorem event2699_target_in_image : InImage (matrixOf 5 5 b_S0_9_134_d2.outgoing) event2699Target := ⟨event2699Source,event2699_differential⟩
def event2783Source : Vec 6 := (fun i => ([false,true,false,false,false,false] : List Bool)[i.val]!)
def event2783Target : Vec 5 := (fun i => ([false,false,false,true,false] : List Bool)[i.val]!)
theorem event2783_differential : eval (matrixOf 5 6 b_S0_8_134_d2.outgoing) event2783Source = event2783Target := by funext i; exact (show ∀ i, eval (matrixOf 5 6 b_S0_8_134_d2.outgoing) event2783Source i = event2783Target i from by decide) i
theorem event2783_target_nonzero : event2783Target ≠ zero := by intro h; have hh := congrFun h ⟨3,by decide⟩; contradiction
theorem event2783_target_in_image : InImage (matrixOf 5 6 b_S0_8_134_d2.outgoing) event2783Target := ⟨event2783Source,event2783_differential⟩
def event2784Source : Vec 1 := (fun i => ([true] : List Bool)[i.val]!)
def event2784Target : Vec 3 := (fun i => ([true,false,false] : List Bool)[i.val]!)
theorem event2784_differential : eval (matrixOf 3 1 b_S0_10_135_d3.outgoing) event2784Source = event2784Target := by funext i; exact (show ∀ i, eval (matrixOf 3 1 b_S0_10_135_d3.outgoing) event2784Source i = event2784Target i from by decide) i
theorem event2784_target_nonzero : event2784Target ≠ zero := by intro h; have hh := congrFun h ⟨0,by decide⟩; contradiction
theorem event2784_target_in_image : InImage (matrixOf 3 1 b_S0_10_135_d3.outgoing) event2784Target := ⟨event2784Source,event2784_differential⟩
def event2785Source : Vec 5 := (fun i => ([false,true,false,false,false] : List Bool)[i.val]!)
def event2785Target : Vec 5 := (fun i => ([false,true,true,false,false] : List Bool)[i.val]!)
theorem event2785_differential : eval (matrixOf 5 5 b_S0_10_135_d2.outgoing) event2785Source = event2785Target := by funext i; exact (show ∀ i, eval (matrixOf 5 5 b_S0_10_135_d2.outgoing) event2785Source i = event2785Target i from by decide) i
theorem event2785_target_nonzero : event2785Target ≠ zero := by intro h; have hh := congrFun h ⟨1,by decide⟩; contradiction
theorem event2785_target_in_image : InImage (matrixOf 5 5 b_S0_10_135_d2.outgoing) event2785Target := ⟨event2785Source,event2785_differential⟩
def event2786Source : Vec 5 := (fun i => ([false,false,true,false,false] : List Bool)[i.val]!)
def event2786Target : Vec 5 := (fun i => ([false,false,false,true,true] : List Bool)[i.val]!)
theorem event2786_differential : eval (matrixOf 5 5 b_S0_10_135_d2.outgoing) event2786Source = event2786Target := by funext i; exact (show ∀ i, eval (matrixOf 5 5 b_S0_10_135_d2.outgoing) event2786Source i = event2786Target i from by decide) i
theorem event2786_target_nonzero : event2786Target ≠ zero := by intro h; have hh := congrFun h ⟨3,by decide⟩; contradiction
theorem event2786_target_in_image : InImage (matrixOf 5 5 b_S0_10_135_d2.outgoing) event2786Target := ⟨event2786Source,event2786_differential⟩
def event2787Source : Vec 5 := (fun i => ([false,false,false,false,true] : List Bool)[i.val]!)
def event2787Target : Vec 5 := (fun i => ([false,false,false,false,true] : List Bool)[i.val]!)
theorem event2787_differential : eval (matrixOf 5 5 b_S0_10_135_d2.outgoing) event2787Source = event2787Target := by funext i; exact (show ∀ i, eval (matrixOf 5 5 b_S0_10_135_d2.outgoing) event2787Source i = event2787Target i from by decide) i
theorem event2787_target_nonzero : event2787Target ≠ zero := by intro h; have hh := congrFun h ⟨4,by decide⟩; contradiction
theorem event2787_target_in_image : InImage (matrixOf 5 5 b_S0_10_135_d2.outgoing) event2787Target := ⟨event2787Source,event2787_differential⟩
def event2850Source : Vec 4 := (fun i => ([false,false,true,false] : List Bool)[i.val]!)
def event2850Target : Vec 4 := (fun i => ([true,false,false,false] : List Bool)[i.val]!)
theorem event2850_differential : eval (matrixOf 4 4 b_S0_8_134_d3.outgoing) event2850Source = event2850Target := by funext i; exact (show ∀ i, eval (matrixOf 4 4 b_S0_8_134_d3.outgoing) event2850Source i = event2850Target i from by decide) i
theorem event2850_target_nonzero : event2850Target ≠ zero := by intro h; have hh := congrFun h ⟨0,by decide⟩; contradiction
theorem event2850_target_in_image : InImage (matrixOf 4 4 b_S0_8_134_d3.outgoing) event2850Target := ⟨event2850Source,event2850_differential⟩
def event2851Source : Vec 4 := (fun i => ([false,false,false,true] : List Bool)[i.val]!)
def event2851Target : Vec 4 := (fun i => ([false,true,false,false] : List Bool)[i.val]!)
theorem event2851_differential : eval (matrixOf 4 4 b_S0_8_134_d3.outgoing) event2851Source = event2851Target := by funext i; exact (show ∀ i, eval (matrixOf 4 4 b_S0_8_134_d3.outgoing) event2851Source i = event2851Target i from by decide) i
theorem event2851_target_nonzero : event2851Target ≠ zero := by intro h; have hh := congrFun h ⟨1,by decide⟩; contradiction
theorem event2851_target_in_image : InImage (matrixOf 4 4 b_S0_8_134_d3.outgoing) event2851Target := ⟨event2851Source,event2851_differential⟩
def event2853Source : Vec 2 := (fun i => ([false,true] : List Bool)[i.val]!)
def event2853Target : Vec 2 := (fun i => ([true,false] : List Bool)[i.val]!)
theorem event2853_differential : eval (matrixOf 2 2 b_S0_11_136_d4.outgoing) event2853Source = event2853Target := by funext i; exact (show ∀ i, eval (matrixOf 2 2 b_S0_11_136_d4.outgoing) event2853Source i = event2853Target i from by decide) i
theorem event2853_target_nonzero : event2853Target ≠ zero := by intro h; have hh := congrFun h ⟨0,by decide⟩; contradiction
theorem event2853_target_in_image : InImage (matrixOf 2 2 b_S0_11_136_d4.outgoing) event2853Target := ⟨event2853Source,event2853_differential⟩
def event2854Source : Vec 5 := (fun i => ([false,false,false,false,true] : List Bool)[i.val]!)
def event2854Target : Vec 4 := (fun i => ([false,false,false,true] : List Bool)[i.val]!)
theorem event2854_differential : eval (matrixOf 4 5 b_S0_11_136_d2.outgoing) event2854Source = event2854Target := by funext i; exact (show ∀ i, eval (matrixOf 4 5 b_S0_11_136_d2.outgoing) event2854Source i = event2854Target i from by decide) i
theorem event2854_target_nonzero : event2854Target ≠ zero := by intro h; have hh := congrFun h ⟨3,by decide⟩; contradiction
theorem event2854_target_in_image : InImage (matrixOf 4 5 b_S0_11_136_d2.outgoing) event2854Target := ⟨event2854Source,event2854_differential⟩
def event2918Source : Vec 5 := (fun i => ([true,false,false,false,false] : List Bool)[i.val]!)
def event2918Target : Vec 5 := (fun i => ([false,false,true,false,false] : List Bool)[i.val]!)
theorem event2918_differential : eval (matrixOf 5 5 b_S0_10_136_d2.outgoing) event2918Source = event2918Target := by funext i; exact (show ∀ i, eval (matrixOf 5 5 b_S0_10_136_d2.outgoing) event2918Source i = event2918Target i from by decide) i
theorem event2918_target_nonzero : event2918Target ≠ zero := by intro h; have hh := congrFun h ⟨2,by decide⟩; contradiction
theorem event2918_target_in_image : InImage (matrixOf 5 5 b_S0_10_136_d2.outgoing) event2918Target := ⟨event2918Source,event2918_differential⟩
def event2919Source : Vec 4 := (fun i => ([false,false,true,false] : List Bool)[i.val]!)
def event2919Target : Vec 2 := (fun i => ([true,false] : List Bool)[i.val]!)
theorem event2919_differential : eval (matrixOf 2 4 b_S0_9_135_d3.outgoing) event2919Source = event2919Target := by funext i; exact (show ∀ i, eval (matrixOf 2 4 b_S0_9_135_d3.outgoing) event2919Source i = event2919Target i from by decide) i
theorem event2919_target_nonzero : event2919Target ≠ zero := by intro h; have hh := congrFun h ⟨0,by decide⟩; contradiction
theorem event2919_target_in_image : InImage (matrixOf 2 4 b_S0_9_135_d3.outgoing) event2919Target := ⟨event2919Source,event2919_differential⟩
def event2920Source : Vec 4 := (fun i => ([false,false,true,true] : List Bool)[i.val]!)
def event2920Target : Vec 2 := (fun i => ([false,true] : List Bool)[i.val]!)
theorem event2920_differential : eval (matrixOf 2 4 b_S0_9_135_d3.outgoing) event2920Source = event2920Target := by funext i; exact (show ∀ i, eval (matrixOf 2 4 b_S0_9_135_d3.outgoing) event2920Source i = event2920Target i from by decide) i
theorem event2920_target_nonzero : event2920Target ≠ zero := by intro h; have hh := congrFun h ⟨1,by decide⟩; contradiction
theorem event2920_target_in_image : InImage (matrixOf 2 4 b_S0_9_135_d3.outgoing) event2920Target := ⟨event2920Source,event2920_differential⟩
def event2921Source : Vec 5 := (fun i => ([false,true,false,false,false] : List Bool)[i.val]!)
def event2921Target : Vec 5 := (fun i => ([false,false,false,false,true] : List Bool)[i.val]!)
theorem event2921_differential : eval (matrixOf 5 5 b_S0_12_137_d2.outgoing) event2921Source = event2921Target := by funext i; exact (show ∀ i, eval (matrixOf 5 5 b_S0_12_137_d2.outgoing) event2921Source i = event2921Target i from by decide) i
theorem event2921_target_nonzero : event2921Target ≠ zero := by intro h; have hh := congrFun h ⟨4,by decide⟩; contradiction
theorem event2921_target_in_image : InImage (matrixOf 5 5 b_S0_12_137_d2.outgoing) event2921Target := ⟨event2921Source,event2921_differential⟩
def event2922Source : Vec 5 := (fun i => ([true,false,false,false,false] : List Bool)[i.val]!)
def event2922Target : Vec 5 := (fun i => ([false,false,false,true,false] : List Bool)[i.val]!)
theorem event2922_differential : eval (matrixOf 5 5 b_S0_12_137_d2.outgoing) event2922Source = event2922Target := by funext i; exact (show ∀ i, eval (matrixOf 5 5 b_S0_12_137_d2.outgoing) event2922Source i = event2922Target i from by decide) i
theorem event2922_target_nonzero : event2922Target ≠ zero := by intro h; have hh := congrFun h ⟨3,by decide⟩; contradiction
theorem event2922_target_in_image : InImage (matrixOf 5 5 b_S0_12_137_d2.outgoing) event2922Target := ⟨event2922Source,event2922_differential⟩
def event3008Source : Vec 6 := (fun i => ([true,false,false,false,false,false] : List Bool)[i.val]!)
def event3008Target : Vec 5 := (fun i => ([false,false,false,true,false] : List Bool)[i.val]!)
theorem event3008_differential : eval (matrixOf 5 6 b_S0_11_137_d2.outgoing) event3008Source = event3008Target := by funext i; exact (show ∀ i, eval (matrixOf 5 6 b_S0_11_137_d2.outgoing) event3008Source i = event3008Target i from by decide) i
theorem event3008_target_nonzero : event3008Target ≠ zero := by intro h; have hh := congrFun h ⟨3,by decide⟩; contradiction
theorem event3008_target_in_image : InImage (matrixOf 5 6 b_S0_11_137_d2.outgoing) event3008Target := ⟨event3008Source,event3008_differential⟩
def event3009Source : Vec 6 := (fun i => ([false,false,false,true,false,false] : List Bool)[i.val]!)
def event3009Target : Vec 5 := (fun i => ([false,false,false,false,true] : List Bool)[i.val]!)
theorem event3009_differential : eval (matrixOf 5 6 b_S0_11_137_d2.outgoing) event3009Source = event3009Target := by funext i; exact (show ∀ i, eval (matrixOf 5 6 b_S0_11_137_d2.outgoing) event3009Source i = event3009Target i from by decide) i
theorem event3009_target_nonzero : event3009Target ≠ zero := by intro h; have hh := congrFun h ⟨4,by decide⟩; contradiction
theorem event3009_target_in_image : InImage (matrixOf 5 6 b_S0_11_137_d2.outgoing) event3009Target := ⟨event3009Source,event3009_differential⟩
def event3010Source : Vec 2 := (fun i => ([true,false] : List Bool)[i.val]!)
def event3010Target : Vec 2 := (fun i => ([true,false] : List Bool)[i.val]!)
theorem event3010_differential : eval (matrixOf 2 2 b_S0_9_135_d4.outgoing) event3010Source = event3010Target := by funext i; exact (show ∀ i, eval (matrixOf 2 2 b_S0_9_135_d4.outgoing) event3010Source i = event3010Target i from by decide) i
theorem event3010_target_nonzero : event3010Target ≠ zero := by intro h; have hh := congrFun h ⟨0,by decide⟩; contradiction
theorem event3010_target_in_image : InImage (matrixOf 2 2 b_S0_9_135_d4.outgoing) event3010Target := ⟨event3010Source,event3010_differential⟩
def event3011Source : Vec 2 := (fun i => ([false,true] : List Bool)[i.val]!)
def event3011Target : Vec 2 := (fun i => ([false,true] : List Bool)[i.val]!)
theorem event3011_differential : eval (matrixOf 2 2 b_S0_9_135_d4.outgoing) event3011Source = event3011Target := by funext i; exact (show ∀ i, eval (matrixOf 2 2 b_S0_9_135_d4.outgoing) event3011Source i = event3011Target i from by decide) i
theorem event3011_target_nonzero : event3011Target ≠ zero := by intro h; have hh := congrFun h ⟨1,by decide⟩; contradiction
theorem event3011_target_in_image : InImage (matrixOf 2 2 b_S0_9_135_d4.outgoing) event3011Target := ⟨event3011Source,event3011_differential⟩
def event3012Source : Vec 3 := (fun i => ([false,false,true] : List Bool)[i.val]!)
def event3012Target : Vec 3 := (fun i => ([true,false,false] : List Bool)[i.val]!)
theorem event3012_differential : eval (matrixOf 3 3 b_S0_13_138_d3.outgoing) event3012Source = event3012Target := by funext i; exact (show ∀ i, eval (matrixOf 3 3 b_S0_13_138_d3.outgoing) event3012Source i = event3012Target i from by decide) i
theorem event3012_target_nonzero : event3012Target ≠ zero := by intro h; have hh := congrFun h ⟨0,by decide⟩; contradiction
theorem event3012_target_in_image : InImage (matrixOf 3 3 b_S0_13_138_d3.outgoing) event3012Target := ⟨event3012Source,event3012_differential⟩
def event3079Source : Vec 5 := (fun i => ([false,true,false,false,false] : List Bool)[i.val]!)
def event3079Target : Vec 3 := (fun i => ([false,false,true] : List Bool)[i.val]!)
theorem event3079_differential : eval (matrixOf 3 5 b_S0_12_138_d2.outgoing) event3079Source = event3079Target := by funext i; exact (show ∀ i, eval (matrixOf 3 5 b_S0_12_138_d2.outgoing) event3079Source i = event3079Target i from by decide) i
theorem event3079_target_nonzero : event3079Target ≠ zero := by intro h; have hh := congrFun h ⟨2,by decide⟩; contradiction
theorem event3079_target_in_image : InImage (matrixOf 3 5 b_S0_12_138_d2.outgoing) event3079Target := ⟨event3079Source,event3079_differential⟩
def event3081Source : Vec 3 := (fun i => ([true,false,false] : List Bool)[i.val]!)
def event3081Target : Vec 5 := (fun i => ([false,false,true,false,false] : List Bool)[i.val]!)
theorem event3081_differential : eval (matrixOf 5 3 b_S0_14_139_d2.outgoing) event3081Source = event3081Target := by funext i; exact (show ∀ i, eval (matrixOf 5 3 b_S0_14_139_d2.outgoing) event3081Source i = event3081Target i from by decide) i
theorem event3081_target_nonzero : event3081Target ≠ zero := by intro h; have hh := congrFun h ⟨2,by decide⟩; contradiction
theorem event3081_target_in_image : InImage (matrixOf 5 3 b_S0_14_139_d2.outgoing) event3081Target := ⟨event3081Source,event3081_differential⟩
def event3150Source : Vec 3 := (fun i => ([false,true,false] : List Bool)[i.val]!)
def event3150Target : Vec 5 := (fun i => ([false,false,false,false,true] : List Bool)[i.val]!)
theorem event3150_differential : eval (matrixOf 5 3 b_S0_13_139_d2.outgoing) event3150Source = event3150Target := by funext i; exact (show ∀ i, eval (matrixOf 5 3 b_S0_13_139_d2.outgoing) event3150Source i = event3150Target i from by decide) i
theorem event3150_target_nonzero : event3150Target ≠ zero := by intro h; have hh := congrFun h ⟨4,by decide⟩; contradiction
theorem event3150_target_in_image : InImage (matrixOf 5 3 b_S0_13_139_d2.outgoing) event3150Target := ⟨event3150Source,event3150_differential⟩
def event3153Source : Vec 5 := (fun i => ([true,false,false,false,false] : List Bool)[i.val]!)
def event3153Target : Vec 4 := (fun i => ([false,false,false,true] : List Bool)[i.val]!)
theorem event3153_differential : eval (matrixOf 4 5 b_S0_15_140_d2.outgoing) event3153Source = event3153Target := by funext i; exact (show ∀ i, eval (matrixOf 4 5 b_S0_15_140_d2.outgoing) event3153Source i = event3153Target i from by decide) i
theorem event3153_target_nonzero : event3153Target ≠ zero := by intro h; have hh := congrFun h ⟨3,by decide⟩; contradiction
theorem event3153_target_in_image : InImage (matrixOf 4 5 b_S0_15_140_d2.outgoing) event3153Target := ⟨event3153Source,event3153_differential⟩
def event3154Source : Vec 5 := (fun i => ([false,false,false,true,false] : List Bool)[i.val]!)
def event3154Target : Vec 4 := (fun i => ([false,true,false,false] : List Bool)[i.val]!)
theorem event3154_differential : eval (matrixOf 4 5 b_S0_15_140_d2.outgoing) event3154Source = event3154Target := by funext i; exact (show ∀ i, eval (matrixOf 4 5 b_S0_15_140_d2.outgoing) event3154Source i = event3154Target i from by decide) i
theorem event3154_target_nonzero : event3154Target ≠ zero := by intro h; have hh := congrFun h ⟨1,by decide⟩; contradiction
theorem event3154_target_in_image : InImage (matrixOf 4 5 b_S0_15_140_d2.outgoing) event3154Target := ⟨event3154Source,event3154_differential⟩
def event3253Source : Vec 4 := (fun i => ([false,true,false,false] : List Bool)[i.val]!)
def event3253Target : Vec 4 := (fun i => ([false,false,true,false] : List Bool)[i.val]!)
theorem event3253_differential : eval (matrixOf 4 4 b_S0_14_140_d2.outgoing) event3253Source = event3253Target := by funext i; exact (show ∀ i, eval (matrixOf 4 4 b_S0_14_140_d2.outgoing) event3253Source i = event3253Target i from by decide) i
theorem event3253_target_nonzero : event3253Target ≠ zero := by intro h; have hh := congrFun h ⟨2,by decide⟩; contradiction
theorem event3253_target_in_image : InImage (matrixOf 4 4 b_S0_14_140_d2.outgoing) event3253Target := ⟨event3253Source,event3253_differential⟩
def event3254Source : Vec 1 := (fun i => ([true] : List Bool)[i.val]!)
def event3254Target : Vec 1 := (fun i => ([true] : List Bool)[i.val]!)
theorem event3254_differential : eval (matrixOf 1 1 b_S0_12_138_d4.outgoing) event3254Source = event3254Target := by funext i; exact (show ∀ i, eval (matrixOf 1 1 b_S0_12_138_d4.outgoing) event3254Source i = event3254Target i from by decide) i
theorem event3254_target_nonzero : event3254Target ≠ zero := by intro h; have hh := congrFun h ⟨0,by decide⟩; contradiction
theorem event3254_target_in_image : InImage (matrixOf 1 1 b_S0_12_138_d4.outgoing) event3254Target := ⟨event3254Source,event3254_differential⟩
theorem event3254_raw_source : event3254Source = (eval b_S0_12_138_d3.comparison.projection (eval b_S0_12_138_d2.comparison.projection (fun i => ([false,false,false,true,false] : List Bool)[i.val]!))) := by decide
theorem event3254_raw_target : event3254Target = (eval b_S0_16_141_d3.comparison.projection (eval b_S0_16_141_d2.comparison.projection (fun i => ([false,true,false,false] : List Bool)[i.val]!))) := by decide
def event3255Source : Vec 4 := (fun i => ([true,false,false,false] : List Bool)[i.val]!)
def event3255Target : Vec 2 := (fun i => ([true,true] : List Bool)[i.val]!)
theorem event3255_differential : eval (matrixOf 2 4 b_S0_16_141_d2.outgoing) event3255Source = event3255Target := by funext i; exact (show ∀ i, eval (matrixOf 2 4 b_S0_16_141_d2.outgoing) event3255Source i = event3255Target i from by decide) i
theorem event3255_target_nonzero : event3255Target ≠ zero := by intro h; have hh := congrFun h ⟨0,by decide⟩; contradiction
theorem event3255_target_in_image : InImage (matrixOf 2 4 b_S0_16_141_d2.outgoing) event3255Target := ⟨event3255Source,event3255_differential⟩
def event3256Source : Vec 4 := (fun i => ([false,false,false,true] : List Bool)[i.val]!)
def event3256Target : Vec 2 := (fun i => ([false,true] : List Bool)[i.val]!)
theorem event3256_differential : eval (matrixOf 2 4 b_S0_16_141_d2.outgoing) event3256Source = event3256Target := by funext i; exact (show ∀ i, eval (matrixOf 2 4 b_S0_16_141_d2.outgoing) event3256Source i = event3256Target i from by decide) i
theorem event3256_target_nonzero : event3256Target ≠ zero := by intro h; have hh := congrFun h ⟨1,by decide⟩; contradiction
theorem event3256_target_in_image : InImage (matrixOf 2 4 b_S0_16_141_d2.outgoing) event3256Target := ⟨event3256Source,event3256_differential⟩
def event3319Source : Vec 2 := (fun i => ([true,false] : List Bool)[i.val]!)
def event3319Target : Vec 2 := (fun i => ([true,false] : List Bool)[i.val]!)
theorem event3319_differential : eval (matrixOf 2 2 b_S0_15_141_d2.outgoing) event3319Source = event3319Target := by funext i; exact (show ∀ i, eval (matrixOf 2 2 b_S0_15_141_d2.outgoing) event3319Source i = event3319Target i from by decide) i
theorem event3319_target_nonzero : event3319Target ≠ zero := by intro h; have hh := congrFun h ⟨0,by decide⟩; contradiction
theorem event3319_target_in_image : InImage (matrixOf 2 2 b_S0_15_141_d2.outgoing) event3319Target := ⟨event3319Source,event3319_differential⟩
def event3320Source : Vec 2 := (fun i => ([false,true] : List Bool)[i.val]!)
def event3320Target : Vec 2 := (fun i => ([false,true] : List Bool)[i.val]!)
theorem event3320_differential : eval (matrixOf 2 2 b_S0_17_142_d2.outgoing) event3320Source = event3320Target := by funext i; exact (show ∀ i, eval (matrixOf 2 2 b_S0_17_142_d2.outgoing) event3320Source i = event3320Target i from by decide) i
theorem event3320_target_nonzero : event3320Target ≠ zero := by intro h; have hh := congrFun h ⟨1,by decide⟩; contradiction
theorem event3320_target_in_image : InImage (matrixOf 2 2 b_S0_17_142_d2.outgoing) event3320Target := ⟨event3320Source,event3320_differential⟩
def event3391Source : Vec 1 := (fun i => ([true] : List Bool)[i.val]!)
def event3391Target : Vec 1 := (fun i => ([true] : List Bool)[i.val]!)
theorem event3391_differential : eval (matrixOf 1 1 b_S0_13_139_d5.outgoing) event3391Source = event3391Target := by funext i; exact (show ∀ i, eval (matrixOf 1 1 b_S0_13_139_d5.outgoing) event3391Source i = event3391Target i from by decide) i
theorem event3391_target_nonzero : event3391Target ≠ zero := by intro h; have hh := congrFun h ⟨0,by decide⟩; contradiction
theorem event3391_target_in_image : InImage (matrixOf 1 1 b_S0_13_139_d5.outgoing) event3391Target := ⟨event3391Source,event3391_differential⟩
theorem event3391_raw_source : event3391Source = (eval b_S0_13_139_d4.comparison.projection (eval b_S0_13_139_d3.comparison.projection (eval b_S0_13_139_d2.comparison.projection (fun i => ([true,false,false] : List Bool)[i.val]!)))) := by decide
theorem event3391_raw_target : event3391Target = (eval b_S0_18_143_d4.comparison.projection (eval b_S0_18_143_d3.comparison.projection (eval b_S0_18_143_d2.comparison.projection (fun i => ([true,false] : List Bool)[i.val]!)))) := by decide
def event3392Source : Vec 2 := (fun i => ([false,true] : List Bool)[i.val]!)
def event3392Target : Vec 2 := (fun i => ([false,true] : List Bool)[i.val]!)
theorem event3392_differential : eval (matrixOf 2 2 b_S0_18_143_d2.outgoing) event3392Source = event3392Target := by funext i; exact (show ∀ i, eval (matrixOf 2 2 b_S0_18_143_d2.outgoing) event3392Source i = event3392Target i from by decide) i
theorem event3392_target_nonzero : event3392Target ≠ zero := by intro h; have hh := congrFun h ⟨1,by decide⟩; contradiction
theorem event3392_target_in_image : InImage (matrixOf 2 2 b_S0_18_143_d2.outgoing) event3392Target := ⟨event3392Source,event3392_differential⟩
def event3486Source : Vec 1 := (fun i => ([true] : List Bool)[i.val]!)
def event3486Target : Vec 1 := (fun i => ([true] : List Bool)[i.val]!)
theorem event3486_differential : eval (matrixOf 1 1 b_S0_19_144_d3.outgoing) event3486Source = event3486Target := by funext i; exact (show ∀ i, eval (matrixOf 1 1 b_S0_19_144_d3.outgoing) event3486Source i = event3486Target i from by decide) i
theorem event3486_target_nonzero : event3486Target ≠ zero := by intro h; have hh := congrFun h ⟨0,by decide⟩; contradiction
theorem event3486_target_in_image : InImage (matrixOf 1 1 b_S0_19_144_d3.outgoing) event3486Target := ⟨event3486Source,event3486_differential⟩
def event3487Source : Vec 3 := (fun i => ([false,false,true] : List Bool)[i.val]!)
def event3487Target : Vec 2 := (fun i => ([false,true] : List Bool)[i.val]!)
theorem event3487_differential : eval (matrixOf 2 3 b_S0_19_144_d2.outgoing) event3487Source = event3487Target := by funext i; exact (show ∀ i, eval (matrixOf 2 3 b_S0_19_144_d2.outgoing) event3487Source i = event3487Target i from by decide) i
theorem event3487_target_nonzero : event3487Target ≠ zero := by intro h; have hh := congrFun h ⟨1,by decide⟩; contradiction
theorem event3487_target_in_image : InImage (matrixOf 2 3 b_S0_19_144_d2.outgoing) event3487Target := ⟨event3487Source,event3487_differential⟩
def event3488Source : Vec 3 := (fun i => ([false,true,false] : List Bool)[i.val]!)
def event3488Target : Vec 2 := (fun i => ([true,false] : List Bool)[i.val]!)
theorem event3488_differential : eval (matrixOf 2 3 b_S0_19_144_d2.outgoing) event3488Source = event3488Target := by funext i; exact (show ∀ i, eval (matrixOf 2 3 b_S0_19_144_d2.outgoing) event3488Source i = event3488Target i from by decide) i
theorem event3488_target_nonzero : event3488Target ≠ zero := by intro h; have hh := congrFun h ⟨0,by decide⟩; contradiction
theorem event3488_target_in_image : InImage (matrixOf 2 3 b_S0_19_144_d2.outgoing) event3488Target := ⟨event3488Source,event3488_differential⟩
def event3556Source : Vec 4 := (fun i => ([true,false,false,false] : List Bool)[i.val]!)
def event3556Target : Vec 3 := (fun i => ([false,true,false] : List Bool)[i.val]!)
theorem event3556_differential : eval (matrixOf 3 4 b_S0_18_144_d2.outgoing) event3556Source = event3556Target := by funext i; exact (show ∀ i, eval (matrixOf 3 4 b_S0_18_144_d2.outgoing) event3556Source i = event3556Target i from by decide) i
theorem event3556_target_nonzero : event3556Target ≠ zero := by intro h; have hh := congrFun h ⟨1,by decide⟩; contradiction
theorem event3556_target_in_image : InImage (matrixOf 3 4 b_S0_18_144_d2.outgoing) event3556Target := ⟨event3556Source,event3556_differential⟩
def event3557Source : Vec 1 := (fun i => ([true] : List Bool)[i.val]!)
def event3557Target : Vec 2 := (fun i => ([true,false] : List Bool)[i.val]!)
theorem event3557_differential : eval (matrixOf 2 1 b_S0_20_145_d3.outgoing) event3557Source = event3557Target := by funext i; exact (show ∀ i, eval (matrixOf 2 1 b_S0_20_145_d3.outgoing) event3557Source i = event3557Target i from by decide) i
theorem event3557_target_nonzero : event3557Target ≠ zero := by intro h; have hh := congrFun h ⟨0,by decide⟩; contradiction
theorem event3557_target_in_image : InImage (matrixOf 2 1 b_S0_20_145_d3.outgoing) event3557Target := ⟨event3557Source,event3557_differential⟩
def event3558Source : Vec 3 := (fun i => ([false,false,true] : List Bool)[i.val]!)
def event3558Target : Vec 4 := (fun i => ([false,false,false,true] : List Bool)[i.val]!)
theorem event3558_differential : eval (matrixOf 4 3 b_S0_20_145_d2.outgoing) event3558Source = event3558Target := by funext i; exact (show ∀ i, eval (matrixOf 4 3 b_S0_20_145_d2.outgoing) event3558Source i = event3558Target i from by decide) i
theorem event3558_target_nonzero : event3558Target ≠ zero := by intro h; have hh := congrFun h ⟨3,by decide⟩; contradiction
theorem event3558_target_in_image : InImage (matrixOf 4 3 b_S0_20_145_d2.outgoing) event3558Target := ⟨event3558Source,event3558_differential⟩
def event3629Source : Vec 2 := (fun i => ([false,true] : List Bool)[i.val]!)
def event3629Target : Vec 1 := (fun i => ([true] : List Bool)[i.val]!)
theorem event3629_differential : eval (matrixOf 1 2 b_S0_17_143_d4.outgoing) event3629Source = event3629Target := by funext i; exact (show ∀ i, eval (matrixOf 1 2 b_S0_17_143_d4.outgoing) event3629Source i = event3629Target i from by decide) i
theorem event3629_target_nonzero : event3629Target ≠ zero := by intro h; have hh := congrFun h ⟨0,by decide⟩; contradiction
theorem event3629_target_in_image : InImage (matrixOf 1 2 b_S0_17_143_d4.outgoing) event3629Target := ⟨event3629Source,event3629_differential⟩
def event3630Source : Vec 3 := (fun i => ([false,false,true] : List Bool)[i.val]!)
def event3630Target : Vec 4 := (fun i => ([false,false,false,true] : List Bool)[i.val]!)
theorem event3630_differential : eval (matrixOf 4 3 b_S0_21_146_d2.outgoing) event3630Source = event3630Target := by funext i; exact (show ∀ i, eval (matrixOf 4 3 b_S0_21_146_d2.outgoing) event3630Source i = event3630Target i from by decide) i
theorem event3630_target_nonzero : event3630Target ≠ zero := by intro h; have hh := congrFun h ⟨3,by decide⟩; contradiction
theorem event3630_target_in_image : InImage (matrixOf 4 3 b_S0_21_146_d2.outgoing) event3630Target := ⟨event3630Source,event3630_differential⟩
def event3631Source : Vec 3 := (fun i => ([false,true,false] : List Bool)[i.val]!)
def event3631Target : Vec 4 := (fun i => ([false,true,true,false] : List Bool)[i.val]!)
theorem event3631_differential : eval (matrixOf 4 3 b_S0_21_146_d2.outgoing) event3631Source = event3631Target := by funext i; exact (show ∀ i, eval (matrixOf 4 3 b_S0_21_146_d2.outgoing) event3631Source i = event3631Target i from by decide) i
theorem event3631_target_nonzero : event3631Target ≠ zero := by intro h; have hh := congrFun h ⟨1,by decide⟩; contradiction
theorem event3631_target_in_image : InImage (matrixOf 4 3 b_S0_21_146_d2.outgoing) event3631Target := ⟨event3631Source,event3631_differential⟩
def event3744Source : Vec 3 := (fun i => ([true,true,false] : List Bool)[i.val]!)
def event3744Target : Vec 2 := (fun i => ([true,false] : List Bool)[i.val]!)
theorem event3744_differential : eval (matrixOf 2 3 b_S0_18_144_d4.outgoing) event3744Source = event3744Target := by funext i; exact (show ∀ i, eval (matrixOf 2 3 b_S0_18_144_d4.outgoing) event3744Source i = event3744Target i from by decide) i
theorem event3744_target_nonzero : event3744Target ≠ zero := by intro h; have hh := congrFun h ⟨0,by decide⟩; contradiction
theorem event3744_target_in_image : InImage (matrixOf 2 3 b_S0_18_144_d4.outgoing) event3744Target := ⟨event3744Source,event3744_differential⟩
def event3745Source : Vec 3 := (fun i => ([false,true,true] : List Bool)[i.val]!)
def event3745Target : Vec 2 := (fun i => ([false,true] : List Bool)[i.val]!)
theorem event3745_differential : eval (matrixOf 2 3 b_S0_18_144_d4.outgoing) event3745Source = event3745Target := by funext i; exact (show ∀ i, eval (matrixOf 2 3 b_S0_18_144_d4.outgoing) event3745Source i = event3745Target i from by decide) i
theorem event3745_target_nonzero : event3745Target ≠ zero := by intro h; have hh := congrFun h ⟨1,by decide⟩; contradiction
theorem event3745_target_in_image : InImage (matrixOf 2 3 b_S0_18_144_d4.outgoing) event3745Target := ⟨event3745Source,event3745_differential⟩
def event3746Source : Vec 4 := (fun i => ([false,false,false,true] : List Bool)[i.val]!)
def event3746Target : Vec 2 := (fun i => ([false,true] : List Bool)[i.val]!)
theorem event3746_differential : eval (matrixOf 2 4 b_S0_22_147_d2.outgoing) event3746Source = event3746Target := by funext i; exact (show ∀ i, eval (matrixOf 2 4 b_S0_22_147_d2.outgoing) event3746Source i = event3746Target i from by decide) i
theorem event3746_target_nonzero : event3746Target ≠ zero := by intro h; have hh := congrFun h ⟨1,by decide⟩; contradiction
theorem event3746_target_in_image : InImage (matrixOf 2 4 b_S0_22_147_d2.outgoing) event3746Target := ⟨event3746Source,event3746_differential⟩
def event3747Source : Vec 4 := (fun i => ([false,false,true,false] : List Bool)[i.val]!)
def event3747Target : Vec 2 := (fun i => ([true,false] : List Bool)[i.val]!)
theorem event3747_differential : eval (matrixOf 2 4 b_S0_22_147_d2.outgoing) event3747Source = event3747Target := by funext i; exact (show ∀ i, eval (matrixOf 2 4 b_S0_22_147_d2.outgoing) event3747Source i = event3747Target i from by decide) i
theorem event3747_target_nonzero : event3747Target ≠ zero := by intro h; have hh := congrFun h ⟨0,by decide⟩; contradiction
theorem event3747_target_in_image : InImage (matrixOf 2 4 b_S0_22_147_d2.outgoing) event3747Target := ⟨event3747Source,event3747_differential⟩
def event3812Source : Vec 1 := (fun i => ([true] : List Bool)[i.val]!)
def event3812Target : Vec 2 := (fun i => ([true,false] : List Bool)[i.val]!)
theorem event3812_differential : eval (matrixOf 2 1 b_S0_23_148_d3.outgoing) event3812Source = event3812Target := by funext i; exact (show ∀ i, eval (matrixOf 2 1 b_S0_23_148_d3.outgoing) event3812Source i = event3812Target i from by decide) i
theorem event3812_target_nonzero : event3812Target ≠ zero := by intro h; have hh := congrFun h ⟨0,by decide⟩; contradiction
theorem event3812_target_in_image : InImage (matrixOf 2 1 b_S0_23_148_d3.outgoing) event3812Target := ⟨event3812Source,event3812_differential⟩
def event3813Source : Vec 2 := (fun i => ([false,true] : List Bool)[i.val]!)
def event3813Target : Vec 3 := (fun i => ([false,false,true] : List Bool)[i.val]!)
theorem event3813_differential : eval (matrixOf 3 2 b_S0_23_148_d2.outgoing) event3813Source = event3813Target := by funext i; exact (show ∀ i, eval (matrixOf 3 2 b_S0_23_148_d2.outgoing) event3813Source i = event3813Target i from by decide) i
theorem event3813_target_nonzero : event3813Target ≠ zero := by intro h; have hh := congrFun h ⟨2,by decide⟩; contradiction
theorem event3813_target_in_image : InImage (matrixOf 3 2 b_S0_23_148_d2.outgoing) event3813Target := ⟨event3813Source,event3813_differential⟩
def event3896Source : Vec 1 := (fun i => ([true] : List Bool)[i.val]!)
def event3896Target : Vec 4 := (fun i => ([false,true,false,false] : List Bool)[i.val]!)
theorem event3896_differential : eval (matrixOf 4 1 b_S0_24_149_d2.outgoing) event3896Source = event3896Target := by funext i; exact (show ∀ i, eval (matrixOf 4 1 b_S0_24_149_d2.outgoing) event3896Source i = event3896Target i from by decide) i
theorem event3896_target_nonzero : event3896Target ≠ zero := by intro h; have hh := congrFun h ⟨1,by decide⟩; contradiction
theorem event3896_target_in_image : InImage (matrixOf 4 1 b_S0_24_149_d2.outgoing) event3896Target := ⟨event3896Source,event3896_differential⟩
def event3995Source : Vec 4 := (fun i => ([false,true,false,false] : List Bool)[i.val]!)
def event3995Target : Vec 2 := (fun i => ([true,false] : List Bool)[i.val]!)
theorem event3995_differential : eval (matrixOf 2 4 b_S0_25_150_d2.outgoing) event3995Source = event3995Target := by funext i; exact (show ∀ i, eval (matrixOf 2 4 b_S0_25_150_d2.outgoing) event3995Source i = event3995Target i from by decide) i
theorem event3995_target_nonzero : event3995Target ≠ zero := by intro h; have hh := congrFun h ⟨0,by decide⟩; contradiction
theorem event3995_target_in_image : InImage (matrixOf 2 4 b_S0_25_150_d2.outgoing) event3995Target := ⟨event3995Source,event3995_differential⟩
def event4092Source : Vec 1 := (fun i => ([true] : List Bool)[i.val]!)
def event4092Target : Vec 2 := (fun i => ([false,true] : List Bool)[i.val]!)
theorem event4092_differential : eval (matrixOf 2 1 b_S0_26_151_d2.outgoing) event4092Source = event4092Target := by funext i; exact (show ∀ i, eval (matrixOf 2 1 b_S0_26_151_d2.outgoing) event4092Source i = event4092Target i from by decide) i
theorem event4092_target_nonzero : event4092Target ≠ zero := by intro h; have hh := congrFun h ⟨1,by decide⟩; contradiction
theorem event4092_target_in_image : InImage (matrixOf 2 1 b_S0_26_151_d2.outgoing) event4092Target := ⟨event4092Source,event4092_differential⟩
def event4162Source : Vec 2 := (fun i => ([false,true] : List Bool)[i.val]!)
def event4162Target : Vec 3 := (fun i => ([false,false,true] : List Bool)[i.val]!)
theorem event4162_differential : eval (matrixOf 3 2 b_S0_27_152_d2.outgoing) event4162Source = event4162Target := by funext i; exact (show ∀ i, eval (matrixOf 3 2 b_S0_27_152_d2.outgoing) event4162Source i = event4162Target i from by decide) i
theorem event4162_target_nonzero : event4162Target ≠ zero := by intro h; have hh := congrFun h ⟨2,by decide⟩; contradiction
theorem event4162_target_in_image : InImage (matrixOf 3 2 b_S0_27_152_d2.outgoing) event4162Target := ⟨event4162Source,event4162_differential⟩
def event4163Source : Vec 2 := (fun i => ([true,false] : List Bool)[i.val]!)
def event4163Target : Vec 3 := (fun i => ([true,false,false] : List Bool)[i.val]!)
theorem event4163_differential : eval (matrixOf 3 2 b_S0_27_152_d2.outgoing) event4163Source = event4163Target := by funext i; exact (show ∀ i, eval (matrixOf 3 2 b_S0_27_152_d2.outgoing) event4163Source i = event4163Target i from by decide) i
theorem event4163_target_nonzero : event4163Target ≠ zero := by intro h; have hh := congrFun h ⟨0,by decide⟩; contradiction
theorem event4163_target_in_image : InImage (matrixOf 3 2 b_S0_27_152_d2.outgoing) event4163Target := ⟨event4163Source,event4163_differential⟩
def event4263Source : Vec 4 := (fun i => ([true,false,false,false] : List Bool)[i.val]!)
def event4263Target : Vec 4 := (fun i => ([false,false,true,false] : List Bool)[i.val]!)
theorem event4263_differential : eval (matrixOf 4 4 b_S0_26_152_d2.outgoing) event4263Source = event4263Target := by funext i; exact (show ∀ i, eval (matrixOf 4 4 b_S0_26_152_d2.outgoing) event4263Source i = event4263Target i from by decide) i
theorem event4263_target_nonzero : event4263Target ≠ zero := by intro h; have hh := congrFun h ⟨2,by decide⟩; contradiction
theorem event4263_target_in_image : InImage (matrixOf 4 4 b_S0_26_152_d2.outgoing) event4263Target := ⟨event4263Source,event4263_differential⟩
def event4264Source : Vec 4 := (fun i => ([false,true,false,false] : List Bool)[i.val]!)
def event4264Target : Vec 4 := (fun i => ([false,true,false,false] : List Bool)[i.val]!)
theorem event4264_differential : eval (matrixOf 4 4 b_S0_26_152_d2.outgoing) event4264Source = event4264Target := by funext i; exact (show ∀ i, eval (matrixOf 4 4 b_S0_26_152_d2.outgoing) event4264Source i = event4264Target i from by decide) i
theorem event4264_target_nonzero : event4264Target ≠ zero := by intro h; have hh := congrFun h ⟨1,by decide⟩; contradiction
theorem event4264_target_in_image : InImage (matrixOf 4 4 b_S0_26_152_d2.outgoing) event4264Target := ⟨event4264Source,event4264_differential⟩
def event4265Source : Vec 4 := (fun i => ([false,false,false,true] : List Bool)[i.val]!)
def event4265Target : Vec 2 := (fun i => ([false,true] : List Bool)[i.val]!)
theorem event4265_differential : eval (matrixOf 2 4 b_S0_28_153_d2.outgoing) event4265Source = event4265Target := by funext i; exact (show ∀ i, eval (matrixOf 2 4 b_S0_28_153_d2.outgoing) event4265Source i = event4265Target i from by decide) i
theorem event4265_target_nonzero : event4265Target ≠ zero := by intro h; have hh := congrFun h ⟨1,by decide⟩; contradiction
theorem event4265_target_in_image : InImage (matrixOf 2 4 b_S0_28_153_d2.outgoing) event4265Target := ⟨event4265Source,event4265_differential⟩
def event4266Source : Vec 4 := (fun i => ([true,false,false,false] : List Bool)[i.val]!)
def event4266Target : Vec 2 := (fun i => ([true,false] : List Bool)[i.val]!)
theorem event4266_differential : eval (matrixOf 2 4 b_S0_28_153_d2.outgoing) event4266Source = event4266Target := by funext i; exact (show ∀ i, eval (matrixOf 2 4 b_S0_28_153_d2.outgoing) event4266Source i = event4266Target i from by decide) i
theorem event4266_target_nonzero : event4266Target ≠ zero := by intro h; have hh := congrFun h ⟨0,by decide⟩; contradiction
theorem event4266_target_in_image : InImage (matrixOf 2 4 b_S0_28_153_d2.outgoing) event4266Target := ⟨event4266Source,event4266_differential⟩
def event4337Source : Vec 5 := (fun i => ([true,false,false,false,false] : List Bool)[i.val]!)
def event4337Target : Vec 2 := (fun i => ([true,false] : List Bool)[i.val]!)
theorem event4337_differential : eval (matrixOf 2 5 b_S0_27_153_d2.outgoing) event4337Source = event4337Target := by funext i; exact (show ∀ i, eval (matrixOf 2 5 b_S0_27_153_d2.outgoing) event4337Source i = event4337Target i from by decide) i
theorem event4337_target_nonzero : event4337Target ≠ zero := by intro h; have hh := congrFun h ⟨0,by decide⟩; contradiction
theorem event4337_target_in_image : InImage (matrixOf 2 5 b_S0_27_153_d2.outgoing) event4337Target := ⟨event4337Source,event4337_differential⟩
def event4338Source : Vec 1 := (fun i => ([true] : List Bool)[i.val]!)
def event4338Target : Vec 1 := (fun i => ([true] : List Bool)[i.val]!)
theorem event4338_differential : eval (matrixOf 1 1 b_S0_29_154_d3.outgoing) event4338Source = event4338Target := by funext i; exact (show ∀ i, eval (matrixOf 1 1 b_S0_29_154_d3.outgoing) event4338Source i = event4338Target i from by decide) i
theorem event4338_target_nonzero : event4338Target ≠ zero := by intro h; have hh := congrFun h ⟨0,by decide⟩; contradiction
theorem event4338_target_in_image : InImage (matrixOf 1 1 b_S0_29_154_d3.outgoing) event4338Target := ⟨event4338Source,event4338_differential⟩
def event4411Source : Vec 3 := (fun i => ([true,false,false] : List Bool)[i.val]!)
def event4411Target : Vec 2 := (fun i => ([false,true] : List Bool)[i.val]!)
theorem event4411_differential : eval (matrixOf 2 3 b_S0_28_154_d2.outgoing) event4411Source = event4411Target := by funext i; exact (show ∀ i, eval (matrixOf 2 3 b_S0_28_154_d2.outgoing) event4411Source i = event4411Target i from by decide) i
theorem event4411_target_nonzero : event4411Target ≠ zero := by intro h; have hh := congrFun h ⟨1,by decide⟩; contradiction
theorem event4411_target_in_image : InImage (matrixOf 2 3 b_S0_28_154_d2.outgoing) event4411Target := ⟨event4411Source,event4411_differential⟩
def event4412Source : Vec 2 := (fun i => ([true,false] : List Bool)[i.val]!)
def event4412Target : Vec 2 := (fun i => ([false,true] : List Bool)[i.val]!)
theorem event4412_differential : eval (matrixOf 2 2 b_S0_30_155_d2.outgoing) event4412Source = event4412Target := by funext i; exact (show ∀ i, eval (matrixOf 2 2 b_S0_30_155_d2.outgoing) event4412Source i = event4412Target i from by decide) i
theorem event4412_target_nonzero : event4412Target ≠ zero := by intro h; have hh := congrFun h ⟨1,by decide⟩; contradiction
theorem event4412_target_in_image : InImage (matrixOf 2 2 b_S0_30_155_d2.outgoing) event4412Target := ⟨event4412Source,event4412_differential⟩
def event4501Source : Vec 3 := (fun i => ([true,false,false] : List Bool)[i.val]!)
def event4501Target : Vec 3 := (fun i => ([false,true,false] : List Bool)[i.val]!)
theorem event4501_differential : eval (matrixOf 3 3 b_S0_29_155_d2.outgoing) event4501Source = event4501Target := by funext i; exact (show ∀ i, eval (matrixOf 3 3 b_S0_29_155_d2.outgoing) event4501Source i = event4501Target i from by decide) i
theorem event4501_target_nonzero : event4501Target ≠ zero := by intro h; have hh := congrFun h ⟨1,by decide⟩; contradiction
theorem event4501_target_in_image : InImage (matrixOf 3 3 b_S0_29_155_d2.outgoing) event4501Target := ⟨event4501Source,event4501_differential⟩
def event4502Source : Vec 3 := (fun i => ([false,true,false] : List Bool)[i.val]!)
def event4502Target : Vec 3 := (fun i => ([false,false,true] : List Bool)[i.val]!)
theorem event4502_differential : eval (matrixOf 3 3 b_S0_29_155_d2.outgoing) event4502Source = event4502Target := by funext i; exact (show ∀ i, eval (matrixOf 3 3 b_S0_29_155_d2.outgoing) event4502Source i = event4502Target i from by decide) i
theorem event4502_target_nonzero : event4502Target ≠ zero := by intro h; have hh := congrFun h ⟨2,by decide⟩; contradiction
theorem event4502_target_in_image : InImage (matrixOf 3 3 b_S0_29_155_d2.outgoing) event4502Target := ⟨event4502Source,event4502_differential⟩
def event4503Source : Vec 1 := (fun i => ([true] : List Bool)[i.val]!)
def event4503Target : Vec 1 := (fun i => ([true] : List Bool)[i.val]!)
theorem event4503_differential : eval (matrixOf 1 1 b_S0_31_156_d4.outgoing) event4503Source = event4503Target := by funext i; exact (show ∀ i, eval (matrixOf 1 1 b_S0_31_156_d4.outgoing) event4503Source i = event4503Target i from by decide) i
theorem event4503_target_nonzero : event4503Target ≠ zero := by intro h; have hh := congrFun h ⟨0,by decide⟩; contradiction
theorem event4503_target_in_image : InImage (matrixOf 1 1 b_S0_31_156_d4.outgoing) event4503Target := ⟨event4503Source,event4503_differential⟩
def event4671Source : Vec 1 := (fun i => ([true] : List Bool)[i.val]!)
def event4671Target : Vec 2 := (fun i => ([false,true] : List Bool)[i.val]!)
theorem event4671_differential : eval (matrixOf 2 1 b_S0_33_158_d2.outgoing) event4671Source = event4671Target := by funext i; exact (show ∀ i, eval (matrixOf 2 1 b_S0_33_158_d2.outgoing) event4671Source i = event4671Target i from by decide) i
theorem event4671_target_nonzero : event4671Target ≠ zero := by intro h; have hh := congrFun h ⟨1,by decide⟩; contradiction
theorem event4671_target_in_image : InImage (matrixOf 2 1 b_S0_33_158_d2.outgoing) event4671Target := ⟨event4671Source,event4671_differential⟩
def event4763Source : Vec 2 := (fun i => ([true,false] : List Bool)[i.val]!)
def event4763Target : Vec 2 := (fun i => ([false,true] : List Bool)[i.val]!)
theorem event4763_differential : eval (matrixOf 2 2 b_S0_32_158_d2.outgoing) event4763Source = event4763Target := by funext i; exact (show ∀ i, eval (matrixOf 2 2 b_S0_32_158_d2.outgoing) event4763Source i = event4763Target i from by decide) i
theorem event4763_target_nonzero : event4763Target ≠ zero := by intro h; have hh := congrFun h ⟨1,by decide⟩; contradiction
theorem event4763_target_in_image : InImage (matrixOf 2 2 b_S0_32_158_d2.outgoing) event4763Target := ⟨event4763Source,event4763_differential⟩
def event4764Source : Vec 2 := (fun i => ([false,true] : List Bool)[i.val]!)
def event4764Target : Vec 1 := (fun i => ([true] : List Bool)[i.val]!)
theorem event4764_differential : eval (matrixOf 1 2 b_S0_31_157_d3.outgoing) event4764Source = event4764Target := by funext i; exact (show ∀ i, eval (matrixOf 1 2 b_S0_31_157_d3.outgoing) event4764Source i = event4764Target i from by decide) i
theorem event4764_target_nonzero : event4764Target ≠ zero := by intro h; have hh := congrFun h ⟨0,by decide⟩; contradiction
theorem event4764_target_in_image : InImage (matrixOf 1 2 b_S0_31_157_d3.outgoing) event4764Target := ⟨event4764Source,event4764_differential⟩
def event4929Source : Vec 2 := (fun i => ([false,true] : List Bool)[i.val]!)
def event4929Target : Vec 1 := (fun i => ([true] : List Bool)[i.val]!)
theorem event4929_differential : eval (matrixOf 1 2 b_S0_33_159_d3.outgoing) event4929Source = event4929Target := by funext i; exact (show ∀ i, eval (matrixOf 1 2 b_S0_33_159_d3.outgoing) event4929Source i = event4929Target i from by decide) i
theorem event4929_target_nonzero : event4929Target ≠ zero := by intro h; have hh := congrFun h ⟨0,by decide⟩; contradiction
theorem event4929_target_in_image : InImage (matrixOf 1 2 b_S0_33_159_d3.outgoing) event4929Target := ⟨event4929Source,event4929_differential⟩
def event4930Source : Vec 2 := (fun i => ([true,false] : List Bool)[i.val]!)
def event4930Target : Vec 2 := (fun i => ([false,true] : List Bool)[i.val]!)
theorem event4930_differential : eval (matrixOf 2 2 b_S0_36_161_d2.outgoing) event4930Source = event4930Target := by funext i; exact (show ∀ i, eval (matrixOf 2 2 b_S0_36_161_d2.outgoing) event4930Source i = event4930Target i from by decide) i
theorem event4930_target_nonzero : event4930Target ≠ zero := by intro h; have hh := congrFun h ⟨1,by decide⟩; contradiction
theorem event4930_target_in_image : InImage (matrixOf 2 2 b_S0_36_161_d2.outgoing) event4930Target := ⟨event4930Source,event4930_differential⟩
def event5027Source : Vec 2 := (fun i => ([true,false] : List Bool)[i.val]!)
def event5027Target : Vec 2 := (fun i => ([false,true] : List Bool)[i.val]!)
theorem event5027_differential : eval (matrixOf 2 2 b_S0_35_161_d2.outgoing) event5027Source = event5027Target := by funext i; exact (show ∀ i, eval (matrixOf 2 2 b_S0_35_161_d2.outgoing) event5027Source i = event5027Target i from by decide) i
theorem event5027_target_nonzero : event5027Target ≠ zero := by intro h; have hh := congrFun h ⟨1,by decide⟩; contradiction
theorem event5027_target_in_image : InImage (matrixOf 2 2 b_S0_35_161_d2.outgoing) event5027Target := ⟨event5027Source,event5027_differential⟩
def event5028Source : Vec 2 := (fun i => ([true,false] : List Bool)[i.val]!)
def event5028Target : Vec 1 := (fun i => ([true] : List Bool)[i.val]!)
theorem event5028_differential : eval (matrixOf 1 2 b_S0_37_162_d2.outgoing) event5028Source = event5028Target := by funext i; exact (show ∀ i, eval (matrixOf 1 2 b_S0_37_162_d2.outgoing) event5028Source i = event5028Target i from by decide) i
theorem event5028_target_nonzero : event5028Target ≠ zero := by intro h; have hh := congrFun h ⟨0,by decide⟩; contradiction
theorem event5028_target_in_image : InImage (matrixOf 1 2 b_S0_37_162_d2.outgoing) event5028Target := ⟨event5028Source,event5028_differential⟩
def event5143Source : Vec 1 := (fun i => ([true] : List Bool)[i.val]!)
def event5143Target : Vec 2 := (fun i => ([true,false] : List Bool)[i.val]!)
theorem event5143_differential : eval (matrixOf 2 1 b_S0_38_163_d3.outgoing) event5143Source = event5143Target := by funext i; exact (show ∀ i, eval (matrixOf 2 1 b_S0_38_163_d3.outgoing) event5143Source i = event5143Target i from by decide) i
theorem event5143_target_nonzero : event5143Target ≠ zero := by intro h; have hh := congrFun h ⟨0,by decide⟩; contradiction
theorem event5143_target_in_image : InImage (matrixOf 2 1 b_S0_38_163_d3.outgoing) event5143Target := ⟨event5143Source,event5143_differential⟩
def event5217Source : Vec 1 := (fun i => ([true] : List Bool)[i.val]!)
def event5217Target : Vec 1 := (fun i => ([true] : List Bool)[i.val]!)
theorem event5217_differential : eval (matrixOf 1 1 b_S0_39_164_d4.outgoing) event5217Source = event5217Target := by funext i; exact (show ∀ i, eval (matrixOf 1 1 b_S0_39_164_d4.outgoing) event5217Source i = event5217Target i from by decide) i
theorem event5217_target_nonzero : event5217Target ≠ zero := by intro h; have hh := congrFun h ⟨0,by decide⟩; contradiction
theorem event5217_target_in_image : InImage (matrixOf 1 1 b_S0_39_164_d4.outgoing) event5217Target := ⟨event5217Source,event5217_differential⟩
def event5326Source : Vec 1 := (fun i => ([true] : List Bool)[i.val]!)
def event5326Target : Vec 2 := (fun i => ([false,true] : List Bool)[i.val]!)
theorem event5326_differential : eval (matrixOf 2 1 b_S0_38_164_d2.outgoing) event5326Source = event5326Target := by funext i; exact (show ∀ i, eval (matrixOf 2 1 b_S0_38_164_d2.outgoing) event5326Source i = event5326Target i from by decide) i
theorem event5326_target_nonzero : event5326Target ≠ zero := by intro h; have hh := congrFun h ⟨1,by decide⟩; contradiction
theorem event5326_target_in_image : InImage (matrixOf 2 1 b_S0_38_164_d2.outgoing) event5326Target := ⟨event5326Source,event5326_differential⟩
def event5327Source : Vec 2 := (fun i => ([true,false] : List Bool)[i.val]!)
def event5327Target : Vec 2 := (fun i => ([false,true] : List Bool)[i.val]!)
theorem event5327_differential : eval (matrixOf 2 2 b_S0_40_165_d2.outgoing) event5327Source = event5327Target := by funext i; exact (show ∀ i, eval (matrixOf 2 2 b_S0_40_165_d2.outgoing) event5327Source i = event5327Target i from by decide) i
theorem event5327_target_nonzero : event5327Target ≠ zero := by intro h; have hh := congrFun h ⟨1,by decide⟩; contradiction
theorem event5327_target_in_image : InImage (matrixOf 2 2 b_S0_40_165_d2.outgoing) event5327Target := ⟨event5327Source,event5327_differential⟩
def event5441Source : Vec 1 := (fun i => ([true] : List Bool)[i.val]!)
def event5441Target : Vec 1 := (fun i => ([true] : List Bool)[i.val]!)
theorem event5441_differential : eval (matrixOf 1 1 b_S0_41_166_d3.outgoing) event5441Source = event5441Target := by funext i; exact (show ∀ i, eval (matrixOf 1 1 b_S0_41_166_d3.outgoing) event5441Source i = event5441Target i from by decide) i
theorem event5441_target_nonzero : event5441Target ≠ zero := by intro h; have hh := congrFun h ⟨0,by decide⟩; contradiction
theorem event5441_target_in_image : InImage (matrixOf 1 1 b_S0_41_166_d3.outgoing) event5441Target := ⟨event5441Source,event5441_differential⟩
def event5442Source : Vec 2 := (fun i => ([false,true] : List Bool)[i.val]!)
def event5442Target : Vec 2 := (fun i => ([false,true] : List Bool)[i.val]!)
theorem event5442_differential : eval (matrixOf 2 2 b_S0_41_166_d2.outgoing) event5442Source = event5442Target := by funext i; exact (show ∀ i, eval (matrixOf 2 2 b_S0_41_166_d2.outgoing) event5442Source i = event5442Target i from by decide) i
theorem event5442_target_nonzero : event5442Target ≠ zero := by intro h; have hh := congrFun h ⟨1,by decide⟩; contradiction
theorem event5442_target_in_image : InImage (matrixOf 2 2 b_S0_41_166_d2.outgoing) event5442Target := ⟨event5442Source,event5442_differential⟩
def event5540Source : Vec 1 := (fun i => ([true] : List Bool)[i.val]!)
def event5540Target : Vec 2 := (fun i => ([false,true] : List Bool)[i.val]!)
theorem event5540_differential : eval (matrixOf 2 1 b_S0_42_167_d2.outgoing) event5540Source = event5540Target := by funext i; exact (show ∀ i, eval (matrixOf 2 1 b_S0_42_167_d2.outgoing) event5540Source i = event5540Target i from by decide) i
theorem event5540_target_nonzero : event5540Target ≠ zero := by intro h; have hh := congrFun h ⟨1,by decide⟩; contradiction
theorem event5540_target_in_image : InImage (matrixOf 2 1 b_S0_42_167_d2.outgoing) event5540Target := ⟨event5540Source,event5540_differential⟩
def event5635Source : Vec 1 := (fun i => ([true] : List Bool)[i.val]!)
def event5635Target : Vec 1 := (fun i => ([true] : List Bool)[i.val]!)
theorem event5635_differential : eval (matrixOf 1 1 b_S0_43_168_d4.outgoing) event5635Source = event5635Target := by funext i; exact (show ∀ i, eval (matrixOf 1 1 b_S0_43_168_d4.outgoing) event5635Source i = event5635Target i from by decide) i
theorem event5635_target_nonzero : event5635Target ≠ zero := by intro h; have hh := congrFun h ⟨0,by decide⟩; contradiction
theorem event5635_target_in_image : InImage (matrixOf 1 1 b_S0_43_168_d4.outgoing) event5635Target := ⟨event5635Source,event5635_differential⟩
def event5636Source : Vec 2 := (fun i => ([false,true] : List Bool)[i.val]!)
def event5636Target : Vec 1 := (fun i => ([true] : List Bool)[i.val]!)
theorem event5636_differential : eval (matrixOf 1 2 b_S0_43_168_d2.outgoing) event5636Source = event5636Target := by funext i; exact (show ∀ i, eval (matrixOf 1 2 b_S0_43_168_d2.outgoing) event5636Source i = event5636Target i from by decide) i
theorem event5636_target_nonzero : event5636Target ≠ zero := by intro h; have hh := congrFun h ⟨0,by decide⟩; contradiction
theorem event5636_target_in_image : InImage (matrixOf 1 2 b_S0_43_168_d2.outgoing) event5636Target := ⟨event5636Source,event5636_differential⟩
def event5772Source : Vec 1 := (fun i => ([true] : List Bool)[i.val]!)
def event5772Target : Vec 1 := (fun i => ([true] : List Bool)[i.val]!)
theorem event5772_differential : eval (matrixOf 1 1 b_S0_44_169_d2.outgoing) event5772Source = event5772Target := by funext i; exact (show ∀ i, eval (matrixOf 1 1 b_S0_44_169_d2.outgoing) event5772Source i = event5772Target i from by decide) i
theorem event5772_target_nonzero : event5772Target ≠ zero := by intro h; have hh := congrFun h ⟨0,by decide⟩; contradiction
theorem event5772_target_in_image : InImage (matrixOf 1 1 b_S0_44_169_d2.outgoing) event5772Target := ⟨event5772Source,event5772_differential⟩
def event5862Source : Vec 3 := (fun i => ([false,false,true] : List Bool)[i.val]!)
def event5862Target : Vec 1 := (fun i => ([true] : List Bool)[i.val]!)
theorem event5862_differential : eval (matrixOf 1 3 b_S0_42_168_d3.outgoing) event5862Source = event5862Target := by funext i; exact (show ∀ i, eval (matrixOf 1 3 b_S0_42_168_d3.outgoing) event5862Source i = event5862Target i from by decide) i
theorem event5862_target_nonzero : event5862Target ≠ zero := by intro h; have hh := congrFun h ⟨0,by decide⟩; contradiction
theorem event5862_target_in_image : InImage (matrixOf 1 3 b_S0_42_168_d3.outgoing) event5862Target := ⟨event5862Source,event5862_differential⟩
def event5977Source : Vec 2 := (fun i => ([false,true] : List Bool)[i.val]!)
def event5977Target : Vec 1 := (fun i => ([true] : List Bool)[i.val]!)
theorem event5977_differential : eval (matrixOf 1 2 b_S0_42_168_d4.outgoing) event5977Source = event5977Target := by funext i; exact (show ∀ i, eval (matrixOf 1 2 b_S0_42_168_d4.outgoing) event5977Source i = event5977Target i from by decide) i
theorem event5977_target_nonzero : event5977Target ≠ zero := by intro h; have hh := congrFun h ⟨0,by decide⟩; contradiction
theorem event5977_target_in_image : InImage (matrixOf 1 2 b_S0_42_168_d4.outgoing) event5977Target := ⟨event5977Source,event5977_differential⟩
def event6296Source : Vec 2 := (fun i => ([false,true] : List Bool)[i.val]!)
def event6296Target : Vec 1 := (fun i => ([true] : List Bool)[i.val]!)
theorem event6296_differential : eval (matrixOf 1 2 b_S0_45_171_d4.outgoing) event6296Source = event6296Target := by funext i; exact (show ∀ i, eval (matrixOf 1 2 b_S0_45_171_d4.outgoing) event6296Source i = event6296Target i from by decide) i
theorem event6296_target_nonzero : event6296Target ≠ zero := by intro h; have hh := congrFun h ⟨0,by decide⟩; contradiction
theorem event6296_target_in_image : InImage (matrixOf 1 2 b_S0_45_171_d4.outgoing) event6296Target := ⟨event6296Source,event6296_differential⟩
def event6651Source : Vec 1 := (fun i => ([true] : List Bool)[i.val]!)
def event6651Target : Vec 1 := (fun i => ([true] : List Bool)[i.val]!)
theorem event6651_differential : eval (matrixOf 1 1 b_S0_52_177_d4.outgoing) event6651Source = event6651Target := by funext i; exact (show ∀ i, eval (matrixOf 1 1 b_S0_52_177_d4.outgoing) event6651Source i = event6651Target i from by decide) i
theorem event6651_target_nonzero : event6651Target ≠ zero := by intro h; have hh := congrFun h ⟨0,by decide⟩; contradiction
theorem event6651_target_in_image : InImage (matrixOf 1 1 b_S0_52_177_d4.outgoing) event6651Target := ⟨event6651Source,event6651_differential⟩
def event7007Source : Vec 1 := (fun i => ([true] : List Bool)[i.val]!)
def event7007Target : Vec 1 := (fun i => ([true] : List Bool)[i.val]!)
theorem event7007_differential : eval (matrixOf 1 1 b_S0_55_180_d2.outgoing) event7007Source = event7007Target := by funext i; exact (show ∀ i, eval (matrixOf 1 1 b_S0_55_180_d2.outgoing) event7007Source i = event7007Target i from by decide) i
theorem event7007_target_nonzero : event7007Target ≠ zero := by intro h; have hh := congrFun h ⟨0,by decide⟩; contradiction
theorem event7007_target_in_image : InImage (matrixOf 1 1 b_S0_55_180_d2.outgoing) event7007Target := ⟨event7007Source,event7007_differential⟩
def event7162Source : Vec 1 := (fun i => ([true] : List Bool)[i.val]!)
def event7162Target : Vec 1 := (fun i => ([true] : List Bool)[i.val]!)
theorem event7162_differential : eval (matrixOf 1 1 b_S0_56_181_d2.outgoing) event7162Source = event7162Target := by funext i; exact (show ∀ i, eval (matrixOf 1 1 b_S0_56_181_d2.outgoing) event7162Source i = event7162Target i from by decide) i
theorem event7162_target_nonzero : event7162Target ≠ zero := by intro h; have hh := congrFun h ⟨0,by decide⟩; contradiction
theorem event7162_target_in_image : InImage (matrixOf 1 1 b_S0_56_181_d2.outgoing) event7162Target := ⟨event7162Source,event7162_differential⟩
def event7247Source : Vec 1 := (fun i => ([true] : List Bool)[i.val]!)
def event7247Target : Vec 1 := (fun i => ([true] : List Bool)[i.val]!)
theorem event7247_differential : eval (matrixOf 1 1 b_S0_54_180_d3.outgoing) event7247Source = event7247Target := by funext i; exact (show ∀ i, eval (matrixOf 1 1 b_S0_54_180_d3.outgoing) event7247Source i = event7247Target i from by decide) i
theorem event7247_target_nonzero : event7247Target ≠ zero := by intro h; have hh := congrFun h ⟨0,by decide⟩; contradiction
theorem event7247_target_in_image : InImage (matrixOf 1 1 b_S0_54_180_d3.outgoing) event7247Target := ⟨event7247Source,event7247_differential⟩
end AggregateD5Conditional.Events
