import GenericComponentT8.Data
import ExtComplexCertificates.GenericComponentExactness
namespace GenericComponentT8.Batch00
open ExtComplexCertificates.GenericFreeComplex
set_option maxRecDepth 100000
set_option maxHeartbeats 0
def component0 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 1
theorem reject0 : checkExactComponent bundle.data component0 = false := by decide
def component1 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 2
theorem exact1 : ComponentExact bundle.data 0 1 := checkExactComponent_sound _ component1 (by decide)
def component2 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 3
theorem exact2 : ComponentExact bundle.data 0 2 := checkExactComponent_sound _ component2 (by decide)
def component3 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 4
theorem exact3 : ComponentExact bundle.data 0 3 := checkExactComponent_sound _ component3 (by decide)
def component4 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 5
theorem exact4 : ComponentExact bundle.data 0 4 := checkExactComponent_sound _ component4 (by decide)
def component5 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 6
theorem exact5 : ComponentExact bundle.data 0 5 := checkExactComponent_sound _ component5 (by decide)
def component6 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 7
theorem exact6 : ComponentExact bundle.data 0 6 := checkExactComponent_sound _ component6 (by decide)
def component7 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 8
theorem exact7 : ComponentExact bundle.data 0 7 := checkExactComponent_sound _ component7 (by decide)
def component8 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 9
theorem exact8 : ComponentExact bundle.data 0 8 := checkExactComponent_sound _ component8 (by decide)
end GenericComponentT8.Batch00
