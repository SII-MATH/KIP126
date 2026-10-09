import FilteredExtensionCertificates.Basic
import FilteredExtensionSquare.Square

namespace FiniteFilteredSquareCertificates
open LinearCertificates RepresentativeSquareCertificates FilteredExtensionCertificates
open FilteredRepresentativeCrossing FilteredMapExtension

/-- Four shared finite groups and complete filtrations, with an explicit zero tail. -/
structure Data where
  a : Nat
  b : Nat
  c : Nat
  d : Nat
  ha : Nat
  hb : Nat
  hc : Nat
  hd : Nat
  depth : Nat
  s : Nat
  n : Nat
  m : Nat
  l : Nat
  f : Matrix b a
  p : Matrix c a
  q : Matrix d b
  g : Matrix d c
  sourceA : Fin depth → Matrix a ha
  sourceB : Fin depth → Matrix b hb
  sourceC : Fin depth → Matrix c hc
  sourceD : Fin depth → Matrix d hd
  x : Vec a
  y : Vec b
  z : Vec c
  w : Vec d

def Data.A (D : Data) := level D.sourceA
def Data.B (D : Data) := level D.sourceB
def Data.C (D : Data) := level D.sourceC
def Data.E (D : Data) := level D.sourceD

def Data.square (D : Data) : RepresentativeSquareCertificates.Data :=
  ⟨D.a,D.b,D.c,D.d,D.ha,D.hb,D.hc,D.hd,D.f,D.p,D.q,D.g,
    D.A (D.s+1),D.B (D.s+D.n+1),D.C (D.s+D.m+1),D.E (D.s+D.m+D.l+1),
    D.x,D.y,D.z,D.w⟩

def checkFiltered (f : Matrix b a) (F : Fin depth → Matrix a h)
    (G : Fin depth → Matrix b k) (factors : Fin depth → Matrix k h) : Bool :=
  decide (∀ i : Fin depth, checkPreserves f (level F i.val) (level G i.val) (factors i) = true)

theorem checkFiltered_sound (f : Matrix b a) (F : Fin depth → Matrix a h)
    (G : Fin depth → Matrix b k) (factors : Fin depth → Matrix k h)
    (accepted : checkFiltered f F G factors = true) :
    ∀ i, higher (level F i) ≤ (higher (level G i)).comap (hom f) := by
  intro i x hx
  by_cases bound : i < depth
  · exact checkPreserves_sound _ _ _ _ ((of_decide_eq_true accepted) ⟨i,bound⟩) x hx
  · obtain ⟨v,hv⟩ := hx
    have hz : x = 0 := by
      rw [← hv]
      apply RepresentativeSquareCertificates.Vector.ext
      funext j
      change dot (level F i j) v.bits = false
      simp only [level,dif_neg bound]
      exact zero_dot v.bits
    change hom f x ∈ higher (level G i)
    rw [hz,map_zero]
    exact (higher (level G i)).zero_mem

structure Certificate (D : Data) where
  descentA : Fin D.depth → Matrix D.ha D.ha
  descentB : Fin D.depth → Matrix D.hb D.hb
  descentC : Fin D.depth → Matrix D.hc D.hc
  descentD : Fin D.depth → Matrix D.hd D.hd
  filteredF : Fin D.depth → Matrix D.hb D.ha
  filteredP : Fin D.depth → Matrix D.hc D.ha
  filteredQ : Fin D.depth → Matrix D.hd D.hb
  filteredG : Fin D.depth → Matrix D.hd D.hc
  memberX : Vec D.ha
  memberY : Vec D.hb
  memberZ : Vec D.hc
  memberW : Vec D.hd
  square : RepresentativeSquareCertificates.Certificate D.square

