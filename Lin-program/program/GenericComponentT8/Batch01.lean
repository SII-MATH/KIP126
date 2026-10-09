import GenericComponentT8.Data
import ExtComplexCertificates.GenericComponentExactness
namespace GenericComponentT8.Batch01
open ExtComplexCertificates.GenericFreeComplex
set_option maxRecDepth 100000
set_option maxHeartbeats 0
def component9 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 10
theorem exact9 : ComponentExact bundle.data 1 0 := checkExactComponent_sound _ component9 (by decide)
def component10 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 11
theorem exact10 : ComponentExact bundle.data 1 1 := checkExactComponent_sound _ component10 (by decide)
def component11 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 12
theorem exact11 : ComponentExact bundle.data 1 2 := checkExactComponent_sound _ component11 (by decide)
def component12 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 13
theorem exact12 : ComponentExact bundle.data 1 3 := checkExactComponent_sound _ component12 (by decide)
def component13 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 14
theorem exact13 : ComponentExact bundle.data 1 4 := checkExactComponent_sound _ component13 (by decide)
def component14 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 15
theorem exact14 : ComponentExact bundle.data 1 5 := checkExactComponent_sound _ component14 (by decide)
def component15 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 16
theorem exact15 : ComponentExact bundle.data 1 6 := checkExactComponent_sound _ component15 (by decide)
def component16 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 17
theorem exact16 : ComponentExact bundle.data 1 7 := checkExactComponent_sound _ component16 (by decide)
def component17 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 18
theorem exact17 : ComponentExact bundle.data 1 8 := checkExactComponent_sound _ component17 (by decide)
end GenericComponentT8.Batch01
