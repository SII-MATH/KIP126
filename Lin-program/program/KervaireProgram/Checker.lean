import KervaireProgram.Certificate

/-!
# 可执行证书检查器及可靠性

检查器只对 `AdamsData` 中明确导入的有限记录作判断；它不会把缺失数据解释成
零，也不会调用 C++。`check_sound` 是内核证明：一旦布尔检查通过，就得到
对应的有限数学命题。
-/

namespace KervaireProgram

theorem dataWellFormed_sound (d : AdamsData) (h : dataWellFormed d = true) :
    DataWellFormed d := by
  simp only [dataWellFormed, Bool.and_eq_true, decide_eq_true_eq,
    List.all_eq_true] at h
  exact ⟨h.1.1, h.2⟩

/-- The executable degree check entails the mathematical Adams bidegree relation. -/
theorem differentialWellFormed_sound (d : AdamsData) (δ : Differential)
    (h : differentialWellFormed d δ = true) :
    2 ≤ δ.page ∧ ∃ source ∈ d.classes, ∃ target ∈ d.classes,
      source.id = δ.source ∧ target.id = δ.target ∧
      target.degree.filtration = source.degree.filtration + δ.page ∧
      target.degree.internal = source.degree.internal + (δ.page : Int) - 1 := by
  simp only [differentialWellFormed, Bool.and_eq_true, decide_eq_true_eq,
    List.any_eq_true, beq_iff_eq] at h
  obtain ⟨hp, source, hs, hid, target, ht, htarget⟩ := h
  exact ⟨hp, source, hs, target, ht, hid, htarget.1.1, htarget.1.2, htarget.2⟩

/-- 输入表中给定类的所有入射微分。 -/
def incomingFor (d : AdamsData) (id first last : Nat) : List Differential :=
  Incoming d id first last

/-- 一个类在当前有限数据中的存活命题。 -/
def SurvivesIn (d : AdamsData) (id page : Nat) : Prop :=
  incomingFor d id 2 (page - 1) = []

/-- 一个类在当前有限数据中的永久循环命题。 -/
def PermanentIn (d : AdamsData) (id : Nat) : Prop :=
  AllIncoming d id = []

/-- 唯一存活结果：指定类无入射微分，其余候选各有至少一条入射记录。 -/
def UniqueSurvivorIn (d : AdamsData) (candidates : List Nat) (survivor : Nat)
    (eliminated : List Nat) : Prop :=
  candidates.Nodup ∧ survivor ∈ candidates ∧
    eliminated = candidates.filter (· ≠ survivor) ∧
    PermanentIn d survivor ∧
    ∀ id, id ∈ eliminated → ∃ δ ∈ d.differentials,
      δ.target = id ∧ 2 ≤ δ.page

/-- 证书声称的数学命题。所有量词均限制在导入的有限数据集上。 -/
def FiniteResultValid (d : AdamsData) : ResultSpec → Prop
  | .notHit id first last => incomingFor d id first last = []
  | .survives id page => SurvivesIn d id page
  | .permanent id => PermanentIn d id
  | .differential δ => DifferentialWellFormed d δ ∧ δ ∈ d.differentials
  | .uniqueSurvivor candidates survivor =>
      ∃ eliminated, UniqueSurvivorIn d candidates survivor eliminated
  | .ruledOut _stem ruledOut total => ruledOut ≤ total

