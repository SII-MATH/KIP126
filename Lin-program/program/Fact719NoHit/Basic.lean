import ActualFiniteNoHit.Basic
import Fact719ConstructedActual.Trace
import Fact762SphereGDetection.Trace

namespace Fact719NoHit
open ManualInputObligations.Reference ActualAdamsSystemBridge ActualAdamsFiltration
open Row3151ActualTransport

abbrev degree : Bidegree := ⟨8,130⟩

/-- The complete three legal later incoming sources have empty initial E2
groups. Their later pages are constructed as quotients, not read from NULL. -/
structure EmptySources (S : AdamsSpectralSequence) where
  page6 : Coordinates S 2 ⟨2,125⟩ 0
  page7 : Coordinates S 2 ⟨1,124⟩ 0
  page8 : Coordinates S 2 ⟨0,123⟩ 0

theorem zero_later (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (zeros : ZeroMeaning S pages) (d : Bidegree) (empty : Coordinates S 2 d 0)
    (n : Nat) (x : (S.element (n+2) d).carrier) : x = 0 := by
  obtain ⟨initial,⟨trace⟩⟩ := Fact762SphereGDetection.Trace.exists_initial S pages d n x
  apply Fact762SphereGDetection.Trace.zero_endpoint S pages zeros d trace
  exact empty.equivalence.injective (by funext i; exact Fin.elim0 i)

theorem incoming_zero_of_empty (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (zeros : ZeroMeaning S pages) (n : Nat) (d : Bidegree)
    (empty : ∀ e, AdamsTarget (n+2) e = d → Coordinates S 2 e 0)
    (y : Incoming S (n+2) d) : incoming S (n+2) d y = S.zero (n+2) d := by
  cases y with
  | inl u => cases u; exact (S.zero_is_zero _ _).symm
  | inr y =>
    obtain ⟨e,h,x⟩ := y
    have hx := zero_later S pages zeros e (empty e h.val) n x
    have hd := h.val
    subst d
    change S.differential (n+2) e x = S.zero (n+2) (AdamsTarget (n+2) e)
    rw [hx,(S.differential (n+2) e).map_zero',S.zero_is_zero]

theorem whole_incoming_tail (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (zeros : ZeroMeaning S pages) (E : EmptySources S) (n : Nat) (hn : 4 ≤ n)
    (y : Incoming S (n+2) degree) : incoming S (n+2) degree y = S.zero (n+2) degree := by
  by_cases above : degree.filtration < n+2
  · exact incoming_map_zero_above_filtration S (n+2) degree above y
  apply incoming_zero_of_empty S pages zeros n degree _ y
  intro e he
  have hs := congrArg Bidegree.filtration he
  have ht := congrArg Bidegree.internal he
  change e.filtration + (n+2) = 8 at hs
  change e.internal + ((n+2 : Nat) : Int) - 1 = 130 at ht
  by_cases h4 : n = 4
  · have same : (⟨2,125⟩ : Bidegree) = e := by apply Bidegree.ext <;> dsimp at * <;> omega
    exact same ▸ E.page6
  · by_cases h5 : n = 5
    · have same : (⟨1,124⟩ : Bidegree) = e := by apply Bidegree.ext <;> dsimp at * <;> omega
      exact same ▸ E.page7
    · have h6 : n = 6 := by change ¬ 8 < n+2 at above; omega
      have same : (⟨0,123⟩ : Bidegree) = e := by apply Bidegree.ext <;> dsimp at * <;> omega
      exact same ▸ E.page8

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
  {initial : Fact719ConstructedActual.AdditiveCoordinates S 2 1}

def NotKilled (zeros : ZeroMeaning S pages) (input : (S.element 2 degree).carrier) : Prop :=
  ¬ (filtration (system S pages zeros degree) (differentialLaws S pages zeros degree)).BInfinity input

theorem raw_not_killed (zeros : ZeroMeaning S pages) (E : EmptySources S)
    (P : Fact719ConstructedActual.Prefix6 S pages initial) :
    NotKilled zeros (Fact719ConstructedActual.raw initial) := by
  apply ActualFiniteNoHit.no_boundary_ever (actualRealization S pages zeros degree)
    (differentialLaws S pages zeros degree) 4 (whole_incoming_tail S pages zeros E)
    (Fact719ConstructedActual.raw initial) (cycles_from_trace S pages zeros degree P.endpoint6.trace 4 rfl)
  change (system S pages zeros degree).at (Fact719ConstructedActual.raw initial) 4 ≠ S.zero 6 degree
  rw [← trace_at S pages zeros degree P.endpoint6.trace,S.zero_is_zero]
  exact P.nonzero6

theorem named_not_killed (zeros : ZeroMeaning S pages) (E : EmptySources S)
    (P : Fact719ConstructedActual.Prefix6 S pages initial)
    (input : (S.element 2 degree).carrier)
    (named : initial.coordinates.equivalence input = Fact719PageCertificates.target) : NotKilled zeros input := by
  have same : input = Fact719ConstructedActual.raw initial := initial.coordinates.equivalence.injective
    (named.trans Fact719ConstructedActual.raw_coordinate.symm)
  rw [same]
  exact raw_not_killed zeros E P

#print axioms zero_later
#print axioms incoming_zero_of_empty
#print axioms whole_incoming_tail
#print axioms raw_not_killed
#print axioms named_not_killed
end Fact719NoHit
