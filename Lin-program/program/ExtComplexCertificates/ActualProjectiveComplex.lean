import ExtComplexCertificates.ActualDegreeExactness
import Mathlib.Algebra.Category.ModuleCat.Projective
import Mathlib.Algebra.Homology.HomologicalComplex

namespace ExtComplexCertificates.ActualResolution
open CategoryTheory

/-- Projectivity follows from the actual free-generator basis over the finite
Milnor ring; no exactness or resolution assumption is used. -/
noncomputable instance degreeModuleProjective (s : Nat) :
    Module.Projective ActualFiniteRing (DegreeFreeModule s) :=
  Module.Projective.of_basis (Finsupp.basisSingleOne :
    Module.Basis (DegreeIndex s) ActualFiniteRing (DegreeFreeModule s))

noncomputable def degreeModuleObject (s : Nat) : ModuleCat ActualFiniteRing :=
  ModuleCat.of ActualFiniteRing (DegreeFreeModule s)

noncomputable instance degreeObjectProjective (s : Nat) : Projective (degreeModuleObject s) := by
  exact ModuleCat.projective_of_free (Finsupp.basisSingleOne :
    Module.Basis (DegreeIndex s) ActualFiniteRing (DegreeFreeModule s))

noncomputable def degreeBoundaryMorphism (s : Nat) : degreeModuleObject (s+1) ⟶ degreeModuleObject s :=
  ModuleCat.ofHom (degreeDifferential s)

theorem degreeBoundary_comp (s : Nat) : degreeBoundaryMorphism (s+1) ≫ degreeBoundaryMorphism s = 0 := by
  apply ModuleCat.hom_ext
  exact degreeDifferential_square_zero s

/-- The actual imported finite-support complex, packaged in ModuleCat.
It is degreewise projective. It is NOT asserted to be a ProjectiveResolution:
only the separately proved internal-degree-at-most-eight exactness is known. -/
noncomputable def actualProjectiveChainComplex : ChainComplex (ModuleCat ActualFiniteRing) Nat :=
  ChainComplex.of degreeModuleObject degreeBoundaryMorphism degreeBoundary_comp

noncomputable instance actualChain_degreewise_projective (s : Nat) :
    Projective (actualProjectiveChainComplex.X s) := degreeObjectProjective s

theorem actualChain_boundary (s : Nat) :
    actualProjectiveChainComplex.d (s+1) s = degreeBoundaryMorphism s :=
  ChainComplex.of_d _ _ s

#print axioms degreeModuleProjective
#print axioms actualProjectiveChainComplex
end ExtComplexCertificates.ActualResolution
