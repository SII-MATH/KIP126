import FilteredMapGradedComparison.AllTargets

namespace FilteredTwoTermSequence.Algebra
variable {X Y Z W U : Type*}
  [AddCommGroup X] [AddCommGroup Y] [AddCommGroup Z] [AddCommGroup W] [AddCommGroup U]

/-- A two-term differential is zero on the target summand. -/
def outgoing (f : X →+ W) : X × Y →+ Z × W where
  toFun x := (0,f x.1)
  map_zero' := by simp
  map_add' x y := by simp

def incoming (g : U →+ Y) : U →+ X × Y where
  toFun u := (0,g u)
  map_zero' := by simp
  map_add' u v := by simp

theorem outgoing_incoming (f : X →+ W) (g : U →+ Y) (u : U) :
    outgoing (Y := Y) (Z := Z) f (incoming (X := X) g u) = 0 := by
  simp [outgoing,incoming]

def boundaryMap (f : X →+ W) (g : U →+ Y) : U →+ (outgoing (Y := Y) (Z := Z) f).ker where
  toFun u := ⟨incoming g u,outgoing_incoming f g u⟩
  map_zero' := Subtype.ext (map_zero (incoming g))
  map_add' u v := Subtype.ext (map_add (incoming g) u v)

abbrev Homology (f : X →+ W) (g : U →+ Y) :=
  (outgoing (Y := Y) (Z := Z) f).ker ⧸ (boundaryMap (Z := Z) f g).range

def cycleProjection (f : X →+ W) (g : U →+ Y) :
    (outgoing (Y := Y) (Z := Z) f).ker →+ f.ker × (Y ⧸ g.range) where
  toFun x := (⟨x.val.1,congrArg Prod.snd x.property⟩,QuotientAddGroup.mk' g.range x.val.2)
  map_zero' := rfl
  map_add' x y := rfl

theorem cycleProjection_surjective (f : X →+ W) (g : U →+ Y) :
    Function.Surjective (cycleProjection (Z := Z) f g) := by
  rintro ⟨a,b⟩
  obtain ⟨y,rfl⟩ := QuotientAddGroup.mk'_surjective g.range b
  exact ⟨⟨(a.val,y),Prod.ext rfl a.property⟩,rfl⟩

theorem cycleProjection_kernel (f : X →+ W) (g : U →+ Y) :
    (cycleProjection (Z := Z) f g).ker = (boundaryMap (Z := Z) f g).range := by
  ext x
  constructor
  · intro hx
    have first : x.val.1 = 0 := congrArg (fun p : f.ker × (Y ⧸ g.range) => p.1.val) hx
    have second : QuotientAddGroup.mk' g.range x.val.2 = 0 := congrArg Prod.snd hx
    obtain ⟨u,hu⟩ := (QuotientAddGroup.eq_zero_iff x.val.2).mp second
    refine ⟨u,Subtype.ext (Prod.ext first.symm hu)⟩
  · rintro ⟨u,rfl⟩
    apply Prod.ext
    · rfl
    · exact (QuotientAddGroup.eq_zero_iff _).mpr ⟨u,rfl⟩

/-- This equivalence is constructed from the actual kernel and incoming
image quotient. It is not supplied as a spectral-sequence field. -/
noncomputable def homologyEquiv (f : X →+ W) (g : U →+ Y) :
    Homology (Z := Z) f g ≃+ f.ker × (Y ⧸ g.range) :=
  QuotientAddGroup.liftEquiv (boundaryMap (Z := Z) f g).range
    (cycleProjection_surjective (Z := Z) f g) (cycleProjection_kernel (Z := Z) f g).symm

theorem homologyEquiv_class (f : X →+ W) (g : U →+ Y)
    (x : (outgoing (Y := Y) (Z := Z) f).ker) :
    homologyEquiv (Z := Z) f g (QuotientAddGroup.mk' _ x) = cycleProjection f g x := rfl

#print axioms outgoing_incoming
#print axioms cycleProjection_kernel
#print axioms homologyEquiv
end FilteredTwoTermSequence.Algebra
