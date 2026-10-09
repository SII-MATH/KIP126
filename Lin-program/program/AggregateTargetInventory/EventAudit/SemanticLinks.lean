import AggregateTargetInventory.EventAudit.Matches
import AggregateTargetInventory.EventAudit.CoordinateLinks
namespace AggregateTargetInventory.EventAudit.SemanticLinks
open LinearCertificates PageTransitionCertificates Data

namespace Ceta
open Fact715TrajectoryCertificates.Naturality

theorem actual_column (dc : CS → CT) (ds : SS → ST)
    (hn : ∀ x, ds (f x) = ft (dc x)) :
    ds sphereClass = zeroS ∧ ∀ i : Fin 1,
      matrixOf 1 2 b_S0_15_139_d3.outgoing i 1 =
      Fact713TrajectoryCertificates.Row3076.targetCoordinates (ds sphereClass) i := by
  have h := AllClaimLeibnizConditionalCertificates.Matches.Ceta.matched dc ds hn
  exact ⟨h.1,fun i => (Matches.ceta_column i).trans (h.2 i)⟩
end Ceta

namespace Prefix
open Fact713C2Row3005 Naturality

theorem actual_columns (dc : CS → CT) (ds : SS → ST)
    (hp : PrefixMeaning dc) (hn : ∀ x, ds (f x) = ft (dc x)) :
    ds requestedClass = zeroS ∧
    (∀ i : Fin 1, matrixOf 1 1 b_S0_14_138_d3.outgoing i 0 =
      Fact713C2Row3005.Matches.coordinates (ds requestedClass) i) ∧
    (∀ i : Fin 1, matrixOf 1 1 b_S0_17_140_d3.incoming i 0 =
      Fact713C2Row3005.Matches.coordinates (ds requestedClass) i) := by
  have h := AllClaimLeibnizConditionalCertificates.Matches.Prefix.matched dc ds hp hn
  exact ⟨h.1,fun i => (Matches.prefix_out_column i).trans (h.2.1 i),
    fun i => (Matches.prefix_in_column i).trans (h.2.2 i)⟩
end Prefix

namespace C2
open Fact713C2Row3143 Naturality

theorem actual_column (dc : CS → CT) (ds : SS → ST) (nd : CT → InjectiveNext.NT)
    (hm : ∀ x, InjectiveNext.ne.toCoordinates (nd x) = eval InjectiveNext.following (InjectiveNext.ce.toCoordinates x))
    (hz : ∀ x, nd (dc x) = InjectiveNext.zeroN)
    (hn : ∀ x, ds (f x) = ft (dc x)) :
    ds requestedClass = zeroS ∧ ∀ i : Fin 1,
      matrixOf 1 1 b_S0_17_140_d3.outgoing i 0 = Fact713C2Row3143.Matches.targetCoordinates (ds requestedClass) i := by
  have h := AllClaimLeibnizConditionalCertificates.Matches.C2.matched dc ds nd hm hz hn
  exact ⟨h.1,fun i => (Matches.c2_column i).trans (h.2.2 i)⟩
end C2

namespace H0H2
open Row2693Detector.Quotient Row2693Detector.Combined

theorem actual_column (d : Q ann.right → Q detect.right)
    (d0 : Q ann0.target → Q detect0.target) (d2 : Q ann.target → Q detect.target)
    (z0 : d0 (z ann0.target) = z detect0.target) (z2 : d2 (z ann.target) = z detect.target)
    (l0 : ∀ x, d0 (annMap0 x) = detectMap0 (d x)) (l2 : ∀ x, d2 (annMap x) = detectMap (d x)) :
    d named = z detect.right ∧ ∀ i : Fin 2,
      matrixOf 2 4 b_S0_10_134_d3.outgoing i 2 = ce.toCoordinates (d named) i := by
  have h := AllClaimLeibnizConditionalCertificates.Matches.Leibniz.matched d d0 d2 z0 z2 l0 l2
  exact ⟨h.1,fun i => (Matches.h0h2_column i).trans (h.2.1 i)⟩
end H0H2
end AggregateTargetInventory.EventAudit.SemanticLinks
