import ResolutionCertificates.HomologyBasis

namespace PageTransitionCertificates
open LinearCertificates ResolutionCertificates

structure Comparison (k m n h : Nat) where
  inclusion : Matrix m h
  projection : Matrix h m
  up : Matrix n m
  down : Matrix m k

/-- Every cycle is homologous to its projected representative; projection is
constant exactly on boundary cosets, and all homology coordinates occur. -/
def HomologyComparison (outgoing : Matrix k m) (incoming : Matrix m n)
    (c : Comparison k m n h) : Prop :=
  IsComplex outgoing incoming ∧
  (∀ z, InKernel outgoing (eval c.inclusion z)) ∧
  (∀ z, eval c.projection (eval c.inclusion z) = z) ∧
  (∀ x, InKernel outgoing x →
    InImage incoming (add x (eval c.inclusion (eval c.projection x)))) ∧
  (∀ x y, InKernel outgoing x → InKernel outgoing y →
    (eval c.projection x = eval c.projection y ↔ InImage incoming (add x y)))

def checkComparison (outgoing : Matrix k m) (incoming : Matrix m n)
    (c : Comparison k m n h) : Bool :=
  checkComplex outgoing incoming &&
  checkComplex outgoing c.inclusion &&
  checkComplex c.projection incoming &&
  decide (∀ i j, compose c.projection c.inclusion i j = identityMatrix h i j) &&
  decide (∀ i j, matrixAdd (compose c.inclusion c.projection)
    (matrixAdd (compose incoming c.up) (compose c.down outgoing)) i j = identityMatrix m i j)

theorem add_self (x : Vec m) : add x x = zero := by
  funext i
  exact Bool.xor_self _

theorem add_comm (x y : Vec m) : add x y = add y x := by
  funext i
  exact Bool.xor_comm _ _

theorem add_eq_zero_iff (x y : Vec m) : add x y = zero ↔ x = y := by
  constructor
  · intro hh
    funext i
    have hi := congrFun hh i
    change xor (x i) (y i) = false at hi
    cases hx : x i <;> cases hy : y i <;> simp_all
  · intro hh
    subst y
    exact add_self x

theorem checkComparison_sound (outgoing : Matrix k m) (incoming : Matrix m n)
    (c : Comparison k m n h) (hc : checkComparison outgoing incoming c = true) :
    HomologyComparison outgoing incoming c := by
  simp only [checkComparison, Bool.and_eq_true] at hc
  obtain ⟨⟨⟨⟨hd, hi⟩, hp⟩, hpi⟩, hid⟩ := hc
  have hinc := checkComplex_sound outgoing c.inclusion hi
  have hproj := checkComplex_sound c.projection incoming hp
  have hleft : ∀ z, eval c.projection (eval c.inclusion z) = z := by
    intro z
    have hm : compose c.projection c.inclusion = identityMatrix h :=
      funext fun i => funext fun j => of_decide_eq_true hpi i j
    have he := congrArg (fun a => eval a z) hm
    simpa only [eval_compose, eval_identity] using he
  have hdecomp : ∀ x, InKernel outgoing x →
      add (eval c.inclusion (eval c.projection x)) (eval incoming (eval c.up x)) = x := by
    intro x hx
    have hm : matrixAdd (compose c.inclusion c.projection)
        (matrixAdd (compose incoming c.up) (compose c.down outgoing)) = identityMatrix m :=
      funext fun i => funext fun j => of_decide_eq_true hid i j
    have he := congrArg (fun a => eval a x) hm
    change eval outgoing x = zero at hx
    simpa only [eval_matrixAdd, eval_compose, eval_identity, hx, eval_zero, add_zero] using he
  refine ⟨checkComplex_sound _ _ hd, hinc, hleft, ?_, ?_⟩
  · intro x hx
    refine ⟨eval c.up x, ?_⟩
    have he := congrArg (fun z => add z (eval c.inclusion (eval c.projection x))) (hdecomp x hx)
    rw [add_comm (eval c.inclusion (eval c.projection x)), add_self_cancel] at he
    exact he
  · intro x y hx hy
    constructor
    · intro he
      have hz : InKernel outgoing (add x y) := by
        change eval outgoing (add x y) = zero
        rw [eval_add, hx, hy, add_self]
      have hpz : eval c.projection (add x y) = zero := by
        rw [eval_add, he, add_self]
      refine ⟨eval c.up (add x y), ?_⟩
      have hd := hdecomp (add x y) hz
      rw [hpz, eval_zero, add_comm zero, add_zero] at hd
      exact hd
    · rintro ⟨z, hz⟩
      apply (add_eq_zero_iff _ _).mp
      rw [← eval_add, ← hz]
      exact hproj z

instance (outgoing : Matrix k m) (incoming : Matrix m n) (c : Comparison k m n h) :
    LinProgramCertificates.CertificateVerifier (HomologyComparison outgoing incoming c) where
  Cert := Unit
  check := fun _ => checkComparison outgoing incoming c
  sound := fun _ => checkComparison_sound outgoing incoming c

end PageTransitionCertificates
