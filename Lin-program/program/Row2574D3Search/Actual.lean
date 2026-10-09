import Row2574D3Search.Product

namespace Row2574D3Search.Actual
open LinearCertificates PageTransitionCertificates ManualInputObligations ManualInputObligations.Reference
open Row3151ActualTransport ActualAdamsHomologyCoordinates ActualAdamsHomologyCoordinates.Meaning
open Product

structure Input (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (P : CertifiedAdamsProduct S) where
  product : Product.Input S pages P
  currentAdd : LocalAddMeaning pages 2 degree
  upper2 : Coordinates S 2 (AdamsTarget 3 degree) 5
  upperMeaning2 : Meaning S 2 (AdamsTarget 3 degree) Data.upper2 upper2
  upperZero2 : LocalZeroMeaning pages 2 (AdamsTarget 3 degree)
  outgoing : ∀ x,
    (upperMeaning2.nextCoordinates pages Data.upper2_valid upperZero2).equivalence
      (S.differential 3 degree x) =
        eval (matrixOf 1 3 Data.current3_0.outgoing) (product.current3.equivalence x)
  zero3 : LocalZeroMeaning pages 3 degree

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S} {P : CertifiedAdamsProduct S}

theorem boundary_cycle (r : Nat) (d : Bidegree) (x : (S.element r d).carrier)
    (boundary : PageBoundary S r d x) : S.differential r d x = 0 := by
  rcases boundary with rfl | ⟨e,y,h,hx⟩
  · exact (S.differential r d).map_zero'
  · subst d
    cases hx
    exact S.differentialSq r e y

noncomputable def Input.branch (D : Input S pages P) : Bool :=
  D.product.current3.equivalence (S.differential 3 Product.sourceDegree D.product.original.value3) 0

theorem Input.column (D : Input S pages P) :
    D.product.current3.equivalence (S.differential 3 Product.sourceDegree D.product.original.value3) =
      Data.incoming D.branch := by
  apply Data.branch_identification _ D.product.detected
  have square := S.differentialSq 3 Product.sourceDegree D.product.original.value3
  change S.differential 3 degree (S.differential 3 Product.sourceDegree D.product.original.value3) = 0 at square
  have h := D.outgoing (S.differential 3 Product.sourceDegree D.product.original.value3)
  rw [square,(D.upperMeaning2.nextCoordinates pages Data.upper2_valid D.upperZero2).zero_value] at h
  exact (Data.outgoing_third _).symm.trans (congrFun h.symm 0)

theorem Input.whole_source (D : Input S pages P) (x : (S.element 3 Product.sourceDegree).carrier) :
    D.product.current3.equivalence (S.differential 3 Product.sourceDegree x) =
      eval (matrixOf 3 1 (Data.current3 D.branch).incoming) (D.product.original.source3.equivalence x) := by
  have casesV : ∀ v : Vec 1, v = zero ∨ v = (fun _ => true) := by decide
  rcases casesV (D.product.original.source3.equivalence x) with hz | hn
  · have same : x = 0 := D.product.original.source3.equivalence.injective
      (hz.trans D.product.original.source3.zero_value.symm)
    erw [same,(S.differential 3 Product.sourceDegree).map_zero',D.product.current3.zero_value,
      D.product.original.source3.zero_value,eval_zero]
  · have same : x = D.product.original.value3 :=
      D.product.original.source3.equivalence.injective (hn.trans D.product.original.name3.symm)
    rw [same,D.product.original.name3,D.column,Data.incoming_column]

noncomputable def Input.incomingCoordinates (D : Input S pages P) :
    ActualAdamsIncomingBridge.Source S 3 degree ≃ Vec 1 :=
  (ActualAdamsIncomingBridge.sourceEquiv S 3 degree (by decide)).trans
    D.product.original.source3.equivalence

theorem Input.source_incoming_zero (D : Input S pages P)
    (x : ActualAdamsIncomingBridge.Source S 3 Product.sourceDegree) :
    ActualAdamsIncomingBridge.differential S 3 Product.sourceDegree x = 0 := by
  let y := ActualAdamsIncomingBridge.differential S 3 Product.sourceDegree x
  have boundary : PageBoundary S 3 Product.sourceDegree y :=
    (ActualAdamsIncomingBridge.differential_image S 3 Product.sourceDegree y).mp ⟨x,rfl⟩
  have cycle : S.differential 3 Product.sourceDegree y = 0 := boundary_cycle 3 Product.sourceDegree y boundary
  exact D.product.original.cycle_is_zero (D.product.original.recordedKnown D.product.recorded)
    ⟨y,cycle.trans (S.zero_is_zero _ _).symm⟩

structure IncomingInput (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S) where
  coordinates : Coordinates S 2 ⟨3,130⟩ 2
  meaning : Meaning S 2 ⟨3,130⟩ Data.sourceIncoming2 coordinates
  zero2 : LocalZeroMeaning pages 2 ⟨3,130⟩

noncomputable def IncomingInput.next (N : IncomingInput S pages) : Coordinates S 3 ⟨3,130⟩ 1 :=
  N.meaning.nextCoordinates pages Data.sourceIncoming2_valid N.zero2

noncomputable def IncomingInput.canonical (N : IncomingInput S pages) :
    ActualAdamsIncomingBridge.Source S 3 Product.sourceDegree ≃ Vec 1 :=
  (ActualAdamsIncomingBridge.sourceEquiv S 3 Product.sourceDegree (by decide)).trans N.next.equivalence

