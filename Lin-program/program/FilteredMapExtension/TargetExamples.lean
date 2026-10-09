import FilteredMapExtension.TargetNext
import FilteredMapExtension.Examples

namespace FilteredMapExtension.Examples

def targetOne : G.group (1+0) := ⟨1,trivial⟩
def sourceOne : cycles F G sumFiltered 1 0 := ⟨(0,1),⟨rfl,trivial⟩⟩

theorem current_target_nonzero : targetClass F G sumFiltered 1 0 targetOne ≠ 0 := by
  intro hz
  have mem := (QuotientAddGroup.eq_zero_iff targetOne).mp hz
  obtain ⟨h,hh,he⟩ := (targetRelations_mem F G sumFiltered 1 0 (1 : Int)).mp mem
  have hh0 : h=0 := hh.1
  subst h
  have bad : (1 : Int)=0 := he
  omega

theorem current_event : differential F G sumFiltered 1 0
    (sourceClass F G sumFiltered 1 0 sourceOne) =
      targetClass F G sumFiltered 1 0 targetOne := rfl

/-- A genuinely nonzero target is killed by passing to the next target page,
exactly because it is a current differential image. -/
theorem nonzero_target_killed : targetClass F G sumFiltered 1 0 targetOne ≠ 0 ∧
    targetAdvance F G sumFiltered 0 0 (targetClass F G sumFiltered 1 0 targetOne) = 0 := by
  refine ⟨current_target_nonzero,?_⟩
  rw [← current_event]
  exact targetAdvance_differential F G sumFiltered 0 0 _

theorem first_target_retained : targetAdvance F G firstFiltered 0 0
    (targetClass F G firstFiltered 1 0 targetOne) ≠ 0 := by
  intro hz
  have mem := (QuotientAddGroup.eq_zero_iff (targetShift G 0 0 targetOne)).mp hz
  obtain ⟨h,hh,he⟩ := (targetRelations_mem F G firstFiltered 0 1 (1 : Int)).mp mem
  have hh0 : h.1=0 := hh.1
  have bad : (1 : Int)-h.1=0 := he
  omega

#print axioms current_target_nonzero
#print axioms nonzero_target_killed
#print axioms first_target_retained
end FilteredMapExtension.Examples
