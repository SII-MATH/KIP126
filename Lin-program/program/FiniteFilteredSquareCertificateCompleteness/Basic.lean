import FiniteFilteredSquareCertificates.Basic
import FilteredExtensionCertificateCompleteness.Basic

namespace FiniteFilteredSquareCertificateCompleteness
open LinearCertificates RepresentativeSquareCertificates GeneralizedLeibnizAudit
open FilteredExtensionCertificates FilteredExtensionCertificateCompleteness

/-- The mathematical premises actually certified by the square method. They
are separate from the existing fourth-extension-only ResultValid conclusion. -/
structure Premises (D : FiniteFilteredSquareCertificates.Data) : Prop where
  length : D.n ≤ D.m+D.l
  wellFormed : FiniteFilteredSquareCertificates.WellFormed D
  memberX : (⟨D.x⟩ : Vector D.a) ∈ higher (D.A D.s)
  memberY : (⟨D.y⟩ : Vector D.b) ∈ higher (D.B (D.s+D.n))
  memberZ : (⟨D.z⟩ : Vector D.c) ∈ higher (D.C (D.s+D.m))
  memberW : (⟨D.w⟩ : Vector D.d) ∈ higher (D.E (D.s+D.m+D.l))
  first : Extension (hom D.f) (higher (D.A (D.s+1)))
    (higher (D.B (D.s+D.n+1))) ⟨D.x⟩ ⟨D.y⟩
  second : Extension (hom D.p) (higher (D.A (D.s+1)))
    (higher (D.C (D.s+D.m+1))) ⟨D.x⟩ ⟨D.z⟩
  third : Extension (hom D.g) (higher (D.C (D.s+D.m+1)))
    (higher (D.E (D.s+D.m+D.l+1))) ⟨D.z⟩ ⟨D.w⟩
  firstStable :
    HigherMapsInto (hom D.f) (higher (D.A (D.s+1))) (higher (D.B (D.s+D.n+1))) ∨
    HigherMapsInto (hom D.p) (higher (D.A (D.s+1))) (higher (D.C (D.s+D.m+1)))
  lastStable : HigherMapsInto (hom D.g) (higher (D.C (D.s+D.m+1)))
    (higher (D.E (D.s+D.m+D.l+1)))

theorem checkFiltered_complete (f : Matrix b a) (F : Fin depth → Matrix a h)
    (G : Fin depth → Matrix b k)
    (preserves : ∀ i, higher (level F i) ≤ (higher (level G i)).comap (hom f)) :
    ∃ factors : Fin depth → Matrix k h,
      FiniteFilteredSquareCertificates.checkFiltered f F G factors = true := by
  classical
  have existsFactors : ∀ i : Fin depth, ∃ factor : Matrix k h,
      checkPreserves f (level F i.val) (level G i.val) factor = true := by
    intro i
    exact checkPreserves_complete _ _ _ (preserves i.val)
  choose factors equations using existsFactors
  exact ⟨factors,decide_eq_true_eq.mpr equations⟩

theorem checkChainMap_complete (p : Matrix c a) (q : Matrix d b)
    (f : Matrix b a) (g : Matrix d c)
    (commutes : ∀ v : Vector a, hom q (hom f v) = hom g (hom p v)) :
    checkChainMap p q f g = true := by
  apply decide_eq_true_eq.mpr
  intro i j
  have eq := congrArg RepresentativeSquareCertificates.Vector.bits (commutes ⟨basis j⟩)
  change eval q (eval f (basis j)) = eval g (eval p (basis j)) at eq
  rw [eval_basis,eval_basis] at eq
  exact congrFun eq i

