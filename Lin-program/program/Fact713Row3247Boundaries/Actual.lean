import Fact713Row3247Boundaries.Basic

namespace Fact713Row3247Boundaries.Actual
open ManualInputObligations.Reference

/-- Named actual E3 cycles are explicit interpretation inputs. The later
boundary equations document their sources; they do not establish those cycles. -/
theorem row3247_d3_zero (S T : AdamsSpectralSequence)
    (A : Fact713Row3247Source.ModuleLeibniz.Action S T)
    (h0 : (S.element 3 Fact713Row3247Source.Actual.h0Degree).carrier) (d0 : (S.element 3 Fact713Row3247Source.Actual.d0Degree).carrier)
    (rowMeaning : Fact713Row3247Source.Actual.Meaning S T A h0 d0)
    (x : (T.element 3 Fact713Row3247Source.Actual.sourceDegree).carrier)
    (namedX : rowMeaning.source x = Fact713Row3247Source.JointDetection.namedSource)
    (y : (S.element 3 Fact713Row3247Source.Actual.sphereDegree).carrier)
    (namedY : rowMeaning.sphereSource y = Fact713Row3247Source.JointDetection.namedSphere)
    (p : (S.element 3 Fact713Generator30P2.Detection.pDegree).carrier) (pMeaning : Fact713Generator30P2.Detection.Meaning S T A p)
    (pages : CertifiedAdamsPages T)
    (p2 : LaterBoundary T pages 4 ⟨14,82⟩ ⟨18,85⟩)
    (h0Boundary : LaterBoundary T pages 7 ⟨12,140⟩ ⟨19,146⟩)
    (namedBoundary : pMeaning.product p2.first.val =
      Fact713Generator30P2.Detection.sourceMap Fact713Generator30P2.Detection.namedGenerator)
    (g : (T.element 3 Fact713Generator30P2.Detection.sourceDegree).carrier)
    (namedG : pMeaning.source g = Fact713Generator30P2.Detection.namedGenerator)
    (coefficient : (S.element 3 Fact713Row3247ProductSearch.Factor.coefficientDegree).carrier)
    (coefficientTarget : (S.element 3 (AdamsTarget 3 Fact713Row3247ProductSearch.Factor.coefficientDegree)).carrier ≃
      Fact713Row3247Source.JointDetection.Q Fact713Row3247ProductSearch.Comparison.S0_15_110)
    (factorMeaning : ∀ z, rowMeaning.d0ProductCoordinates
      (A.multiply 3 Fact713Row3247ProductSearch.Factor.coefficientDegree
        Fact713Row3247ProductSearch.Factor.generatorDegree coefficient z) =
      Fact713Row3247ProductSearch.Factor.sourceMap (pMeaning.source z))
    (namedH0Boundary : rowMeaning.h0ProductCoordinates h0Boundary.first.val =
      Fact713Row3247Source.JointDetection.h0Source Fact713Row3247Source.JointDetection.namedSource) :
    S.differential 3 Fact713Row3247Source.Actual.sphereDegree y = 0 := by
  have productRepresentative : A.multiply 3 Fact713Row3247Source.Actual.h0Degree
      Fact713Row3247Source.Actual.sourceDegree h0 x = h0Boundary.first.val :=
    rowMeaning.h0ProductCoordinates.injective ((rowMeaning.h0SourceMeaning x).trans
      ((congrArg Fact713Row3247Source.JointDetection.h0Source namedX).trans namedH0Boundary.symm))
  have h0ProductCycle := bound_element_cycle T pages 7 ⟨12,140⟩ ⟨19,146⟩ h0Boundary
    (A.multiply 3 Fact713Row3247Source.Actual.h0Degree Fact713Row3247Source.Actual.sourceDegree h0 x)
    productRepresentative
  exact Fact713Generator30P2.Assembly.row3247_d3_zero S T A h0 d0 rowMeaning x namedX y namedY
    p pMeaning pages (p2Boundary T pages p2) namedBoundary g namedG coefficient coefficientTarget
    factorMeaning h0ProductCycle

#print axioms row3247_d3_zero
end Fact713Row3247Boundaries.Actual
