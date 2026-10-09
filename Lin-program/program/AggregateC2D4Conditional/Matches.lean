import AggregateC2D4Conditional.Events
namespace AggregateC2D4Conditional.Matches
open LinearCertificates PageTransitionCertificates Data Row2861Csigma.Naturality

theorem source_outgoing : b_S0_9_136_d2.outgoing = Row2861Csigma.Comparison.source.outgoing := by decide
theorem source_incoming : b_S0_9_136_d2.incoming = Row2861Csigma.Comparison.source.incoming := by decide
theorem target_comparison : b_S0_12_138_d2 = Row2861Csigma.Comparison.upperSource := rfl

def sourceCoordinates := homologyEquivalence _ _ b_S0_9_136_d2.comparison b_S0_9_136_d2_complete.2

theorem source_named_coordinate :
    sourceCoordinates.toCoordinates named = (fun i : Fin 2 => i.val == 0) := by
  funext i
  exact (show ∀ i : Fin 2, sourceCoordinates.toCoordinates named i = (i.val == 0) from by decide) i

theorem source_named_representative :
    ∀ i : Fin 5, b_S0_9_136_d2.comparison.inclusion i ⟨0,by decide⟩ = (i.val == 1) := by decide

def ColumnMatches (ds : S → U) : Prop := ds named = zs ∧
  (∀ i : Fin 1, matrixOf 1 2 b_S0_9_136_d3.outgoing i 0 = ue.toCoordinates (ds named) i) ∧
  (∀ i : Fin 1, matrixOf 1 2 b_S0_12_138_d3.incoming i 0 = ue.toCoordinates (ds named) i)

/-- Naturality and preservation of zero are explicit semantic premises.
The imported unknown is only replaced under this interface. -/
theorem matched (ds : S → U) (dt : T → V)
    (zeroPreserving : dt zt = zv) (naturality : ∀ x, dt (f x) = g (ds x)) :
    ColumnMatches ds := by
  have h := Row2861Csigma.Matches.matched ds dt zeroPreserving naturality
  refine ⟨h.1,?_,?_⟩
  · intro i
    have he : matrixOf 1 2 b_S0_9_136_d3.outgoing i 0 = Row2861Csigma.Matches.candidateColumn i 0 := by decide +revert
    exact he.trans (h.2 i)
  · intro i
    have he : matrixOf 1 2 b_S0_12_138_d3.incoming i 0 = Row2861Csigma.Matches.candidateColumn i 0 := by decide +revert
    exact he.trans (h.2 i)

#print axioms matched
#print axioms source_named_coordinate
end AggregateC2D4Conditional.Matches

namespace AggregateC2D4Conditional.H3D0
open LinearCertificates PageTransitionCertificates Data
open Row2796Detector.Quotient Row2796Detector.Combined

theorem source_outgoing : b_S0_8_135_d2.outgoing = ann.right.outgoing := by decide
theorem source_incoming : b_S0_8_135_d2.incoming = ann.right.incoming := by decide
theorem target_outgoing : b_S0_11_137_d2.outgoing = detect.right.outgoing := by decide
theorem target_incoming : b_S0_11_137_d2.incoming = detect.right.incoming := by decide

theorem selected_source : ∀ i : Fin 7,
  b_S0_8_135_d2.comparison.inclusion i ⟨0,by decide⟩ = (i.val == 2) := by decide

def targetCoordinates := homologyEquivalence _ _ b_S0_11_137_d2.comparison b_S0_11_137_d2_complete.2

def ColumnMatches (d : Q ann.right → Q detect.right) : Prop := d named = z detect.right ∧
  ∀ i : Fin 2, matrixOf 2 2 b_S0_8_135_d3.outgoing i 0 = targetCoordinates.toCoordinates (d named) i

theorem matched (d : Q ann.right → Q detect.right)
    (d0 : Q ann0.target → Q detect0.target) (d2 : Q ann.target → Q detect.target)
    (z0 : d0 (z ann0.target) = z detect0.target) (z2 : d2 (z ann.target) = z detect.target)
    (l0 : ∀ x, d0 (annMap0 x) = detectMap0 (d x)) (l2 : ∀ x, d2 (annMap x) = detectMap (d x)) : ColumnMatches d := by
  have hz := differential_zero d d0 d2 z0 z2 l0 l2
  refine ⟨hz, ?_⟩
  rw [hz]
  intro i
  change _ = eval b_S0_11_137_d2.comparison.projection zero i
  rw [eval_zero]
  exact (show ∀ i : Fin 2, matrixOf 2 2 b_S0_8_135_d3.outgoing i 0 = zero i from by decide) i
