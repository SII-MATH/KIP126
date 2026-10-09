import ExtComplexCertificates.GenericCheckDecomposition
namespace GenericComponentT8.Sliced
open ExtComplexCertificates.GenericFreeComplex
set_option maxRecDepth 100000
set_option maxHeartbeats 0
def bundle : Wire := generic_complex_bundle% "GenericFreeComplexProducer/actual_t8.json"
end GenericComponentT8.Sliced
