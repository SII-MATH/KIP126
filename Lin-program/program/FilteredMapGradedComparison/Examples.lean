import FilteredMapGradedComparison.Recurrence
import FilteredExtensionSquare.Examples

namespace FilteredMapGradedComparison.Examples
open FilteredMapExtension FilteredMapExtension.Examples FilteredRepresentativeCrossing

def leadingX : F.group 0 := ⟨(1,0),trivial⟩
def leadingOne : G.group 1 := ⟨1,trivial⟩
def leadingZero : G.group 2 := ⟨0,rfl⟩

theorem nonzero_event : LeadingEvent F G firstFiltered 0 1 leadingX leadingOne := by
  apply (leadingEvent_iff_extension F G firstFiltered 0 1 leadingX leadingOne).mpr
  exact (FilteredExtensionSquare.hasExtension_iff _ _ _ _ _ _ _).mp
    FilteredExtensionSquare.Examples.first_extension |>.2.2

theorem essential_nonzero_target :
    gradedClass G 1 leadingOne ∉ earlierBoundaries F G firstFiltered 0 1 := by
  apply (essential_target_iff F G firstFiltered 0 1 leadingOne).mp
  exact first_nonzero

theorem corrected_leading_survives :
    gradedClass F 0 leadingX ∈ survivingLeading F G sumFiltered 0 2 := by
  apply (survivingLeading_iff F G sumFiltered 0 2 leadingX).mpr
  exact ⟨(1,-1),trivial,rfl,by change (1 : Int)+(-1)=0; omega⟩

theorem corrected_leading_event : LeadingEvent F G sumFiltered 0 2 leadingX leadingZero := by
  apply (leadingEvent_iff_extension F G sumFiltered 0 2 leadingX leadingZero).mpr
  exact (FilteredExtensionSquare.hasExtension_iff _ _ _ _ _ _ _).mp
    FilteredExtensionSquare.Examples.corrected_extension |>.2.2

theorem corrected_original_not_cycle : sumFiltered.hom leadingX.val ∉ G.group 2 :=
  FilteredExtensionSquare.Examples.original_not_cycle

theorem nonzero_leading_is_earlier_boundary :
    gradedClass G 1 leadingOne ≠ 0 ∧
    gradedClass G 1 leadingOne ∈ earlierBoundaries F G sumFiltered 0 1 := by
  constructor
  · intro hz
    have h : (1 : Int)=0 := (QuotientAddGroup.eq_zero_iff leadingOne).mp hz
    omega
  · apply (earlierBoundaries_iff F G sumFiltered 0 1 leadingOne).mpr
    exact ⟨(0,1),rfl,trivial,by change (1 : Int)-(0+1)=0; omega⟩

#print axioms nonzero_event
#print axioms essential_nonzero_target
#print axioms corrected_leading_survives
#print axioms corrected_leading_event
#print axioms corrected_original_not_cycle
#print axioms nonzero_leading_is_earlier_boundary
end FilteredMapGradedComparison.Examples
