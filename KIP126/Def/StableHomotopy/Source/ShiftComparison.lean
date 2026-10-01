import KIP126.Def.StableHomotopy.Source.Cofibers
import KIP126.Def.StableHomotopy.Source.Orthogonal.Data

/-! Concrete maps fixing shift coherence. Iteration of tails and loops
has literal reindexing equalities. The comparison of level suspension to
tail uses the FIRST-coordinate J insertion; adjoint bonding alone would
not be a map of arbitrary sequential prespectra. -/
namespace KIP126.StableHomotopy.Source
open CategoryTheory
noncomputable section

theorem shift_zero (E : Prespectrum) : shift E 0 0 = E := rfl
theorem shift_comp (E : Prespectrum) (p q r s : ℕ) :
    shift (shift E p q) r s = shift E (p+r) (q+s) := by sorry

/-- This map is literally the bonding in every level. Its naturality is
the same loopMap composite on both sides. -/
def shiftCancellationUnit (E : Prespectrum) : E ⟶ shift E 1 1 where
  level n := E.bonding n
  commutes n := rfl

theorem shiftCancellationUnit_equivalence (E : Prespectrum) :
    stableEquivalences (shiftCancellationUnit E) := by sorry

end
end KIP126.StableHomotopy.Source

namespace KIP126.StableHomotopy.Source.Orthogonal
open CategoryTheory
open scoped Topology unitInterval
noncomputable section

def firstEmbedding (n : ℕ) : Embedding n (n+1) :=
  ⟨fun i j => if i.val = j.val+1 then 1 else 0, by sorry⟩

def jFirstLineValue (n : ℕ) (t : I) : J n (n+1) :=
  if t = 0 ∨ t = 1 then none else
    some ⟨(firstEmbedding n,
      fun i => if i.val = 0 then (2*(t : ℝ)-1)/((t : ℝ)*(1-(t : ℝ))) else 0),
      by sorry⟩
def jFirstLine (n : ℕ) : C(I, J n (n+1)) := ⟨jFirstLineValue n, by sorry⟩

/-- External suspension is placed before the original n coordinates;
the underlying prespectrum bonding appends its coordinate afterwards.
These two insertions commute, precisely the map condition below. -/
def suspensionToTail (E : Spectrum) :
    Source.levelSuspension (underlying E) ⟶ Source.shift (underlying E) 1 0 where
  level n :=
    { map := ⟨Quotient.lift (fun tx : I × E.level n =>
        (E.action n (n+1)).apply (jFirstLine n tx.1) tx.2) (by sorry), by sorry⟩
      point := by sorry }
  commutes := by sorry

theorem suspensionToTail_equivalence (E : Spectrum) (hE : Cofibrant E)
    (e : CellularPrespectrum (underlying E)) :
    Source.stableEquivalences (suspensionToTail E) := by sorry

/-- The scope of the preceding concrete comparison is sufficient for all
source stable objects: each admits a cofibrant cellular orthogonal
presentation. This is an explicit model-comparison debt, not the claim
that every raw prespectrum already has a CW structure. -/
theorem cofibrantCellularPresentation (E : Source.Prespectrum) :
    ∃ (O : Spectrum), Cofibrant O ∧
      ∃ (_ : CellularPrespectrum (underlying O)),
        Nonempty (Source.stabilizeFunctor.obj (underlying O) ≅
          Source.stabilizeFunctor.obj E) := by sorry

end
end KIP126.StableHomotopy.Source.Orthogonal
