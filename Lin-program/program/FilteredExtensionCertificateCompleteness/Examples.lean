import FilteredExtensionCertificateCompleteness.Search

namespace FilteredExtensionCertificateCompleteness.Examples
open LinearCertificates FilteredExtensionCertificates

/-- All dimensions and the complete filtration can be empty. -/
def empty : Data where
  a := 0
  b := 0
  ha := 0
  hb := 0
  depth := 0
  s := 0
  n := 0
  f := fun i => Fin.elim0 i
  source := fun i => Fin.elim0 i
  target := fun i => Fin.elim0 i
  x := Fin.elim0
  y := Fin.elim0

theorem empty_valid : ResultValid empty := by filtered_extension_search

/-- A genuine nonzero zeroth-page equation for the identity F2 map. -/
def identity : Data where
  a := 1
  b := 1
  ha := 1
  hb := 1
  depth := 1
  s := 0
  n := 0
  f := fun _ _ => true
  source := fun _ _ _ => true
  target := fun _ _ _ => true
  x := fun _ => true
  y := fun _ => true

theorem identity_valid : ResultValid identity := by filtered_extension_search

def wrongOutput : Data := {identity with y := fun _ => false}

theorem wrong_output_invalid : ¬ ResultValid wrongOutput := by
  apply (search_none_iff wrongOutput).mp
  decide +kernel

/-- Truncation is semantic: all levels after the declared depth are zero. -/
def beyondDepth : Data := {identity with s := 1}

theorem beyond_depth_invalid : ¬ ResultValid beyondDepth := by
  apply (search_none_iff beyondDepth).mp
  decide +kernel

/-- The subgroup decrease requirement cannot be repaired by output witnesses. -/
def notDecreasing : Data where
  a := 1
  b := 0
  ha := 1
  hb := 0
  depth := 2
  s := 0
  n := 0
  f := fun i => Fin.elim0 i
  source := fun i _ _ => decide (i.val = 1)
  target := fun _ i => Fin.elim0 i
  x := fun _ => false
  y := Fin.elim0

theorem not_decreasing_invalid : ¬ ResultValid notDecreasing := by
  apply (search_none_iff notDecreasing).mp
  decide +kernel

/-- Even the zero requested equation cannot hide a non-preserving map. -/
def notPreserving : Data := {identity with
  target := fun _ _ _ => false
  x := fun _ => false
  y := fun _ => false}

theorem not_preserving_invalid : ¬ ResultValid notPreserving := by
  apply (search_none_iff notPreserving).mp
  decide +kernel

/-- A higher-source correction changes the actual representative on page 1. -/
def corrected : Data := {identity with
  depth := 2
  n := 1
  source := fun _ _ _ => true
  target := fun _ _ _ => true
  y := fun _ => false}

theorem corrected_valid : ResultValid corrected := by filtered_extension_search

theorem semantic_witness_is_enough (D : Data) (h : ResultValid D) :
    ∃ cert : Certificate D, check D cert = true := check_complete D h

#print axioms empty_valid
#print axioms identity_valid
#print axioms wrong_output_invalid
#print axioms beyond_depth_invalid
#print axioms not_decreasing_invalid
#print axioms not_preserving_invalid
#print axioms corrected_valid
#print axioms semantic_witness_is_enough
end FilteredExtensionCertificateCompleteness.Examples