noncomputable def Input.sourceWhole (D : Input S pages P)
    (sourceAdd : LocalAddMeaning pages 2 Product.sourceDegree)
    (incoming : IncomingInput S pages) :
    WholeCoordinates S 3 Product.sourceDegree (Data.source3 D.branch) D.product.original.source3 where
  current_add := nextCoordinates_add D.product.original.sourceMeaning pages
    Fact715Source2574.Data.source_valid D.product.original.sourceZero sourceAdd
  outgoingTarget := D.product.current3
  incomingSource := incoming.canonical
  outgoing := D.whole_source
  incoming := by
    intro x
    erw [D.source_incoming_zero,D.product.original.source3.zero_value]
    exact (show ∀ v : Vec 1,
      zero = eval (matrixOf 1 1 Data.source3_0.incoming) v from by decide) _

noncomputable def Input.whole (D : Input S pages P) :
    WholeCoordinates S 3 degree (Data.current3 D.branch) D.product.current3 where
  current_add := nextCoordinates_add D.product.meaning pages Data.current2_valid D.product.zero2 D.currentAdd
  outgoingTarget := D.upperMeaning2.nextCoordinates pages Data.upper2_valid D.upperZero2
  incomingSource := D.incomingCoordinates
  outgoing := by
    intro x
    rw [Data.outgoing_same]
    exact D.outgoing x
  incoming := by
    intro x
    change D.product.current3.equivalence (ActualAdamsIncomingBridge.differential S 3 degree x) =
      eval (matrixOf 3 1 (Data.current3 D.branch).incoming)
        (D.product.original.source3.equivalence (x (by decide)))
    rw [ActualAdamsIncomingBridge.differential,dif_pos (show 3 ≤ degree.filtration from by decide)]
    exact D.whole_source (x (by decide))

noncomputable def Input.page4 (D : Input S pages P) : Coordinates S 4 degree 1 :=
  D.whole.meaning.nextCoordinates pages (Data.current3_valid D.branch) D.zero3

theorem Input.exhaustive (D : Input S pages P) :
    ∃ b : Bool, Nonempty (WholeCoordinates S 3 degree (Data.current3 b) D.product.current3) :=
  ⟨D.branch,⟨D.whole⟩⟩

noncomputable def Input.raw (D : Input S pages P) := D.product.coordinates.equivalence.symm Data.raw
noncomputable def Input.cycle2 (D : Input S pages P) : PageCycle S 2 degree :=
  ⟨D.raw,(D.product.meaning.cycle_iff _).mpr (by
    change eval _ (D.product.coordinates.equivalence (D.product.coordinates.equivalence.symm Data.raw)) = zero
    rw [Equiv.apply_symm_apply]
    exact Data.raw_cycle2)⟩
noncomputable def Input.value3 (D : Input S pages P) :=
  (pages.nextPage 2 degree).toNext (Quotient.mk _ D.cycle2)
theorem Input.name3 (D : Input S pages P) : D.product.current3.equivalence D.value3 = Data.basis3 0 := by
  unfold Input.value3
  change (D.product.meaning.nextCoordinates pages Data.current2_valid D.product.zero2).equivalence _ = _
  erw [Meaning.nextCoordinates_quotient]
  change eval Data.current2.comparison.projection
    (D.product.coordinates.equivalence (D.product.coordinates.equivalence.symm Data.raw)) = _
  rw [Equiv.apply_symm_apply]
  exact Data.raw_name3
noncomputable def Input.cycle3 (D : Input S pages P) : PageCycle S 3 degree :=
  ⟨D.value3,(D.whole.meaning.cycle_iff _).mpr (by
    change eval _ (D.product.current3.equivalence D.value3) = zero
    rw [D.name3]
    exact Data.name_cycle3 D.branch)⟩
noncomputable def Input.value4 (D : Input S pages P) :=
  (pages.nextPage 3 degree).toNext (Quotient.mk _ D.cycle3)
theorem Input.name4 (D : Input S pages P) : D.page4.equivalence D.value4 = (fun _ => true) := by
  unfold Input.value4
  erw [Meaning.nextCoordinates_quotient]
  change eval (matrixOf 1 3 (Data.current3 D.branch).projection)
    (D.product.current3.equivalence D.value3) = _
  rw [D.name3]
  exact Data.name_next3 D.branch
theorem Input.nonzero4 (D : Input S pages P) : D.value4 ≠ 0 := by
  intro hz
  have h := D.name4
  rw [hz,D.page4.zero_value] at h
  exact (show (zero : Vec 1) ≠ (fun _ => true) from by decide) h
noncomputable def Input.trace4 (D : Input S pages P) : Trace S pages degree 4 D.raw D.value4 :=
  .step (.step (.start D.raw) D.cycle2.property) D.cycle3.property

theorem Input.same_input (D : Input S pages P) (input : (S.element 2 degree).carrier)
    (binding : D.product.coordinates.equivalence input = Data.raw) :
    Nonempty (Trace S pages degree 4 input D.value4) ∧ D.value4 ≠ 0 := by
  have same : input = D.raw := D.product.coordinates.equivalence.injective
    (binding.trans (D.product.coordinates.equivalence.apply_symm_apply _).symm)
  subst input
  exact ⟨⟨D.trace4⟩,D.nonzero4⟩

#print axioms boundary_cycle
#print axioms Input.column
#print axioms Input.whole_source
#print axioms Input.incomingCoordinates
#print axioms Input.source_incoming_zero
#print axioms IncomingInput.next
#print axioms IncomingInput.canonical
#print axioms Input.sourceWhole
#print axioms Input.whole
#print axioms Input.page4
#print axioms Input.exhaustive
#print axioms Input.name3
#print axioms Input.name4
#print axioms Input.nonzero4
#print axioms Input.trace4
#print axioms Input.same_input
end Row2574D3Search.Actual
