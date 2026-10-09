import CofiberE2Certificates.Transport

namespace CofiberE2Certificates
open LinearCertificates

/-- Dependency matrices are supplied with their actual semantic interpretations.
The two matrix identities are kernel checked independently of JSON names or SQL. -/
theorem Wire.transport_linked (w : Wire) (h : w.Valid)
    (incomingMatrix : Matrix w.middleDimension w.inputDimension)
    (outgoingMatrix : Matrix w.outputDimension w.middleDimension)
    (incoming_link : incomingMatrix = w.a) (outgoing_link : outgoingMatrix = w.b)
    {A B C : Type} [Zero C]
    (source : Vec w.inputDimension ≃ A)
    (middle : Vec w.middleDimension ≃ B)
    (target : Vec w.outputDimension ≃ C)
    (incoming : A → B) (outgoing : B → C)
    (target_zero : target zero = 0)
    (incoming_compatible : ∀ x, middle (eval incomingMatrix x) = incoming (source x))
    (outgoing_compatible : ∀ x, target (eval outgoingMatrix x) = outgoing (middle x)) :
    (∀ x, outgoing (incoming x) = 0) ∧
    (∀ y, outgoing y = 0 ↔ ∃ x, incoming x = y) := by
  apply w.transport_exact h source middle target incoming outgoing target_zero
  · simpa only [incoming_link] using incoming_compatible
  · simpa only [outgoing_link] using outgoing_compatible

end CofiberE2Certificates
