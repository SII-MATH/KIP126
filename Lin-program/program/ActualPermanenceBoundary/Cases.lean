import ActualPermanenceBoundary.Basic
import Fact762PageCertificates.Survivor
import Fact763PageCertificates.Survivor
import Fact721PageCertificates.First
import Fact721PageCertificates.Second

namespace ActualPermanenceBoundary
open LinearCertificates PageTransitionCertificates SemanticTrajectoryCertificates
open PermanentCycleCertificates

namespace Fact762

def stage : Stage := ⟨Fact762PageCertificates.wire, List.ofFn Fact762PageCertificates.target⟩

theorem stage_vector : stage.vector = Fact762PageCertificates.target := by
  have h : ∀ i, stage.vector i = Fact762PageCertificates.target i := by decide
  exact funext h

theorem checked : checkStage stage = true := by decide

def certificate (s : System) (x : s.Page 0) (c : InitialCoordinates s stage)
    (equations : c.page.Meaning) (named : c.current x = Fact762PageCertificates.target)
    (tail : TailVanishing s 1) : Certificate s x :=
  initialCertificate x c equations (named.trans stage_vector.symm) tail

theorem actual_d2_good (s : System) (x : s.Page 0) (c : InitialCoordinates s stage)
    (equations : c.page.Meaning) (named : c.current x = Fact762PageCertificates.target) :
    s.Good 0 x :=
  initial_good x c equations (named.trans stage_vector.symm) checked

/-- The caller must prove the full tail, beginning at Adams page 3. -/
theorem conditional_permanence (s : System) (x : s.Page 0)
    (c : InitialCoordinates s stage) (equations : c.page.Meaning)
    (named : c.current x = Fact762PageCertificates.target) (tail : TailVanishing s 1) :
    s.Permanent x := by
  permanent_cert using (certificate s x c equations named tail)

#print axioms actual_d2_good
#print axioms conditional_permanence
end Fact762

namespace Fact763

def stage : Stage := ⟨Fact763PageCertificates.wire, List.ofFn Fact763PageCertificates.target⟩

theorem stage_vector : stage.vector = Fact763PageCertificates.target := by
  have h : ∀ i, stage.vector i = Fact763PageCertificates.target i := by decide
  exact funext h

theorem checked : checkStage stage = true := by decide

def certificate (s : System) (x : s.Page 0) (c : InitialCoordinates s stage)
    (equations : c.page.Meaning) (named : c.current x = Fact763PageCertificates.target)
    (tail : TailVanishing s 1) : Certificate s x :=
  initialCertificate x c equations (named.trans stage_vector.symm) tail

theorem actual_d2_good (s : System) (x : s.Page 0) (c : InitialCoordinates s stage)
    (equations : c.page.Meaning) (named : c.current x = Fact763PageCertificates.target) :
    s.Good 0 x :=
  initial_good x c equations (named.trans stage_vector.symm) checked

/-- The caller must prove the full tail, beginning at Adams page 3. -/
theorem conditional_permanence (s : System) (x : s.Page 0)
    (c : InitialCoordinates s stage) (equations : c.page.Meaning)
    (named : c.current x = Fact763PageCertificates.target) (tail : TailVanishing s 1) :
    s.Permanent x := by
  permanent_cert using (certificate s x c equations named tail)

#print axioms actual_d2_good
#print axioms conditional_permanence
end Fact763

namespace Fact721First

def stage : Stage := ⟨Fact721PageCertificates.First.wire, List.ofFn Fact721PageCertificates.First.target⟩

theorem stage_vector : stage.vector = Fact721PageCertificates.First.target := by
  have h : ∀ i, stage.vector i = Fact721PageCertificates.First.target i := by decide
  exact funext h

theorem checked : checkStage stage = true := by decide

def certificate (s : System) (x : s.Page 0) (c : InitialCoordinates s stage)
    (equations : c.page.Meaning) (named : c.current x = Fact721PageCertificates.First.target)
    (tail : TailVanishing s 1) : Certificate s x :=
  initialCertificate x c equations (named.trans stage_vector.symm) tail

theorem actual_d2_good (s : System) (x : s.Page 0) (c : InitialCoordinates s stage)
    (equations : c.page.Meaning) (named : c.current x = Fact721PageCertificates.First.target) :
    s.Good 0 x :=
  initial_good x c equations (named.trans stage_vector.symm) checked

/-- The caller must prove the full tail, beginning at Adams page 3. -/
theorem conditional_permanence (s : System) (x : s.Page 0)
    (c : InitialCoordinates s stage) (equations : c.page.Meaning)
    (named : c.current x = Fact721PageCertificates.First.target) (tail : TailVanishing s 1) :
    s.Permanent x := by
  permanent_cert using (certificate s x c equations named tail)

#print axioms actual_d2_good
#print axioms conditional_permanence
end Fact721First

namespace Fact721Second

def stage : Stage := ⟨Fact721PageCertificates.Second.wire, List.ofFn Fact721PageCertificates.Second.target⟩

theorem stage_vector : stage.vector = Fact721PageCertificates.Second.target := by
  have h : ∀ i, stage.vector i = Fact721PageCertificates.Second.target i := by decide
  exact funext h

theorem checked : checkStage stage = true := by decide

def certificate (s : System) (x : s.Page 0) (c : InitialCoordinates s stage)
    (equations : c.page.Meaning) (named : c.current x = Fact721PageCertificates.Second.target)
    (tail : TailVanishing s 1) : Certificate s x :=
  initialCertificate x c equations (named.trans stage_vector.symm) tail

theorem actual_d2_good (s : System) (x : s.Page 0) (c : InitialCoordinates s stage)
    (equations : c.page.Meaning) (named : c.current x = Fact721PageCertificates.Second.target) :
    s.Good 0 x :=
  initial_good x c equations (named.trans stage_vector.symm) checked

/-- The caller must prove the full tail, beginning at Adams page 3. -/
theorem conditional_permanence (s : System) (x : s.Page 0)
    (c : InitialCoordinates s stage) (equations : c.page.Meaning)
    (named : c.current x = Fact721PageCertificates.Second.target) (tail : TailVanishing s 1) :
    s.Permanent x := by
  permanent_cert using (certificate s x c equations named tail)

#print axioms actual_d2_good
#print axioms conditional_permanence
end Fact721Second

end ActualPermanenceBoundary
