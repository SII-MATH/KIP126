import DerivedMapCertificates.Import
namespace DerivedMapCertificates.Counterexample
open LinearCertificates LinProgramCertificates
/-- Actual degree (0,0) -> (1,1) multiplication by 2. -/
def first : FactorWire := derived_factor% "DerivedMapCertificates/data/00104.json"
/-- Actual degree (1,1) -> (3,17) multiplication by sigma squared. -/
def second : FactorWire := derived_factor% "DerivedMapCertificates/data/02669.json"
theorem first_valid : first.Valid := by lin_cert using ()
theorem second_valid : second.Valid := by lin_cert using ()
/-- The E2 composite is nonzero. The upstream zero claim is not an E2 equation. -/
theorem two_sigma_squared_E2_nonzero :
    eval second.algebra.mat (eval first.algebra.mat (fun _ => true)) ≠ zero := by
  decide
end DerivedMapCertificates.Counterexample
