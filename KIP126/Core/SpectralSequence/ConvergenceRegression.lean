import KIP126.Core.SpectralSequence.Convergence
import Mathlib.Algebra.Category.ModuleCat.Abelian

/-!
# Regression checks for endpoint-extended spectral sequences

These examples typecheck the public endpoint-extension interface without
postulating endpoint or convergence hypotheses.  In particular, they check
that an explicitly supplied `EndpointExtension` yields Mathlib's genuine
`E₂CohomologicalSpectralSequence`, while a `BoundaryWitness` supplies only the
stated limit/colimit comparisons.
-/

namespace KIP126.Core.SpectralSequence

noncomputable section

open CategoryTheory CategoryTheory.Limits

universe u v

variable {C : Type u} [Category.{v} C] [Abelian C]
variable {FC : FilteredComplex C} (P : EndpointExtension FC)

section Endpoints

example : OrderDual ℤ ⥤ EInt :=
  decreasingFiltrationEmbedding

example : OrderDual ℤ ⥤ CochainComplex C ℤ :=
  P.finiteDiagram

example : Cone P.finiteDiagram :=
  P.bottomCone

example : Cocone P.finiteDiagram :=
  P.topCocone

example (W : P.BoundaryWitness) : IsLimit P.finiteBottomCone :=
  P.finiteBottomIsLimit W

example (W : P.BoundaryWitness) : IsColimit P.finiteTopCocone :=
  P.finiteTopIsColimit W

end Endpoints

section Morphisms

variable {GD GE : FilteredComplex C}
variable (Q : EndpointExtension GD) (R : EndpointExtension GE)
variable (f : FC ⟶ GD) (g : GD ⟶ GE)
variable (h : EndpointExtension.Hom P Q f)
variable (k : EndpointExtension.Hom Q R g)

example :
    EndpointExtension.Hom P P (FilteredComplex.Morphism.id FC) :=
  EndpointExtension.Hom.id P

example :
    EndpointExtension.Hom P R (FilteredComplex.Morphism.comp f g) :=
  EndpointExtension.Hom.comp h k

example :
    P.triangulatedSpectralObject ⟶ Q.triangulatedSpectralObject :=
  h.triangulatedSpectralObjectHom

variable {A : Type*} [Category A] [Abelian A]
variable (F : HomotopyCategory C (ComplexShape.up ℤ) ⥤ A)
variable [F.ShiftSequence ℤ] [F.IsHomological]

example : P.abelianSpectralObject A F ⟶ Q.abelianSpectralObject A F :=
  h.abelianSpectralObjectHom A F

end Morphisms

section SpectralSequence

variable {A : Type*} [Category A] [Abelian A]
variable (F : HomotopyCategory C (ComplexShape.up ℤ) ⥤ A)
variable [F.ShiftSequence ℤ] [F.IsHomological]

example :
    Triangulated.SpectralObject
      (HomotopyCategory C (ComplexShape.up ℤ)) EInt :=
  P.triangulatedSpectralObject

example : Abelian.SpectralObject A EInt :=
  P.abelianSpectralObject A F

example : CategoryTheory.E₂CohomologicalSpectralSequence A :=
  P.spectralSequence A F

example (p q : ℤ) :
    ((P.spectralSequence A F).page 2).X (p, q) ≅
      ((P.abelianSpectralObject A F).H (p + q)).obj
        (CategoryTheory.ComposableArrows.mk₁
          (homOfLE
            (Abelian.SpectralObject.coreE₂Cohomological.le₁₂ (p, q)))) :=
  P.firstPageXIso A F p q

end SpectralSequence

section PageAbutmentComparison

variable {A : Type*} [Category A] [Abelian A]
variable (F : HomotopyCategory C (ComplexShape.up ℤ) ⥤ A)
variable [F.ShiftSequence ℤ] [F.IsHomological]
variable (W : PageAbutmentComparisonWitness P A F)

example : P.BoundaryWitness :=
  W.boundary

example (n : ℤ) : Algebra.Filtration.CompletionWitness W.filtration n :=
  W.completion n

example (n : ℤ) : HasLimit (W.filtration.quotientTower n) :=
  (W.completion n).hasLimit

example : W.filtration.IsExhaustive :=
  W.exhaustive

example : W.filtration.IsEventuallyZero :=
  W.eventuallyZero

end PageAbutmentComparison

section ConcreteSpecialization

example {FC : FilteredComplex (ModuleCat ℤ)} (P : EndpointExtension FC) :
    CategoryTheory.E₂CohomologicalSpectralSequence (ModuleCat ℤ) :=
  P.spectralSequence (ModuleCat ℤ)
    (HomotopyCategory.homologyFunctor (ModuleCat ℤ)
      (ComplexShape.up ℤ) 0)

end ConcreteSpecialization

end

end KIP126.Core.SpectralSequence
