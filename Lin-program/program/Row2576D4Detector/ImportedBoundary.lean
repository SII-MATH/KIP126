import Row2576D4Detector.Matches
namespace Row2576D4Detector.ImportedBoundary
open LinearCertificates PageTransitionCertificates ResolutionCertificates

/-- The database's row2633 prefix is interpreted as this zero incoming d3
matrix. This condition is explicit and is not a theorem about the topology. -/
def IncomingMeaning (incoming : Matrix 6 1) : Prop := ∀ i j, incoming i j = false

theorem incoming_eq (incoming : Matrix 6 1) (meaning : IncomingMeaning incoming) :
    incoming = Target.inT := funext fun i => funext fun j => meaning i j

def targetEquiv (outgoing : Matrix 5 6) (incoming : Matrix 6 1)
    (meaning : IncomingMeaning incoming) :
    Homology outgoing incoming ≃ Target.V outgoing := by
  have h := incoming_eq incoming meaning
  subst incoming
  exact Equiv.refl _

/-- Transport to the caller's incoming matrix requires its imported semantic
condition rather than silently assigning the raw prefix a topological meaning. -/
theorem transported_d4_zero (incoming : Matrix 6 1) (meaning : IncomingMeaning incoming)
    (outT : Matrix 4 0) (inT : Matrix 0 0)
    (targetOut : Matrix 5 6) (d3Naturality : Target.Natural targetOut)
    (ds : Source.S → Target.U)
    (dt : Source.T outT inT → Homology targetOut incoming)
    (zeroPreserving : dt (Source.z outT inT) =
      (targetEquiv targetOut incoming meaning).symm (Target.zv targetOut))
    (d4Naturality : ∀ x, dt (Source.f outT inT x) =
      (targetEquiv targetOut incoming meaning).symm
        (Target.g targetOut d3Naturality (ds x))) : ds Source.named = Target.zu := by
  apply Source.named_d4_zero outT inT targetOut d3Naturality ds
    (fun x => targetEquiv targetOut incoming meaning (dt x))
  · rw [zeroPreserving]
    exact (targetEquiv targetOut incoming meaning).apply_symm_apply _
  · intro x
    rw [d4Naturality]
    exact (targetEquiv targetOut incoming meaning).apply_symm_apply _

#print axioms transported_d4_zero
end Row2576D4Detector.ImportedBoundary
