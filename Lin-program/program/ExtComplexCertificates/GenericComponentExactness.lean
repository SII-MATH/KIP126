import ExtComplexCertificates.GenericComponentImport
import Mathlib.Algebra.BigOperators.Fin

namespace ExtComplexCertificates.GenericFreeComplex
open MilnorCertificates
open scoped BigOperators

noncomputable def scalarBool (a : ZMod 2) : Bool := a.val == 1

theorem boolScalar_scalarBool (a : ZMod 2) : boolScalar (scalarBool a) = a := by
  have h := scalar_parity a.val
  simpa [scalarBool,Nat.mod_eq_of_lt a.val_lt] using h

theorem boolScalar_xor (a b : Bool) : boolScalar (xor a b) = boolScalar a + boolScalar b := by
  cases a <;> cases b <;> decide

theorem boolScalar_and (a b : Bool) : boolScalar (a && b) = boolScalar a * boolScalar b := by
  cases a <;> cases b <;> rfl

def matrixScalarAction (A : LinearCertificates.Matrix m n) (v : Fin n → ZMod 2) : Fin m → ZMod 2 :=
  fun i => ∑ j, boolScalar (A i j) * v j

theorem dot_scalar (a b : LinearCertificates.Vec n) :
    boolScalar (LinearCertificates.dot a b) = ∑ i, boolScalar (a i) * boolScalar (b i) := by
  induction n with
  | zero => simp [LinearCertificates.dot,boolScalar]
  | succ n ih =>
    rw [LinearCertificates.dot,boolScalar_xor,boolScalar_and,ih,Fin.sum_univ_succ]

theorem exactAt_scalar (A : LinearCertificates.Matrix k m) (B : LinearCertificates.Matrix m n)
    (hex : ResolutionCertificates.ExactAt A B) (v : Fin m → ZMod 2)
    (hv : matrixScalarAction A v = 0) : ∃ w : Fin n → ZMod 2, matrixScalarAction B w = v := by
  have hb : LinearCertificates.InKernel A (fun j => scalarBool (v j)) := by
    funext i
    apply boolScalar_injective
    change boolScalar (LinearCertificates.dot _ _) = 0
    rw [dot_scalar]
    simp only [boolScalar_scalarBool]
    exact congrFun hv i
  obtain ⟨w,hw⟩ := hex.2 _ hb
  refine ⟨fun j => boolScalar (w j),?_⟩
  funext i
  have hh := congrArg boolScalar (congrFun hw i)
  rw [LinearCertificates.eval,dot_scalar,boolScalar_scalarBool] at hh
  exact hh

def listIndex (d : Data rank n) (s t : Nat) (i : Fin (componentBasisList d s t).length) :
    ComponentIndex d s t := ⟨(componentBasisList d s t).get i,List.mem_toFinset.mpr (List.get_mem _ _)⟩

theorem listIndex_symm (d : Data rank n) (s t : Nat) (i : Fin (componentBasisList d s t).length) :
    listIndex d s t i = (componentListEquiv d s t).symm i := by
  apply Subtype.ext
  have h := componentToListIndex_spec d s t ((componentListEquiv d s t).symm i)
  have he : componentToListIndex d s t ((componentListEquiv d s t).symm i) = i :=
    (componentListEquiv d s t).apply_symm_apply i
  rw [he] at h
  exact h

def listExtract (d : Data rank n) (s t : Nat) (x : FreeModule rank n) :
    Fin (componentBasisList d s t).length → ZMod 2 := fun i => extract d s t x (listIndex d s t i)

noncomputable def listReconstruct (d : Data rank n) (s t : Nat)
    (v : Fin (componentBasisList d s t).length → ZMod 2) : FreeModule rank n :=
  reconstruct d s t (fun p => v (componentListEquiv d s t p))

theorem listReconstruct_extract (d : Data rank n) (s t : Nat)
    (x : FreeModule rank n) (hx : Homogeneous d s t x) :
    listReconstruct d s t (listExtract d s t x) = x := by
  unfold listReconstruct listExtract
  simp_rw [listIndex_symm,Equiv.symm_apply_apply]
  exact reconstruct_extract d s t x hx

theorem listMatrixAction (d : Data rank n) (s t : Nat) (c : ComponentCertificate d s t)
    (v : Fin (componentBasisList d (s+1) t).length → ZMod 2) (q : ComponentIndex d s t) :
    componentMatrixAction c (fun p => v (componentListEquiv d (s+1) t p)) q =
      matrixScalarAction (orderedMatrix d s t c) v (componentListEquiv d s t q) := by
  unfold componentMatrixAction matrixScalarAction
  rw [← (componentListEquiv d (s+1) t).sum_comp]
  apply Finset.sum_congr rfl
  intro p hp
  change _ = boolScalar (componentMatrixEntry c (listIndex d s t _) (listIndex d (s+1) t _)) * _
  simp only [listIndex_symm,Equiv.symm_apply_apply]

theorem listDifferential_reconstruct (d : Data rank n) (s t : Nat) (c : ComponentCertificate d s t)
    (h : checkComponent d s t c = true) (v : Fin (componentBasisList d (s+1) t).length → ZMod 2) :
    differential d (listReconstruct d (s+1) t v) =
      listReconstruct d s t (matrixScalarAction (orderedMatrix d s t c) v) := by
  unfold listReconstruct
  rw [differential_reconstruct d s t c h]
  congr 1
  funext q
  exact listMatrixAction d s t c v q

