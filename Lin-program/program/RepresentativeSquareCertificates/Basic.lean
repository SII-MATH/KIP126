import LinearCertificates.Checker
import GeneralizedLeibnizAudit.RepresentativeSquare

namespace RepresentativeSquareCertificates
open LinearCertificates GeneralizedLeibnizAudit

/-- A finite elementary abelian 2-group, with the checker's exact bit coordinates. -/
@[ext] structure Vector (n : Nat) where
  bits : Vec n

instance : Zero (Vector n) := ⟨⟨zero⟩⟩
instance : Add (Vector n) := ⟨fun x y => ⟨add x.bits y.bits⟩⟩
instance : Neg (Vector n) := ⟨id⟩

instance : AddCommGroup (Vector n) where
  nsmul := nsmulRec
  zsmul := zsmulRec
  add_assoc x y z := by ext i; exact Bool.xor_assoc _ _ _
  zero_add x := by ext i; exact Bool.false_xor _
  add_zero x := by ext i; exact Bool.xor_false _
  neg_add_cancel x := by ext i; exact Bool.xor_self _
  add_comm x y := by ext i; exact Bool.xor_comm _ _

theorem add_self (x : Vector n) : x+x=0 := by ext i; exact Bool.xor_self _

def hom (M : Matrix m n) : Vector n →+ Vector m where
  toFun x := ⟨eval M x.bits⟩
  map_zero' := congrArg Vector.mk (eval_zero M)
  map_add' x y := congrArg Vector.mk (eval_add M x.bits y.bits)

/-- The whole image subgroup, not just the listed generator columns. -/
def higher (H : Matrix n k) : AddSubgroup (Vector n) := (hom H).range

def checkExtension (f : Matrix b a) (H : Matrix a h) (K : Matrix b k)
    (x : Vec a) (y : Vec b) (rep : Vec a) (source : Vec h) (target : Vec k) : Bool :=
  checkImage H (add rep x) source && checkImage K (add (eval f rep) y) target

theorem checkExtension_sound (f : Matrix b a) (H : Matrix a h) (K : Matrix b k)
    (x : Vec a) (y : Vec b) (rep : Vec a) (source : Vec h) (target : Vec k)
    (accepted : checkExtension f H K x y rep source target = true) :
    Extension (hom f) (higher H) (higher K) ⟨x⟩ ⟨y⟩ := by
  simp only [checkExtension, Bool.and_eq_true] at accepted
  have hs := checkImage_sound H (add rep x) source accepted.1
  have ht := checkImage_sound K (add (eval f rep) y) target accepted.2
  obtain ⟨s, hs⟩ := hs
  obtain ⟨t, ht⟩ := ht
  refine ⟨⟨rep⟩, ?_, ?_⟩
  · exact ⟨⟨s⟩, congrArg Vector.mk hs⟩
  · exact ⟨⟨t⟩, congrArg Vector.mk ht⟩

/-- A factorization on every generator proves stability on every correction. -/
def checkPreserves (f : Matrix b a) (H : Matrix a h) (K : Matrix b k)
    (factor : Matrix k h) : Bool := checkChainMap factor f H K

theorem checkPreserves_sound (f : Matrix b a) (H : Matrix a h) (K : Matrix b k)
    (factor : Matrix k h) (accepted : checkPreserves f H K factor = true) :
    HigherMapsInto (hom f) (higher H) (higher K) := by
  intro x hx
  obtain ⟨v, rfl⟩ := hx
  refine ⟨⟨eval factor v.bits⟩, ?_⟩
  exact congrArg Vector.mk (checkChainMap_sound factor f H K accepted v.bits).symm

structure Data where
  a : Nat
  b : Nat
  c : Nat
  d : Nat
  ha : Nat
  hb : Nat
  hc : Nat
  hd : Nat
  f : Matrix b a
  p : Matrix c a
  q : Matrix d b
  g : Matrix d c
  higherA : Matrix a ha
  higherB : Matrix b hb
  higherC : Matrix c hc
  higherD : Matrix d hd
  x : Vec a
  y : Vec b
  z : Vec c
  w : Vec d

inductive FirstStability (D : Data) where
  | alongF (factor : Matrix D.hb D.ha)
  | alongP (factor : Matrix D.hc D.ha)

structure Certificate (D : Data) where
  firstRep : Vec D.a
  firstSource : Vec D.ha
  firstTarget : Vec D.hb
  secondRep : Vec D.a
  secondSource : Vec D.ha
  secondTarget : Vec D.hc
  thirdRep : Vec D.c
  thirdSource : Vec D.hc
  thirdTarget : Vec D.hd
  firstStable : FirstStability D
  lastStable : Matrix D.hd D.hc

/-- The conclusion has its ordinary additive-homomorphism and coset semantics. -/
def Transfer (D : Data) : Prop :=
  Extension (hom D.q) (higher D.higherB) (higher D.higherD) ⟨D.y⟩ ⟨D.w⟩

def checkFirst (D : Data) : FirstStability D → Bool
  | .alongF factor => checkPreserves D.f D.higherA D.higherB factor
  | .alongP factor => checkPreserves D.p D.higherA D.higherC factor

def check (D : Data) (cert : Certificate D) : Bool :=
  checkChainMap D.p D.q D.f D.g &&
  checkExtension D.f D.higherA D.higherB D.x D.y
    cert.firstRep cert.firstSource cert.firstTarget &&
  checkExtension D.p D.higherA D.higherC D.x D.z
    cert.secondRep cert.secondSource cert.secondTarget &&
  checkExtension D.g D.higherC D.higherD D.z D.w
    cert.thirdRep cert.thirdSource cert.thirdTarget &&
  checkFirst D cert.firstStable &&
  checkPreserves D.g D.higherC D.higherD cert.lastStable

theorem check_sound (D : Data) (cert : Certificate D) (accepted : check D cert = true) :
    Transfer D := by
  simp only [check, Bool.and_eq_true] at accepted
  obtain ⟨⟨⟨⟨⟨hsq, hfirst⟩, hsecond⟩, hthird⟩, hstable⟩, hlast⟩ := accepted
  apply square_transfer (hom D.f) (hom D.p) (hom D.q) (hom D.g)
    (fun v => congrArg Vector.mk (checkChainMap_sound D.p D.q D.f D.g hsq v.bits))
    (higher D.higherA) (higher D.higherB) (higher D.higherC) (higher D.higherD)
    ⟨D.x⟩ ⟨D.y⟩ ⟨D.z⟩ ⟨D.w⟩
  · exact checkExtension_sound _ _ _ _ _ _ _ _ hfirst
  · exact checkExtension_sound _ _ _ _ _ _ _ _ hsecond
  · exact checkExtension_sound _ _ _ _ _ _ _ _ hthird
  · cases he : cert.firstStable with
    | alongF factor =>
      exact Or.inl (checkPreserves_sound _ _ _ factor (by simpa [he,checkFirst] using hstable))
    | alongP factor =>
      exact Or.inr (checkPreserves_sound _ _ _ factor (by simpa [he,checkFirst] using hstable))
  · exact checkPreserves_sound _ _ _ _ hlast

instance (D : Data) : LinProgramCertificates.CertificateVerifier (Transfer D) where
  Cert := Certificate D
  check := check D
  sound := check_sound D

macro "representative_square_cert" " using " c:term : tactic => `(tactic| lin_cert using $c)

#print axioms checkExtension_sound
#print axioms checkPreserves_sound
#print axioms check_sound
end RepresentativeSquareCertificates
