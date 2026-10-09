import GenericComponentT8.Data
import ExtComplexCertificates.GenericComponentExactness
namespace GenericComponentT8.Batch08
open ExtComplexCertificates.GenericFreeComplex
set_option maxRecDepth 100000
set_option maxHeartbeats 0
def component72 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 73
theorem exact72 : ComponentExact bundle.data 8 0 := checkExactComponent_sound _ component72 (by decide)
def component73 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 74
theorem exact73 : ComponentExact bundle.data 8 1 := checkExactComponent_sound _ component73 (by decide)
def component74 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 75
theorem exact74 : ComponentExact bundle.data 8 2 := checkExactComponent_sound _ component74 (by decide)
def component75 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 76
theorem exact75 : ComponentExact bundle.data 8 3 := checkExactComponent_sound _ component75 (by decide)
def component76 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 77
theorem exact76 : ComponentExact bundle.data 8 4 := checkExactComponent_sound _ component76 (by decide)
def component77 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 78
theorem exact77 : ComponentExact bundle.data 8 5 := checkExactComponent_sound _ component77 (by decide)
def component78 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 79
theorem exact78 : ComponentExact bundle.data 8 6 := checkExactComponent_sound _ component78 (by decide)
def component79 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 80
theorem exact79 : ComponentExact bundle.data 8 7 := checkExactComponent_sound _ component79 (by decide)
def component80 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 81
theorem exact80 : ComponentExact bundle.data 8 8 := checkExactComponent_sound _ component80 (by decide)
end GenericComponentT8.Batch08