theorem check_complete (D : FiniteFilteredSquareCertificates.Data) (h : Premises D) :
    ∃ cert : FiniteFilteredSquareCertificates.Certificate D,
      FiniteFilteredSquareCertificates.check D cert = true := by
  classical
  obtain ⟨da,hda⟩ := checkDecreasing_complete D.sourceA h.wellFormed.decreasingA
  obtain ⟨db,hdb⟩ := checkDecreasing_complete D.sourceB h.wellFormed.decreasingB
  obtain ⟨dc,hdc⟩ := checkDecreasing_complete D.sourceC h.wellFormed.decreasingC
  obtain ⟨dd,hdd⟩ := checkDecreasing_complete D.sourceD h.wellFormed.decreasingD
  obtain ⟨ff,hff⟩ := checkFiltered_complete D.f D.sourceA D.sourceB h.wellFormed.preservesF
  obtain ⟨fp,hfp⟩ := checkFiltered_complete D.p D.sourceA D.sourceC h.wellFormed.preservesP
  obtain ⟨fq,hfq⟩ := checkFiltered_complete D.q D.sourceB D.sourceD h.wellFormed.preservesQ
  obtain ⟨fg,hfg⟩ := checkFiltered_complete D.g D.sourceC D.sourceD h.wellFormed.preservesG
  obtain ⟨mx,hmx⟩ := checkImage_complete _ _ h.memberX
  obtain ⟨my,hmy⟩ := checkImage_complete _ _ h.memberY
  obtain ⟨mz,hmz⟩ := checkImage_complete _ _ h.memberZ
  obtain ⟨mw,hmw⟩ := checkImage_complete _ _ h.memberW
  obtain ⟨fr,fs,ft,hfirst⟩ := checkExtension_complete _ _ _ _ _ h.first
  obtain ⟨sr,ss,st,hsecond⟩ := checkExtension_complete _ _ _ _ _ h.second
  obtain ⟨tr,ts,tt,hthird⟩ := checkExtension_complete _ _ _ _ _ h.third
  have chooseFirst : ∃ first : FirstStability D.square,
      checkFirst D.square first = true := by
    rcases h.firstStable with alongF | alongP
    · obtain ⟨factor,hfactor⟩ := checkPreserves_complete _ _ _ alongF
      exact ⟨.alongF factor,hfactor⟩
    · obtain ⟨factor,hfactor⟩ := checkPreserves_complete _ _ _ alongP
      exact ⟨.alongP factor,hfactor⟩
  obtain ⟨first,hfirstStable⟩ := chooseFirst
  obtain ⟨last,hlast⟩ := checkPreserves_complete _ _ _ h.lastStable
  let square : RepresentativeSquareCertificates.Certificate D.square :=
    ⟨fr,fs,ft,sr,ss,st,tr,ts,tt,first,last⟩
  let cert : FiniteFilteredSquareCertificates.Certificate D :=
    ⟨da,db,dc,dd,ff,fp,fq,fg,mx,my,mz,mw,square⟩
  have structureCheck : FiniteFilteredSquareCertificates.checkStructure D cert = true := by
    simp only [FiniteFilteredSquareCertificates.checkStructure,Bool.and_eq_true]
    exact ⟨⟨⟨⟨⟨⟨⟨hda,hdb⟩,hdc⟩,hdd⟩,hff⟩,hfp⟩,hfq⟩,hfg⟩
  have memberCheck : FiniteFilteredSquareCertificates.checkMembership D cert = true := by
    simp only [FiniteFilteredSquareCertificates.checkMembership,Bool.and_eq_true]
    exact ⟨⟨⟨hmx,hmy⟩,hmz⟩,hmw⟩
  have squareCheck : RepresentativeSquareCertificates.check D.square square = true := by
    simp only [RepresentativeSquareCertificates.check,Bool.and_eq_true]
    exact ⟨⟨⟨⟨⟨checkChainMap_complete _ _ _ _ h.wellFormed.commutes,
      hfirst⟩,hsecond⟩,hthird⟩,hfirstStable⟩,hlast⟩
  refine ⟨cert,?_⟩
  simp only [FiniteFilteredSquareCertificates.check,Bool.and_eq_true,decide_eq_true_eq]
  exact ⟨⟨⟨h.length,structureCheck⟩,memberCheck⟩,squareCheck⟩

theorem check_premises (D : FiniteFilteredSquareCertificates.Data)
    (cert : FiniteFilteredSquareCertificates.Certificate D)
    (accepted : FiniteFilteredSquareCertificates.check D cert = true) : Premises D := by
  simp only [FiniteFilteredSquareCertificates.check,Bool.and_eq_true,decide_eq_true_eq] at accepted
  obtain ⟨⟨⟨length,structural⟩,membership⟩,square⟩ := accepted
  simp only [FiniteFilteredSquareCertificates.checkMembership,Bool.and_eq_true] at membership
  obtain ⟨⟨⟨hx,hy⟩,hz⟩,hw⟩ := membership
  simp only [RepresentativeSquareCertificates.check,Bool.and_eq_true] at square
  obtain ⟨⟨⟨⟨⟨commutes,first⟩,second⟩,third⟩,firstStable⟩,lastStable⟩ := square
  refine ⟨length,FiniteFilteredSquareCertificates.structure_sound D cert structural commutes,
    image_member _ _ _ hx,image_member _ _ _ hy,image_member _ _ _ hz,image_member _ _ _ hw,
    checkExtension_sound _ _ _ _ _ _ _ _ first,
    checkExtension_sound _ _ _ _ _ _ _ _ second,
    checkExtension_sound _ _ _ _ _ _ _ _ third,?_,
    checkPreserves_sound _ _ _ _ lastStable⟩
  cases he : cert.square.firstStable with
  | alongF factor =>
    exact Or.inl (checkPreserves_sound _ _ _ factor
      (by simpa [checkFirst,he,FiniteFilteredSquareCertificates.Data.square] using firstStable))
  | alongP factor =>
    exact Or.inr (checkPreserves_sound _ _ _ factor
      (by simpa [checkFirst,he,FiniteFilteredSquareCertificates.Data.square] using firstStable))

theorem check_exists_iff (D : FiniteFilteredSquareCertificates.Data) :
    (∃ cert : FiniteFilteredSquareCertificates.Certificate D,
      FiniteFilteredSquareCertificates.check D cert = true) ↔ Premises D := by
  constructor
  · rintro ⟨cert,accepted⟩
    exact check_premises D cert accepted
  · exact check_complete D

theorem premises_result (D : FiniteFilteredSquareCertificates.Data) (h : Premises D) :
    FiniteFilteredSquareCertificates.ResultValid D := by
  obtain ⟨cert,accepted⟩ := check_complete D h
  exact FiniteFilteredSquareCertificates.check_sound D cert accepted

#print axioms checkFiltered_complete
#print axioms checkChainMap_complete
#print axioms check_complete
#print axioms check_premises
#print axioms check_exists_iff
#print axioms premises_result
end FiniteFilteredSquareCertificateCompleteness
