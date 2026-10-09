import PageCertificates.Model

namespace PageCertificates
open LinearCertificates
open LinProgramCertificates

structure HomologyCertificate (p : Page) where
  separator : Vec p.dimension

def checkCycle (p : Page) (x : Vec p.dimension) : Bool :=
  checkKernel p.outgoing x

def checkHomology (p : Page) (x : Vec p.dimension) (c : HomologyCertificate p) : Bool :=
  checkCycle p x && checkNotImage p.incoming x c.separator

theorem checkHomology_sound (p : Page) (x : Vec p.dimension) (c : HomologyCertificate p)
    (h : checkHomology p x c = true) : NonzeroHomology p x := by
  simp only [checkHomology, Bool.and_eq_true] at h
  exact ⟨checkKernel_sound p.outgoing x h.1, checkNotImage_sound p.incoming x c.separator h.2⟩

instance (p : Page) (x : Vec p.dimension) : CertificateVerifier (NonzeroHomology p x) where
  Cert := HomologyCertificate p
  check := checkHomology p x
  sound := checkHomology_sound p x

/-- Every alternative is checked, so `possibly` cannot be silently dropped. -/
def checkCandidates (p : Page) (xs : List (Vec p.dimension))
    (cs : List (HomologyCertificate p)) : Bool :=
  match xs, cs with
  | [], [] => true
  | x :: xs, c :: cs => checkHomology p x c && checkCandidates p xs cs
  | _, _ => false

theorem checkCandidates_sound (p : Page) (xs : List (Vec p.dimension))
    (cs : List (HomologyCertificate p)) (h : checkCandidates p xs cs = true) :
    ∀ x ∈ xs, NonzeroHomology p x := by
  induction xs generalizing cs with
  | nil => simp
  | cons x xs ih =>
      cases cs with
      | nil => simp [checkCandidates] at h
      | cons c cs =>
          simp only [checkCandidates, Bool.and_eq_true] at h
          intro y hy
          cases hy with
          | head => exact checkHomology_sound p x c h.1
          | tail _ hy => exact ih cs h.2 y hy

/-- A page chain provides actual homology transport as a proof obligation, never a status string. -/
structure PageChain where
  page : Nat → Page
  next : ∀ r, Vec (page r).dimension → Vec (page (r + 1)).dimension
  transport : ∀ r x, NonzeroHomology (page r) x →
    NonzeroHomology (page (r + 1)) (next r x)

/-- Iteration is justified only when supplied transports have Lean proofs. -/
def representative (s : PageChain) (first : Nat) (x : Vec (s.page first).dimension) :
    (steps : Nat) → Vec (s.page (first + steps)).dimension
  | 0 => x
  | n + 1 => s.next (first + n) (representative s first x n)

theorem representative_survives (s : PageChain) (first : Nat)
    (x : Vec (s.page first).dimension) (hx : NonzeroHomology (s.page first) x) :
    ∀ steps, NonzeroHomology (s.page (first + steps)) (representative s first x steps) := by
  intro steps
  induction steps with
  | zero => exact hx
  | succ n ih => exact s.transport (first + n) _ ih

syntax "page_cert" " using " term : tactic
macro_rules
  | `(tactic| page_cert using $c:term) => `(tactic| lin_cert using $c)

end PageCertificates

namespace PageCertificates
open LinearCertificates
open LinProgramCertificates

structure UniqueCertificate (p : Page) where
  survivorSeparator : Vec p.dimension
  eliminated : List (Vec p.dimension × Vec p.sources)

def checkEliminated (p : Page) : List (Vec p.dimension × Vec p.sources) → Bool
  | [] => true
  | (y, preimage) :: rest => checkImage p.incoming y preimage && checkEliminated p rest

theorem checkEliminated_sound (p : Page) (records : List (Vec p.dimension × Vec p.sources))
    (h : checkEliminated p records = true) :
    ∀ y preimage, (y, preimage) ∈ records → InImage p.incoming y := by
  induction records with
  | nil => simp
  | cons pair rest ih =>
      simp only [checkEliminated, Bool.and_eq_true] at h
      intro y preimage hm
      cases hm with
      | head => exact checkImage_sound p.incoming _ _ h.1
      | tail _ ht => exact ih h.2 y preimage ht

def vectorEq (x y : Vec n) : Bool := decide (∀ i, x i = y i)

theorem vectorEq_sound (x y : Vec n) (h : vectorEq x y = true) : x = y :=
  funext (of_decide_eq_true h)

def checkUnique (p : Page) (xs : List (Vec p.dimension)) (x : Vec p.dimension)
    (c : UniqueCertificate p) : Bool :=
  xs.any (vectorEq x) && checkHomology p x ⟨c.survivorSeparator⟩ &&
  checkEliminated p c.eliminated &&
  xs.all (fun y => vectorEq y x || c.eliminated.any (fun pair => vectorEq pair.1 y))

theorem checkUnique_sound (p : Page) (xs : List (Vec p.dimension)) (x : Vec p.dimension)
    (c : UniqueCertificate p) (h : checkUnique p xs x c = true) : UniqueCandidate p xs x := by
  simp only [checkUnique, Bool.and_eq_true] at h
  obtain ⟨y, hy, heq⟩ := List.any_eq_true.mp h.1.1.1
  have he : x = y := vectorEq_sound x y heq
  refine ⟨he ▸ hy, checkHomology_sound p x _ h.1.1.2, ?_⟩
  intro z hz hne
  have hh := List.all_eq_true.mp h.2 z hz
  simp only [Bool.or_eq_true] at hh
  cases hh with
  | inl heq => exact (hne (vectorEq_sound z x heq)).elim
  | inr hw =>
      obtain ⟨pair, hp, heq⟩ := List.any_eq_true.mp hw
      have hi := checkEliminated_sound p c.eliminated h.1.2 pair.1 pair.2 hp
      rw [vectorEq_sound pair.1 z heq] at hi
      exact hi

instance (p : Page) (xs : List (Vec p.dimension)) (x : Vec p.dimension) :
    CertificateVerifier (UniqueCandidate p xs x) where
  Cert := UniqueCertificate p
  check := checkUnique p xs x
  sound := checkUnique_sound p xs x

end PageCertificates
