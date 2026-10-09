import Fact713C2Row3143.InjectiveNext
namespace Fact713C2Row3143.FollowingColumns
open LinearCertificates PageTransitionCertificates MapComparison InjectiveNext

def rawRows : List (Nat × List Nat × Nat × Option (List Nat)) :=
  [(3449,[0],9997,some [1]), (3450,[2],9997,some [2])]

theorem following_column0 : ∀ i : Fin 3, following i ⟨0,by decide⟩ =
    eval Next.next.comparison.projection (fun j => j.val == 1) i := by decide

theorem following_column1 : ∀ i : Fin 3, following i ⟨1,by decide⟩ =
    eval Next.next.comparison.projection (fun j => j.val == 2) i := by decide

theorem source_column0 : ∀ i : Fin 3, upperSource.comparison.inclusion i ⟨0,by decide⟩ =
    (i.val == 0) := by decide

theorem source_column1 : ∀ i : Fin 3, upperSource.comparison.inclusion i ⟨1,by decide⟩ =
    (i.val == 2) := by decide
end Fact713C2Row3143.FollowingColumns
