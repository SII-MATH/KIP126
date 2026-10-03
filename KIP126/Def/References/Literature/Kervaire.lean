import KIP126.Def.Kervaire.Theta5.Predicates
import KIP126.Def.References.Literature.Claims

/-!
# Located Kervaire literature interfaces

This module keeps source results separate from the project deductions.  Each
constructor below requires the proposition supplied by a caller and attaches
the matching canonical claim row.  There is no global witness and no theorem
that turns a source identifier into a proposition.
-/

namespace KIP126.Kervaire

open KIP126.External

section Theta5

variable {Carrier : Type} [AddCommGroup Carrier]
variable (C : Theta5ChoiceContext (Carrier := Carrier))

 /-- The source-choice total differential identity attached to the located
 Burklund--Xu construction. -/
def cataloguedSourceTotalDifferentialIdentity
    (proof : SourceTotalDifferentialIdentity C) :
    CataloguedExternalResult (SourceTotalDifferentialIdentity C) :=
  { root := .totalDifferentialIdentity
    value :=
      { proof := proof
        ref := (externalClaimLedger.lookup .totalDifferentialIdentity).ref }
    ref_eq := rfl
    class_supported := by trivial }

@[simp] theorem cataloguedSourceTotalDifferentialIdentity_source
    (proof : SourceTotalDifferentialIdentity C) :
    (cataloguedSourceTotalDifferentialIdentity C proof).value.ref.source =
      SourceId.burklundXu := by
  rfl

end Theta5

section PublishedGeometry

variable {Manifold : Type}
variable (dimension : Manifold → ℕ)
variable (kervaireOne : Manifold → Prop)
variable (permanent : ℕ → Prop)

/-- Browder's criterion with the exact source locator from the claim ledger. -/
def cataloguedBrowderCriterion
    (proof : BrowderCriterionStatement dimension kervaireOne permanent) :
    CataloguedExternalResult
      (BrowderCriterionStatement dimension kervaireOne permanent) :=
  { root := .browderCriterion
    value :=
      { proof := proof
        ref := (externalClaimLedger.lookup .browderCriterion).ref }
    ref_eq := rfl
    class_supported := by trivial }

@[simp] theorem cataloguedBrowderCriterion_source
    (proof : BrowderCriterionStatement dimension kervaireOne permanent) :
    (cataloguedBrowderCriterion dimension kervaireOne permanent proof).value.ref.source =
      SourceId.browder := by
  rfl

/-- HHR's nonexistence statement with its own canonical source row. -/
def cataloguedHHRNonexistence
    (proof : HHRNonexistenceStatement dimension kervaireOne) :
    CataloguedExternalResult (HHRNonexistenceStatement dimension kervaireOne) :=
  { root := .hhrNonexistence
    value :=
      { proof := proof
        ref := (externalClaimLedger.lookup .hhrNonexistence).ref }
    ref_eq := rfl
    class_supported := by trivial }

@[simp] theorem cataloguedHHRNonexistence_source
    (proof : HHRNonexistenceStatement dimension kervaireOne) :
    (cataloguedHHRNonexistence dimension kervaireOne proof).value.ref.source =
      SourceId.hhr := by
  rfl

end PublishedGeometry

section BJMInduction

variable {Class : Type}
variable (detected : ℕ → Class → Prop)
variable (isOrderTwo : Class → Prop)
variable (squareZero : Class → Prop)

/-- The BJM induction input attached to the dedicated claim row. -/
def cataloguedBJMInduction
    (proof : BJMInductionStatement detected isOrderTwo squareZero) :
    CataloguedExternalResult
      (BJMInductionStatement detected isOrderTwo squareZero) :=
  { root := .bjmInduction
    value :=
      { proof := proof
        ref := (externalClaimLedger.lookup .bjmInduction).ref }
    ref_eq := rfl
    class_supported := by trivial }

@[simp] theorem cataloguedBJMInduction_source
    (proof : BJMInductionStatement detected isOrderTwo squareZero) :
    (cataloguedBJMInduction detected isOrderTwo squareZero proof).value.ref.source =
      SourceId.bjmInduction := by
  rfl

end BJMInduction

end KIP126.Kervaire
