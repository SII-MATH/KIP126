import ActualAdamsProductTraceBridge.Basic
import ActualAdamsSystemBridge.Trace

namespace ActualAdamsProductTraceBridge
open ManualInputObligations ManualInputObligations.Reference LinearCertificates

/-- Full E2 target coordinates for each page in the prefix. Empty finite
coordinates require actual injectivity, not merely an empty database query. -/
structure EmptyTargets (S : AdamsSpectralSequence) (d : Bidegree) (last : Nat) where
  coordinates : ∀ q, 2 ≤ q → q < last → (S.element 2 (AdamsTarget q d)).carrier → Vec 0
  faithful : ∀ q hq hl, Function.Injective (coordinates q hq hl)

theorem EmptyTargets.cycle {S : AdamsSpectralSequence} {d : Bidegree} {last : Nat}
    (empty : EmptyTargets S d last) (pages : CertifiedAdamsPages S)
    (zeros : ActualAdamsSystemBridge.ZeroMeaning S pages)
    (q : Nat) (hq : 2 ≤ q) (hl : q < last) (x : (S.element q d).carrier) :
    S.differential q d x = S.zero q (AdamsTarget q d) :=
  (ActualAdamsProductCycleBridge.zero_later_from_coordinates S pages zeros (AdamsTarget q d)
    (empty.coordinates q hq hl) (empty.faithful q hq hl) q hq _).trans (S.zero_is_zero q _).symm

noncomputable def endpointOfEmpty (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (zeros : ActualAdamsSystemBridge.ZeroMeaning S pages) (d : Bidegree) (last : Nat)
    (empty : EmptyTargets S d last) (initial : (S.element 2 d).carrier) :
    ∀ q, 2 ≤ q → q ≤ last → Endpoint S pages q d initial := by
  intro q
  induction q with
  | zero => intro h _; omega
  | succ q ih =>
    intro hq hl
    by_cases he : q+1=2
    · have eq : q=1 := by omega
      subst q
      exact ⟨initial,.start initial⟩
    · have q2 : 2 ≤ q := by omega
      have ql : q ≤ last := by omega
      let previous := ih q2 ql
      have cycle := empty.cycle pages zeros q q2 (by omega) previous.value
      exact ⟨(pages.nextPage q d).toNext (Quotient.mk _ (⟨previous.value,cycle⟩ : PageCycle S q d)),
        .step previous.trace cycle⟩

abbrev gDegree := ActualAdamsProductCycleBridge.gDegree
abbrev deltaDegree := ActualAdamsProductCycleBridge.deltaDegree

theorem g_prefix_targets :
    AdamsTarget 2 gDegree = ⟨6,25⟩ ∧ AdamsTarget 3 gDegree = ⟨7,26⟩ := by decide
theorem delta_prefix_targets :
    AdamsTarget 2 deltaDegree = ⟨11,55⟩ ∧ AdamsTarget 3 deltaDegree = ⟨12,56⟩ := by decide

def emptyPrefix4 (S : AdamsSpectralSequence) (d : Bidegree)
    (c2 : (S.element 2 (AdamsTarget 2 d)).carrier → Vec 0) (h2 : Function.Injective c2)
    (c3 : (S.element 2 (AdamsTarget 3 d)).carrier → Vec 0) (h3 : Function.Injective c3) :
    EmptyTargets S d 4 where
  coordinates := fun q hq hl => by
    by_cases h : q=2
    · subst q; exact c2
    · have h3 : q=3 := by omega
      subst q; exact c3
  faithful := by
    intro q hq hl
    by_cases h : q=2
    · subst q; simpa using h2
    · have hq3 : q=3 := by omega
      subst q; simpa using h3

noncomputable def gEndpoint (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (zeros : ActualAdamsSystemBridge.ZeroMeaning S pages)
    (c2 : (S.element 2 ⟨6,25⟩).carrier → Vec 0) (h2 : Function.Injective c2)
    (c3 : (S.element 2 ⟨7,26⟩).carrier → Vec 0) (h3 : Function.Injective c3)
    (g : (S.element 2 gDegree).carrier) : Endpoint S pages 4 gDegree g :=
  endpointOfEmpty S pages zeros gDegree 4 (emptyPrefix4 S gDegree c2 h2 c3 h3) g 4 (by decide) (by decide)

noncomputable def deltaEndpoint (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (zeros : ActualAdamsSystemBridge.ZeroMeaning S pages)
    (c2 : (S.element 2 ⟨11,55⟩).carrier → Vec 0) (h2 : Function.Injective c2)
    (c3 : (S.element 2 ⟨12,56⟩).carrier → Vec 0) (h3 : Function.Injective c3)
    (delta : (S.element 2 deltaDegree).carrier) : Endpoint S pages 4 deltaDegree delta :=
  endpointOfEmpty S pages zeros deltaDegree 4 (emptyPrefix4 S deltaDegree c2 h2 c3 h3)
    delta 4 (by decide) (by decide)

#print axioms EmptyTargets.cycle
#print axioms endpointOfEmpty
#print axioms gEndpoint
#print axioms deltaEndpoint
end ActualAdamsProductTraceBridge
