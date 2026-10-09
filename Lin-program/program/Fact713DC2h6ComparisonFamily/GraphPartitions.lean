import Fact713DC2h6ComparisonFamily.GraphData

namespace Fact713DC2h6ComparisonFamily.GraphCoverage
open IndexedFamilyCertificates
set_option maxRecDepth 100000
set_option maxHeartbeats 16000000

def cached (keys : List Key) := keys.map (fun key => (code key,key))
def cachedSort (keys : List (Nat × Key)) := sortBy (fun a b => a.1 ≤ b.1) keys

theorem cache_family : input.cachedFamily = cached familyKeys := by decide
theorem cache_request : input.cachedRequest = cached requested := by decide
theorem cache_partition : input.cachedPartition = cached (available ++ missing) := by decide
theorem cache_supplied : input.cachedSupplied = cached (available ++ outside) := by decide

theorem family_partition_checked :
    cachedSort input.cachedFamily = cachedSort input.cachedSupplied := by decide
theorem request_partition_checked :
    cachedSort input.cachedRequest = cachedSort input.cachedPartition := by decide

theorem cached_sort_perm (keys : List (Nat × Key)) : (cachedSort keys).Perm keys :=
  sortBy_perm (fun (a b : Nat × Key) => decide (a.1 ≤ b.1)) keys

theorem cache_mem (key : Key) (keys : List Key) : (code key,key) ∈ cached keys ↔ key ∈ keys := by
  simp [cached]

theorem family_partition (key : Key) : key ∈ familyKeys ↔ key ∈ available ++ outside := by
  have left : (code key,key) ∈ cachedSort input.cachedFamily ↔ (code key,key) ∈ input.cachedFamily :=
    (cached_sort_perm _).mem_iff
  have right : (code key,key) ∈ cachedSort input.cachedSupplied ↔ (code key,key) ∈ input.cachedSupplied :=
    (cached_sort_perm _).mem_iff
  rw [family_partition_checked] at left
  have eq := left.symm.trans right
  simpa only [cache_family,cache_supplied,cache_mem] using eq

theorem request_partition (key : Key) : key ∈ requested ↔ key ∈ available ++ missing := by
  have left : (code key,key) ∈ cachedSort input.cachedRequest ↔ (code key,key) ∈ input.cachedRequest :=
    (cached_sort_perm _).mem_iff
  have right : (code key,key) ∈ cachedSort input.cachedPartition ↔ (code key,key) ∈ input.cachedPartition :=
    (cached_sort_perm _).mem_iff
  rw [request_partition_checked] at left
  have eq := left.symm.trans right
  simpa only [cache_request,cache_partition,cache_mem] using eq

#print axioms family_partition
#print axioms request_partition
end Fact713DC2h6ComparisonFamily.GraphCoverage