/-- 检查一个具体结果及其证据。 -/
def checkFiniteResult (d : AdamsData) : ResultSpec → Evidence → Bool
  | .notHit id first last, .incoming records =>
      decide (records = incomingFor d id first last) && decide (records = [])
  | .survives id page, .incoming records =>
      decide (records = incomingFor d id 2 (page - 1)) && decide (records = [])
  | .permanent id, .permanent records =>
      decide (records = AllIncoming d id) && decide (records = [])
  | .differential δ, .differential copy =>
      decide (copy = δ) && differentialWellFormed d δ &&
        decide (δ ∈ d.differentials)
  | .uniqueSurvivor candidates survivor, .unique eliminated =>
      decide candidates.Nodup && decide (survivor ∈ candidates) &&
        decide (eliminated = candidates.filter (· ≠ survivor)) &&
        decide (AllIncoming d survivor = []) &&
        decide (∀ id, id ∈ eliminated → ∃ δ ∈ d.differentials,
          δ.target = id ∧ 2 ≤ δ.page)
  | .ruledOut _stem ruledOut total, .count count total' =>
      decide (count = ruledOut) && decide (total' = total) && decide (ruledOut ≤ total)
  | _, _ => false

theorem incoming_empty_iff_no_hit (d : AdamsData) (id first last : Nat) :
    incomingFor d id first last = [] ↔
      ∀ δ, δ ∈ d.differentials → δ.target = id →
        ¬ (first ≤ δ.page ∧ δ.page ≤ last) := by
  constructor
  · intro h δ hδ ht hrange
    have : δ ∈ incomingFor d id first last := by
      simp [incomingFor, Incoming, hδ, ht, hrange]
    simp [h] at this
  · intro h
    apply List.eq_nil_iff_forall_not_mem.mpr
    intro δ hδ
    simp only [incomingFor, Incoming, List.mem_filter, decide_eq_true_eq, Bool.and_eq_true] at hδ
    rcases hδ with ⟨hmem, ⟨htarget, hfirst⟩, hlast⟩
    exact h δ hmem htarget ⟨hfirst, hlast⟩

theorem checkFiniteResult_sound (d : AdamsData) (spec : ResultSpec) (e : Evidence)
    (h : checkFiniteResult d spec e = true) : FiniteResultValid d spec := by
  classical
  cases spec with
  | notHit id first last =>
      cases e with
      | incoming records =>
          simp only [checkFiniteResult, Bool.and_eq_true, decide_eq_true_eq] at h
          exact h.1.symm.trans h.2
      | permanent _ | differential _ | unique _ | count _ _ => simp [checkFiniteResult] at h
  | survives id page =>
      cases e with
      | incoming records =>
          simp only [checkFiniteResult, Bool.and_eq_true, decide_eq_true_eq] at h
          change incomingFor d id 2 (page - 1) = []
          have hempty : incomingFor d id 2 (page - 1) = [] := h.1.symm.trans h.2
          exact hempty
      | permanent _ | differential _ | unique _ | count _ _ => simp [checkFiniteResult] at h
  | permanent id =>
      cases e with
      | permanent records =>
          simp only [checkFiniteResult, Bool.and_eq_true, decide_eq_true_eq] at h
          change AllIncoming d id = []
          exact h.1.symm.trans h.2
      | incoming _ | differential _ | unique _ | count _ _ => simp [checkFiniteResult] at h
  | differential δ =>
      cases e with
      | differential copy =>
          simp only [checkFiniteResult, Bool.and_eq_true, decide_eq_true_eq] at h
          exact ⟨by simpa [DifferentialWellFormed] using h.1.2, h.2⟩
      | incoming _ | permanent _ | unique _ | count _ _ => simp [checkFiniteResult] at h
  | uniqueSurvivor candidates survivor =>
      cases e with
      | unique eliminated =>
          simp only [checkFiniteResult, Bool.and_eq_true, decide_eq_true_eq] at h
          refine ⟨eliminated, ?_⟩
          exact ⟨h.1.1.1.1, h.1.1.1.2, h.1.1.2, h.1.2, h.2⟩
      | incoming _ | permanent _ | differential _ | count _ _ => simp [checkFiniteResult] at h
  | ruledOut stem ruledOut total =>
      cases e with
      | count count total' =>
          simp only [checkFiniteResult, Bool.and_eq_true, decide_eq_true_eq] at h
          exact h.2
      | incoming _ | permanent _ | differential _ | unique _ => simp [checkFiniteResult] at h

/-- A candidate is excluded only by a supplied incoming differential. -/
def excludedAt (d : AdamsData) (stem : Int) : List Class :=
  d.classes.filter fun c => c.degree.stem == stem && !(AllIncoming d c.id).isEmpty

/-- Preconditions prevent vacuous success for absent classes and invalid pages.
    Completeness here means completeness relative to the supplied finite table. -/
def admissible (d : AdamsData) : ResultSpec → Bool
  | .notHit id first last => ClassPresent d id && decide (2 ≤ first ∧ first ≤ last)
  | .survives id page => ClassPresent d id && decide (2 ≤ page) &&
      decide (Outgoing d id 2 (page - 1) = [])
  | .permanent id => ClassPresent d id &&
      decide (d.differentials.filter (fun δ => δ.source == id) = [])
  | .differential _ => true
  | .uniqueSurvivor candidates survivor => candidates.all (ClassPresent d) &&
      decide (d.differentials.filter (fun δ => δ.source == survivor) = [])
  | .ruledOut stem count total =>
      decide ((d.classes.filter (fun c => c.degree.stem == stem)).length = total) &&
      decide ((excludedAt d stem).length = count)

/-- Finite semantics with explicit data and query well-formedness obligations. -/
def ResultValid (d : AdamsData) (spec : ResultSpec) : Prop :=
  dataWellFormed d = true ∧ admissible d spec = true ∧ FiniteResultValid d spec

def checkResult (d : AdamsData) (spec : ResultSpec) (e : Evidence) : Bool :=
  dataWellFormed d && admissible d spec && checkFiniteResult d spec e

theorem checkResult_sound (d : AdamsData) (spec : ResultSpec) (e : Evidence)
    (h : checkResult d spec e = true) : ResultValid d spec := by
  simp only [checkResult, Bool.and_eq_true] at h
  exact ⟨h.1.1, h.1.2, checkFiniteResult_sound d spec e h.2⟩

def check (d : AdamsData) (c : Certificate) : Bool :=
  decide (c.version = 1) && decide (c.object = d.object) &&
    checkResult d c.claim c.evidence

theorem check_sound (d : AdamsData) (c : Certificate)
    (h : check d c = true) : c.version = 1 ∧ c.object = d.object ∧ ResultValid d c.claim := by
  simp only [check, Bool.and_eq_true, decide_eq_true_eq] at h
  exact ⟨h.1.1, h.1.2, checkResult_sound d c.claim c.evidence h.2⟩

/-- 将证书通过事实直接投影为其声明的数学命题，便于 tactic 使用。 -/
theorem certificate_claim (d : AdamsData) (c : Certificate)
    (h : check d c = true) : ResultValid d c.claim :=
  (check_sound d c h).2.2

/-- 导入一批证书时，每个通过的证书均满足其声明。 -/
def checkBundle (b : Bundle) : Bool :=
  decide (b.formatVersion = 1) && dataWellFormed b.data &&
    b.certificates.all (check b.data)

/-- Empty certificate lists must not bypass validation of the supplied data. -/
theorem checkBundle_dataWellFormed (b : Bundle) (h : checkBundle b = true) :
    dataWellFormed b.data = true := by
  simp only [checkBundle, Bool.and_eq_true] at h
  exact h.1.2

theorem checkBundle_sound (b : Bundle) (h : checkBundle b = true) :
    b.formatVersion = 1 ∧ ∀ c, c ∈ b.certificates →
      c.version = 1 ∧ c.object = b.data.object ∧ ResultValid b.data c.claim := by
  simp only [checkBundle, Bool.and_eq_true, decide_eq_true_eq, List.all_eq_true] at h
  refine ⟨h.1.1, ?_⟩
  intro c hc
  exact check_sound b.data c (h.2 c hc)

end KervaireProgram
