import AffineRemainingSearch.Links
import Row3151BranchCertificates.Semantics
import AggregateD5Conditional.Data

namespace RemainingThreeAudit
open LinearCertificates PageTransitionCertificates

theorem event2696_branch0_boundary :
    InImage (AffineRemainingSearch.Branches.incoming false)
      AffineRemainingSearch.Branches.named2696 :=
  AffineRemainingSearch.Branches.branch0_boundary

theorem event2696_branch1_nonboundary :
    ¬ InImage (AffineRemainingSearch.Branches.incoming true)
      AffineRemainingSearch.Branches.named2696 :=
  AffineRemainingSearch.Branches.branch1_nonboundary

def event3152Source : Vec 2 := fun i => i.val == 1

theorem event3152_source_nonboundary_iff (b c : Bool) :
    ¬ InImage (Row3151BranchCertificates.Semantics.outgoing b c)
      event3152Source ↔ c = false := by
  cases b <;> cases c
  · constructor
    · intro _; rfl
    · intro _ h
      obtain ⟨v,hv⟩ := h
      have hh := congrFun hv ⟨1,by decide⟩
      change false = true at hh
      contradiction
  · constructor
    · intro h
      exact False.elim (h ⟨fun i => i.val == 0,by decide⟩)
    · intro h; contradiction
  · constructor
    · intro _; rfl
    · intro _ h
      obtain ⟨v,hv⟩ := h
      have hh := congrFun hv ⟨1,by decide⟩
      change false = true at hh
      contradiction
  · constructor
    · intro h
      exact False.elim (h ⟨fun _ => true,by decide⟩)
    · intro h; contradiction

def source2852Raw : Vec 5 := fun i => i.val == 3
theorem source2852_through_d4 :
    eval AggregateD5Conditional.Data.b_S0_11_136_d4.comparison.projection
      (eval AggregateD5Conditional.Data.b_S0_11_136_d3.comparison.projection
        (eval AggregateD5Conditional.Data.b_S0_11_136_d2.comparison.projection
          source2852Raw)) = (fun _ => true) := by decide

def targetD3 (a b : Bool) : Matrix 2 3 :=
  fun i j => if j.val == 0 then false else if j.val == 1 then
    if i.val == 0 then a else b else i.val == 0
def targetNamed : Vec 3 := fun i => i.val == 1

theorem row3147_cycle_iff (a b : Bool) :
    InKernel (targetD3 a b) targetNamed ↔ a = false ∧ b = false := by
  change eval (targetD3 a b) targetNamed = zero ↔ a = false ∧ b = false
  cases a <;> cases b <;> decide

theorem no_common_nonzero_higher_event3152 :
    ¬ ∀ b c : Bool, ¬ InImage (Row3151BranchCertificates.Semantics.outgoing b c)
      event3152Source := by
  intro h
  have hf := (event3152_source_nonboundary_iff false true).mp (h false true)
  contradiction

#print axioms event3152_source_nonboundary_iff
#print axioms row3147_cycle_iff
#print axioms source2852_through_d4
end RemainingThreeAudit