#print axioms matched
end AggregateC2D4Conditional.H3D0

namespace AggregateC2D4Conditional.D4
open LinearCertificates PageTransitionCertificates Data
open Row2796D4Detector

theorem source_comparison : b_S0_8_135_d3 = Comparison.namedSource := rfl
theorem target_comparison : b_S0_12_138_d3 = Comparison.source := rfl

theorem named_e4_representative : ∀ i : Fin 2,
    b_S0_8_135_d3.comparison.inclusion i ⟨0,by decide⟩ = (i.val == 0) := by decide

theorem named_e2_representative : ∀ i : Fin 7,
    b_S0_8_135_d2.comparison.inclusion i ⟨0,by decide⟩ = (i.val == 2) := by decide

def ColumnMatches (ds : Source.S → Target.U) : Prop := ds Source.named = Target.zu ∧
    ∀ i : Fin 1, matrixOf 1 2 b_S0_12_138_d4.incoming i 0 =
      Target.ue.toCoordinates (ds Source.named) i

/-- The only completed new role is the incoming column at (12,138), d4.
The unknown module source differential is arbitrary; local naturality and
zero preservation remain explicit. -/
theorem matched (outT : Matrix 3 2) (inT : Matrix 2 4)
    (ds : Source.S → Target.U) (dt : Homology outT inT → Target.V)
    (zeroPreserving : dt (Source.z outT inT) = Target.zv)
    (naturality : ∀ x, dt (Source.f outT inT x) = Target.g (ds x)) :
    ColumnMatches ds := by
  have hz := Source.named_d4_zero outT inT ds dt zeroPreserving naturality
  refine ⟨hz, ?_⟩
  rw [hz]
  intro i
  change _ = eval Comparison.source.comparison.projection zero i
  rw [eval_zero]
  exact (show ∀ i : Fin 1, matrixOf 1 2 b_S0_12_138_d4.incoming i 0 = zero i from by decide) i
#print axioms matched
end AggregateC2D4Conditional.D4

namespace AggregateC2D4Conditional.ThreeProducts
open LinearCertificates PageTransitionCertificates Data
open Row3325Detector.Quotient

theorem source_outgoing : b_S0_15_142_d2.outgoing = ann1.right.outgoing := by decide
theorem source_incoming : b_S0_15_142_d2.incoming = ann1.right.incoming := by decide
theorem target_outgoing : b_S0_18_144_d2.outgoing = detect1.right.outgoing := by decide
theorem target_incoming : b_S0_18_144_d2.incoming = detect1.right.incoming := by decide

def sourceCoordinates := homologyEquivalence _ _ b_S0_15_142_d2.comparison
  b_S0_15_142_d2_complete.2
def targetCoordinates := homologyEquivalence _ _ b_S0_18_144_d2.comparison
  b_S0_18_144_d2_complete.2

theorem source_named_coordinate :
    sourceCoordinates.toCoordinates named = (fun i : Fin 2 => i.val == 0) := by
  funext i
  exact (show ∀ i : Fin 2,
    sourceCoordinates.toCoordinates named i = (i.val == 0) from by decide) i

theorem source_named_representative : ∀ i : Fin 5,
    b_S0_15_142_d2.comparison.inclusion i ⟨0,by decide⟩ = (i.val == 2) := by decide

/-- The aggregate uses staircase order, which differs from the detector basis. -/
def targetBasisChange : Matrix 3 3 := fun i j =>
  ((i.val == 0 || i.val == 1) && j.val == 0) ||
  (i.val == 1 && j.val == 2) || (i.val == 2 && j.val == 1)

