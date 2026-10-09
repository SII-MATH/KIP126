import GenericComponentT8.Data
import ExtComplexCertificates.GenericComponentExactness
namespace GenericComponentT8.Batch07
open ExtComplexCertificates.GenericFreeComplex
set_option maxRecDepth 100000
set_option maxHeartbeats 0
def component63 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 64
theorem exact63 : ComponentExact bundle.data 7 0 := checkExactComponent_sound _ component63 (by decide)
def component64 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 65
theorem exact64 : ComponentExact bundle.data 7 1 := checkExactComponent_sound _ component64 (by decide)
def component65 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 66
theorem exact65 : ComponentExact bundle.data 7 2 := checkExactComponent_sound _ component65 (by decide)
def component66 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 67
theorem exact66 : ComponentExact bundle.data 7 3 := checkExactComponent_sound _ component66 (by decide)
def component67 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 68
theorem exact67 : ComponentExact bundle.data 7 4 := checkExactComponent_sound _ component67 (by decide)
def component68 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 69
theorem exact68 : ComponentExact bundle.data 7 5 := checkExactComponent_sound _ component68 (by decide)
def component69 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 70
theorem exact69 : ComponentExact bundle.data 7 6 := checkExactComponent_sound _ component69 (by decide)
def component70 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 71
theorem exact70 : ComponentExact bundle.data 7 7 := checkExactComponent_sound _ component70 (by decide)
def component71 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 72
theorem exact71 : ComponentExact bundle.data 7 8 := checkExactComponent_sound _ component71 (by decide)
end GenericComponentT8.Batch07
