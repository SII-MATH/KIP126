import FilteredExtensionCertificateCompleteness.Basic

namespace FilteredExtensionCertificateCompleteness
open LinearCertificates FilteredExtensionCertificates

/-- An explicit ordered list, avoiding noncomputable conversion of a finite set. -/
def allFunctions (values : List α) : (n : Nat) → List (Fin n → α)
  | 0 => [Fin.elim0]
  | n+1 => values.flatMap fun head =>
      (allFunctions values n).map fun tail => Fin.cons head tail

theorem mem_allFunctions (values : List α) (complete : ∀ x, x ∈ values)
    (f : Fin n → α) : f ∈ allFunctions values n := by
  induction n with
  | zero =>
    have hf : f = Fin.elim0 := by funext i; exact Fin.elim0 i
    simp [allFunctions,hf]
  | succ n ih =>
    apply List.mem_flatMap.mpr
    refine ⟨f 0,complete _,?_⟩
    apply List.mem_map.mpr
    refine ⟨fun i => f i.succ,ih _,?_⟩
    funext i
    induction i using Fin.cases <;> rfl

def allVectors (n : Nat) : List (Vec n) := allFunctions [false,true] n
def allMatrices (m n : Nat) : List (Matrix m n) := allFunctions (allVectors n) m

theorem mem_allVectors (v : Vec n) : v ∈ allVectors n :=
  mem_allFunctions _ (by intro b; cases b <;> simp) v

theorem mem_allMatrices (M : Matrix m n) : M ∈ allMatrices m n :=
  mem_allFunctions _ mem_allVectors M

def allCertificates (D : Data) : List (Certificate D) := do
  let sourceFactors ← allFunctions (allMatrices D.ha D.ha) D.depth
  let targetFactors ← allFunctions (allMatrices D.hb D.hb) D.depth
  let mapFactors ← allFunctions (allMatrices D.hb D.ha) D.depth
  let sourceMember ← allVectors D.ha
  let imageMember ← allVectors D.hb
  let targetMember ← allVectors D.hb
  let representative ← allVectors D.a
  let sourceCorrection ← allVectors D.ha
  let targetCorrection ← allVectors D.hb
  pure ⟨sourceFactors,targetFactors,mapFactors,sourceMember,imageMember,targetMember,
    representative,sourceCorrection,targetCorrection⟩

theorem mem_allCertificates (D : Data) (cert : Certificate D) : cert ∈ allCertificates D := by
  cases cert with
  | mk sf tf mf sm im tm rep sc tc =>
    simp only [allCertificates,List.bind_eq_flatMap,List.pure_def,List.mem_flatMap,List.mem_singleton]
    exact ⟨sf,mem_allFunctions _ mem_allMatrices sf,
      tf,mem_allFunctions _ mem_allMatrices tf,
      mf,mem_allFunctions _ mem_allMatrices mf,
      sm,mem_allVectors sm,im,mem_allVectors im,tm,mem_allVectors tm,
      rep,mem_allVectors rep,sc,mem_allVectors sc,tc,mem_allVectors tc,rfl⟩

/-- Complete but exponentially expensive reference search. The efficient
external producer remains useful; either producer's witnesses are checked. -/
def search (D : Data) : Option (Certificate D) :=
  (allCertificates D).find? (check D)

theorem search_accepted (D : Data) (cert : Certificate D) (found : search D = some cert) :
    check D cert = true := List.find?_some found

theorem search_sound (D : Data) (cert : Certificate D) (found : search D = some cert) :
    ResultValid D := check_sound D cert (search_accepted D cert found)

theorem search_none_iff (D : Data) : search D = none ↔ ¬ ResultValid D := by
  constructor
  · intro absent valid
    obtain ⟨cert,accepted⟩ := check_complete D valid
    exact (List.find?_eq_none.mp absent) cert (mem_allCertificates D cert) accepted
  · intro invalid
    apply List.find?_eq_none.mpr
    intro cert _ accepted
    exact invalid (check_sound D cert accepted)

theorem search_complete (D : Data) (valid : ResultValid D) :
    ∃ cert, search D = some cert := by
  cases found : search D with
  | none => exact False.elim ((search_none_iff D).mp found valid)
  | some cert => exact ⟨cert,rfl⟩

theorem search_some_iff (D : Data) : (∃ cert, search D = some cert) ↔ ResultValid D := by
  constructor
  · rintro ⟨cert,found⟩
    exact search_sound D cert found
  · exact search_complete D

def searchCheck (D : Data) : Bool := (search D).isSome

theorem searchCheck_sound (D : Data) (accepted : searchCheck D = true) : ResultValid D := by
  cases found : search D with
  | none => simp [searchCheck,found] at accepted
  | some cert => exact search_sound D cert found

/-- Users of the reference search provide only the exact input and output
already stored in Data. Evaluation is reduced in the proof kernel. -/
macro "filtered_extension_search" : tactic => `(tactic|
  exact FilteredExtensionCertificateCompleteness.searchCheck_sound _ (by decide +kernel))

#print axioms mem_allCertificates
#print axioms search_accepted
#print axioms search_sound
#print axioms search_none_iff
#print axioms search_complete
#print axioms search_some_iff
#print axioms searchCheck_sound
end FilteredExtensionCertificateCompleteness