theorem target_coordinates (x : Q detect1.right) :
    targetCoordinates.toCoordinates x =
      eval targetBasisChange (Row3325Detector.Combined.ce.toCoordinates x) := by
  induction x using Quot.inductionOn with
  | h x =>
    change eval b_S0_18_144_d2.comparison.projection x.val =
      eval targetBasisChange (eval detect1.right.comparison.projection x.val)
    exact (show ∀ v : Vec 4,
      eval b_S0_18_144_d2.comparison.projection v =
        eval targetBasisChange (eval detect1.right.comparison.projection v) from by decide) x.val

def ColumnMatches (d : Q ann1.right → Q detect1.right) : Prop :=
  d named = z detect1.right ∧
    ∀ i : Fin 3, matrixOf 3 2 b_S0_18_144_d3.incoming i 0 =
      targetCoordinates.toCoordinates (d named) i

/-- Three actual descended products justify this incoming column under their
local Leibniz squares and zero preservation. The raw NULL is retained. -/
theorem matched (d : Q ann1.right → Q detect1.right)
    (d1 : Q ann1.target → Q detect1.target)
    (d8 : Q ann8.target → Q detect8.target)
    (d13 : Q ann13.target → Q detect13.target)
    (z1 : d1 (z ann1.target) = z detect1.target)
    (z8 : d8 (z ann8.target) = z detect8.target)
    (z13 : d13 (z ann13.target) = z detect13.target)
    (l1 : ∀ x, d1 (annMap1 x) = detectMap1 (d x))
    (l8 : ∀ x, d8 (annMap8 x) = detectMap8 (d x))
    (l13 : ∀ x, d13 (annMap13 x) = detectMap13 (d x)) : ColumnMatches d := by
  have h := Row3325Detector.Matches.matched d d1 d8 d13 z1 z8 z13 l1 l8 l13
  refine ⟨h.1, ?_⟩
  rw [h.1]
  intro i
  change _ = eval b_S0_18_144_d2.comparison.projection zero i
  rw [eval_zero]
  exact (show ∀ i : Fin 3,
    matrixOf 3 2 b_S0_18_144_d3.incoming i 0 = zero i from by decide) i

#print axioms matched
#print axioms target_coordinates
#print axioms source_named_coordinate
end AggregateC2D4Conditional.ThreeProducts

namespace AggregateC2D4Conditional.CnuEta
open LinearCertificates PageTransitionCertificates Data
open Row2925Detector.Naturality

theorem source_outgoing : b_S0_11_137_d2.outgoing = Row2925Detector.Comparison.source.outgoing := by decide
theorem source_incoming : b_S0_11_137_d2.incoming = Row2925Detector.Comparison.source.incoming := by decide
theorem target_comparison : b_S0_14_139_d2 = Row2925Detector.Comparison.upperSource := rfl

def sourceCoordinates := homologyEquivalence _ _ b_S0_11_137_d2.comparison
  b_S0_11_137_d2_complete.2
def targetCoordinates := homologyEquivalence _ _ b_S0_14_139_d2.comparison
  b_S0_14_139_d2_complete.2

/-- The detector basis is [local1,local2]; staircase order is
[local1+local2,local2]. This coordinate change is its own inverse. -/
def sourceBasisChange : Matrix 2 2 := fun i j => i.val == 1 || j.val == 0

theorem source_coordinates (x : S) : sourceCoordinates.toCoordinates x =
    eval sourceBasisChange (Row2925Detector.Matches.sourceCoordinates.toCoordinates x) := by
  induction x using Quot.inductionOn with
  | h x =>
    change eval b_S0_11_137_d2.comparison.projection x.val =
      eval sourceBasisChange (eval Row2925Detector.Comparison.source.comparison.projection x.val)
    exact (show ∀ v : Vec 6, eval b_S0_11_137_d2.comparison.projection v =
      eval sourceBasisChange (eval Row2925Detector.Comparison.source.comparison.projection v)
      from by decide) x.val

theorem source_named_coordinate : sourceCoordinates.toCoordinates named =
    (fun i : Fin 2 => i.val == 0) := by
  funext i
  exact (show ∀ i : Fin 2, sourceCoordinates.toCoordinates named i = (i.val == 0)
    from by decide) i

theorem source_named_representative : ∀ i : Fin 6,
    b_S0_11_137_d2.comparison.inclusion i ⟨0,by decide⟩ = (i.val == 1 || i.val == 2) := by decide

theorem target_coordinates (x : U) : targetCoordinates.toCoordinates x = ue.toCoordinates x := rfl

