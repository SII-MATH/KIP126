import SemanticTrajectoryCertificates.Path
import Step4ContractAudit.SemanticBridge

namespace SemanticTrajectoryCertificates
open LinearCertificates PageTransitionCertificates
open AggregateTargetInventory.EventAudit

def endpointCoordinates (e : Endpoint final) (n : Nat) : e.Point → Vec n :=
  fun x => resize final.length n (e.coordinates x)

theorem endpointCoordinates_named (e : Endpoint final) (n : Nat) (shape : final.length = n) :
    endpointCoordinates e n e.point = (fun i => final[i.val]?.getD false) := by
  funext j
  unfold endpointCoordinates resize
  have hj : j.val < final.length := by simpa only [shape] using j.isLt
  rw [dif_pos hj, e.named]

theorem endpointCoordinates_injective (e : Endpoint final) (n : Nat) (shape : final.length = n) :
    Function.Injective (endpointCoordinates e n) := by
  intro x y h
  apply e.injective
  funext i
  let j : Fin n := ⟨i.val, by simpa only [← shape] using i.isLt⟩
  have he := congrFun h j
  change resize final.length n (e.coordinates x) j = resize final.length n (e.coordinates y) j at he
  rw [← resize_same _ i j rfl, ← resize_same _ i j rfl] at he
  exact he

structure EventData (w : Executable.Wire) where
  sourceModels : List RealStage
  targetModels : List RealStage
  sourceEndpoint : Endpoint w.source
  targetEndpoint : Endpoint w.target
  source_stages : sourceModels.map RealStage.stage = w.sourceStages
  target_stages : targetModels.map RealStage.stage = w.targetStages
  source_connections : Connections sourceModels sourceEndpoint
  target_connections : Connections targetModels targetEndpoint
  differential : sourceEndpoint.Point → targetEndpoint.Point
  zeroTarget : targetEndpoint.Point
  zero_coordinates : endpointCoordinates targetEndpoint w.event.k zeroTarget = zero
  differential_all : ∀ x,
    endpointCoordinates targetEndpoint w.event.k (differential x) =
      eval (matrixOf w.event.k w.event.m w.event.outgoing)
        (endpointCoordinates sourceEndpoint w.event.m x)

def EventData.Holds {w : Executable.Wire} (d : EventData w) : Prop :=
  PathHolds d.sourceModels d.sourceEndpoint ∧
  PathHolds d.targetModels d.targetEndpoint ∧
  d.differential d.sourceEndpoint.point = d.targetEndpoint.point ∧
  d.targetEndpoint.point ≠ d.zeroTarget

theorem event_transport (w : Executable.Wire) (checked : w.Valid) (d : EventData w) : d.Holds := by
  refine ⟨path_transport _ _ ?_ d.source_connections,
    path_transport _ _ ?_ d.target_connections, ?_⟩
  · rw [d.source_stages]
    exact checked.2.2.1
  · rw [d.target_stages]
    exact checked.2.2.2.1
  · apply Step4ContractAudit.interpreted_event w checked d.differential
      (endpointCoordinates d.sourceEndpoint w.event.m)
      (endpointCoordinates d.targetEndpoint w.event.k)
    · exact ⟨endpointCoordinates_injective _ _ checked.1.2.2.1, d.differential_all⟩
    · exact endpointCoordinates_named _ _ checked.1.2.1
    · exact endpointCoordinates_named _ _ checked.1.2.2.1
    · exact d.zero_coordinates

theorem event_from_check (w : Executable.Wire) (checked : Executable.check w = true)
    (d : EventData w) : d.Holds := event_transport w (Executable.check_sound w checked) d

instance (w : Executable.Wire) (d : EventData w) :
    LinProgramCertificates.CertificateVerifier d.Holds where
  Cert := Unit
  check := fun _ => Executable.check w
  sound := fun _ checked => event_from_check w checked d

structure BundleItem where
  wire : Executable.Wire
  data : EventData wire

def checkBundle (items : List BundleItem) : Bool := items.all (fun i => Executable.check i.wire)

theorem bundle_sound (items : List BundleItem) (checked : checkBundle items = true) :
    ∀ i ∈ items, i.data.Holds := by
  intro i hi
  exact event_from_check i.wire ((List.all_eq_true.mp checked) i hi) i.data

instance (items : List BundleItem) :
    LinProgramCertificates.CertificateVerifier (∀ i ∈ items, i.data.Holds) where
  Cert := Unit
  check := fun _ => checkBundle items
  sound := fun _ => bundle_sound items

def coordinateEvent (w : Executable.Wire) (shape : Executable.Shape w) : EventData w where
  sourceModels := w.sourceStages.map coordinateStage
  targetModels := w.targetStages.map coordinateStage
  sourceEndpoint := coordinateEndpoint w.source
  targetEndpoint := coordinateEndpoint w.target
  source_stages := coordinateStages_eq _
  target_stages := coordinateStages_eq _
  source_connections := coordinateConnections _ _
  target_connections := coordinateConnections _ _
  differential := fun x => resize w.event.k w.target.length
    (eval (matrixOf w.event.k w.event.m w.event.outgoing) (resize w.source.length w.event.m x))
  zeroTarget := zero
  zero_coordinates := by
    funext j
    unfold endpointCoordinates coordinateEndpoint resize
    split <;> rfl
  differential_all := by
    intro x
    funext j
    change resize w.target.length w.event.k
      (resize w.event.k w.target.length
        (eval (matrixOf w.event.k w.event.m w.event.outgoing) (resize w.source.length w.event.m x))) j = _
    unfold resize
    have hj : j.val < w.target.length := by simpa only [shape.2.2.1] using j.isLt
    rw [dif_pos hj, dif_pos j.isLt]
    rfl

#print axioms event_transport
#print axioms bundle_sound
end SemanticTrajectoryCertificates
