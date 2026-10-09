import GenericComponentT8.Data
import ExtComplexCertificates.GenericComponentExactness
namespace GenericComponentT8.Batch04
open ExtComplexCertificates.GenericFreeComplex
set_option maxRecDepth 100000
set_option maxHeartbeats 0
def component36 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 37
theorem exact36 : ComponentExact bundle.data 4 0 := checkExactComponent_sound _ component36 (by decide)
def component37 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 38
theorem exact37 : ComponentExact bundle.data 4 1 := checkExactComponent_sound _ component37 (by decide)
def component38 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 39
theorem exact38 : ComponentExact bundle.data 4 2 := checkExactComponent_sound _ component38 (by decide)
def component39 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 40
theorem exact39 : ComponentExact bundle.data 4 3 := checkExactComponent_sound _ component39 (by decide)
def component40 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 41
theorem exact40 : ComponentExact bundle.data 4 4 := checkExactComponent_sound _ component40 (by decide)
def component41 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 42
theorem exact41 : ComponentExact bundle.data 4 5 := checkExactComponent_sound _ component41 (by decide)
def component42 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 43
theorem exact42 : ComponentExact bundle.data 4 6 := checkExactComponent_sound _ component42 (by decide)
def component43 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 44
theorem exact43 : ComponentExact bundle.data 4 7 := checkExactComponent_sound _ component43 (by decide)
def component44 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 45
theorem exact44 : ComponentExact bundle.data 4 8 := checkExactComponent_sound _ component44 (by decide)
end GenericComponentT8.Batch04
