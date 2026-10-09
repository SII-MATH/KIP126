import FilteredMapExtension.TargetExamples

namespace FilteredMapExtension
open FilteredRepresentativeCrossing GeneralizedLeibnizAudit
section General
variable {A B : Type*} [AddCommGroup A] [AddCommGroup B]
variable (F : Filtration A) (G : Filtration B) (f : FilteredMap F G)

def targetAt {t p : Nat} (order : t ≤ p) (y : G.group p) : G.group (t+(p-t)) :=
  ⟨y.val,by simpa only [Nat.add_sub_of_le order] using y.property⟩

/-- A crossing is an actual quotient differential equation with exact source
and target leading degrees. The quotient classes need not be essential/nonzero. -/
def CrossingAt (s p : Nat) : Prop :=
  ∃ t, ∃ order : t ≤ p, s < t ∧
    ∃ x : cycles F G f t (p-t), ExactAt F t x.val ∧
    ∃ y : G.group p, ExactAt G p y.val ∧
      differential F G f t (p-t) (sourceClass F G f t (p-t) x) =
        targetClass F G f t (p-t) (targetAt G order y)

theorem exact_of_sameLeading {C : Type*} [AddCommGroup C]
    (H : Filtration C) (p : Nat) {x y : C}
    (same : SameLeading (H.group (p+1)) x y) (exactY : ExactAt H p y) :
    ExactAt H p x := by
  have low : x-y ∈ H.group p := H.decreasing (by omega) same
  constructor
  · simpa only [sub_add_cancel] using (H.group p).add_mem low exactY.1
  · intro hx
    apply exactY.2
    have h := (H.group (p+1)).sub_mem hx same
    simpa only [sub_sub_cancel] using h

/-- An element exits a finite filtration interval at an exact leading degree;
neither separatedness nor an infinite convergence assertion is needed. -/
theorem finite_filtration_exit {C : Type*} [AddCommGroup C]
    (H : Filtration C) (x : C) (low high : Nat) (order : low ≤ high)
    (start : x ∈ H.group low) (stop : x ∉ H.group high) :
    ∃ t, low ≤ t ∧ t < high ∧ ExactAt H t x := by
  induction high,order using Nat.le_induction with
  | base => exact False.elim (stop start)
  | succ high order ih =>
    by_cases hh : x ∈ H.group high
    · exact ⟨high,order,by omega,hh,stop⟩
    · obtain ⟨t,ht,hi,he⟩ := ih hh
      exact ⟨t,ht,by omega,he⟩

theorem crossing_iff_higher_image (s p : Nat) : CrossingAt F G f s p ↔
    ∃ h ∈ F.group (s+1), ExactAt G p (f.hom h) := by
  constructor
  · rintro ⟨t,order,hst,x,hx,y,hy,equation⟩
    obtain ⟨a,ha,hfa⟩ :=
      (differential_eq_iff_leading_extension F G f t (p-t) x (targetAt G order y)).mp equation
    have exactA : ExactAt F t a := exact_of_sameLeading F t ha hx
    have exactImage : ExactAt G p (f.hom a) := by
      apply exact_of_sameLeading G p _ hy
      simpa only [Nat.add_sub_of_le order,targetAt] using hfa
    exact ⟨a,F.decreasing (by omega) exactA.1,exactImage⟩
  · rintro ⟨h,hh,hexact⟩
    have outside : h ∉ F.group (p+1) := fun hf => hexact.2 (f.preserves (p+1) hf)
    have order : s+1 ≤ p+1 := by
      by_contra hn
      exact outside (F.decreasing (by omega) hh)
    obtain ⟨t,hst,htp,he⟩ := finite_filtration_exit F h (s+1) (p+1) order hh outside
    have tp : t ≤ p := by omega
    let x : cycles F G f t (p-t) := ⟨h,he.1,by
      change f.hom h ∈ G.group (t+(p-t))
      simpa only [Nat.add_sub_of_le tp] using hexact.1⟩
    let y : G.group p := ⟨f.hom h,hexact.1⟩
    refine ⟨t,tp,by omega,x,he,y,hexact,?_⟩
    apply (differential_eq_iff_leading_extension F G f t (p-t) x (targetAt G tp y)).mpr
    exact ⟨h,SameLeading.refl _ _,SameLeading.refl _ _⟩

def NoPageCrossing (s low high : Nat) : Prop :=
  ∀ p, low ≤ p → p < high → ¬ CrossingAt F G f s p

theorem noPageCrossing_iff (s low high : Nat) : NoPageCrossing F G f s low high ↔
    NoCrossing f.hom (F.group (s+1)) G low high := by
  constructor
  · intro none h hh p hp hph exactH
    exact none p hp hph ((crossing_iff_higher_image F G f s p).mpr ⟨h,hh,exactH⟩)
  · intro none p hp hph crossing
    obtain ⟨h,hh,he⟩ := (crossing_iff_higher_image F G f s p).mp crossing
    exact none h hh p hp hph he

/-- Filteredness supplies the lower image bound needed for stability. -/
theorem noPageCrossing_iff_higher (s q : Nat) (order : s ≤ q) :
    NoPageCrossing F G f s (s+1) (q+1) ↔
      HigherMapsInto f.hom (F.group (s+1)) (G.group (q+1)) := by
  rw [noPageCrossing_iff]
  exact noCrossing_iff_higher f.hom (F.group (s+1)) G (s+1) (q+1)
    (by omega) (fun _ hh => f.preserves (s+1) hh)