theorem outgoing_incoming_same : b_S0_11_137_d3.outgoing = b_S0_14_139_d3.incoming := by decide

def ColumnMatches (ds : S → U) : Prop := ds named = zs ∧
  (∀ i : Fin 1, matrixOf 1 2 b_S0_11_137_d3.outgoing i 0 =
    targetCoordinates.toCoordinates (ds named) i) ∧
  (∀ i : Fin 1, matrixOf 1 2 b_S0_14_139_d3.incoming i 0 =
    targetCoordinates.toCoordinates (ds named) i)

/-- Both completed roles use the same actual Cnu quotient map theorem.
Local d3 naturality and preservation of zero remain explicit premises. -/
theorem matched (ds : S → U) (dt : T → V)
    (zeroPreserving : dt zt = zv) (naturality : ∀ x, dt (f x) = g (ds x)) :
    ColumnMatches ds := by
  have h := Row2925Detector.Matches.matched ds dt zeroPreserving naturality
  refine ⟨h.1, ?_, ?_⟩
  · intro i
    have he : matrixOf 1 2 b_S0_11_137_d3.outgoing i 0 =
        Row2925Detector.Matches.candidateColumn i 0 := by decide +revert
    exact he.trans (h.2 i)
  · intro i
    have he : matrixOf 1 2 b_S0_14_139_d3.incoming i 0 =
        Row2925Detector.Matches.candidateColumn i 0 := by decide +revert
    exact he.trans (h.2 i)

#print axioms matched
#print axioms source_coordinates
#print axioms source_named_coordinate
end AggregateC2D4Conditional.CnuEta

namespace AggregateC2D4Conditional.C2H2
open LinearCertificates PageTransitionCertificates Data
open Row2576Detector.Quotient

theorem source_comparison : b_S0_4_132_d2 = Row2576Detector.Comparison.source := rfl
theorem target_outgoing : b_S0_7_134_d2.outgoing = Row2576Detector.Comparison.upperSource.outgoing := by decide
theorem target_incoming : b_S0_7_134_d2.incoming = Row2576Detector.Comparison.upperSource.incoming := by decide

def sourceCoordinates := homologyEquivalence _ _ b_S0_4_132_d2.comparison
  b_S0_4_132_d2_complete.2
def aggregateTargetCoordinates := homologyEquivalence _ _ b_S0_7_134_d2.comparison
  b_S0_7_134_d2_complete.2

theorem source_named_coordinate : sourceCoordinates.toCoordinates named = (fun _ : Fin 1 => true) := by
  funext i
  exact (show ∀ i : Fin 1, sourceCoordinates.toCoordinates named i = true from by decide) i

theorem source_named_representative : ∀ i : Fin 1,
    b_S0_4_132_d2.comparison.inclusion i ⟨0,by decide⟩ = true := by decide

/-- The detector orders [local0+local1,local2]; the aggregate swaps these. -/
def targetBasisChange : Matrix 2 2 := fun i j => i.val != j.val

theorem target_coordinates (x : Q Row2576Detector.Comparison.upperSource) :
    aggregateTargetCoordinates.toCoordinates x = eval targetBasisChange (targetCoordinates.toCoordinates x) := by
  induction x using Quot.inductionOn with
  | h x =>
    change eval b_S0_7_134_d2.comparison.projection x.val =
      eval targetBasisChange (eval Row2576Detector.Comparison.upperSource.comparison.projection x.val)
    exact (show ∀ v : Vec 5, eval b_S0_7_134_d2.comparison.projection v =
      eval targetBasisChange (eval Row2576Detector.Comparison.upperSource.comparison.projection v)
      from by decide) x.val

def ColumnMatches (d : Q Row2576Detector.Comparison.source → Q Row2576Detector.Comparison.upperSource) : Prop :=
  d named = z Row2576Detector.Comparison.upperSource ∧
  ∀ i : Fin 2, matrixOf 2 1 b_S0_4_132_d3.outgoing i 0 =
    aggregateTargetCoordinates.toCoordinates (d named) i

