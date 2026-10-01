import KIP126.Def.StableHomotopy.Source.Spheres
import Mathlib.Topology.Compactness.CompactlyGeneratedSpace

/-! The point-set conventions for the orthogonal source. Products carry
the compactly generated topology. Weak Hausdorffness is the actual closed
image condition for maps from compact Hausdorff spaces, not an unspecified
predicate saying that a chosen space is a correct model. -/
namespace KIP126.StableHomotopy.Source
open CategoryTheory
open scoped Topology unitInterval
noncomputable section

def WeakHausdorff (X : BasedSpace) : Prop :=
  ∀ (K : CompHaus.{0}) (f : C(K, X)), IsClosed (Set.range f)

def IsConvenient (X : BasedSpace) : Prop :=
  UCompactlyGeneratedSpace.{0} X ∧ WeakHausdorff X

/-- Kification changes the topology, not the points. The canonical
continuous identity goes FROM kX TO X; its reverse need not be continuous. -/
def kify (X : BasedSpace) : BasedSpace where
  carrier := X
  topology := TopologicalSpace.compactlyGenerated.{0} X
  point := X.point

def kifyMap (X : BasedSpace) : kify X ⟶ X where
  map := ⟨fun x => x, by sorry⟩
  point := rfl

/-- The k-product, on the actual set of pairs. -/
def kProduct (X Y : BasedSpace) : BasedSpace where
  carrier := X × Y
  topology := TopologicalSpace.compactlyGenerated.{0} (X × Y)
  point := (X.point, Y.point)

/-- A continuous pointed pairing, separately zero at the two basepoints.
Using a k-product here is essential for enriched Day convolution. -/
structure BasedBimap (X Y Z : BasedSpace) where
  map : C(kProduct X Y, Z)
  left_point : ∀ y, map (X.point, y) = Z.point
  right_point : ∀ x, map (x, Y.point) = Z.point

def BasedBimap.apply {X Y Z : BasedSpace} (b : BasedBimap X Y Z)
    (x : X) (y : Y) : Z := b.map (x,y)

/-- The standard based disk D^k_+, including k=0. -/
def disk (k : ℕ) : BasedSpace where
  carrier := (Fin k → I) ⊕ PUnit
  topology := inferInstance
  point := .inr PUnit.unit

/-- The boundary (∂I^k)_+. At k=0 this is just the basepoint. -/
def diskBoundary (k : ℕ) : BasedSpace where
  carrier := {z : Fin k → I // ∃ i, z i = 0 ∨ z i = 1} ⊕ PUnit
  topology := inferInstance
  point := .inr PUnit.unit

def diskBoundaryInclusion (k : ℕ) : diskBoundary k ⟶ disk k where
  map := ⟨fun z => match z with
    | .inl x => .inl x.val
    | .inr p => .inr p, by
      apply continuous_sum_dom.mpr
      exact ⟨continuous_inl.comp continuous_subtype_val, continuous_inr⟩⟩
  point := rfl

/-- This is the RLP against every based disk-boundary inclusion. These
are the level acyclic Serre fibrations used to define the ordinary stable
q-cofibrations. There is no positive-level restriction. -/
def HasDiskBoundaryLifting {X Y : BasedSpace} (f : X ⟶ Y) : Prop :=
  ∀ (k : ℕ) (a : diskBoundary k ⟶ X) (b : disk k ⟶ Y),
    a ≫ f = diskBoundaryInclusion k ≫ b →
    ∃ l : disk k ⟶ X, diskBoundaryInclusion k ≫ l = a ∧ l ≫ f = b

end
end KIP126.StableHomotopy.Source
