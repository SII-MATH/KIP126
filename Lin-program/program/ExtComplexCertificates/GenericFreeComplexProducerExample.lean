import ExtComplexCertificates.GenericFreeComplexImport

namespace ExtComplexCertificates.GenericFreeComplex

set_option maxRecDepth 100000
set_option maxHeartbeats 0

def producedT4 : Wire := generic_complex_bundle% "GenericFreeComplexProducer/actual_t4.json"

theorem producedT4_valid : producedT4.Valid := by lin_cert using ()

theorem producedT4_square_zero :
    (differential producedT4.data).comp (differential producedT4.data) = 0 :=
  producedT4_valid.2.2.2.2.2.2.2

#print axioms producedT4_valid
#print axioms producedT4_square_zero
end ExtComplexCertificates.GenericFreeComplex
