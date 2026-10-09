import Row3136FamilyBranches.CoordinateBridge

namespace Row3136FamilyBranches.Actual
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open Row3151ActualTransport

local instance (p : Vec n → Prop) [DecidablePred p] : Decidable (∀ x, p x) :=
  Fintype.decidableForallFintype
local instance (x y : Vec n) : Decidable (x = y) :=
  inferInstanceAs (Decidable ((fun i => x i) = (fun i => y i)))

abbrev sourceDegree := Row3136SquareCandidates.Actual.sourceDegree
abbrev targetDegree := Row3136SquareCandidates.Actual.targetDegree
abbrev incomingDegree : Bidegree := ⟨17,138⟩

/-- The same row3305 element is named both by its product meaning and by
the first coordinate of the entire target differential. -/
structure ParameterWitness (S : AdamsSpectralSequence) (P : CertifiedAdamsProduct S)
    (u : Bool) (T : Row3136SquareCandidates.Actual.TargetMeaning S u) where
  meaning : Row3305H0Search.Actual.Meaning S P
  left : (S.element 3 Row3305H0Search.Actual.h0Degree).carrier
  right : (S.element 3 Row3305H0Search.Actual.rightDegree).carrier
  named : (S.element 3 targetDegree).carrier
  leftName : meaning.h0 left = Row3305H0Search.namedH0
  rightName : meaning.right right = Row3305H0Search.namedRight
  sourceName : meaning.source named = Row3305H0Search.namedSource
  binding : T.target.equivalence named = fun i => i.val == 0

theorem parameter_zero (S : AdamsSpectralSequence) (P : CertifiedAdamsProduct S)
    (u : Bool) (T : Row3136SquareCandidates.Actual.TargetMeaning S u)
    (W : ParameterWitness S P u T) : u = false :=
  Row3305H0Search.Assembly.actual_parameter_zero S P W.meaning u T
    W.left W.right W.named W.leftName W.rightName W.sourceName W.binding

/-- An arbitrary full source matrix is supplied. Its second column is
derived from the row3135 product, including the known right differential. -/
structure SourceMeaning (S : AdamsSpectralSequence) (P : CertifiedAdamsProduct S)
    (u : Bool) (T : Row3136SquareCandidates.Actual.TargetMeaning S u) where
  source : Coordinates S 3 sourceDegree 2
  matrix : Matrix 2 2
  differential : ∀ x, T.target.equivalence (S.differential 3 sourceDegree x) =
    eval matrix (source.equivalence x)
  productMeaning : Row3135H0Leibniz.Actual.Meaning S P
  left : (S.element 3 Row3135H0Leibniz.Actual.h0Degree).carrier
  right : (S.element 3 Row3135H0Leibniz.Actual.rightDegree).carrier
  named : (S.element 3 sourceDegree).carrier
  leftName : productMeaning.h0 left = Row3135H0Leibniz.namedH0
  rightName : productMeaning.right right = Row3135H0Leibniz.namedRight
  sourceName : productMeaning.source named = Row3135H0Leibniz.namedSource
  known : productMeaning.rightTarget
    (S.differential 3 Row3135H0Leibniz.Actual.rightDegree right) =
      Row3135H0Leibniz.knownDifferential
  binding : source.equivalence named = fun i => i.val == 1

theorem second_column_zero (S : AdamsSpectralSequence) (P : CertifiedAdamsProduct S)
    (u : Bool) (T : Row3136SquareCandidates.Actual.TargetMeaning S u)
    (M : SourceMeaning S P u T) : eval M.matrix (fun i => i.val == 1) = zero := by
  have hz := Row3135H0Leibniz.Actual.actual_row3135_d3_zero S P M.productMeaning
    M.left M.right M.named M.leftName M.rightName M.sourceName M.known
  have zeroValue := (congrArg (fun y : (S.element 3 targetDegree).carrier =>
    T.target.equivalence y) hz).trans T.target.zero_value
  exact (congrArg (eval M.matrix) M.binding).symm.trans
    ((M.differential M.named).symm.trans zeroValue)

theorem complete_matrix_candidates (D : Matrix 2 2)
    (second : eval D (fun i => i.val == 1) = zero)
    (square : ∀ v, eval (Row3136SquareCandidates.targetDifferential false) (eval D v) = zero) :
    D = Row3136SquareCandidates.sourceDifferential (D 0 0) false := by
  exact (show ∀ D : Matrix 2 2,
    eval D (fun i => i.val == 1) = zero →
    (∀ v, eval (Row3136SquareCandidates.targetDifferential false) (eval D v) = zero) →
    D = Row3136SquareCandidates.sourceDifferential (D 0 0) false from by decide) D second square

