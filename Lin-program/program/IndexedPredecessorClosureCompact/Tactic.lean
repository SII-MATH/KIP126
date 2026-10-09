import IndexedPredecessorClosureCompact.Diagnostics

namespace IndexedPredecessorClosureCompact
open IndexedFamilyCertificates

/-- A distinct wrapper avoids overriding the existing Unit-certificate
instance for PredecessorClosed. The dedicated tactic proves the old goal. -/
structure Verified (family : Family) : Prop where
  closed : IndexedPredecessorClosure.PredecessorClosed family

instance (family : Family) : LinProgramCertificates.CertificateVerifier (Verified family) where
  Cert := Certificate family
  check := Certificate.check
  sound := fun certificate accepted => ⟨certificate.sound accepted⟩

syntax "compact_predecessor_cert" " using " term : tactic
macro_rules
  | `(tactic| compact_predecessor_cert using $certificate:term) =>
    `(tactic| exact IndexedPredecessorClosureCompact.Certificate.sound $certificate (by decide))

syntax "compact_predecessor_table_cert" " using " term " bound " term : tactic
macro_rules
  | `(tactic| compact_predecessor_table_cert using $table:term bound $binding:term) =>
    `(tactic| exact IndexedPredecessorClosureCompact.check_sound _ $table $binding (by decide))

theorem coherent_and_closed (coherent : Coherent family) (certificate : Certificate family)
    (accepted : certificate.check = true) : IndexedPredecessorClosure.Valid family :=
  ⟨coherent,certificate.sound accepted⟩

#print axioms coherent_and_closed
end IndexedPredecessorClosureCompact
