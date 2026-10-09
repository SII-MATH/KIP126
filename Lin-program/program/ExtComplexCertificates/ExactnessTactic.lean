import ExtComplexCertificates.FiniteExactness

namespace ExtComplexCertificates.ActualResolution
open LinearCertificates ResolutionCertificates

def RawExactClaim (rows : List RawGenerator) (s t : Nat) : Prop :=
  ExactAt (augmentedOutgoing rows s t) (freeDifferential rows s t)

instance (rows : List RawGenerator) (s t : Nat) :
    LinProgramCertificates.CertificateVerifier (RawExactClaim rows s t) where
  Cert := WireContraction
  check := checkRawExact rows s t
  sound := checkRawExact_sound rows s t

def smallWitness : WireContraction :=
  resolution_bundle% "ExtComplexCertificates/actual-s0/exactness/exact-1-1.json"

example : RawExactClaim actualRows 1 1 := by lin_cert using smallWitness

example : checkRawExact actualRows 1 1 {smallWitness with down := [false]} = false := by decide

example : checkRawExact (actualRows.filter fun r => r.id != 524288) 1 1 smallWitness = false := by decide

#print axioms checkRawExact_sound

end ExtComplexCertificates.ActualResolution