structure WellFormed (D : Data) : Prop where
  decreasingA : Antitone (fun i => higher (D.A i))
  decreasingB : Antitone (fun i => higher (D.B i))
  decreasingC : Antitone (fun i => higher (D.C i))
  decreasingD : Antitone (fun i => higher (D.E i))
  preservesF : ∀ i, higher (D.A i) ≤ (higher (D.B i)).comap (hom D.f)
  preservesP : ∀ i, higher (D.A i) ≤ (higher (D.C i)).comap (hom D.p)
  preservesQ : ∀ i, higher (D.B i) ≤ (higher (D.E i)).comap (hom D.q)
  preservesG : ∀ i, higher (D.C i) ≤ (higher (D.E i)).comap (hom D.g)
  commutes : ∀ v, hom D.q (hom D.f v) = hom D.g (hom D.p v)

def filtrationA (D : Data) (h : WellFormed D) : Filtration (Vector D.a) :=
  ⟨fun i => higher (D.A i),h.decreasingA⟩
def filtrationB (D : Data) (h : WellFormed D) : Filtration (Vector D.b) :=
  ⟨fun i => higher (D.B i),h.decreasingB⟩
def filtrationC (D : Data) (h : WellFormed D) : Filtration (Vector D.c) :=
  ⟨fun i => higher (D.C i),h.decreasingC⟩
def filtrationD (D : Data) (h : WellFormed D) : Filtration (Vector D.d) :=
  ⟨fun i => higher (D.E i),h.decreasingD⟩
def mapF (D : Data) (h : WellFormed D) : FilteredMap (filtrationA D h) (filtrationB D h) :=
  ⟨hom D.f,h.preservesF⟩
def mapP (D : Data) (h : WellFormed D) : FilteredMap (filtrationA D h) (filtrationC D h) :=
  ⟨hom D.p,h.preservesP⟩
def mapQ (D : Data) (h : WellFormed D) : FilteredMap (filtrationB D h) (filtrationD D h) :=
  ⟨hom D.q,h.preservesQ⟩
def mapG (D : Data) (h : WellFormed D) : FilteredMap (filtrationC D h) (filtrationD D h) :=
  ⟨hom D.g,h.preservesG⟩

/-- The requested fourth leading input/output have an actual quotient-page
extension at the forced length. The original input need not itself be a cycle. -/
def ResultValid (D : Data) : Prop :=
  D.n ≤ D.m+D.l ∧ ∃ h : WellFormed D,
    FilteredExtensionSquare.HasExtension (filtrationB D h) (filtrationD D h)
      (mapQ D h) (D.s+D.n) (D.m+D.l-D.n) ⟨D.y⟩ ⟨D.w⟩

def checkStructure (D : Data) (cert : Certificate D) : Bool :=
  checkDecreasing D.sourceA cert.descentA &&
  checkDecreasing D.sourceB cert.descentB &&
  checkDecreasing D.sourceC cert.descentC &&
  checkDecreasing D.sourceD cert.descentD &&
  checkFiltered D.f D.sourceA D.sourceB cert.filteredF &&
  checkFiltered D.p D.sourceA D.sourceC cert.filteredP &&
  checkFiltered D.q D.sourceB D.sourceD cert.filteredQ &&
  checkFiltered D.g D.sourceC D.sourceD cert.filteredG

def checkMembership (D : Data) (cert : Certificate D) : Bool :=
  checkImage (D.A D.s) D.x cert.memberX &&
  checkImage (D.B (D.s+D.n)) D.y cert.memberY &&
  checkImage (D.C (D.s+D.m)) D.z cert.memberZ &&
  checkImage (D.E (D.s+D.m+D.l)) D.w cert.memberW

def check (D : Data) (cert : Certificate D) : Bool :=
  decide (D.n ≤ D.m+D.l) && checkStructure D cert && checkMembership D cert &&
    RepresentativeSquareCertificates.check D.square cert.square

