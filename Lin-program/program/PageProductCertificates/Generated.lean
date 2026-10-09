import PageProductCertificates.Import
namespace PageProductCertificates.Generated
open LinProgramCertificates
def h0h1 : Wire := page_product% "PageProductCertificates/actual1.json"
def h0fourth : Wire := page_product% "PageProductCertificates/actual2.json"
theorem first_valid : h0h1.Valid := by lin_cert using ()
theorem second_valid : h0fourth.Valid := by lin_cert using ()
def corrupt : Wire := { h0fourth with leftProjector := [false] }
example : wireCheck corrupt = false := by decide
example : diagnose corrupt = some "left.projector[0,0]" := by decide
#print axioms first_valid
#print axioms second_valid
end PageProductCertificates.Generated
