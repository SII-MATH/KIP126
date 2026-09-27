import KIP126.Challenge2
import KIP126.Def.SpectralSequence.Basic.PageHomology.Data
import KIP126.Def.SpectralSequence.Computation.Proofs

namespace KIP126.Interface.Solution

open CategoryTheory
universe u v w

theorem pageCalculus {C : Type u} [Category.{v} C] [Abelian C]
    {ι : Type w} [AddCommGroup ι] [DecidableEq ι]
    (E : Core.SpectralSequence C ι) : Challenge2.PageCalculus E where
  homology r k hr := ⟨Core.SpectralSequence.pageHomologyIso E r k hr⟩
  square_zero := E.d_comp_d

theorem representativeCalculus {R : Type u} [Ring R]
    (E : Core.SpectralSequence (ModuleCat.{v} R) (ℤ × ℤ)) :
    Challenge2.RepresentativeCalculus E where
  page_two _ _ _ h := h.eq_on_page_two
  boundary_cycle _ _ _ h := h.isCycle
  differential_source _ _ _ _ _ h := h.source_survives
  differential_target _ _ _ _ _ h := h.target_survives

end KIP126.Interface.Solution
