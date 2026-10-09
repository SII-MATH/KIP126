import GenericComponentT8.Data
import ExtComplexCertificates.GenericComponentExactness
namespace GenericComponentT8.Batch03
open ExtComplexCertificates.GenericFreeComplex
set_option maxRecDepth 100000
set_option maxHeartbeats 0
def component27 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 28
theorem exact27 : ComponentExact bundle.data 3 0 := checkExactComponent_sound _ component27 (by decide)
def component28 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 29
theorem exact28 : ComponentExact bundle.data 3 1 := checkExactComponent_sound _ component28 (by decide)
def component29 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 30
theorem exact29 : ComponentExact bundle.data 3 2 := checkExactComponent_sound _ component29 (by decide)
def component30 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 31
theorem exact30 : ComponentExact bundle.data 3 3 := checkExactComponent_sound _ component30 (by decide)
def component31 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 32
theorem exact31 : ComponentExact bundle.data 3 4 := checkExactComponent_sound _ component31 (by decide)
def component32 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 33
theorem exact32 : ComponentExact bundle.data 3 5 := checkExactComponent_sound _ component32 (by decide)
def component33 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 34
theorem exact33 : ComponentExact bundle.data 3 6 := checkExactComponent_sound _ component33 (by decide)
def component34 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 35
theorem exact34 : ComponentExact bundle.data 3 7 := checkExactComponent_sound _ component34 (by decide)
def component35 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 36
theorem exact35 : ComponentExact bundle.data 3 8 := checkExactComponent_sound _ component35 (by decide)
end GenericComponentT8.Batch03
