import LinearCertificates.Checker

namespace PropagationCertificates.MatrixNaturality
open LinearCertificates

structure Witness (n m : Nat) where
  source : Vec n
  differential : Vec m

/-- Matrices at one fixed page; no naturality law is assumed. -/
def check (page targetPage : Nat) (dX : Matrix m n) (dY : Matrix q p)
    (fSource : Matrix p n) (fTarget : Matrix q m)
    (target : Vec p) (value : Vec q) (w : Witness n m) : Bool :=
  decide (2 ≤ page ∧ page < 1000 ∧ page = targetPage) &&
  checkChainMap dX dY fSource fTarget &&
  checkImage dX w.differential w.source &&
  checkImage fSource target w.source &&
  checkImage fTarget value w.differential

theorem check_sound (page targetPage : Nat) (dX : Matrix m n) (dY : Matrix q p)
    (fSource : Matrix p n) (fTarget : Matrix q m)
    (target : Vec p) (value : Vec q) (w : Witness n m)
    (h : check page targetPage dX dY fSource fTarget target value w = true) :
    2 ≤ page ∧ page < 1000 ∧ page = targetPage ∧ eval dY target = value := by
  simp only [check, Bool.and_eq_true] at h
  obtain ⟨⟨⟨⟨hpage, hsquare⟩, hdiff⟩, hsource⟩, htarget⟩ := h
  have hp : 2 ≤ page ∧ page < 1000 ∧ page = targetPage := of_decide_eq_true hpage
  have hd : eval dX w.source = w.differential := funext (of_decide_eq_true hdiff)
  have hsrc : eval fSource w.source = target := funext (of_decide_eq_true hsource)
  have htgt : eval fTarget w.differential = value := funext (of_decide_eq_true htarget)
  refine ⟨hp.1, hp.2.1, hp.2.2, ?_⟩
  rw [← hsrc, checkChainMap_sound dX dY fSource fTarget hsquare w.source, hd, htgt]

def ValidEvent (page targetPage : Nat) (dY : Matrix q p) (target : Vec p) (value : Vec q) : Prop :=
  2 ≤ page ∧ page < 1000 ∧ page = targetPage ∧ eval dY target = value

structure Certificate (n m p q : Nat) where
  sourceDifferential : Matrix m n
  sourceMap : Matrix p n
  targetMap : Matrix q m
  witness : Witness n m

def checkCertificate (page targetPage : Nat) (dY : Matrix q p)
    (target : Vec p) (value : Vec q) (c : Certificate n m p q) : Bool :=
  check page targetPage c.sourceDifferential dY c.sourceMap c.targetMap target value c.witness

instance (page targetPage : Nat) (dY : Matrix q p) (target : Vec p) (value : Vec q) :
    LinProgramCertificates.CertificateVerifier (ValidEvent page targetPage dY target value) where
  Cert := Σ n m, Certificate n m p q
  check := fun ⟨_, _, c⟩ => checkCertificate page targetPage dY target value c
  sound := fun ⟨_, _, c⟩ h => check_sound page targetPage c.sourceDifferential dY
    c.sourceMap c.targetMap target value c.witness h

/-- Location categories refer to equations, rather than an unexplained rule tag. -/
def diagnose (page targetPage : Nat) (dX : Matrix m n) (dY : Matrix q p)
    (fSource : Matrix p n) (fTarget : Matrix q m)
    (target : Vec p) (value : Vec q) (w : Witness n m) : Option String :=
  if !(decide (2 ≤ page ∧ page < 1000 ∧ page = targetPage)) then some "page mismatch or sentinel"
  else if !checkChainMap dX dY fSource fTarget then some "noncommuting differential square"
  else if !checkImage dX w.differential w.source then some "source differential equation"
  else if !checkImage fSource target w.source then some "source map equation"
  else if !checkImage fTarget value w.differential then some "target map equation"
  else none

def identity : Matrix 1 1 := fun _ _ => true
def unitVector : Vec 1 := fun _ => true
def witness : Witness 1 1 := ⟨unitVector, unitVector⟩
def certificate : Σ n m, Certificate n m 1 1 :=
  ⟨1, 1, identity, identity, identity, witness⟩

example : ValidEvent 2 2 identity unitVector unitVector := by
  lin_cert using certificate

example : check 2 999 identity identity identity identity unitVector unitVector witness = false := by decide
example : check 2 2 identity identity identity identity unitVector zero witness = false := by decide
example : check 2 2 identity identity identity (fun _ _ => false)
    unitVector zero witness = false := by decide
example : diagnose 2 2 identity identity identity (fun _ _ => false)
    unitVector zero witness = some "noncommuting differential square" := by decide

end PropagationCertificates.MatrixNaturality
