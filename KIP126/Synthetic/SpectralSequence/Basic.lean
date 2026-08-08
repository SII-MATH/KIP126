import KIP126.Classical.Adams.Basic
import Mathlib.Algebra.Category.ModuleCat.Abelian
import Mathlib.Algebra.Field.ZMod
import Mathlib.Algebra.Homology.SpectralSequence.Basic

/-!
# Synthetic spectral-sequence basics

This is the concrete three-graded slice used by the first classical--synthetic
comparison.  The spectral-sequence object remains Mathlib's object; this file
only supplies the synthetic index and the weight-preserving degree interface.
-/

namespace KIP126.Synthetic.SpectralSequence

open CategoryTheory

abbrev Tridegree := ℤ × ℤ × ℤ

def syntheticAdamsShift (r : ℕ) : Tridegree := (r, (r : ℤ) - 1, 0)

def syntheticAdamsTarget (r : ℕ) (i : Tridegree) : Tridegree :=
  i + syntheticAdamsShift r

def syntheticAdamsShape (r : ℤ) : ComplexShape Tridegree :=
  ComplexShape.up' (r, r - 1, 0)

def lambdaDegree : Tridegree := (0, 0, -1)

def lambdaTarget (i : Tridegree) : Tridegree := i + lambdaDegree

abbrev SyntheticAdamsSpectralSequence :=
  CategoryTheory.SpectralSequence (ModuleCat (ZMod 2)) syntheticAdamsShape 2

structure SyntheticAdamsSS where
  sequence : SyntheticAdamsSpectralSequence
  h₄ : (sequence.page 2).X (1, 16, 16)
  h₀h₃Squared : (sequence.page 2).X (3, 17, 17)
  lambdaMap : ∀ i : Tridegree,
    (sequence.page 2).X i ⟶ (sequence.page 2).X (lambdaTarget i)
  weightPreserving : ∀ (r : ℤ) (hr : 2 ≤ r) (i j : Tridegree),
    (syntheticAdamsShape r).Rel i j →
      (sequence.page r).d i j ≠ 0 → i.2.2 = j.2.2

namespace SyntheticAdamsSS

def E₂ (A : SyntheticAdamsSS) := A.sequence.page 2
def E₃ (A : SyntheticAdamsSS) := A.sequence.page 3

def e₂ToE₃ (A : SyntheticAdamsSS) (i : Tridegree) :
    (A.E₂).homology i ≅ (A.E₃).X i :=
  A.sequence.iso 2 3 i rfl (by norm_num)

def d₂ (A : SyntheticAdamsSS) (i : Tridegree) :
    (A.E₂).X i ⟶ (A.E₂).X (syntheticAdamsTarget 2 i) :=
  (A.E₂).d i (syntheticAdamsTarget 2 i)

end SyntheticAdamsSS

@[simp] theorem syntheticAdamsShift_two :
    syntheticAdamsShift 2 = (2, 1, 0) := by
  norm_num [syntheticAdamsShift]

@[simp] theorem syntheticAdamsTarget_two (i : Tridegree) :
    syntheticAdamsTarget 2 i = (i.1 + 2, i.2.1 + 1, i.2.2) := by
  apply Prod.ext
  · simp [syntheticAdamsTarget, syntheticAdamsShift]
  · apply Prod.ext <;> simp [syntheticAdamsTarget, syntheticAdamsShift]

@[simp] theorem syntheticAdamsShape_rel (r : ℕ) (i : Tridegree) :
    (syntheticAdamsShape r).Rel i (syntheticAdamsTarget r i) := by
  simp [syntheticAdamsShape, syntheticAdamsTarget, syntheticAdamsShift]

def forgetWeight (i : Tridegree) : KIP126.Classical.Adams.Bidegree :=
  (i.1, i.2.1)

def nuDegree (b : KIP126.Classical.Adams.Bidegree) : Tridegree :=
  (b.1, b.2, b.2)

@[simp] theorem forgetWeight_nuDegree
    (b : KIP126.Classical.Adams.Bidegree) :
    forgetWeight (nuDegree b) = b := by
  cases b
  rfl

@[simp] theorem lambdaTarget_weight (i : Tridegree) :
    (lambdaTarget i).2.2 = i.2.2 - 1 := by
  rcases i with ⟨s, t, w⟩
  simp [lambdaTarget, lambdaDegree, sub_eq_add_neg]

@[simp] theorem forgetWeight_add_shift (r : ℕ) (i : Tridegree) :
    forgetWeight (syntheticAdamsTarget r i) =
      KIP126.Classical.Adams.classicalAdamsTarget r (forgetWeight i) := by
  apply Prod.ext <;>
    simp [forgetWeight, syntheticAdamsTarget, syntheticAdamsShift,
      KIP126.Classical.Adams.classicalAdamsTarget,
      KIP126.Classical.Adams.classicalAdamsShift]

theorem weightPreserving_differential (A : SyntheticAdamsSS) (r : ℕ)
    (hr : 2 ≤ r)
    (i : Tridegree)
    (h : (A.sequence.page (r : ℤ)).d i (syntheticAdamsTarget r i) ≠ 0) :
    i.2.2 = (syntheticAdamsTarget r i).2.2 := by
  exact A.weightPreserving (r : ℤ) (by omega) i
    (syntheticAdamsTarget r i) (syntheticAdamsShape_rel r i) h

end KIP126.Synthetic.SpectralSequence
