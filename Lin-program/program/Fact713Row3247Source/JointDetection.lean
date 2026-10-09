import Fact713Row3247Source.Comparison

namespace Fact713Row3247Source.JointDetection
open LinearCertificates PageTransitionCertificates Comparison

def out (w : WireComparison) := matrixOf w.k w.m w.outgoing
def inc (w : WireComparison) := matrixOf w.m w.n w.incoming
abbrev Q (w : WireComparison) := Homology (out w) (inc w)
def zeroQ (w : WireComparison) : Q w := Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _)
def coordinates (w : WireComparison) (valid : w.Valid) := homologyEquivalence _ _ w.comparison valid.2
def namedSource : Q Cnu_18_145 := (coordinates _ Cnu_18_145_valid).fromCoordinates (fun i => i.val == 0)
def namedSphere : Q S0_18_141 := (coordinates _ S0_18_141_valid).fromCoordinates (fun _ => true)
def topSource : Q Cnu_18_145 → Q S0_18_141 := inducedMap top_18_145_compatible
def topTarget : Q Cnu_21_147 → Q S0_21_143 := inducedMap top_21_147_compatible
def h0Source : Q Cnu_18_145 → Q Cnu_19_146 := inducedMap h0_18_145_compatible
def h0Target : Q Cnu_21_147 → Q Cnu_22_148 := inducedMap h0_21_147_compatible
def d0Source : Q Cnu_18_145 → Q Cnu_22_163 := inducedMap d0_18_145_compatible
def d0Target : Q Cnu_21_147 → Q Cnu_25_165 := inducedMap d0_21_147_compatible

theorem joint_kernel (x : Vec 3) (h : eval h0_21_147_E3 x = zero)
    (d : eval d0_21_147_E3 x = zero) : x = zero := by
  exact (show ∀ x : Vec 3, eval h0_21_147_E3 x = zero →
    eval d0_21_147_E3 x = zero → x = zero from by decide) x h d

theorem jointly_reflects_zero (x : Q Cnu_21_147)
    (h : h0Target x = zeroQ Cnu_22_148) (d : d0Target x = zeroQ Cnu_25_165) :
    x = zeroQ Cnu_21_147 := by
  have hc := induced_coordinates_all h0_21_147_compatible Cnu_21_147.comparison
    Cnu_22_148.comparison Cnu_21_147_valid.2 Cnu_22_148_valid.2 x
  have dc := induced_coordinates_all d0_21_147_compatible Cnu_21_147.comparison
    Cnu_25_165.comparison Cnu_21_147_valid.2 Cnu_25_165_valid.2 x
  have hz : eval h0_21_147_E3 ((coordinates _ Cnu_21_147_valid).toCoordinates x) = zero :=
    hc.symm.trans ((congrArg (coordinates _ Cnu_22_148_valid).toCoordinates h).trans (eval_zero _))
  have dz : eval d0_21_147_E3 ((coordinates _ Cnu_21_147_valid).toCoordinates x) = zero :=
    dc.symm.trans ((congrArg (coordinates _ Cnu_25_165_valid).toCoordinates d).trans (eval_zero _))
  have eq : (coordinates _ Cnu_21_147_valid).toCoordinates x =
      (coordinates _ Cnu_21_147_valid).toCoordinates (zeroQ Cnu_21_147) :=
    (joint_kernel _ hz dz).trans (eval_zero _).symm
  exact ((coordinates _ Cnu_21_147_valid).leftInverse x).symm.trans
    ((congrArg (coordinates _ Cnu_21_147_valid).fromCoordinates eq).trans
      ((coordinates _ Cnu_21_147_valid).leftInverse _))

theorem top_named : topSource namedSource = namedSphere := by
  have formula := induced_coordinates_all top_18_145_compatible Cnu_18_145.comparison
    S0_18_141.comparison Cnu_18_145_valid.2 S0_18_141_valid.2 namedSource
  have value : (coordinates _ S0_18_141_valid).toCoordinates (topSource namedSource) =
      (coordinates _ S0_18_141_valid).toCoordinates namedSphere := by
    exact formula.trans (show eval top_18_145_E3
      ((coordinates _ Cnu_18_145_valid).toCoordinates namedSource) =
      (coordinates _ S0_18_141_valid).toCoordinates namedSphere from by decide)
  exact ((coordinates _ S0_18_141_valid).leftInverse _).symm.trans
    ((congrArg (coordinates _ S0_18_141_valid).fromCoordinates value).trans
      ((coordinates _ S0_18_141_valid).leftInverse _))

theorem h0_named_coordinate : (coordinates _ Cnu_19_146_valid).toCoordinates
    (h0Source namedSource) = fun i => i.val == 2 := by decide
theorem d0_named_coordinate : (coordinates _ Cnu_22_163_valid).toCoordinates
    (d0Source namedSource) = fun i => i.val == 0 := by decide

def rawNamed : Nat × String × Option String × Nat := ⟨3247,"0,1",none,9000⟩
def rawD0Product : Nat × String × Option String × Nat := ⟨7669,"0",none,9000⟩
theorem unknowns_preserved : rawNamed.2.2.1 = none ∧ rawD0Product.2.2.1 = none := by decide

#print axioms joint_kernel
#print axioms jointly_reflects_zero
#print axioms top_named
#print axioms h0_named_coordinate
#print axioms d0_named_coordinate
#print axioms unknowns_preserved
end Fact713Row3247Source.JointDetection
