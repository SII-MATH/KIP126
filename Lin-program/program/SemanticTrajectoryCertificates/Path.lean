import SemanticTrajectoryCertificates.Page

namespace SemanticTrajectoryCertificates
open LinearCertificates PageTransitionCertificates
open AggregateTargetInventory.EventAudit

structure RealStage where
  stage : Stage
  page : PageData stage.wire
  element : page.Current
  meaning : page.Meaning
  named : page.currentCoordinates element = stage.vector

structure Endpoint (final : List Bool) where
  Point : Type
  point : Point
  coordinates : Point → Vec final.length
  injective : Function.Injective coordinates
  named : ∀ i, coordinates point i = final[i.val]?.getD false

def LinkCommutes (a b : RealStage) (transport : a.page.Next → b.page.Current) : Prop :=
  ∀ x (i : Fin a.stage.wire.h) (j : Fin b.stage.wire.m), i.val = j.val →
    a.page.nextCoordinates x i = b.page.currentCoordinates (transport x) j

def EndCommutes (a : RealStage) (e : Endpoint final)
    (transport : a.page.Next → e.Point) : Prop :=
  ∀ x (i : Fin a.stage.wire.h) (j : Fin final.length), i.val = j.val →
    a.page.nextCoordinates x i = e.coordinates (transport x) j

/-- Compatibility is on every next-page object; it contains no chosen-path conclusion. -/
def Connections (models : List RealStage) (e : Endpoint final) : Prop :=
  match models with
  | [] => True
  | [a] => ∃ transport, EndCommutes a e transport
  | a :: b :: rest => (∃ transport, LinkCommutes a b transport) ∧ Connections (b :: rest) e

def PathHolds (models : List RealStage) (e : Endpoint final) : Prop :=
  match models with
  | [] => True
  | [a] => a.page.StageHolds a.element ∧
      ∃ transport, EndCommutes a e transport ∧ transport (a.page.next a.element) = e.point
  | a :: b :: rest => a.page.StageHolds a.element ∧
      (∃ transport, LinkCommutes a b transport ∧ transport (a.page.next a.element) = b.element) ∧
      PathHolds (b :: rest) e

theorem linked_transport (a b : RealStage) (checked : a.stage.Valid)
    (linked : Linked a.stage b.stage) (transport : a.page.Next → b.page.Current)
    (commutes : LinkCommutes a b transport) :
    transport (a.page.next a.element) = b.element := by
  apply b.meaning.current_injective
  funext j
  let i : Fin a.stage.wire.h := ⟨j.val, by simpa only [linked.1] using j.isLt⟩
  rw [← commutes _ i j rfl, a.meaning.next_cycle _ (stage_transport _ checked _ a.meaning _ a.named).1,
    a.named, b.named]
  exact linked.2 i

theorem endpoint_transport (a : RealStage) (e : Endpoint final) (checked : a.stage.Valid)
    (ends : Executable.EndsAt a.stage final) (transport : a.page.Next → e.Point)
    (commutes : EndCommutes a e transport) : transport (a.page.next a.element) = e.point := by
  apply e.injective
  funext j
  let i : Fin a.stage.wire.h := ⟨j.val, by simpa only [ends.1] using j.isLt⟩
  rw [← commutes _ i j rfl, a.meaning.next_cycle _ (stage_transport _ checked _ a.meaning _ a.named).1,
    a.named, e.named]
  exact ends.2 i

theorem path_transport (models : List RealStage) (e : Endpoint final)
    (checked : Executable.PathValid (models.map RealStage.stage) final)
    (connections : Connections models e) : PathHolds models e := by
  induction models with
  | nil => trivial
  | cons a rest ih =>
    cases rest with
    | nil =>
      change a.stage.Valid ∧ Executable.EndsAt a.stage final at checked
      obtain ⟨transport, commute⟩ := connections
      exact ⟨stage_transport _ checked.1 _ a.meaning _ a.named,
        transport, commute, endpoint_transport a e checked.1 checked.2 transport commute⟩
    | cons b rest =>
      change a.stage.Valid ∧ Linked a.stage b.stage ∧
        Executable.PathValid ((b :: rest).map RealStage.stage) final at checked
      obtain ⟨⟨transport, commute⟩, tail⟩ := connections
      exact ⟨stage_transport _ checked.1 _ a.meaning _ a.named,
        ⟨transport, commute, linked_transport a b checked.1 checked.2.1 transport commute⟩,
        ih checked.2.2 tail⟩

theorem all_stages_hold (models : List RealStage) (e : Endpoint final)
    (valid : PathHolds models e) : ∀ a ∈ models, a.page.StageHolds a.element := by
  induction models with
  | nil => simp
  | cons a rest ih =>
    cases rest with
    | nil =>
      intro b hb
      simp only [List.mem_singleton] at hb
      subst b
      exact valid.1
    | cons b rest =>
      intro x hx
      rcases List.mem_cons.mp hx with rfl | hx
      · exact valid.1
      · exact ih valid.2.2 x hx

def coordinateStage (s : Stage) : RealStage where
  stage := s
  page := coordinatePage s.wire
  element := s.vector
  meaning := (coordinatePage_meaning _).toMeaning
  named := rfl

theorem coordinateStages_eq (stages : List Stage) :
    (stages.map coordinateStage).map RealStage.stage = stages := by
  induction stages with
  | nil => rfl
  | cons a rest ih => exact congrArg (List.cons a) ih

def coordinateEndpoint (final : List Bool) : Endpoint final where
  Point := Vec final.length
  point := fun i => final[i.val]?.getD false
  coordinates := id
  injective := fun _ _ h => h
  named := fun _ => rfl

def resize (n m : Nat) (v : Vec n) : Vec m :=
  fun j => if h : j.val < n then v ⟨j.val, h⟩ else false

theorem resize_same {n m : Nat} (v : Vec n) (i : Fin n) (j : Fin m)
    (h : i.val = j.val) : v i = resize n m v j := by
  unfold resize
  have hj : j.val < n := h ▸ i.isLt
  rw [dif_pos hj]
  congr 1
  exact Fin.ext h

theorem coordinateConnections (stages : List Stage) (final : List Bool) :
    Connections (stages.map coordinateStage) (coordinateEndpoint final) := by
  induction stages with
  | nil => trivial
  | cons a rest ih =>
    cases rest with
    | nil =>
      refine ⟨resize a.wire.h final.length, ?_⟩
      exact fun x i j h => resize_same x i j h
    | cons b rest =>
      refine ⟨⟨resize a.wire.h b.wire.m, ?_⟩, ih⟩
      exact fun x i j h => resize_same x i j h

theorem coordinatePath (stages : List Stage) (final : List Bool)
    (checked : Executable.PathValid stages final) :
    PathHolds (stages.map coordinateStage) (coordinateEndpoint final) := by
  apply path_transport _ _
  · rw [coordinateStages_eq]
    exact checked
  · exact coordinateConnections stages final

#print axioms path_transport
#print axioms all_stages_hold
#print axioms coordinatePath
end SemanticTrajectoryCertificates
