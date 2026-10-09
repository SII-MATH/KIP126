import Row2907PDeltaDetection.Basic
import Fact713Row2773Refinement.Data
import ActualAdamsHomologyCoordinates.Basic

namespace Row2907PDeltaDetection.Descent
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open Row3151ActualTransport (Coordinates)
open ActualAdamsHomologyCoordinates ActualAdamsHomologyCoordinates.Meaning

abbrev factorDegree : Bidegree := ⟨12,42⟩
abbrev sourceDegree : Bidegree := ⟨16,137⟩
abbrev productDegree : Bidegree := ⟨28,179⟩
abbrev targetDegree : Bidegree := ⟨20,140⟩
abbrev knownTargetDegree : Bidegree := ⟨32,182⟩
abbrev leftD4Degree : Bidegree := ⟨16,45⟩
abbrev sourceD3 := Fact713Row2773Refinement.Data.b_S0_16_137_d3
theorem sourceD3_valid : sourceD3.Valid := Fact713Row2773Refinement.Data.b_S0_16_137_d3_valid

def swap : Matrix 2 2 := matrixOf 2 2 [false,true,true,false]
theorem source_swap_named : eval swap (fun i => i.val == 0) = (fun i => i.val == 1) := by decide
theorem source_projection_named : eval sourceD3.comparison.projection (fun i => i.val == 1) =
    (fun _ : Fin 1 => true) := by decide
theorem product_projection_named : eval Data.c28_179_3.comparison.projection (fun _ => true) =
    (fun _ : Fin 1 => true) := by decide
theorem factor_projection_named : eval Data.c12_42_3.comparison.projection (fun _ => true) =
    (fun _ : Fin 1 => true) := by decide

/-- Complete actual d3 meanings construct every relevant E4 coordinate
function. No source, product, or target E4 coordinate function is supplied. -/
structure Prefix (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S) where
  factor : Coordinates S 3 factorDegree 1
  source : Coordinates S 3 sourceDegree 2
  product : Coordinates S 3 productDegree 1
  knownTarget : Coordinates S 3 knownTargetDegree 1
  factorMeaning : Meaning S 3 factorDegree Data.c12_42_3 factor
  sourceMeaning : Meaning S 3 sourceDegree sourceD3 source
  productMeaning : Meaning S 3 productDegree Data.c28_179_3 product
  knownTargetMeaning : Meaning S 3 knownTargetDegree Data.c32_182_3 knownTarget
  factorZero : LocalZeroMeaning pages 3 factorDegree
  sourceZero : LocalZeroMeaning pages 3 sourceDegree
  productZero : LocalZeroMeaning pages 3 productDegree
  knownTargetZero : LocalZeroMeaning pages 3 knownTargetDegree

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}

noncomputable def Prefix.factor4 (C : Prefix S pages) : Coordinates S 4 factorDegree 1 :=
  C.factorMeaning.nextCoordinates pages Data.c12_42_3_valid C.factorZero
noncomputable def Prefix.source4 (C : Prefix S pages) : Coordinates S 4 sourceDegree 1 :=
  C.sourceMeaning.nextCoordinates pages sourceD3_valid C.sourceZero
noncomputable def Prefix.product4 (C : Prefix S pages) : Coordinates S 4 productDegree 1 :=
  C.productMeaning.nextCoordinates pages Data.c28_179_3_valid C.productZero
noncomputable def Prefix.knownTarget4 (C : Prefix S pages) : Coordinates S 4 knownTargetDegree 1 :=
  C.knownTargetMeaning.nextCoordinates pages Data.c32_182_3_valid C.knownTargetZero

theorem Prefix.factor_cycle (C : Prefix S pages) (x : (S.element 3 factorDegree).carrier) :
    S.differential 3 factorDegree x = S.zero 3 (AdamsTarget 3 factorDegree) := by
  apply (C.factorMeaning.cycle_iff x).mpr
  funext i
  exact Fin.elim0 i
theorem Prefix.source_cycle (C : Prefix S pages) (x : (S.element 3 sourceDegree).carrier) :
    S.differential 3 sourceDegree x = S.zero 3 (AdamsTarget 3 sourceDegree) := by
  apply (C.sourceMeaning.cycle_iff x).mpr
  exact (show ∀ v : Vec 2, eval (out sourceD3) v = zero from by decide) _
theorem Prefix.product_cycle (C : Prefix S pages) (x : (S.element 3 productDegree).carrier) :
    S.differential 3 productDegree x = S.zero 3 (AdamsTarget 3 productDegree) := by
  apply (C.productMeaning.cycle_iff x).mpr
  funext i
  exact Fin.elim0 i

/-- The actual nonzero differential is supplied at the recorded named
product, in the complete E4 coordinates constructed from the d3 meanings. -/
structure KnownDifferential (C : Prefix S pages) : Prop where
  recorded : C.knownTarget4.equivalence
    (S.differential 4 productDegree (C.product4.equivalence.symm (fun _ => true))) =
      (fun _ => true)

theorem known_nonzero (C : Prefix S pages) (K : KnownDifferential C)
    (x : (S.element 4 productDegree).carrier)
    (named : C.product4.equivalence x = fun _ => true) :
    S.differential 4 productDegree x ≠ 0 := by
  have same : x = C.product4.equivalence.symm (fun _ => true) :=
    C.product4.equivalence.injective
      (named.trans (C.product4.equivalence.apply_symm_apply _).symm)
  intro zeroDiff
  have h := K.recorded
  rw [← same] at h
  have hz := (congrArg (fun y : (S.element 4 knownTargetDegree).carrier =>
    C.knownTarget4.equivalence y) zeroDiff).trans C.knownTarget4.zero_value
  exact (show (zero : Vec 1) ≠ (fun _ => true) from by decide) (hz.symm.trans h)

#print axioms sourceD3_valid
#print axioms source_swap_named
#print axioms source_projection_named
#print axioms product_projection_named
#print axioms factor_projection_named
#print axioms Prefix.factor4
#print axioms Prefix.source4
#print axioms Prefix.product4
#print axioms Prefix.knownTarget4
#print axioms Prefix.factor_cycle
#print axioms Prefix.source_cycle
#print axioms Prefix.product_cycle
#print axioms known_nonzero
end Row2907PDeltaDetection.Descent
