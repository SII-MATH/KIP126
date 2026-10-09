import Row2916D4Search.Actual
import Row3143D0Leibniz.Assembly

namespace Row2916D4Search.Assembly
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open Row3151ActualTransport ActualAdamsHomologyCoordinates ActualAdamsHomologyCoordinates.Meaning
open Actual Comparison
open Row3143D0Leibniz.Assembly (E2Input)

/-- Supply these complete E2 meanings to construct every auxiliary E3
coordinate system used by the action and the incoming source. -/
structure AuxiliaryE2 (S T : AdamsSpectralSequence) (pagesS : CertifiedAdamsPages S)
    (pagesT : CertifiedAdamsPages T) where
  coefficient : E2Input S pagesS coefficientDegree S0_8_101
  generator : E2Input T pagesT generatorDegree Ceta_5_38
  generatorTarget : E2Input T pagesT (AdamsTarget 3 generatorDegree) Ceta_8_40
  coefficientTarget : E2Input S pagesS (AdamsTarget 3 coefficientDegree) S0_11_103
  productTarget : E2Input T pagesT (AdamsTarget 3 moduleDegree) Ceta_16_141
  incoming : E2Input T pagesT ⟨10,137⟩ Ceta_10_137

noncomputable def AuxiliaryE2.generator3 (D : AuxiliaryE2 S T pagesS pagesT) :=
  (D.generator.next (by decide)).coordinates
noncomputable def AuxiliaryE2.coefficient3 (D : AuxiliaryE2 S T pagesS pagesT) :=
  (D.coefficient.next (by decide)).coordinates
noncomputable def AuxiliaryE2.generatorTarget3 (D : AuxiliaryE2 S T pagesS pagesT) :=
  (D.generatorTarget.next (by decide)).coordinates
noncomputable def AuxiliaryE2.coefficientTarget3 (D : AuxiliaryE2 S T pagesS pagesT) :=
  (D.coefficientTarget.next (by decide)).coordinates
noncomputable def AuxiliaryE2.productTarget3 (D : AuxiliaryE2 S T pagesS pagesT) :=
  (D.productTarget.next (by decide)).coordinates
noncomputable def AuxiliaryE2.incoming3 (D : AuxiliaryE2 S T pagesS pagesT) :
    ActualAdamsIncomingBridge.Source T 3 moduleDegree ≃ Vec 2 :=
  (ActualAdamsIncomingBridge.sourceEquiv T 3 moduleDegree (by decide)).trans
    (D.incoming.next (by decide)).coordinates.equivalence

theorem module_add_from_local (D : Actual.Input S T A)
    (localAdd : LocalAddMeaning D.top.sourcePages 2 moduleDegree) :
    ∀ x y, D.top.nextSource.equivalence (x+y) =
      add (D.top.nextSource.equivalence x) (D.top.nextSource.equivalence y) :=
  nextCoordinates_add D.top.sourceMeaning D.top.sourcePages D.top.sourceValid D.top.sourceZero localAdd

#print axioms AuxiliaryE2.generator3
#print axioms AuxiliaryE2.coefficient3
#print axioms AuxiliaryE2.generatorTarget3
#print axioms AuxiliaryE2.coefficientTarget3
#print axioms AuxiliaryE2.productTarget3
#print axioms AuxiliaryE2.incoming3
#print axioms module_add_from_local
end Row2916D4Search.Assembly
