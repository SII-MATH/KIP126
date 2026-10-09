import Fact713Generator30P2.Detection
import Fact713Row3247ProductSearch.Factor
import Fact713Row3247Source.Actual

namespace Fact713Generator30P2.Assembly
open ManualInputObligations.Reference

/-- The remaining inputs describe actual representatives and the factorization
on the original product. No d0-product-cycle premise is accepted here. -/
theorem row3247_d3_zero (S T : AdamsSpectralSequence)
    (A : Fact713Row3247Source.ModuleLeibniz.Action S T)
    (h0 : (S.element 3 Fact713Row3247Source.Actual.h0Degree).carrier) (d0 : (S.element 3 Fact713Row3247Source.Actual.d0Degree).carrier)
    (rowMeaning : Fact713Row3247Source.Actual.Meaning S T A h0 d0)
    (x : (T.element 3 Fact713Row3247Source.Actual.sourceDegree).carrier)
    (namedX : rowMeaning.source x = Fact713Row3247Source.JointDetection.namedSource)
    (y : (S.element 3 Fact713Row3247Source.Actual.sphereDegree).carrier)
    (namedY : rowMeaning.sphereSource y = Fact713Row3247Source.JointDetection.namedSphere)
    (p : (S.element 3 Detection.pDegree).carrier) (pMeaning : Detection.Meaning S T A p)
    (pages : CertifiedAdamsPages T) (boundary : Detection.BoundaryRepresentative T pages)
    (namedBoundary : pMeaning.product boundary.representative.val =
      Detection.sourceMap Detection.namedGenerator)
    (g : (T.element 3 Detection.sourceDegree).carrier)
    (namedG : pMeaning.source g = Detection.namedGenerator)
    (coefficient : (S.element 3 Fact713Row3247ProductSearch.Factor.coefficientDegree).carrier)
    (coefficientTarget : (S.element 3 (AdamsTarget 3 Fact713Row3247ProductSearch.Factor.coefficientDegree)).carrier ≃
      Fact713Row3247Source.JointDetection.Q Fact713Row3247ProductSearch.Comparison.S0_15_110)
    (factorMeaning : ∀ z, rowMeaning.d0ProductCoordinates
      (A.multiply 3 Fact713Row3247ProductSearch.Factor.coefficientDegree
        Fact713Row3247ProductSearch.Factor.generatorDegree coefficient z) =
      Fact713Row3247ProductSearch.Factor.sourceMap (pMeaning.source z))
    (h0ProductCycle : T.differential 3 (Bidegree.add Fact713Row3247Source.Actual.h0Degree Fact713Row3247Source.Actual.sourceDegree)
      (A.multiply 3 Fact713Row3247Source.Actual.h0Degree Fact713Row3247Source.Actual.sourceDegree h0 x) = 0) :
    S.differential 3 Fact713Row3247Source.Actual.sphereDegree y = 0 := by
  have generatorCycle := Detection.generator_cycle S T A p pMeaning pages boundary namedBoundary g namedG
  have factorCycle := Fact713Row3247ProductSearch.Factor.product_cycle_of_generator_cycle S T A coefficientTarget coefficient g generatorCycle
  have factorization : A.multiply 3 Fact713Row3247Source.Actual.d0Degree
      Fact713Row3247Source.Actual.sourceDegree d0 x =
      A.multiply 3 Fact713Row3247ProductSearch.Factor.coefficientDegree
        Fact713Row3247ProductSearch.Factor.generatorDegree coefficient g := by
    apply rowMeaning.d0ProductCoordinates.injective
    exact (rowMeaning.d0SourceMeaning x).trans
      ((congrArg Fact713Row3247Source.JointDetection.d0Source namedX).trans
        (Fact713Row3247ProductSearch.Factor.product_equals_d0.symm.trans
          ((congrArg Fact713Row3247ProductSearch.Factor.sourceMap namedG).symm.trans
            (factorMeaning g).symm)))
  have d0Cycle : T.differential 3 (Bidegree.add Fact713Row3247Source.Actual.d0Degree Fact713Row3247Source.Actual.sourceDegree)
      (A.multiply 3 Fact713Row3247Source.Actual.d0Degree Fact713Row3247Source.Actual.sourceDegree d0 x) = 0 :=
    (congrArg (T.differential 3 (Bidegree.add Fact713Row3247Source.Actual.d0Degree Fact713Row3247Source.Actual.sourceDegree)) factorization).trans factorCycle
  exact Fact713Row3247Source.Actual.actual_row3247_d3_zero S T A h0 d0 rowMeaning x namedX y namedY h0ProductCycle d0Cycle

#print axioms row3247_d3_zero
end Fact713Generator30P2.Assembly
