import PageProductCertificates.Import
import NamedPageComparison.Row2858.Boundaries
namespace PageProductCertificates.Row2858
open LinearCertificates PageTransitionCertificates ResolutionCertificates
open NamedPageComparison.Row2858

def gWire : Wire := page_product% "PageProductCertificates/row2858-g.json"
def h1Wire : Wire := page_product% "PageProductCertificates/row2858-h1.json"
def h3Wire : Wire := page_product% "PageProductCertificates/row2858-h3.json"
theorem gChecked : gWire.Valid := by lin_cert using ()
theorem h1Checked : h1Wire.Valid := by lin_cert using ()
theorem h3Checked : h3Wire.Valid := by lin_cert using ()

def sourceOut := matrixOf Boundaries.Target.k 5 Boundaries.Target.outgoing
def sourceIn := matrixOf 5 Boundaries.Target.n Boundaries.Target.incoming
abbrev Source := Homology sourceOut sourceIn

def zeroSource : Source := Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle sourceOut)

def targetOut (w : Wire) := matrixOf w.target.k w.target.m w.target.outgoing
def targetIn (w : Wire) := matrixOf w.target.m w.target.n w.target.incoming

def targetZero (w : Wire) : Homology (targetOut w) (targetIn w) :=
  Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle (targetOut w))

-- Factor cycles are verified in the full imported d2 complexes.
def gFactor : Cycle (matrixOf gWire.left.k gWire.left.m gWire.left.outgoing) :=
  ⟨fun _ => true, by
    funext i
    exact (show ∀ i, eval (matrixOf _ _ gWire.left.outgoing) (fun _ => true) i = false from by decide) i⟩
def h1Factor : Cycle (matrixOf h1Wire.left.k h1Wire.left.m h1Wire.left.outgoing) :=
  ⟨fun _ => true, by
    funext i
    exact (show ∀ i, eval (matrixOf _ _ h1Wire.left.outgoing) (fun _ => true) i = false from by decide) i⟩
def h3Factor : Cycle (matrixOf h3Wire.left.k h3Wire.left.m h3Wire.left.outgoing) :=
  ⟨fun _ => true, by
    funext i
    exact (show ∀ i, eval (matrixOf _ _ h3Wire.left.outgoing) (fun _ => true) i = false from by decide) i⟩

def gMap : Source → Homology (targetOut gWire) (targetIn gWire) :=
  descended _ _ _ _ _ _ gWire.product gChecked.2 (Quot.mk _ gFactor)
def h1Map : Source → Homology (targetOut h1Wire) (targetIn h1Wire) :=
  descended _ _ _ _ _ _ h1Wire.product h1Checked.2 (Quot.mk _ h1Factor)
def h3Map : Source → Homology (targetOut h3Wire) (targetIn h3Wire) :=
  descended _ _ _ _ _ _ h3Wire.product h3Checked.2 (Quot.mk _ h3Factor)

theorem gTensor : ∀ i j, gWire.product i ⟨0,by decide⟩ j = g.matrix13_138 i j := by decide
theorem h1Tensor : ∀ i j, h1Wire.product i ⟨0,by decide⟩ j = h1.matrix13_138 i j := by decide
theorem h3Tensor : ∀ i j, h3Wire.product i ⟨0,by decide⟩ j = h3.matrix13_138 i j := by decide

theorem gEval (x : Vec 5) : product gWire.product (fun _ => true) x = eval g.matrix13_138 x := by
  funext i
  unfold product eval
  change xor (dot (fun j => gWire.product i ⟨0,by decide⟩ j) x && true) false = _
  simp only [Bool.and_true, Bool.xor_false]
  congr 1
  funext j
  exact gTensor i j

theorem h1Eval (x : Vec 5) : product h1Wire.product (fun _ => true) x = eval h1.matrix13_138 x := by
  funext i
  unfold product eval
  change xor (dot (fun j => h1Wire.product i ⟨0,by decide⟩ j) x && true) false = _
  simp only [Bool.and_true, Bool.xor_false]
  congr 1
  funext j
  exact h1Tensor i j

theorem h3Eval (x : Vec 5) : product h3Wire.product (fun _ => true) x = eval h3.matrix13_138 x := by
  funext i
  unfold product eval
  change xor (dot (fun j => h3Wire.product i ⟨0,by decide⟩ j) x && true) false = _
  simp only [Bool.and_true, Bool.xor_false]
  congr 1
  funext j
  exact h3Tensor i j

