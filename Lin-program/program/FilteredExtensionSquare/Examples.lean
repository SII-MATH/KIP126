import FilteredExtensionSquare.Square

namespace FilteredExtensionSquare.Examples
open FilteredMapExtension FilteredRepresentativeCrossing GeneralizedLeibnizAudit
open FilteredMapExtension.Examples

/-- The original x has nonzero image outside the requested target filtration;
the higher correction makes a valid cycle representing the same leading input. -/
theorem corrected_extension : HasExtension F G sumFiltered 0 2 (1,0) 0 := by
  apply of_representative F G sumFiltered 0 2 (1,0) (1,-1) 0
  · trivial
  · exact (G.group 2).zero_mem
  · change ((1,-1)-(1,0) : Int × Int).1 = 0
    rfl
  · change (1 : Int)+(-1)-0 = 0
    omega

theorem original_not_cycle : ¬ (sumFiltered.hom (1,0) ∈ G.group 2) := by
  change ¬ (1 : Int)+0=0
  omega

def identityG : FilteredMap G G where
  hom := AddMonoidHom.id Int
  preserves := fun _ _ h => h

theorem first_extension : HasExtension F G firstFiltered 0 1 (1,0) 1 := by
  apply of_representative F G firstFiltered 0 1 (1,0) (1,0) 1
  · trivial
  · trivial
  · exact SameLeading.refl _ _
  · change (1 : Int)-1=0
    omega

theorem identity_extension : HasExtension G G identityG 1 0 1 1 := by
  apply of_representative G G identityG 1 0 1 1 1
  · trivial
  · trivial
  · exact SameLeading.refl _ _
  · exact SameLeading.refl _ _

theorem first_no_crossing : NoPageCrossing F G firstFiltered 0 1 2 := by
  apply (noPageCrossing_iff_higher F G firstFiltered 0 1 (by omega)).mpr
  intro a ha
  change a.1=0 at ha
  change a.1=0
  exact ha

theorem identity_no_crossing : NoPageCrossing G G identityG 1 2 2 := by
  intro p hp hlt
  omega

/-- A nonzero commuting square with a nonzero resulting differential. -/
theorem square_nonzero_output : HasExtension G G identityG 1 0 1 1 := by
  exact square_transfer F G G G firstFiltered firstFiltered identityG identityG
    (fun _ => rfl) 0 1 1 0 (by omega) (1,0) 1 1 1
    first_extension first_extension identity_extension
    (Or.inl first_no_crossing) identity_no_crossing

#print axioms corrected_extension
#print axioms original_not_cycle
#print axioms square_nonzero_output
end FilteredExtensionSquare.Examples
