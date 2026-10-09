import Row2907PDeltaDetection.Actual
import Row3136FamilyBranches.Branches

namespace Row2907PDeltaDetection.Branches
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open Row3151ActualTransport (Coordinates)
open ActualAdamsProductTraceBridge ActualAdamsHomologyCoordinates.Meaning
open Descent Actual

/-- The actual data and all factor names needed for the proved nonzero
differential. No desired source differential is a field. -/
structure Witness (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (P : CertifiedAdamsProduct S) where
  data : Prefix S pages
  meaning : Meaning S P data
  known : KnownDifferential data
  transition : Transition S pages P 3 factorDegree sourceDegree
  leftZero : LocalZeroMeaning pages 3 leftD4Degree
  factor : (S.element 3 factorDegree).carrier
  source : (S.element 3 sourceDegree).carrier
  product : (S.element 3 productDegree).carrier
  factorName : meaning.factor factor = namedFactor
  sourceName : meaning.source source = namedSource
  productName : meaning.product product = namedProduct

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S} {P : CertifiedAdamsProduct S}

noncomputable def Witness.next (W : Witness S pages P) := sourceNext W.data W.source
theorem Witness.next_name (W : Witness S pages P) :
    W.data.source4.equivalence W.next = fun _ => true :=
  source_next_name W.meaning W.source W.sourceName
theorem Witness.d4_nonzero (W : Witness S pages P) : S.differential 4 sourceDegree W.next ≠ 0 :=
  row2907_d4_nonzero W.meaning W.known W.transition W.leftZero W.factor W.source W.product
    W.factorName W.sourceName W.productName

theorem target_coordinate_nonzero (W : Witness S pages P)
    (target : Coordinates S 4 targetDegree n) :
    target.equivalence (S.differential 4 sourceDegree W.next) ≠ zero := by
  intro zeroImage
  exact W.d4_nonzero (target.equivalence.injective (zeroImage.trans target.zero_value.symm))

theorem zero_target_impossible (W : Witness S pages P)
    (target : Coordinates S 4 targetDegree 0) : False := by
  apply target_coordinate_nonzero W target
  funext i
  exact Fin.elim0 i

/-- Only the residual/nonzero family has the zero-dimensional E4 target.
Its actual full target meaning is required before excluding the branch. -/
theorem residual_nonzero_excluded (W : Witness S pages P)
    (target : Coordinates S 4 targetDegree (Row3136FamilyBranches.source true true).h) : False :=
  zero_target_impossible W target

theorem one_target_named_value (W : Witness S pages P)
    (target : Coordinates S 4 targetDegree 1) :
    target.equivalence (S.differential 4 sourceDegree W.next) = fun _ => true := by
  exact (show ∀ v : Vec 1, v ≠ zero → v = (fun _ => true) from by decide)
    _ (target_coordinate_nonzero W target)

/-- The actual source is completely one-dimensional. Once its named
nonzero value is known, zero preservation determines the entire map. -/
theorem one_target_whole_map (W : Witness S pages P)
    (target : Coordinates S 4 targetDegree 1) (x : (S.element 4 sourceDegree).carrier) :
    target.equivalence (S.differential 4 sourceDegree x) = W.data.source4.equivalence x := by
  rcases (show ∀ v : Vec 1, v = zero ∨ v = (fun _ => true) from by decide)
    (W.data.source4.equivalence x) with hz | hn
  · have same : x = 0 := W.data.source4.equivalence.injective
      (hz.trans W.data.source4.zero_value.symm)
    have image : target.equivalence (S.differential 4 sourceDegree x) = zero :=
      (congrArg (fun y : (S.element 4 targetDegree).carrier => target.equivalence y)
        (show S.differential 4 sourceDegree x = 0 by rw [same,(S.differential 4 sourceDegree).map_zero'])).trans
        target.zero_value
    exact image.trans hz.symm
  · have same : x = W.next := W.data.source4.equivalence.injective (hn.trans W.next_name.symm)
    exact (congrArg (fun y => target.equivalence (S.differential 4 sourceDegree y)) same).trans
      ((one_target_named_value W target).trans hn.symm)

theorem one_target_whole_column (W : Witness S pages P)
    (target : Coordinates S 4 targetDegree 1) (x : (S.element 4 sourceDegree).carrier) :
    target.equivalence (S.differential 4 sourceDegree x) =
      eval (matrixOf 1 1 [true]) (W.data.source4.equivalence x) :=
  (one_target_whole_map W target x).trans
    ((show ∀ v : Vec 1, eval (matrixOf 1 1 [true]) v = v from by decide) _).symm

#print axioms Witness.next_name
#print axioms Witness.d4_nonzero
#print axioms target_coordinate_nonzero
#print axioms zero_target_impossible
#print axioms residual_nonzero_excluded
#print axioms one_target_named_value
#print axioms one_target_whole_map
#print axioms one_target_whole_column
end Row2907PDeltaDetection.Branches