/-- C2 naturality and h2 Leibniz jointly justify the complete outgoing column.
Their local squares and zero preservation remain explicit. -/
theorem matched (d : Q Row2576Detector.Comparison.source → Q Row2576Detector.Comparison.upperSource)
    (dc2 : Q Row2576Detector.Comparison.target → Q Row2576Detector.Comparison.upperTarget)
    (dh2 : Q ann.target → Q detect.target)
    (zc2 : dc2 (z Row2576Detector.Comparison.target) = z Row2576Detector.Comparison.upperTarget)
    (zh2 : dh2 (z ann.target) = z detect.target)
    (naturality : ∀ x, dc2 (c2Map x) = c2Detect (d x))
    (leibniz : ∀ x, dh2 (annMap x) = detectMap (d x)) : ColumnMatches d := by
  have h := Row2576Detector.Matches.matched d dc2 dh2 zc2 zh2 naturality leibniz
  refine ⟨h.1, ?_⟩
  rw [h.1]
  intro i
  change _ = eval b_S0_7_134_d2.comparison.projection zero i
  rw [eval_zero]
  exact (show ∀ i : Fin 2, matrixOf 2 1 b_S0_4_132_d3.outgoing i 0 = zero i from by decide) i

#print axioms matched
#print axioms target_coordinates
#print axioms source_named_coordinate
end AggregateC2D4Conditional.C2H2

namespace AggregateC2D4Conditional.C2D4
open LinearCertificates PageTransitionCertificates Data
open Row2576D4Detector

theorem source_comparison : b_S0_4_132_d3 = Comparison.source3 := rfl
theorem target_comparison : b_S0_8_135_d3 = Comparison.target3 := rfl

def sourceCoordinates := homologyEquivalence _ _ b_S0_4_132_d3.comparison
  b_S0_4_132_d3_complete.2
def targetCoordinates := homologyEquivalence _ _ b_S0_8_135_d3.comparison
  b_S0_8_135_d3_complete.2

theorem source_named_coordinate : sourceCoordinates.toCoordinates Source.named =
    (fun _ : Fin 1 => true) := by
  funext i
  exact (show ∀ i : Fin 1, sourceCoordinates.toCoordinates Source.named i = true from by decide) i

theorem source_named_raw_representative : ∀ i : Fin 1,
    b_S0_4_132_d2.comparison.inclusion i ⟨0, by decide⟩ = true := by decide

theorem candidate_is_actual_incoming : ∀ i : Fin 2,
    matrixOf 2 1 b_S0_8_135_d4.incoming i 0 =
      Row2576D4Detector.Matches.candidateColumn i 0 := by decide

def ColumnMatches (ds : Source.S → Target.U) : Prop :=
  ds Source.named = Target.zu ∧ ∀ i : Fin 2,
    matrixOf 2 1 b_S0_8_135_d4.incoming i 0 =
      targetCoordinates.toCoordinates (ds Source.named) i

/-- The new role is the actual incoming d4 column. Row2633's earlier-page
interpretation and both local naturality squares remain explicit premises. -/
theorem matched (incoming : Matrix 6 1)
    (meaning : ImportedBoundary.IncomingMeaning incoming)
    (outT : Matrix 4 0) (inT : Matrix 0 0)
    (targetOut : Matrix 5 6) (d3Naturality : Target.Natural targetOut)
    (ds : Source.S → Target.U)
    (dt : Source.T outT inT → Homology targetOut incoming)
    (zeroPreserving : dt (Source.z outT inT) =
      (ImportedBoundary.targetEquiv targetOut incoming meaning).symm (Target.zv targetOut))
    (d4Naturality : ∀ x, dt (Source.f outT inT x) =
      (ImportedBoundary.targetEquiv targetOut incoming meaning).symm
        (Target.g targetOut d3Naturality (ds x))) : ColumnMatches ds := by
  have hz := ImportedBoundary.transported_d4_zero incoming meaning outT inT
    targetOut d3Naturality ds dt zeroPreserving d4Naturality
  refine ⟨hz, ?_⟩
  rw [hz]
  intro i
  change _ = eval b_S0_8_135_d3.comparison.projection zero i
  rw [eval_zero]
  exact (show ∀ i : Fin 2, matrixOf 2 1 b_S0_8_135_d4.incoming i 0 = zero i from by decide) i

#print axioms matched
#print axioms source_named_coordinate
end AggregateC2D4Conditional.C2D4
