import Row3151ActualTransport.Transport

namespace Row3151ActualTransport.Named
open LinearCertificates PageTransitionCertificates ManualInputObligations
open ManualInputObligations.Reference Row3151FullNeighborhood

/-- The whole comparison is interpreted, including every incoming element
and the actual quotient projection. Both endpoint paths use this same S. -/
structure StepMeaning (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (r : Nat) (degree : Bidegree) (w : WireComparison)
    (current : Coordinates S r degree w.m) (next : Coordinates S (r+1) degree w.h) where
  outgoingTarget : Coordinates S r (AdamsTarget r degree) w.k
  incomingSource : ActualAdamsIncomingBridge.Source S r degree ≃ Vec w.n
  outgoing : ∀ x, outgoingTarget.equivalence (S.differential r degree x) =
    eval (matrixOf w.k w.m w.outgoing) (current.equivalence x)
  incoming : ∀ x, current.equivalence (ActualAdamsIncomingBridge.differential S r degree x) =
    eval (matrixOf w.m w.n w.incoming) (incomingSource x)
  quotient : ∀ (x : (S.element r degree).carrier)
    (cycle : S.differential r degree x = S.zero r (AdamsTarget r degree)),
    next.equivalence ((pages.nextPage r degree).toNext
      (Quotient.mk _ (⟨x,cycle⟩ : PageCycle S r degree))) =
      eval w.comparison.projection (current.equivalence x)

theorem cycle (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (r : Nat) (degree : Bidegree) (w : WireComparison)
    (current : Coordinates S r degree w.m) (next : Coordinates S (r+1) degree w.h)
    (M : StepMeaning S pages r degree w current next)
    (x : (S.element r degree).carrier)
    (finite : eval (matrixOf w.k w.m w.outgoing) (current.equivalence x) = zero) :
    S.differential r degree x = S.zero r (AdamsTarget r degree) := by
  apply M.outgoingTarget.equivalence.injective
  rw [M.outgoing,finite,S.zero_is_zero,M.outgoingTarget.zero_value]

def advance (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (r : Nat) (degree : Bidegree) (w : WireComparison)
    (current : Coordinates S r degree w.m) (next : Coordinates S (r+1) degree w.h)
    (M : StepMeaning S pages r degree w current next)
    (raw : (S.element 2 degree).carrier) (previous : Endpoint S pages r degree raw)
    (finite : eval (matrixOf w.k w.m w.outgoing) (current.equivalence previous.value) = zero) :
    Endpoint S pages (r+1) degree raw :=
  ⟨(pages.nextPage r degree).toNext (Quotient.mk _
      (⟨previous.value,cycle S pages r degree w current next M previous.value finite⟩ : PageCycle S r degree)),
    .step previous.trace (cycle S pages r degree w current next M previous.value finite)⟩

theorem advance_coordinate (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (r : Nat) (degree : Bidegree) (w : WireComparison)
    (current : Coordinates S r degree w.m) (next : Coordinates S (r+1) degree w.h)
    (M : StepMeaning S pages r degree w current next)
    (raw : (S.element 2 degree).carrier) (previous : Endpoint S pages r degree raw)
    (finite : eval (matrixOf w.k w.m w.outgoing) (current.equivalence previous.value) = zero) :
    next.equivalence (advance S pages r degree w current next M raw previous finite).value =
      eval w.comparison.projection (current.equivalence previous.value) :=
  M.quotient _ _

theorem boundary_iff (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (r : Nat) (degree : Bidegree) (w : WireComparison)
    (current : Coordinates S r degree w.m) (next : Coordinates S (r+1) degree w.h)
    (M : StepMeaning S pages r degree w current next) (x : (S.element r degree).carrier) :
    PageBoundary S r degree x ↔ InImage (matrixOf w.m w.n w.incoming) (current.equivalence x) := by
  rw [← ActualAdamsIncomingBridge.differential_image]
  constructor
  · rintro ⟨y,hy⟩
    exact ⟨M.incomingSource y,(M.incoming y).symm.trans (congrArg current.equivalence hy)⟩
  · rintro ⟨v,hv⟩
    obtain ⟨y,rfl⟩ := M.incomingSource.surjective v
    refine ⟨y,current.equivalence.injective ?_⟩
    exact (M.incoming y).trans hv

abbrev source2 := AggregateD5Conditional.Data.b_S0_11_137_d2
abbrev source3 := AggregateD5Conditional.Data.b_S0_11_137_d3
abbrev target2 := AggregateD5Conditional.Data.b_S0_15_140_d2
abbrev target3 := AggregateD5Conditional.Data.b_S0_15_140_d3
def sourceRaw : Vec 6 := fun i => i.val == 2
def targetRaw : Vec 5 := fun i => i.val == 1
def sourceNext : Vec 2 := fun i => i.val == 1
def targetNext : Vec 2 := fun i => i.val == 0

theorem raw_binding (a b q : Bool) :
    (∀ i : Fin 6, (Data.finite a b q).rawSource[i.val]?.getD false = sourceRaw i) ∧
    (∀ i : Fin 5, (Data.finite a b q).rawTarget[i.val]?.getD false = targetRaw i) := by
  cases a <;> cases b <;> cases q <;> decide

theorem finite_source_path :
    eval (matrixOf source2.k source2.m source2.outgoing) sourceRaw = zero ∧
    eval source2.comparison.projection sourceRaw = sourceNext ∧
    eval (matrixOf source3.k source3.m source3.outgoing) sourceNext = zero ∧
    eval source3.comparison.projection sourceNext = sourceNext := by decide

theorem finite_target_path :
    eval (matrixOf target2.k target2.m target2.outgoing) targetRaw = zero ∧
    eval target2.comparison.projection targetRaw = targetNext ∧
    eval (matrixOf target3.k target3.m target3.outgoing) targetNext = zero ∧
    eval target3.comparison.projection targetNext = targetNext := by decide

theorem finite_nonboundaries :
    ¬ InImage (matrixOf source2.m source2.n source2.incoming) sourceRaw ∧
    ¬ InImage (matrixOf source3.m source3.n source3.incoming) sourceNext ∧
    ¬ InImage (matrixOf target2.m target2.n target2.incoming) targetRaw ∧
    ¬ InImage (matrixOf target3.m target3.n target3.incoming) targetNext := by
  unfold InImage
  decide

structure Meanings (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (a : Bool) (I : IncomingMeaning S pages a) (E : EventMeaning S a I.page4) where
  sourceE2 : Coordinates S 2 sourceDegree 6
  sourceE3 : Coordinates S 3 sourceDegree 2
  targetE2 : Coordinates S 2 targetDegree 5
  targetE3 : Coordinates S 3 targetDegree 2
  sourceD2 : StepMeaning S pages 2 sourceDegree source2 sourceE2 sourceE3
  sourceD3 : StepMeaning S pages 3 sourceDegree source3 sourceE3 E.source
  targetD2 : StepMeaning S pages 2 targetDegree target2 targetE2 targetE3
  targetD3 : StepMeaning S pages 3 targetDegree target3 targetE3 E.target

variable (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S) (a : Bool)
  (I : IncomingMeaning S pages a) (E : EventMeaning S a I.page4) (M : Meanings S pages a I E)

def namedSource : (S.element 2 sourceDegree).carrier := M.sourceE2.equivalence.symm sourceRaw
def namedTarget : (S.element 2 targetDegree).carrier := M.targetE2.equivalence.symm targetRaw

def sourceEndpoint3 : Endpoint S pages 3 sourceDegree (namedSource S pages a I E M) :=
  advance S pages 2 sourceDegree source2 M.sourceE2 M.sourceE3 M.sourceD2 _
    ⟨namedSource S pages a I E M,.start _⟩ (by
      change eval _ (M.sourceE2.equivalence (M.sourceE2.equivalence.symm sourceRaw)) = _
      rw [M.sourceE2.equivalence.apply_symm_apply]
      exact finite_source_path.1)

theorem source3_coordinate :
    M.sourceE3.equivalence (sourceEndpoint3 S pages a I E M).value = sourceNext := by
  calc
    _ = eval source2.comparison.projection (M.sourceE2.equivalence (namedSource S pages a I E M)) :=
      M.sourceD2.quotient _ _
    _ = sourceNext := by
      rw [namedSource,M.sourceE2.equivalence.apply_symm_apply]
      exact finite_source_path.2.1

def sourceEndpoint4 : Endpoint S pages 4 sourceDegree (namedSource S pages a I E M) :=
  advance S pages 3 sourceDegree source3 M.sourceE3 E.source M.sourceD3 _
    (sourceEndpoint3 S pages a I E M) (by erw [source3_coordinate]; exact finite_source_path.2.2.1)

theorem source4_coordinate :
    E.source.equivalence (sourceEndpoint4 S pages a I E M).value = sourceNext := by
  calc
    _ = eval source3.comparison.projection (M.sourceE3.equivalence (sourceEndpoint3 S pages a I E M).value) :=
      M.sourceD3.quotient _ _
    _ = sourceNext := (congrArg (eval source3.comparison.projection)
      (source3_coordinate S pages a I E M)).trans finite_source_path.2.2.2

def targetEndpoint3 : Endpoint S pages 3 targetDegree (namedTarget S pages a I E M) :=
  advance S pages 2 targetDegree target2 M.targetE2 M.targetE3 M.targetD2 _
    ⟨namedTarget S pages a I E M,.start _⟩ (by
      change eval _ (M.targetE2.equivalence (M.targetE2.equivalence.symm targetRaw)) = _
      rw [M.targetE2.equivalence.apply_symm_apply]
      exact finite_target_path.1)

theorem target3_coordinate :
    M.targetE3.equivalence (targetEndpoint3 S pages a I E M).value = targetNext := by
  calc
    _ = eval target2.comparison.projection (M.targetE2.equivalence (namedTarget S pages a I E M)) :=
      M.targetD2.quotient _ _
    _ = targetNext := by
      rw [namedTarget,M.targetE2.equivalence.apply_symm_apply]
      exact finite_target_path.2.1

def targetEndpoint4 : Endpoint S pages 4 targetDegree (namedTarget S pages a I E M) :=
  advance S pages 3 targetDegree target3 M.targetE3 E.target M.targetD3 _
    (targetEndpoint3 S pages a I E M) (by erw [target3_coordinate]; exact finite_target_path.2.2.1)

theorem target4_coordinate :
    E.target.equivalence (targetEndpoint4 S pages a I E M).value = targetNext := by
  calc
    _ = eval target3.comparison.projection (M.targetE3.equivalence (targetEndpoint3 S pages a I E M).value) :=
      M.targetD3.quotient _ _
    _ = targetNext := (congrArg (eval target3.comparison.projection)
      (target3_coordinate S pages a I E M)).trans finite_target_path.2.2.2

theorem source_prior_nonboundaries :
    ¬ PageBoundary S 2 sourceDegree (namedSource S pages a I E M) ∧
    ¬ PageBoundary S 3 sourceDegree (sourceEndpoint3 S pages a I E M).value := by
  constructor
  · intro h
    have finite := (boundary_iff S pages 2 sourceDegree source2 M.sourceE2 M.sourceE3
      M.sourceD2 _).mp h
    erw [namedSource,M.sourceE2.equivalence.apply_symm_apply] at finite
    exact finite_nonboundaries.1 finite
  · intro h
    have finite := (boundary_iff S pages 3 sourceDegree source3 M.sourceE3 E.source
      M.sourceD3 _).mp h
    erw [source3_coordinate] at finite
    exact finite_nonboundaries.2.1 finite

theorem target_prior_nonboundaries :
    ¬ PageBoundary S 2 targetDegree (namedTarget S pages a I E M) ∧
    ¬ PageBoundary S 3 targetDegree (targetEndpoint3 S pages a I E M).value := by
  constructor
  · intro h
    have finite := (boundary_iff S pages 2 targetDegree target2 M.targetE2 M.targetE3
      M.targetD2 _).mp h
    erw [namedTarget,M.targetE2.equivalence.apply_symm_apply] at finite
    exact finite_nonboundaries.2.2.1 finite
  · intro h
    have finite := (boundary_iff S pages 3 targetDegree target3 M.targetE3 E.target
      M.targetD3 _).mp h
    erw [target3_coordinate] at finite
    exact finite_nonboundaries.2.2.2 finite

theorem named_event (known : eval E.d sourceNext = targetNext) :
    S.differential 4 sourceDegree (sourceEndpoint4 S pages a I E M).value =
      (targetEndpoint4 S pages a I E M).value ∧
    (targetEndpoint4 S pages a I E M).value ≠ 0 ∧
    PageBoundary S 4 targetDegree (targetEndpoint4 S pages a I E M).value :=
  actual_event S pages a I E known _ _ _ _
    (source4_coordinate S pages a I E M) (target4_coordinate S pages a I E M)

#print axioms cycle
#print axioms advance_coordinate
#print axioms boundary_iff
#print axioms raw_binding
#print axioms finite_source_path
#print axioms finite_target_path
#print axioms finite_nonboundaries
#print axioms source4_coordinate
#print axioms target4_coordinate
#print axioms source_prior_nonboundaries
#print axioms target_prior_nonboundaries
#print axioms named_event
end Row3151ActualTransport.Named
