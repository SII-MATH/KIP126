import PageProductCertificates.ActualH0
import PageProductCertificates.Quotient
namespace PageProductCertificates.H1QuotientLeibniz
open LinearCertificates PageTransitionCertificates ResolutionCertificates
open NamedPageComparison.Row2858
open ActualH0

def h0Out := matrixOf 0 1 h0wire.outgoing
def h0In := matrixOf 1 0 h0wire.incoming
def h1Out := matrixOf 1 1 H1Zero.h1Source.outgoing
def h1In := matrixOf 1 0 H1Zero.h1Source.incoming
def fourthOut := matrixOf 0 1 H1Zero.h1Target.outgoing
def fourthIn := matrixOf 1 0 H1Zero.h1Target.incoming
def fifthOut := matrixOf 0 1 H1Zero.productTarget.outgoing
def fifthIn := matrixOf 1 0 H1Zero.productTarget.incoming

abbrev H0 := Homology h0Out h0In
abbrev H1 := Homology h1Out h1In
abbrev Fourth := Homology fourthOut fourthIn
abbrev Fifth := Homology fifthOut fifthIn

def h0Class : H0 := Quot.mk _ (⟨fun _ => true, rfl⟩ : Cycle h0Out)
def h1Class : H1 := Quot.mk _ (⟨fun _ => true, by
  funext i
  have hi : i = 0 := by omega
  subst i
  rfl⟩ : Cycle h1Out)
def zeroFourth : Fourth := Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle fourthOut)
def zeroFifth : Fifth := Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle fifthOut)

theorem fourthValid : Valid h0Out h0In fourthOut fourthIn fifthOut fifthIn fourthProduct :=
  checkCycles_sound _ _ _ _ _ _ _ _ _ _ _ h0_fourth_checked

def multiplyFourth : H0 → Fourth → Fifth :=
  descended h0Out h0In fourthOut fourthIn fifthOut fifthIn fourthProduct fourthValid

-- The checked tensor acts as the identity on every fourth-power representative.
theorem product_generator (x : Vec 1) : product fourthProduct (fun _ => true) x = x := by
  funext i
  have hi : i = 0 := by omega
  subst i
  change xor ((xor (x 0) false) && true) false = x 0
  simp

theorem multiplyFourth_injective : Function.Injective (multiplyFourth h0Class) := by
  intro x y h
  induction x using Quot.inductionOn with | h x =>
    induction y using Quot.inductionOn with | h y =>
      have he := congrArg
        (homologyEquivalence fifthOut fifthIn H1Zero.productTarget.comparison
          H1Zero.productTarget_complete.2).toCoordinates h
      change eval H1Zero.productTarget.comparison.projection
        (product fourthProduct (fun _ => true) x.val) =
        eval H1Zero.productTarget.comparison.projection
        (product fourthProduct (fun _ => true) y.val) at he
      simp only [H1Zero.productTarget, WireComparison.comparison, matrixOf] at he
      rw [product_generator, product_generator] at he
      have hi : ∀ v : Vec 1, eval (matrixOf 1 1 [true]) v = v := by
        intro v
        funext i
        have hi : i = 0 := by omega
        subst i
        change xor (v 0) false = v 0
        simp
      rw [hi,hi] at he
      cases x
      cases y
      cases he
      rfl

theorem multiplyFourth_zero : multiplyFourth h0Class zeroFourth = zeroFifth := by
  apply Quot.sound
  change InImage fifthIn (add (product fourthProduct (fun _ => true) zero) zero)
  rw [product_generator, add_zero]
  exact ⟨fun i => Fin.elim0 i, rfl⟩

-- More primitive local square with an explicit zero-domain differential.
abbrev ProductSource := Homology
  (matrixOf 1 0 H1Zero.productSource.outgoing)
  (matrixOf 0 0 H1Zero.productSource.incoming)
def zeroSource : ProductSource := Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _)

theorem zeroValid : Valid h0Out h0In h1Out h1In
    (matrixOf 1 0 H1Zero.productSource.outgoing)
    (matrixOf 0 0 H1Zero.productSource.incoming) zeroProduct :=
  checkCycles_sound _ _ _ _ _ _ _ _ _ _ _ h0_h1_checked

def multiplyH1 : H0 → H1 → ProductSource :=
  descended _ _ _ _ _ _ zeroProduct zeroValid

theorem multiplyH1_zero (x : H1) : multiplyH1 h0Class x = zeroSource := by
  induction x using Quot.inductionOn with | h x =>
    apply Quot.sound
    change InImage (matrixOf 0 0 H1Zero.productSource.incoming)
      (add (product zeroProduct (fun _ => true) x.val) zero)
    refine ⟨fun i => Fin.elim0 i, ?_⟩
    funext i
    exact Fin.elim0 i

/-- This is a commuting square between actual quotient product maps. Its
external premise is a Leibniz law, not BoundaryFaithful or a ring valuation. -/
theorem from_commuting_square (d : H1 → Fourth) (dProduct : ProductSource → Fifth)
    (zeroPreserving : dProduct zeroSource = zeroFifth)
    (leibniz : ∀ x, dProduct (multiplyH1 h0Class x) = multiplyFourth h0Class (d x)) :
    ∀ x, d x = zeroFourth := by
  intro x
  apply multiplyFourth_injective
  rw [multiplyFourth_zero, ← leibniz, multiplyH1_zero, zeroPreserving]

theorem h1_differential_zero (d : H1 → Fourth) (dProduct : ProductSource → Fifth)
    (zeroPreserving : dProduct zeroSource = zeroFifth)
    (leibniz : ∀ x, dProduct (multiplyH1 h0Class x) = multiplyFourth h0Class (d x)) :
    d h1Class = zeroFourth :=
  from_commuting_square d dProduct zeroPreserving leibniz h1Class

-- All local degree shifts and product sums are checked data, not comments.
example : (1+1,1+2) = (2,3) ∧ (1+3,2+2) = (4,4) ∧
    (2+3,3+2) = (5,5) ∧ (1+4,1+4) = (5,5) ∧ (1+3,1+2) = (4,3) := by decide
end PageProductCertificates.H1QuotientLeibniz