theorem actual_complete_matrix (S : AdamsSpectralSequence) (P : CertifiedAdamsProduct S)
    (u : Bool) (T : Row3136SquareCandidates.Actual.TargetMeaning S u)
    (W : ParameterWitness S P u T) (M : SourceMeaning S P u T) :
    M.matrix = Row3136SquareCandidates.sourceDifferential (M.matrix 0 0) false := by
  apply complete_matrix_candidates M.matrix (second_column_zero S P u T M)
  intro v
  let x := M.source.equivalence.symm v
  have hx : M.source.equivalence x = v := M.source.equivalence.apply_symm_apply v
  have h := T.differential (S.differential 3 sourceDegree x)
  rw [M.differential,hx] at h
  have finite := h.symm.trans ((congrArg T.next.equivalence
    (S.differentialSq 3 sourceDegree x)).trans T.next.zero_value)
  exact (congrArg (fun D => eval D (eval M.matrix v))
    (congrArg Row3136SquareCandidates.targetDifferential (parameter_zero S P u T W))).symm.trans finite

def staircaseOut (r a : Bool) : Matrix 2 2 := matrixOf 2 2 (source r a).outgoing
def staircaseIncoming (r a : Bool) : Matrix 2 1 := matrixOf 2 1 (source r a).incoming
def staircaseTargetOut (r a : Bool) : Matrix 1 2 := matrixOf 1 2 (target r a).outgoing

theorem outgoing_swap (r a : Bool) : ∀ v : Vec 2,
    eval (staircaseOut r a) (eval (CoordinateBridge.swap 2 2) v) =
      eval (Row3136SquareCandidates.sourceDifferential a false) v := by
  cases r <;> cases a <;> decide
theorem incoming_swap (r a : Bool) : ∀ v : Vec 1,
    eval (staircaseIncoming r a) v =
      eval (CoordinateBridge.swap 2 2) (eval (matrixOf 2 1 [false,r]) v) := by
  cases r <;> cases a <;> decide
theorem target_binding (r a : Bool) :
    staircaseTargetOut r a = Row3136SquareCandidates.targetDifferential false := by
  cases r <;> cases a <;> decide

/-- This conclusion matches the entire actual d3 source and incoming map
to one finite family. Realization of the other family entries is not inferred. -/
theorem actual_selected_family (S : AdamsSpectralSequence) (P : CertifiedAdamsProduct S)
    (u : Bool) (T : Row3136SquareCandidates.Actual.TargetMeaning S u)
    (W : ParameterWitness S P u T) (M : SourceMeaning S P u T)
    (r : Bool) (I : Coordinates S 3 incomingDegree 1)
    (incoming : ∀ x, M.source.equivalence (S.differential 3 incomingDegree x) =
      eval (matrixOf 2 1 [false,r]) (I.equivalence x)) :
    ∃ a : Bool, IndexedFamilyCertificates.Coherent (family r a) ∧
      (∀ x, T.target.equivalence (S.differential 3 sourceDegree x) =
        eval (staircaseOut r a) (eval (CoordinateBridge.swap 2 2) (M.source.equivalence x))) ∧
      (∀ x, eval (CoordinateBridge.swap 2 2)
        (M.source.equivalence (S.differential 3 incomingDegree x)) =
        eval (staircaseIncoming r a) (I.equivalence x)) ∧
      (∀ x, T.next.equivalence (S.differential 3 targetDegree x) =
        eval (staircaseTargetOut r a) (T.target.equivalence x)) := by
  refine ⟨M.matrix 0 0,family_coherent r (M.matrix 0 0),?_,?_,?_⟩
  · intro x
    rw [M.differential,actual_complete_matrix S P u T W M]
    exact (outgoing_swap r (M.matrix 0 0) _).symm
  · intro x
    rw [incoming]
    exact (incoming_swap r (M.matrix 0 0) _).symm
  · intro x
    exact (T.differential x).trans (congrArg
      (fun D => eval D (T.target.equivalence x))
      ((congrArg Row3136SquareCandidates.targetDifferential (parameter_zero S P u T W)).trans
        (target_binding r (M.matrix 0 0)).symm))

/-- In the residual/nonzero branch, the next target has dimension zero.
An actual full target equivalence forces every d4 value to vanish. -/
theorem actual_rebased_d4_zero (S : AdamsSpectralSequence)
    (targetCoordinates : Coordinates S 4 sourceDegree 0)
    (x : (S.element 4 (⟨16,137⟩ : Bidegree)).carrier) :
    S.differential 4 ⟨16,137⟩ x = 0 := by
  apply targetCoordinates.equivalence.injective
  funext i
  exact Fin.elim0 i

#print axioms parameter_zero
#print axioms second_column_zero
#print axioms complete_matrix_candidates
#print axioms actual_complete_matrix
#print axioms outgoing_swap
#print axioms incoming_swap
#print axioms target_binding
#print axioms actual_selected_family
#print axioms actual_rebased_d4_zero
end Row3136FamilyBranches.Actual