theorem listDifferential_extract (d : Data rank n) (s t : Nat) (c : ComponentCertificate d s t)
    (h : checkComponent d s t c = true) (v : Fin (componentBasisList d (s+1) t).length → ZMod 2) :
    listExtract d s t (differential d (listReconstruct d (s+1) t v)) =
      matrixScalarAction (orderedMatrix d s t c) v := by
  funext i
  change extract d s t (differential d (reconstruct d (s+1) t _)) _ = _
  rw [differential_extract_reconstruct d s t c h,listMatrixAction,listIndex_symm,Equiv.apply_symm_apply]

/-- No caller-supplied coordinate compatibility: the checked polynomial
products and exhaustive ordered basis construct the actual witness. -/
theorem checkPositiveComponent_sound (d : Data rank n) (s t : Nat) (w : WireComponent)
    (h : checkPositiveComponent d s t w = true)
    (x : FreeModule rank n) (hx : Homogeneous d (s+1) t x)
    (hc : differential d x = 0) :
    ∃ y : FreeModule rank n, Homogeneous d (s+2) t y ∧ differential d y = x := by
  simp only [checkPositiveComponent,Bool.and_eq_true] at h
  have ho := h.1.1.2
  have hi := h.1.2
  simp only [checkArrow,Bool.and_eq_true] at ho hi
  let v := listExtract d (s+1) t x
  have hv : matrixScalarAction (orderedMatrix d s t (w.outgoing.certificate d s t)) v = 0 := by
    rw [← listDifferential_extract d s t _ ho.1.2 v,listReconstruct_extract d (s+1) t x hx,hc]
    rfl
  obtain ⟨z,hz⟩ := exactAt_scalar _ _ (ResolutionCertificates.checkContraction_sound _ _ _ h.2) v hv
  refine ⟨listReconstruct d (s+2) t z,reconstruct_homogeneous d (s+2) t _,?_⟩
  rw [listDifferential_reconstruct d (s+1) t _ hi.1.2 z,hz]
  exact listReconstruct_extract d (s+1) t x hx

def checkZeroComponent (d : Data rank n) (t : Nat) (w : WireComponent) : Bool :=
  decide (w.version = 1 ∧ w.s = 0 ∧ w.t = t ∧ w.status = "exact" ∧
    w.up.length = (componentBasisList d 1 t).length * (componentBasisList d 0 t).length ∧
    w.down = []) && checkZeroArrow d t w.outgoing && checkArrow d 0 t w.incoming &&
  ResolutionCertificates.checkContraction (fun (_ : Fin 0) (_ : Fin (componentBasisList d 0 t).length) => false)
    (orderedMatrix d 0 t (w.incoming.certificate d 0 t))
    ⟨ResolutionCertificates.matrixOf _ _ w.up,ResolutionCertificates.matrixOf _ _ w.down⟩

/-- Unaugmented H_0 vanishes only when the incoming map is surjective.
A producer status alone cannot establish this conclusion. -/
theorem checkZeroComponent_sound (d : Data rank n) (t : Nat) (w : WireComponent)
    (h : checkZeroComponent d t w = true) (x : FreeModule rank n) (hx : Homogeneous d 0 t x) :
    ∃ y : FreeModule rank n, Homogeneous d 1 t y ∧ differential d y = x := by
  simp only [checkZeroComponent,Bool.and_eq_true] at h
  have hi := h.1.2
  simp only [checkArrow,Bool.and_eq_true] at hi
  let v := listExtract d 0 t x
  have hv : matrixScalarAction (fun (_ : Fin 0) (_ : Fin (componentBasisList d 0 t).length) => false) v = 0 := by
    funext i
    exact Fin.elim0 i
  obtain ⟨z,hz⟩ := exactAt_scalar _ _ (ResolutionCertificates.checkContraction_sound _ _ _ h.2) v hv
  refine ⟨listReconstruct d 1 t z,reconstruct_homogeneous d 1 t _,?_⟩
  rw [listDifferential_reconstruct d 0 t _ hi.1.2 z,hz]
  exact listReconstruct_extract d 0 t x hx

def ComponentExact (d : Data rank n) (s t : Nat) : Prop :=
  ∀ x : FreeModule rank n, Homogeneous d s t x →
    (s = 0 ∨ differential d x = 0) →
    ∃ y : FreeModule rank n, Homogeneous d (s+1) t y ∧ differential d y = x

def checkExactComponent (d : Data rank n) (w : WireComponent) : Bool :=
  match w.s with
  | 0 => checkZeroComponent d w.t w
  | s+1 => checkPositiveComponent d s w.t w

theorem checkExactComponent_sound (d : Data rank n) (w : WireComponent)
    (h : checkExactComponent d w = true) : ComponentExact d w.s w.t := by
  cases hs : w.s with
  | zero =>
    simp only [checkExactComponent,hs] at h
    intro x hx hc
    exact checkZeroComponent_sound d w.t w h x hx
  | succ s =>
    simp only [checkExactComponent,hs] at h
    intro x hx hc
    exact checkPositiveComponent_sound d s w.t w h x hx (hc.resolve_left (by omega))

instance (d : Data rank n) (w : WireComponent) :
    LinProgramCertificates.CertificateVerifier (ComponentExact d w.s w.t) where
  Cert := Unit
  check _ := checkExactComponent d w
  sound _ := checkExactComponent_sound d w

#print axioms listDifferential_reconstruct
#print axioms checkPositiveComponent_sound
#print axioms checkExactComponent_sound
end ExtComplexCertificates.GenericFreeComplex