theorem combined_zero_reflects (x : Source)
    (hg : gMap x = targetZero gWire) (h1 : h1Map x = targetZero h1Wire)
    (h3 : h3Map x = targetZero h3Wire) : x = zeroSource := by
  induction x using Quot.inductionOn with | h x =>
    have bg := (NamedPageComparison.FiniteFaithfulness.quotient_zero_iff_boundary
      (targetOut gWire) (targetIn gWire) gWire.target.comparison
      (PageTransitionCertificates.checkWire_sound _ (by decide)).2 _).mp hg
    change InImage (targetIn gWire) (product gWire.product (fun _ => true) x.val) at bg
    rw [gEval] at bg
    have eg : (targetIn gWire) = matrixOf Boundaries.G.m Boundaries.G.n Boundaries.G.incoming := by
      funext i j; rfl
    rw [eg] at bg
    have qg := (Boundaries.G_boundary_span _).mp bg
    have bh1 := (NamedPageComparison.FiniteFaithfulness.quotient_zero_iff_boundary
      (targetOut h1Wire) (targetIn h1Wire) h1Wire.target.comparison
      (PageTransitionCertificates.checkWire_sound _ (by decide)).2 _).mp h1
    change InImage (targetIn h1Wire) (product h1Wire.product (fun _ => true) x.val) at bh1
    rw [h1Eval] at bh1
    have eh1 : (targetIn h1Wire) = matrixOf Boundaries.H1.m Boundaries.H1.n Boundaries.H1.incoming := by
      funext i j; rfl
    rw [eh1] at bh1
    have qh1 := (Boundaries.H1_boundary_span _).mp bh1
    have bh3 := (NamedPageComparison.FiniteFaithfulness.quotient_zero_iff_boundary
      (targetOut h3Wire) (targetIn h3Wire) h3Wire.target.comparison
      (PageTransitionCertificates.checkWire_sound _ (by decide)).2 _).mp h3
    change InImage (targetIn h3Wire) (product h3Wire.product (fun _ => true) x.val) at bh3
    rw [h3Eval] at bh3
    have eh3 : (targetIn h3Wire) = matrixOf Boundaries.H3.m Boundaries.H3.n Boundaries.H3.incoming := by
      funext i j; rfl
    rw [eh3] at bh3
    have qh3 := (Boundaries.H3_boundary_span _).mp bh3
    have hb := all_compatible_candidates_are_boundaries x.val ⟨qg,qh1,qh3⟩
    have hf := (Boundaries.Target_boundary_span _).mpr hb
    exact (NamedPageComparison.FiniteFaithfulness.quotient_zero_iff_boundary
      sourceOut sourceIn Boundaries.Target.comparison Boundaries.Target_complete.2 x).mpr hf
def anng : Wire := page_product% "PageProductCertificates/ann-g.json"
theorem anngChecked : anng.Valid := by lin_cert using ()
def annh1 : Wire := page_product% "PageProductCertificates/ann-h1.json"
theorem annh1Checked : annh1.Valid := by lin_cert using ()
def annh3 : Wire := page_product% "PageProductCertificates/ann-h3.json"
theorem annh3Checked : annh3.Valid := by lin_cert using ()
def initialOut := matrixOf anng.right.k anng.right.m anng.right.outgoing
def initialIn := matrixOf anng.right.m anng.right.n anng.right.incoming
abbrev Initial := Homology initialOut initialIn
def named : Initial := Quot.mk _ (⟨fun i => i.val == 2, by
  funext i
  exact (show ∀ i, eval initialOut (fun j => j.val == 2) i = false from by decide) i⟩ : Cycle initialOut)
def annMapg : Initial → Homology (targetOut anng) (targetIn anng) :=
  descended _ _ _ _ _ _ anng.product anngChecked.2 (Quot.mk _ gFactor)
theorem named_annihilated_g : annMapg named = targetZero anng := by
  apply Quot.sound
  change InImage (targetIn anng) (add (product anng.product (fun _ => true) (fun i => i.val == 2)) zero)
  refine ⟨zero, ?_⟩
  rw [eval_zero]
  funext i
  exact (show ∀ i, zero i = add (product anng.product (fun _ => true) (fun j => j.val == 2)) zero i from by decide) i
def annMaph1 : Initial → Homology (targetOut annh1) (targetIn annh1) :=
  descended _ _ _ _ _ _ annh1.product annh1Checked.2 (Quot.mk _ h1Factor)
theorem named_annihilated_h1 : annMaph1 named = targetZero annh1 := by
  apply Quot.sound
  change InImage (targetIn annh1) (add (product annh1.product (fun _ => true) (fun i => i.val == 2)) zero)
  refine ⟨zero, ?_⟩
  rw [eval_zero]
  funext i
  exact (show ∀ i, zero i = add (product annh1.product (fun _ => true) (fun j => j.val == 2)) zero i from by decide) i
def annMaph3 : Initial → Homology (targetOut annh3) (targetIn annh3) :=
  descended _ _ _ _ _ _ annh3.product annh3Checked.2 (Quot.mk _ h3Factor)
theorem named_annihilated_h3 : annMaph3 named = targetZero annh3 := by
  apply Quot.sound
  change InImage (targetIn annh3) (add (product annh3.product (fun _ => true) (fun i => i.val == 2)) zero)
  refine ⟨zero, ?_⟩
  rw [eval_zero]
  funext i
  exact (show ∀ i, zero i = add (product annh3.product (fun _ => true) (fun j => j.val == 2)) zero i from by decide) i

/-- Local quotient Leibniz squares with factor cycles already substituted.
No ring valuation, BoundaryFaithful, or desired-zero premise is supplied. -/
theorem differential_named_zero
    (d : Initial → Source)
    (dg : Homology (targetOut anng) (targetIn anng) → Homology (targetOut gWire) (targetIn gWire))
    (d1 : Homology (targetOut annh1) (targetIn annh1) → Homology (targetOut h1Wire) (targetIn h1Wire))
    (d3 : Homology (targetOut annh3) (targetIn annh3) → Homology (targetOut h3Wire) (targetIn h3Wire))
    (zg : dg (targetZero anng) = targetZero gWire)
    (z1 : d1 (targetZero annh1) = targetZero h1Wire)
    (z3 : d3 (targetZero annh3) = targetZero h3Wire)
    (lg : ∀ x, dg (annMapg x) = gMap (d x))
    (l1 : ∀ x, d1 (annMaph1 x) = h1Map (d x))
    (l3 : ∀ x, d3 (annMaph3 x) = h3Map (d x)) : d named = zeroSource := by
  apply combined_zero_reflects
  · rw [← lg, named_annihilated_g, zg]
  · rw [← l1, named_annihilated_h1, z1]
  · rw [← l3, named_annihilated_h3, z3]
end PageProductCertificates.Row2858
