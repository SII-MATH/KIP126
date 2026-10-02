import KIP126.Challenge2

namespace KIP126.Interface.Challenge

open CategoryTheory
universe u v w

theorem pageCalculus {C : Type u} [Category.{v} C] [Abelian C]
    {ι : Type w} [AddCommGroup ι] [DecidableEq ι]
    (E : Core.SpectralSequence C ι) : Challenge2.PageCalculus E := by
  sorry

theorem representativeCalculus {R : Type u} [Ring R]
    (E : Core.SpectralSequence (ModuleCat.{v} R) (ℤ × ℤ)) :
    Challenge2.RepresentativeCalculus E := by
  sorry

theorem paperCycleCalculus {C : Type u}
    [StableHomotopy.StableHomotopyCategory.{u, v} C]
    [StableHomotopy.HasFunctorialCofiber (C := C)]
    (H : StableHomotopy.Cohomology.Mod2EilenbergMacLane (C := C)) (X : C) :
    Challenge2.PaperCycleCalculus H X := by
  sorry

end KIP126.Interface.Challenge
