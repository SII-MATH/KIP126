import Row2576D4Detector.Comparison
namespace Row2576D4Detector.Target
open LinearCertificates PageTransitionCertificates ResolutionCertificates Comparison

def outS : Matrix 2 2 := matrixOf _ _ target3.outgoing
def inS : Matrix 2 0 := matrixOf _ _ target3.incoming
def inT : Matrix 6 1 := fun _ _ => false
abbrev U := Homology outS inS
abbrev V (outT : Matrix 5 6) := Homology outT inT
def zu : U := Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _)
def zv (outT : Matrix 5 6) : V outT := Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _)

theorem zero_matrix_eval (x : Vec n) : eval (fun (_ : Fin m) (_ : Fin n) => false) x = zero := by
  funext i
  exact zero_dot x

/-- This is local d3 naturality for the actual induced E3 map, not a chosen
value of the unknown C2 outgoing column. -/
def Natural (outT : Matrix 5 6) : Prop :=
  IsChainMap outS outT centerMap upperMap

theorem compatible (outT : Matrix 5 6) (hn : Natural outT) :
    CompatibleMap outS inS outT inT centerMap upperMap lowerMap := by
  refine ⟨hn, ?_⟩
  intro x
  have hx : x = zero := Subsingleton.elim _ _
  rw [hx,eval_zero,eval_zero,eval_zero,eval_zero]

def g (outT : Matrix 5 6) (hn : Natural outT) : U → V outT :=
  inducedMap (compatible outT hn)

/-- With zero incoming boundaries, a homology class has a well-defined
underlying cycle vector even when its outgoing differential is unknown. -/
def underlying (outT : Matrix 5 6) : V outT → Vec 6 :=
  Quot.lift (fun x : Cycle outT => x.val) (by
    intro x y h
    obtain ⟨v,hv⟩ := h
    change eval inT v = add x.val y.val at hv
    have hz : add x.val y.val = zero := by
      rw [← hv]
      exact zero_matrix_eval v
    exact (PageTransitionCertificates.add_eq_zero_iff _ _).mp hz)

theorem reflects_zero (outT : Matrix 5 6) (hn : Natural outT) (x : U)
    (h : g outT hn x = zv outT) : x = zu := by
  induction x using Quot.inductionOn with
  | h x =>
    have he := congrArg (underlying outT) h
    change eval centerMap x.val = zero at he
    have injective : ∀ v : Vec 2, eval centerMap v = zero → v = zero := by decide
    have hx := injective x.val he
    apply Quot.sound
    change InImage inS (add x.val zero)
    refine ⟨zero, ?_⟩
    rw [hx,eval_zero]
    rfl

theorem unknown_column_forced (outT : Matrix 5 6) (hn : Natural outT) :
    ∀ i, outT i ⟨0,by decide⟩ = false := by
  have h := hn (fun j : Fin 2 => j.val == 0)
  change eval outT (eval (centerMap : Matrix 6 2) (fun j : Fin 2 => j.val == 0)) =
    eval (upperMap : Matrix 5 2) (eval outS (fun j : Fin 2 => j.val == 0)) at h
  have hs : eval outS (fun j : Fin 2 => j.val == 0) = zero := by decide
  have hm : eval centerMap (fun j : Fin 2 => j.val == 0) = (fun j : Fin 6 => j.val == 0) := by decide
  have hzero : eval outT (fun j : Fin 6 => j.val == 0) = zero := by
    calc
      eval outT (fun j : Fin 6 => j.val == 0) =
          eval outT (eval (centerMap : Matrix 6 2) (fun j : Fin 2 => j.val == 0)) :=
        congrArg (eval outT) hm.symm
      _ = zero := h.trans ((congrArg (eval (upperMap : Matrix 5 2)) hs).trans (eval_zero _))
  intro i
  have hi := congrFun hzero i
  simpa [eval, dot, zero] using hi

#print axioms reflects_zero
end Row2576D4Detector.Target
