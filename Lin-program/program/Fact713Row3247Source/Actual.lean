import Fact713Row3247Source.JointDetection
import Fact713Row3247Source.ModuleLeibniz

namespace Fact713Row3247Source.Actual
open LinearCertificates PageTransitionCertificates
open ManualInputObligations.Reference JointDetection Comparison

abbrev sourceDegree : Bidegree := ⟨18,145⟩
abbrev targetDegree : Bidegree := ⟨21,147⟩
abbrev sphereDegree : Bidegree := ⟨18,141⟩
abbrev sphereTarget : Bidegree := ⟨21,143⟩
abbrev h0Degree : Bidegree := ⟨1,1⟩
abbrev d0Degree : Bidegree := ⟨4,18⟩

structure Meaning (S T : AdamsSpectralSequence) (A : ModuleLeibniz.Action S T)
    (h0 : (S.element 3 h0Degree).carrier) (d0 : (S.element 3 d0Degree).carrier) where
  source : (T.element 3 sourceDegree).carrier ≃ Q Cnu_18_145
  target : (T.element 3 targetDegree).carrier ≃ Q Cnu_21_147
  sphereSource : (S.element 3 sphereDegree).carrier ≃ Q S0_18_141
  sphereTargetCoordinates : (S.element 3 sphereTarget).carrier ≃ Q S0_21_143
  h0ProductCoordinates : (T.element 3 (Bidegree.add h0Degree sourceDegree)).carrier ≃ Q Cnu_19_146
  d0ProductCoordinates : (T.element 3 (Bidegree.add d0Degree sourceDegree)).carrier ≃ Q Cnu_22_163
  h0Result : (T.element 3 (Bidegree.add h0Degree targetDegree)).carrier → Q Cnu_22_148
  d0Result : (T.element 3 (Bidegree.add d0Degree targetDegree)).carrier → Q Cnu_25_165
  targetZero : target 0 = zeroQ Cnu_21_147
  sphereTargetZero : sphereTargetCoordinates 0 = zeroQ S0_21_143
  h0ResultZero : h0Result 0 = zeroQ Cnu_22_148
  d0ResultZero : d0Result 0 = zeroQ Cnu_25_165
  h0TargetMeaning : ∀ x, h0Result (A.multiply 3 h0Degree targetDegree h0 x) = h0Target (target x)
  d0TargetMeaning : ∀ x, d0Result (A.multiply 3 d0Degree targetDegree d0 x) = d0Target (target x)
  h0SourceMeaning : ∀ x, h0ProductCoordinates (A.multiply 3 h0Degree sourceDegree h0 x) = h0Source (source x)
  d0SourceMeaning : ∀ x, d0ProductCoordinates (A.multiply 3 d0Degree sourceDegree d0 x) = d0Source (source x)
  topSourceMap : (T.element 3 sourceDegree).carrier → (S.element 3 sphereDegree).carrier
  topTargetMap : (T.element 3 targetDegree).carrier → (S.element 3 sphereTarget).carrier
  topSourceMeaning : ∀ x, sphereSource (topSourceMap x) = topSource (source x)
  topTargetMeaning : ∀ x, sphereTargetCoordinates (topTargetMap x) = topTarget (target x)
  topTargetZero : topTargetMap 0 = 0
  naturality : ∀ x, S.differential 3 sphereDegree (topSourceMap x) =
    topTargetMap (T.differential 3 sourceDegree x)
  h0DifferentialCoordinates : (S.element 3 (AdamsTarget 3 h0Degree)).carrier ≃ Q S0_4_3
  d0DifferentialCoordinates : (S.element 3 (AdamsTarget 3 d0Degree)).carrier ≃ Q S0_7_20

theorem actual_product_coordinates (S T : AdamsSpectralSequence) (A : ModuleLeibniz.Action S T)
    (h0 : (S.element 3 h0Degree).carrier) (d0 : (S.element 3 d0Degree).carrier)
    (M : Meaning S T A h0 d0) (x : (T.element 3 sourceDegree).carrier)
    (named : M.source x = namedSource) :
    (coordinates _ Cnu_19_146_valid).toCoordinates
      (M.h0ProductCoordinates (A.multiply 3 h0Degree sourceDegree h0 x)) = (fun i => i.val == 2) ∧
    (coordinates _ Cnu_22_163_valid).toCoordinates
      (M.d0ProductCoordinates (A.multiply 3 d0Degree sourceDegree d0 x)) = (fun i => i.val == 0) := by
  constructor
  · rw [M.h0SourceMeaning,named]; exact h0_named_coordinate
  · rw [M.d0SourceMeaning,named]; exact d0_named_coordinate

