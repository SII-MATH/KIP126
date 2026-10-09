import GenericComponentT8.Data
import ExtComplexCertificates.GenericComponentExactness
namespace GenericComponentT8.Batch06
open ExtComplexCertificates.GenericFreeComplex
set_option maxRecDepth 100000
set_option maxHeartbeats 0
def component54 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 55
theorem exact54 : ComponentExact bundle.data 6 0 := checkExactComponent_sound _ component54 (by decide)
def component55 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 56
theorem exact55 : ComponentExact bundle.data 6 1 := checkExactComponent_sound _ component55 (by decide)
def component56 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 57
theorem exact56 : ComponentExact bundle.data 6 2 := checkExactComponent_sound _ component56 (by decide)
def component57 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 58
theorem exact57 : ComponentExact bundle.data 6 3 := checkExactComponent_sound _ component57 (by decide)
def component58 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 59
theorem exact58 : ComponentExact bundle.data 6 4 := checkExactComponent_sound _ component58 (by decide)
def component59 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 60
theorem exact59 : ComponentExact bundle.data 6 5 := checkExactComponent_sound _ component59 (by decide)
def component60 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 61
theorem exact60 : ComponentExact bundle.data 6 6 := checkExactComponent_sound _ component60 (by decide)
def component61 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 62
theorem exact61 : ComponentExact bundle.data 6 7 := checkExactComponent_sound _ component61 (by decide)
def component62 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 63
theorem exact62 : ComponentExact bundle.data 6 8 := checkExactComponent_sound _ component62 (by decide)
end GenericComponentT8.Batch06
