import GenericComponentT8.Data
import ExtComplexCertificates.GenericComponentExactness
namespace GenericComponentT8.Batch02
open ExtComplexCertificates.GenericFreeComplex
set_option maxRecDepth 100000
set_option maxHeartbeats 0
def component18 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 19
theorem exact18 : ComponentExact bundle.data 2 0 := checkExactComponent_sound _ component18 (by decide)
def component19 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 20
theorem exact19 : ComponentExact bundle.data 2 1 := checkExactComponent_sound _ component19 (by decide)
def component20 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 21
theorem exact20 : ComponentExact bundle.data 2 2 := checkExactComponent_sound _ component20 (by decide)
def component21 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 22
theorem exact21 : ComponentExact bundle.data 2 3 := checkExactComponent_sound _ component21 (by decide)
def component22 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 23
theorem exact22 : ComponentExact bundle.data 2 4 := checkExactComponent_sound _ component22 (by decide)
def component23 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 24
theorem exact23 : ComponentExact bundle.data 2 5 := checkExactComponent_sound _ component23 (by decide)
def component24 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 25
theorem exact24 : ComponentExact bundle.data 2 6 := checkExactComponent_sound _ component24 (by decide)
def component25 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 26
theorem exact25 : ComponentExact bundle.data 2 7 := checkExactComponent_sound _ component25 (by decide)
def component26 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 27
theorem exact26 : ComponentExact bundle.data 2 8 := checkExactComponent_sound _ component26 (by decide)
end GenericComponentT8.Batch02