theorem h0_d3_zero (S T : AdamsSpectralSequence) (A : ModuleLeibniz.Action S T)
    (h0 : (S.element 3 h0Degree).carrier) (d0 : (S.element 3 d0Degree).carrier)
    (M : Meaning S T A h0 d0) : S.differential 3 h0Degree h0 = 0 := by
  apply M.h0DifferentialCoordinates.injective
  have empty : ∀ x y : Q S0_4_3, x = y := by
    intro x y
    induction x using Quot.inductionOn with
    | h x =>
      induction y using Quot.inductionOn with
      | h y =>
        congr 1
        apply Subtype.ext
        exact funext (fun i => Fin.elim0 i)
  exact empty _ _

theorem d0_d3_zero (S T : AdamsSpectralSequence) (A : ModuleLeibniz.Action S T)
    (h0 : (S.element 3 h0Degree).carrier) (d0 : (S.element 3 d0Degree).carrier)
    (M : Meaning S T A h0 d0) : S.differential 3 d0Degree d0 = 0 := by
  apply M.d0DifferentialCoordinates.injective
  have empty : ∀ x y : Q S0_7_20, x = y := by
    intro x y
    induction x using Quot.inductionOn with
    | h x =>
      induction y using Quot.inductionOn with
      | h y =>
        congr 1
        apply Subtype.ext
        exact funext (fun i => Fin.elim0 i)
  exact empty _ _

/-- Product cycles are explicit premises. In particular the d0 product at
(22,163), raw row 7669, is not established by this theorem. -/
theorem actual_cnu_d3_zero (S T : AdamsSpectralSequence) (A : ModuleLeibniz.Action S T)
    (h0 : (S.element 3 h0Degree).carrier) (d0 : (S.element 3 d0Degree).carrier)
    (M : Meaning S T A h0 d0) (x : (T.element 3 sourceDegree).carrier)
    (h0ProductCycle : T.differential 3 (Bidegree.add h0Degree sourceDegree)
      (A.multiply 3 h0Degree sourceDegree h0 x) = 0)
    (d0ProductCycle : T.differential 3 (Bidegree.add d0Degree sourceDegree)
      (A.multiply 3 d0Degree sourceDegree d0 x) = 0) :
    T.differential 3 sourceDegree x = 0 := by
  have hz := ModuleLeibniz.action_differential_zero S T A 3 h0Degree sourceDegree h0 x
    (h0_d3_zero S T A h0 d0 M) h0ProductCycle
  have dz := ModuleLeibniz.action_differential_zero S T A 3 d0Degree sourceDegree d0 x
    (d0_d3_zero S T A h0 d0 M) d0ProductCycle
  apply M.target.injective
  apply Eq.trans (jointly_reflects_zero _ ?_ ?_) M.targetZero.symm
  · exact (M.h0TargetMeaning _).symm.trans ((congrArg M.h0Result hz).trans M.h0ResultZero)
  · exact (M.d0TargetMeaning _).symm.trans ((congrArg M.d0Result dz).trans M.d0ResultZero)

theorem actual_row3247_d3_zero (S T : AdamsSpectralSequence) (A : ModuleLeibniz.Action S T)
    (h0 : (S.element 3 h0Degree).carrier) (d0 : (S.element 3 d0Degree).carrier)
    (M : Meaning S T A h0 d0) (x : (T.element 3 sourceDegree).carrier)
    (namedX : M.source x = namedSource) (y : (S.element 3 sphereDegree).carrier)
    (namedY : M.sphereSource y = namedSphere)
    (h0ProductCycle : T.differential 3 (Bidegree.add h0Degree sourceDegree)
      (A.multiply 3 h0Degree sourceDegree h0 x) = 0)
    (d0ProductCycle : T.differential 3 (Bidegree.add d0Degree sourceDegree)
      (A.multiply 3 d0Degree sourceDegree d0 x) = 0) :
    S.differential 3 sphereDegree y = 0 := by
  have namedMap : M.topSourceMap x = y := M.sphereSource.injective
    ((M.topSourceMeaning x).trans ((congrArg topSource namedX).trans (top_named.trans namedY.symm)))
  have zero := actual_cnu_d3_zero S T A h0 d0 M x h0ProductCycle d0ProductCycle
  exact (congrArg (S.differential 3 sphereDegree) namedMap).symm.trans
    ((M.naturality x).trans ((congrArg M.topTargetMap zero).trans M.topTargetZero))

#print axioms h0_d3_zero
#print axioms actual_product_coordinates
#print axioms d0_d3_zero
#print axioms actual_cnu_d3_zero
#print axioms actual_row3247_d3_zero
end Fact713Row3247Source.Actual
