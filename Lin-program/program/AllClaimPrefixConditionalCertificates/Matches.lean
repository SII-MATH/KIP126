import AllClaimPrefixConditionalCertificates.Data
namespace AllClaimPrefixConditionalCertificates.Matches
open LinearCertificates PageTransitionCertificates Data

namespace Ceta
open Fact715TrajectoryCertificates.Naturality

def ColumnMatches (ds : SS → ST) : Prop := ds sphereClass = zeroS ∧ ∀ i : Fin 1,
    matrixOf 1 2 b_S0_15_139_d3.outgoing i ⟨1,by decide⟩ =
      Fact713TrajectoryCertificates.Row3076.targetCoordinates (ds sphereClass) i

theorem matched (dc : CS → CT) (ds : SS → ST)
    (hn : ∀ x, ds (f x) = ft (dc x)) : ColumnMatches ds := by
  have h := Fact713TrajectoryCertificates.Row3076.from_ceta_naturality dc ds hn
  exact ⟨h.quotientZero,h.columnMatches⟩
end Ceta

namespace C2
open Fact713C2Row3143 Naturality

def ColumnMatches (ds : SS → ST) : Prop := ds requestedClass = zeroS ∧
  (∀ i : Fin 1, matrixOf 1 1 b_S0_20_142_d3.incoming i 0 =
    Fact713C2Row3143.Matches.targetCoordinates (ds requestedClass) i) ∧
  (∀ i : Fin 1, matrixOf 1 1 b_S0_17_140_d3.outgoing i 0 =
    Fact713C2Row3143.Matches.targetCoordinates (ds requestedClass) i)

theorem matched (dc : CS → CT) (ds : SS → ST) (nextD : CT → InjectiveNext.NT)
    (matrixMeaning : ∀ x, InjectiveNext.ne.toCoordinates (nextD x) =
      eval InjectiveNext.following (InjectiveNext.ce.toCoordinates x))
    (squareZero : ∀ x, nextD (dc x) = InjectiveNext.zeroN)
    (naturality : ∀ x, ds (f x) = ft (dc x)) : ColumnMatches ds := by
  have h := Fact713C2Row3143.Matches.matched_zero dc ds nextD matrixMeaning squareZero naturality
  refine ⟨h.1, ?_, ?_⟩
  all_goals
    intro i
    have hi : i = 0 := Fin.eq_zero i
    subst i
    exact h.2 0
end C2

namespace Prefix
open Fact713C2Row3005 Naturality

def ColumnMatches (ds : SS → ST) : Prop := ds requestedClass = zeroS ∧
  (∀ i : Fin 1, matrixOf 1 1 b_S0_14_138_d3.outgoing i 0 =
    Fact713C2Row3005.Matches.coordinates (ds requestedClass) i) ∧
  (∀ i : Fin 1, matrixOf 1 1 b_S0_17_140_d3.incoming i 0 =
    Fact713C2Row3005.Matches.coordinates (ds requestedClass) i)

/-- PrefixMeaning is an additional imported-data interpretation premise. -/
theorem matched (dc : CS → CT) (ds : SS → ST)
    (prefixMeaning : PrefixMeaning dc) (naturality : ∀ x, ds (f x) = ft (dc x)) :
    ColumnMatches ds := by
  have h := Fact713C2Row3005.Matches.matched dc ds prefixMeaning naturality
  refine ⟨h.1, ?_, ?_⟩
  all_goals
    intro i
    have hi : i = 0 := Fin.eq_zero i
    subst i
    exact h.2 0
#print axioms matched
end Prefix
end AllClaimPrefixConditionalCertificates.Matches
