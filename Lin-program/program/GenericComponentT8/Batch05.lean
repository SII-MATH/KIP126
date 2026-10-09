import GenericComponentT8.Data
import ExtComplexCertificates.GenericComponentExactness
namespace GenericComponentT8.Batch05
open ExtComplexCertificates.GenericFreeComplex
set_option maxRecDepth 100000
set_option maxHeartbeats 0
def component45 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 46
theorem exact45 : ComponentExact bundle.data 5 0 := checkExactComponent_sound _ component45 (by decide)
def component46 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 47
theorem exact46 : ComponentExact bundle.data 5 1 := checkExactComponent_sound _ component46 (by decide)
def component47 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 48
theorem exact47 : ComponentExact bundle.data 5 2 := checkExactComponent_sound _ component47 (by decide)
def component48 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 49
theorem exact48 : ComponentExact bundle.data 5 3 := checkExactComponent_sound _ component48 (by decide)
def component49 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 50
theorem exact49 : ComponentExact bundle.data 5 4 := checkExactComponent_sound _ component49 (by decide)
def component50 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 51
theorem exact50 : ComponentExact bundle.data 5 5 := checkExactComponent_sound _ component50 (by decide)
def component51 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 52
theorem exact51 : ComponentExact bundle.data 5 6 := checkExactComponent_sound _ component51 (by decide)
def component52 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 53
theorem exact52 : ComponentExact bundle.data 5 7 := checkExactComponent_sound _ component52 (by decide)
def component53 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_t8_components.jsonl", 54
theorem exact53 : ComponentExact bundle.data 5 8 := checkExactComponent_sound _ component53 (by decide)
end GenericComponentT8.Batch05