theorem noPageCrossing_iff_all_representatives (s q : Nat) (order : s ≤ q)
    (x : A) (y : B) (extension : Extension f.hom (F.group (s+1)) (G.group (q+1)) x y) :
    NoPageCrossing F G f s (s+1) (q+1) ↔
      ∀ a, SameLeading (F.group (s+1)) a x → SameLeading (G.group (q+1)) (f.hom a) y :=
  (noPageCrossing_iff_higher F G f s q order).trans
    (representative_stability_iff f.hom (F.group (s+1)) (G.group (q+1)) x y extension)

theorem crossing_above (s p : Nat) (crossing : CrossingAt F G f s p) : s < p := by
  obtain ⟨t,tp,st,_⟩ := crossing
  omega

/-- Page-defined absence of crossings supplies the structural hypotheses of
the actual representative square, with either first side allowed. -/
theorem square_transfer_of_noPageCrossing
    {C D : Type*} [AddCommGroup C] [AddCommGroup D]
    (FC : Filtration C) (FD : Filtration D)
    (p : FilteredMap F FC) (q : B →+ D) (g : FilteredMap FC FD)
    (commutes : ∀ a, q (f.hom a) = g.hom (p.hom a))
    (s b c d : Nat) (sb : s ≤ b) (sc : s ≤ c) (cd : c ≤ d)
    (x : A) (y : B) (z : C) (w : D)
    (first : Extension f.hom (F.group (s+1)) (G.group (b+1)) x y)
    (second : Extension p.hom (F.group (s+1)) (FC.group (c+1)) x z)
    (third : Extension g.hom (FC.group (c+1)) (FD.group (d+1)) z w)
    (firstNone : NoPageCrossing F G f s (s+1) (b+1) ∨
      NoPageCrossing F FC p s (s+1) (c+1))
    (lastNone : NoPageCrossing FC FD g c (c+1) (d+1)) :
    Extension q (G.group (b+1)) (FD.group (d+1)) y w := by
  apply GeneralizedLeibnizAudit.square_transfer f.hom p.hom q g.hom commutes
    (F.group (s+1)) (G.group (b+1)) (FC.group (c+1)) (FD.group (d+1))
    x y z w first second third
  · exact firstNone.elim
      (fun h => Or.inl ((noPageCrossing_iff_higher F G f s b sb).mp h))
      (fun h => Or.inr ((noPageCrossing_iff_higher F FC p s c sc).mp h))
  · exact (noPageCrossing_iff_higher FC FD g c d cd).mp lastNone

end General

namespace Examples

def shiftedF : Filtration (Int × Int) where
  group p := F.group (p-1)
  decreasing := fun _ _ h => F.decreasing (Nat.sub_le_sub_right h 1)

def shiftedG : Filtration Int where
  group p := G.group (p-1)
  decreasing := fun _ _ h => G.decreasing (Nat.sub_le_sub_right h 1)

def shiftedSum : FilteredMap shiftedF shiftedG where
  hom := sum
  preserves := fun p => sumFiltered.preserves (p-1)

def inessentialX : cycles shiftedF shiftedG shiftedSum 1 1 :=
  ⟨(1,0),⟨trivial,trivial⟩⟩

def inessentialY : shiftedG.group 2 := ⟨1,trivial⟩

theorem inessential_crossing : CrossingAt shiftedF shiftedG shiftedSum 0 2 := by
  refine ⟨1,by omega,by omega,inessentialX,⟨trivial,?_⟩,
    inessentialY,⟨trivial,?_⟩,rfl⟩
  · change ¬ (1 : Int)=0
    omega
  · change ¬ (1 : Int)=0
    omega

theorem inessential_zero_differential :
    differential shiftedF shiftedG shiftedSum 1 1
      (sourceClass shiftedF shiftedG shiftedSum 1 1 inessentialX) = 0 := by
  apply (differential_zero_iff shiftedF shiftedG shiftedSum 1 1 inessentialX).mpr
  refine ⟨(0,1),⟨rfl,trivial⟩,?_⟩
  change (1 : Int)-0+(0-1)=0
  omega

theorem length_zero_crossing :
    ExactAt F 1 sourceOne.val ∧ ExactAt G 1 targetOne.val ∧
    differential F G sumFiltered 1 0 (sourceClass F G sumFiltered 1 0 sourceOne) =
      targetClass F G sumFiltered 1 0 targetOne := by
  refine ⟨⟨rfl,?_⟩,⟨trivial,?_⟩,current_event⟩
  · change ¬ ((0,1) : Int × Int)=0
    intro h
    have := congrArg Prod.snd h
    norm_num at this
  · change ¬ (1 : Int)=0
    omega

end Examples

#print axioms finite_filtration_exit
#print axioms crossing_iff_higher_image
#print axioms noPageCrossing_iff
#print axioms noPageCrossing_iff_higher
#print axioms noPageCrossing_iff_all_representatives
#print axioms square_transfer_of_noPageCrossing
#print axioms Examples.inessential_crossing
#print axioms Examples.inessential_zero_differential
#print axioms Examples.length_zero_crossing
end FilteredMapExtension
