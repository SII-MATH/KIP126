import PageTransitionCertificates.Import

namespace PageTransitionCertificates
open LinearCertificates

theorem projection_zero_iff_boundary (outgoing : Matrix k m) (incoming : Matrix m n)
    (c : Comparison k m n h) (hc : HomologyComparison outgoing incoming c)
    (x : Vec m) (hx : InKernel outgoing x) :
    eval c.projection x = zero ↔ InImage incoming x := by
  have hz : InKernel outgoing (zero : Vec m) := eval_zero outgoing
  simpa only [eval_zero, ResolutionCertificates.add_zero] using
    hc.2.2.2.2 x zero hx hz

/-- The next representative is a homology coordinate, not an arbitrary transport function. -/
structure Stage where
  wire : WireComparison
  representative : List Bool
  deriving Lean.ToJson, Lean.FromJson, Lean.ToExpr

def Stage.vector (s : Stage) : Vec s.wire.m :=
  fun i => s.representative[i.val]?.getD false

def Stage.Valid (s : Stage) : Prop :=
  s.wire.Valid ∧ s.representative.length = s.wire.m ∧
  InKernel (matrixOf s.wire.k s.wire.m s.wire.outgoing) s.vector ∧
  ¬ InImage (matrixOf s.wire.m s.wire.n s.wire.incoming) s.vector

def checkStage (s : Stage) : Bool :=
  checkWire s.wire && decide (s.representative.length = s.wire.m) &&
  checkKernel (matrixOf s.wire.k s.wire.m s.wire.outgoing) s.vector &&
  decide (∃ i : Fin s.wire.h, eval s.wire.comparison.projection s.vector i = true)

theorem checkStage_sound (s : Stage) (hc : checkStage s = true) : s.Valid := by
  simp only [checkStage, Bool.and_eq_true, decide_eq_true_eq] at hc
  have hw := checkWire_sound _ hc.1.1.1
  have hx := checkKernel_sound _ _ hc.1.2
  refine ⟨hw, hc.1.1.2, hx, ?_⟩
  intro hb
  have hz := (projection_zero_iff_boundary _ _ _ hw.2 s.vector hx).mpr hb
  obtain ⟨i, hi⟩ := hc.2
  have he := congrFun hz i
  rw [hi] at he
  contradiction

def Linked (a b : Stage) : Prop :=
  a.wire.h = b.wire.m ∧
  ∀ i : Fin a.wire.h, eval a.wire.comparison.projection a.vector i =
    b.representative[i.val]?.getD false

instance (a b : Stage) : Decidable (Linked a b) := inferInstanceAs (Decidable (_ ∧ _))

def checkTrajectory : List Stage → Bool
  | [] => false
  | [s] => checkStage s
  | a :: b :: rest => checkStage a && decide (Linked a b) && checkTrajectory (b :: rest)

def TrajectoryValid : List Stage → Prop
  | [] => False
  | [s] => s.Valid
  | a :: b :: rest => a.Valid ∧ Linked a b ∧ TrajectoryValid (b :: rest)

theorem checkTrajectory_sound (stages : List Stage) (h : checkTrajectory stages = true) :
    TrajectoryValid stages := by
  induction stages with
  | nil => simp [checkTrajectory] at h
  | cons a rest ih =>
    cases rest with
    | nil => exact checkStage_sound a h
    | cons b rest =>
      simp only [checkTrajectory, Bool.and_eq_true, decide_eq_true_eq] at h
      exact ⟨checkStage_sound a h.1.1, h.1.2, ih h.2⟩

instance (stages : List Stage) : LinProgramCertificates.CertificateVerifier (TrajectoryValid stages) where
  Cert := Unit
  check := fun _ => checkTrajectory stages
  sound := fun _ => checkTrajectory_sound stages

end PageTransitionCertificates