theorem structure_sound (D : Data) (cert : Certificate D)
    (accepted : checkStructure D cert = true)
    (commutes : checkChainMap D.p D.q D.f D.g = true) : WellFormed D := by
  simp only [checkStructure,Bool.and_eq_true] at accepted
  obtain ⟨⟨⟨⟨⟨⟨⟨ha,hb⟩,hc⟩,hd⟩,hf⟩,hp⟩,hq⟩,hg⟩ := accepted
  exact ⟨checkDecreasing_sound _ _ ha,checkDecreasing_sound _ _ hb,
    checkDecreasing_sound _ _ hc,checkDecreasing_sound _ _ hd,
    checkFiltered_sound _ _ _ _ hf,checkFiltered_sound _ _ _ _ hp,
    checkFiltered_sound _ _ _ _ hq,checkFiltered_sound _ _ _ _ hg,
    fun v => congrArg RepresentativeSquareCertificates.Vector.mk
      (checkChainMap_sound D.p D.q D.f D.g commutes v.bits)⟩

theorem check_sound (D : Data) (cert : Certificate D) (accepted : check D cert = true) :
    ResultValid D := by
  simp only [check,Bool.and_eq_true,decide_eq_true_eq] at accepted
  obtain ⟨⟨⟨length,structural⟩,membership⟩,square⟩ := accepted
  simp only [checkMembership,Bool.and_eq_true] at membership
  obtain ⟨⟨⟨hx,hy⟩,hz⟩,hw⟩ := membership
  simp only [RepresentativeSquareCertificates.check,Bool.and_eq_true] at square
  obtain ⟨⟨⟨⟨⟨commutes,first⟩,second⟩,third⟩,firstStable⟩,lastStable⟩ := square
  let h := structure_sound D cert structural commutes
  refine ⟨length,h,?_⟩
  apply FilteredExtensionSquare.square_transfer (filtrationA D h) (filtrationB D h)
    (filtrationC D h) (filtrationD D h) (mapF D h) (mapP D h) (mapQ D h) (mapG D h)
    h.commutes D.s D.n D.m D.l length ⟨D.x⟩ ⟨D.y⟩ ⟨D.z⟩ ⟨D.w⟩
  · apply (FilteredExtensionSquare.hasExtension_iff _ _ _ _ _ _ _).mpr
    exact ⟨image_member _ _ _ hx,image_member _ _ _ hy,checkExtension_sound _ _ _ _ _ _ _ _ first⟩
  · apply (FilteredExtensionSquare.hasExtension_iff _ _ _ _ _ _ _).mpr
    exact ⟨image_member _ _ _ hx,image_member _ _ _ hz,checkExtension_sound _ _ _ _ _ _ _ _ second⟩
  · apply (FilteredExtensionSquare.hasExtension_iff _ _ _ _ _ _ _).mpr
    exact ⟨image_member _ _ _ hz,image_member _ _ _ hw,checkExtension_sound _ _ _ _ _ _ _ _ third⟩
  · cases he : cert.square.firstStable with
    | alongF factor =>
      apply Or.inl
      apply (noPageCrossing_iff_higher _ _ _ D.s (D.s+D.n) (by omega)).mpr
      exact checkPreserves_sound _ _ _ factor
        (by simpa [RepresentativeSquareCertificates.checkFirst,he,Data.square] using firstStable)
    | alongP factor =>
      apply Or.inr
      apply (noPageCrossing_iff_higher _ _ _ D.s (D.s+D.m) (by omega)).mpr
      exact checkPreserves_sound _ _ _ factor
        (by simpa [RepresentativeSquareCertificates.checkFirst,he,Data.square] using firstStable)
  · apply (noPageCrossing_iff_higher _ _ _ (D.s+D.m) (D.s+D.m+D.l) (by omega)).mpr
    exact checkPreserves_sound _ _ _ _ lastStable

instance (D : Data) : LinProgramCertificates.CertificateVerifier (ResultValid D) where
  Cert := Certificate D
  check := check D
  sound := check_sound D

macro "finite_filtered_square_cert" " using " c:term : tactic => `(tactic| lin_cert using $c)

#print axioms checkFiltered_sound
#print axioms structure_sound
#print axioms check_sound
end FiniteFilteredSquareCertificates
