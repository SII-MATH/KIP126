import Stem125E5Search.Zero
import Stem125E5Search.Family
import Fact764ConstrainedE5.Conclusion

namespace Stem125ConstrainedE5
open LinearCertificates PageTransitionCertificates Stem125HomologyCertificates
open Stem125E5Search
set_option maxRecDepth 10000
set_option maxHeartbeats 8000000

/-- These are local comparison choices, without a joint Adams-realization claim. -/
abbrev Choice := Fin 2 × Fin 3 × Fin 4 × Bool

def embed (c : Choice) : Product.Choice :=
  ⟨c.1,c.2.1,c.2.2.1,Fact764ConstrainedE5.Conclusion.branchIndex c.2.2.2⟩

def dimension (c : Choice) : Nat := Product.dimension (embed c)

def choices : List Choice := (List.finRange 2).flatMap fun a =>
  (List.finRange 3).flatMap fun b => (List.finRange 4).flatMap fun c =>
    [⟨a,b,c,false⟩,⟨a,b,c,true⟩]

theorem choice_count : Fintype.card Choice = 48 := by decide
theorem choices_length : choices.length = 48 := by decide
theorem choices_nodup : choices.Nodup := by decide
theorem choices_complete (c : Choice) : c ∈ choices := by
  exact (show ∀ c : Choice, c ∈ choices from by decide) c

theorem embed_injective : Function.Injective embed := by decide

theorem dimension_formula (c : Choice) : dimension c =
    3 + (Data.nine c.1).h + (Data.fourteen c.2.1).h + (Data.fifteen c.2.2.1).h := by
  exact (show ∀ c : Choice, dimension c =
    3 + (Data.nine c.1).h + (Data.fourteen c.2.1).h + (Data.fifteen c.2.2.1).h from by decide) c

theorem dimension_bounds (c : Choice) : 3 ≤ dimension c ∧ dimension c ≤ 6 := by
  exact (show ∀ c : Choice, 3 ≤ dimension c ∧ dimension c ≤ 6 from by decide) c

theorem dimension_distribution :
    (choices.filter (fun c => dimension c == 3)).length = 4 ∧
    (choices.filter (fun c => dimension c == 4)).length = 16 ∧
    (choices.filter (fun c => dimension c == 5)).length = 20 ∧
    (choices.filter (fun c => dimension c == 6)).length = 8 := by decide

theorem dimension_range (d : Nat) : (∃ c : Choice, dimension c = d) ↔ 3 ≤ d ∧ d ≤ 6 := by
  constructor
  · rintro ⟨c,rfl⟩; exact dimension_bounds c
  · intro h
    have hd : d = 3 ∨ d = 4 ∨ d = 5 ∨ d = 6 := by omega
    rcases hd with h | h | h | h
    · subst d; exact ⟨⟨1,2,1,false⟩,by decide⟩
    · subst d; exact ⟨⟨0,2,1,false⟩,by decide⟩
    · subst d; exact ⟨⟨0,0,1,false⟩,by decide⟩
    · subst d; exact ⟨⟨0,0,0,false⟩,by decide⟩

theorem local_complete (c : Choice) (i : Fin 17) : (Product.wires (embed c) i).Valid :=
  Product.all_complete (embed c) i

theorem all_45_centers : Function.Bijective Product.partitionMap := Product.partition_bijective

theorem input_count (c : Choice) :
    Fintype.card (CoordinateIndex (fun i => (Product.wires (embed c) i).m)) = 24 :=
  Product.input_count (embed c)

theorem previous_dimensions (b : Bool) (c : Choice) (i : Fin 17) :
    (Product.wires (embed c) i).m =
      (Stem125E4Search.Product.wires b (Product.positiveIndex i)).h :=
  Product.previous_dimensions b (embed c) i

theorem selected_local_coherence (c : Choice) :
    IndexedFamilyCertificates.Coherent (Family.twentyfiveFamily (embed c).twentyfive) :=
  Family.twentyfive_coherent (embed c).twentyfive

#print axioms choice_count
#print axioms embed_injective
#print axioms dimension_formula
#print axioms dimension_bounds
#print axioms dimension_distribution
#print axioms dimension_range
#print axioms all_45_centers
#print axioms selected_local_coherence
end Stem125ConstrainedE5
