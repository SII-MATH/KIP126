import ActualAdamsIncomingBridge.Basic
import Mathlib.Algebra.Module.Pi

namespace ActualAdamsIncomingBridge.Nonvacuity
open ManualInputObligations.Reference Fact762IncomingCertificates LinearCertificates

def zeroSpace : F2Space where
  carrier := Fin 0 → F2
  addGroup := inferInstance
  module := inferInstance

def oneSpace : F2Space where
  carrier := F2
  addGroup := inferInstance
  module := inferInstance

/-- A constant algebraic page family supported in the target degree. Its
target is nonzero, while every possible incoming source is an actual zero group. -/
def space (d : Bidegree) : F2Space := if d = fact762Degree then oneSpace else zeroSpace

def model : AdamsSpectralSequence where
  element := fun _ d => space d
  zero := fun _ _ => 0
  zero_is_zero := fun _ _ => rfl
  differential := fun _ _ =>
    { toFun := fun _ => 0
      map_zero' := rfl
      map_add' := by intros; simp
      map_smul' := by intros; simp }
  differentialSq := by intros; rfl
  nextPageIsHomology := True
  e2IsExt := True

def target (r : Nat) : (model.element r fact762Degree).carrier :=
  (show (space fact762Degree).carrier from by simp only [space]; exact (1 : F2))

theorem target_nonzero (r : Nat) : target r ≠ model.zero r fact762Degree := by
  change (1 : F2) ≠ 0
  exact one_ne_zero

theorem differential_all_zero (r : Nat) (x : Source model r fact762Degree) :
    differential model r fact762Degree x = model.zero r fact762Degree := by
  by_cases h : r ≤ fact762Degree.filtration
  · simp only [differential,dif_pos h]
    change pageCast model r _ 0 = 0
    exact cast_zero _ _ _
  · simp only [differential,dif_neg h]
    rfl

theorem source4_zero (x : Source model 4 fact762Degree) :
    x = sourceZero model 4 fact762Degree := by
  funext h
  change (x h : (Fin 0 → F2)) = 0
  funext i
  exact Fin.elim0 i

theorem source7_zero (x : Source model 7 fact762Degree) :
    x = sourceZero model 7 fact762Degree := by
  funext h
  change (x h : (Fin 0 → F2)) = 0
  funext i
  exact Fin.elim0 i

def outgoing : Matrix 0 1 := fun i => Fin.elim0 i
def incoming : Matrix 1 2 := fun _ j => j.val == 1

theorem incoming_kernel : AffineRemainingSearch.Kernel.KernelSpanned incoming
    AffineRemainingSearch.Kernel.incoming AffineRemainingSearch.Kernel.survivor := by
  unfold AffineRemainingSearch.Kernel.KernelSpanned InKernel
  decide

def page4 : Fact762AssemblyCertificates.Page4Route (incomingSystem model fact762Degree target) where
  targetDimension := 0
  outgoing := outgoing
  incomingD3 := incoming
  complex := by intro x; funext i; exact Fin.elim0 i
  survivorCycle := by unfold InKernel; decide
  completeKernel := incoming_kernel
  coordinates := fun _ => Fact762Source4Certificates.zeroClass outgoing incoming
  faithful := fun a b _ => (source4_zero a).trans (source4_zero b).symm
  zeroMeaning := rfl

def tower : PageTower where
  Carrier := fun _ => Unit
  zero := fun _ => ()
  isCycle := fun _ _ => True
  zeroCycle := fun _ => trivial
  next := fun _ _ => ()
  nextZero := fun _ => rfl
  nextSurjective := fun _ y => ⟨⟨(),trivial⟩,by cases y; rfl⟩

def page7 : Fact762AssemblyCertificates.Page7Route (incomingSystem model fact762Degree target) where
  tower := tower
  named := fun _ => ()
  meaning3 := fun _ => ()
  covers3 := fun y => ⟨Fact762Source7Certificates.sourceZero,by cases y; rfl⟩
  zero3 := rfl
  named3 := rfl
  row2632_cycles := by intros; trivial
  namedStep := by intros; rfl
  meaning7 := fun _ => sourceZero model 7 fact762Degree
  covers7 := fun x => ⟨(),(source7_zero x).symm⟩
  zero7 := rfl
  row2632_d7_prefix := differential_zero model 7 fact762Degree

/-- A constructed value, not an assumed existence or a desired conclusion. -/
def conditions : Conditions model target where
  page2 := (incomingSystem model fact762Degree target).no_hit_of_all_values 2
    (target_nonzero 2) (differential_all_zero 2)
  page3 := (incomingSystem model fact762Degree target).no_hit_of_all_values 3
    (target_nonzero 3) (differential_all_zero 3)
  page4 := page4
  page7 := page7
  zeroMaps := fun r _ => differential_all_zero r

theorem conditions_inhabited : Nonempty (Conditions model target) := ⟨conditions⟩

theorem model_no_hit_elsewhere (r : Nat) (page : 2 ≤ r) (six : r ≠ 6) (twelve : r ≠ 12) :
    ¬ PageBoundary model r fact762Degree (target r) :=
  no_hit_elsewhere model target conditions r page (target_nonzero r) six twelve

theorem boundary_zero (r : Nat) (d : Bidegree) (x : (model.element r d).carrier)
    (h : PageBoundary model r d x) : x = 0 := by
  rcases h with h | ⟨e,y,he,hy⟩
  · exact h
  · subst d
    exact hy.symm

theorem equivalent_eq (r : Nat) (d : Bidegree) (x y : PageCycle model r d)
    (h : PageEquivalent model r d x y) : x.val = y.val := by
  rcases h with h | h
  · exact h
  · exact f2_add_eq_zero_implies_eq (model.element r d) (boundary_zero r d _ h)

/-- The constant algebraic pages are explicitly identified with their homology
quotients. The model does not merely set a proposition-valued metadata field. -/
def nextPage (r : Nat) (d : Bidegree) : PageHomologyIdentification model r d where
  toNext := Quotient.lift (fun x : PageCycle model r d => x.val)
    (fun x y h => equivalent_eq r d x y h)
  fromNext := fun y => Quotient.mk _ (⟨y,rfl⟩ : PageCycle model r d)
  leftInverse := by
    intro x
    induction x using Quotient.inductionOn with
    | h x => rfl
  rightInverse := fun _ => rfl

def certifiedPages : CertifiedAdamsPages model where
  nextPage := nextPage

theorem zeroMeaning : ActualAdamsSystemBridge.ZeroMeaning model certifiedPages := by
  intro r d
  rfl

theorem realized_nonvacuity :
    Nonempty (CertifiedAdamsPages model) ∧ Nonempty (Conditions model target) ∧
      ∀ r, target r ≠ model.zero r fact762Degree :=
  ⟨⟨certifiedPages⟩,conditions_inhabited,target_nonzero⟩

#print axioms target_nonzero
#print axioms source4_zero
#print axioms source7_zero
#print axioms conditions_inhabited
#print axioms model_no_hit_elsewhere
#print axioms certifiedPages
#print axioms zeroMeaning
#print axioms realized_nonvacuity
end ActualAdamsIncomingBridge.Nonvacuity
