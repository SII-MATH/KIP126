import Fact713Row3247ProductSearch.Comparison
import Fact713Row3247Source.ModuleLeibniz
import Fact713Row3247Source.JointDetection

namespace Fact713Row3247ProductSearch.Factor
open LinearCertificates PageTransitionCertificates Comparison
open ManualInputObligations.Reference
open Fact713Row3247Source.JointDetection (Q zeroQ coordinates)

def sourceMap : Q Cnu_10_55 → Q Cnu_22_163 := inducedMap factor_10_55_compatible
def targetMap : Q Cnu_13_57 → Q Cnu_25_165 := inducedMap factor_13_57_compatible
def named : Q Cnu_10_55 := (coordinates _ Cnu_10_55_valid).fromCoordinates (fun _ => true)
def namedProduct : Q Cnu_22_163 := (coordinates _ Cnu_22_163_valid).fromCoordinates (fun i => i.val == 0)
theorem product_coordinates : (coordinates _ Cnu_22_163_valid).toCoordinates (sourceMap named) =
    (fun i => i.val == 0) := by decide
theorem product_equals_d0 : sourceMap named =
    Fact713Row3247Source.JointDetection.d0Source Fact713Row3247Source.JointDetection.namedSource := by
  let E := coordinates _ Cnu_22_163_valid
  have h : E.toCoordinates (sourceMap named) = E.toCoordinates
      (Fact713Row3247Source.JointDetection.d0Source Fact713Row3247Source.JointDetection.namedSource) := by decide
  exact (E.leftInverse _).symm.trans ((congrArg E.fromCoordinates h).trans (E.leftInverse _))
theorem target_reflects_zero (x : Vec 1) (h : eval factor_13_57_E3 x = zero) : x = zero := by
  exact (show ∀ x : Vec 1, eval factor_13_57_E3 x = zero → x = zero from by decide) x h
theorem target_nonzero : eval factor_13_57_E3 (fun _ => true) ≠ zero := by decide

abbrev coefficientDegree : Bidegree := ⟨12,108⟩
abbrev generatorDegree : Bidegree := ⟨10,55⟩

theorem coefficient_d3_zero (S : AdamsSpectralSequence)
    (meaning : (S.element 3 (AdamsTarget 3 coefficientDegree)).carrier ≃ Q S0_15_110)
    (a : (S.element 3 coefficientDegree).carrier) : S.differential 3 coefficientDegree a = 0 := by
  apply meaning.injective
  let E := coordinates _ S0_15_110_valid
  have eq : E.toCoordinates (meaning (S.differential 3 coefficientDegree a)) =
      E.toCoordinates (meaning 0) := funext (fun i => Fin.elim0 i)
  exact (E.leftInverse _).symm.trans ((congrArg E.fromCoordinates eq).trans (E.leftInverse _))

/-- The factorization does not by itself prove the product is a cycle.
Its remaining Leibniz map is injective, so a cycle of generator 30 is needed. -/
theorem product_cycle_of_generator_cycle (S T : AdamsSpectralSequence)
    (A : Fact713Row3247Source.ModuleLeibniz.Action S T)
    (meaning : (S.element 3 (AdamsTarget 3 coefficientDegree)).carrier ≃ Q S0_15_110)
    (a : (S.element 3 coefficientDegree).carrier)
    (x : (T.element 3 generatorDegree).carrier)
    (cycle : T.differential 3 generatorDegree x = 0) :
    T.differential 3 (Bidegree.add coefficientDegree generatorDegree)
      (A.multiply 3 coefficientDegree generatorDegree a x) = 0 := by
  apply (ActualAdamsProductCycleBridge.cast_zero_iff T 3
    (adamsTarget_add_left 3 coefficientDegree generatorDegree) _).mp
  rw [A.leibniz,coefficient_d3_zero S meaning,A.zero_left,cycle,A.zero_right,
    ActualAdamsProductCycleBridge.cast_zero,add_zero]

#print axioms product_coordinates
#print axioms product_equals_d0
#print axioms target_reflects_zero
#print axioms target_nonzero
#print axioms coefficient_d3_zero
#print axioms product_cycle_of_generator_cycle
end Fact713Row3247ProductSearch.Factor
