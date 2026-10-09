import IndexedPredecessorClosureTree.Basic

namespace IndexedPredecessorClosureTree
open IndexedFamilyCertificates

theorem coherent_sound (family : Family) (coherent : Coherent family)
    (certificate : Certificate family) (accepted : certificate.check = true) :
    IndexedPredecessorClosure.Valid family :=
  ⟨coherent,certificate.sound coherent.unique accepted⟩

syntax "tree_predecessor_cert" " using " term " with_unique " term : tactic
macro_rules
  | `(tactic| tree_predecessor_cert using $certificate:term with_unique $proof:term) =>
    `(tactic| exact IndexedPredecessorClosureTree.Certificate.sound $certificate $proof (by decide))

syntax "tree_predecessor_table_cert" " using " term " with_paths " term " bound " term " with_unique " term : tactic
macro_rules
  | `(tactic| tree_predecessor_table_cert using $data:term with_paths $witness:term bound $binding:term with_unique $proof:term) =>
    `(tactic| exact IndexedPredecessorClosureTree.sound _ $proof $data $witness $binding (by decide))

#print axioms coherent_sound
end IndexedPredecessorClosureTree
