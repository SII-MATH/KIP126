import PropagationCertificates.Tactic

namespace PropagationCertificates

def inputFact : Fact := ⟨.atom 0, .atom 1⟩
def squareFact : Fact := conclusion (.leibniz inputFact inputFact)
def squareCertificate : List Step := [.external inputFact, .leibniz inputFact inputFact]

example {A : Type} [Semiring A] (m : Model A) (h : Valid m inputFact) :
    Valid m squareFact := by
  have hp : ∀ f ∈ [inputFact], Valid m f := by
    intro f hf
    simp only [List.mem_singleton] at hf
    subst f
    exact h
  propagation_cert using squareCertificate model m premises hp

-- A fact used before it is established cannot be replayed.
example : check [inputFact] [.leibniz inputFact inputFact, .external inputFact]
    squareFact = false := by decide

-- An external record is not accepted just because the record requests it.
example : check [] [.external inputFact] inputFact = false := by decide

end PropagationCertificates
