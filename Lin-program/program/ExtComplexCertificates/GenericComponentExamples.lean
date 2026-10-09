import ExtComplexCertificates.GenericComponentExactness
import ExtComplexCertificates.GenericFreeComplexProducerExample

namespace ExtComplexCertificates.GenericFreeComplex
set_option maxRecDepth 100000
set_option maxHeartbeats 0
def component1 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_components.jsonl", 1
example : checkExactComponent producedT4.data component1 = false := by decide
def component2 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_components.jsonl", 2
theorem component2_exact : ComponentExact producedT4.data component2.s component2.t :=
  checkExactComponent_sound _ _ (by decide)
def component3 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_components.jsonl", 3
theorem component3_exact : ComponentExact producedT4.data component3.s component3.t :=
  checkExactComponent_sound _ _ (by decide)
def component4 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_components.jsonl", 4
theorem component4_exact : ComponentExact producedT4.data component4.s component4.t :=
  checkExactComponent_sound _ _ (by decide)
def component5 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_components.jsonl", 5
theorem component5_exact : ComponentExact producedT4.data component5.s component5.t :=
  checkExactComponent_sound _ _ (by decide)
def component6 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_components.jsonl", 6
theorem component6_exact : ComponentExact producedT4.data component6.s component6.t :=
  checkExactComponent_sound _ _ (by decide)
def component7 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_components.jsonl", 7
theorem component7_exact : ComponentExact producedT4.data component7.s component7.t :=
  checkExactComponent_sound _ _ (by decide)
def component8 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_components.jsonl", 8
theorem component8_exact : ComponentExact producedT4.data component8.s component8.t :=
  checkExactComponent_sound _ _ (by decide)
def component9 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_components.jsonl", 9
theorem component9_exact : ComponentExact producedT4.data component9.s component9.t :=
  checkExactComponent_sound _ _ (by decide)
def component10 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_components.jsonl", 10
theorem component10_exact : ComponentExact producedT4.data component10.s component10.t :=
  checkExactComponent_sound _ _ (by decide)
def component11 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_components.jsonl", 11
theorem component11_exact : ComponentExact producedT4.data component11.s component11.t :=
  checkExactComponent_sound _ _ (by decide)
def component12 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_components.jsonl", 12
theorem component12_exact : ComponentExact producedT4.data component12.s component12.t :=
  checkExactComponent_sound _ _ (by decide)
def component13 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_components.jsonl", 13
theorem component13_exact : ComponentExact producedT4.data component13.s component13.t :=
  checkExactComponent_sound _ _ (by decide)
def component14 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_components.jsonl", 14
theorem component14_exact : ComponentExact producedT4.data component14.s component14.t :=
  checkExactComponent_sound _ _ (by decide)
def component15 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_components.jsonl", 15
theorem component15_exact : ComponentExact producedT4.data component15.s component15.t :=
  checkExactComponent_sound _ _ (by decide)
def component16 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_components.jsonl", 16
theorem component16_exact : ComponentExact producedT4.data component16.s component16.t :=
  checkExactComponent_sound _ _ (by decide)
def component17 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_components.jsonl", 17
theorem component17_exact : ComponentExact producedT4.data component17.s component17.t :=
  checkExactComponent_sound _ _ (by decide)
def component18 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_components.jsonl", 18
theorem component18_exact : ComponentExact producedT4.data component18.s component18.t :=
  checkExactComponent_sound _ _ (by decide)
def component19 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_components.jsonl", 19
theorem component19_exact : ComponentExact producedT4.data component19.s component19.t :=
  checkExactComponent_sound _ _ (by decide)
def component20 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_components.jsonl", 20
theorem component20_exact : ComponentExact producedT4.data component20.s component20.t :=
  checkExactComponent_sound _ _ (by decide)
def component21 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_components.jsonl", 21
theorem component21_exact : ComponentExact producedT4.data component21.s component21.t :=
  checkExactComponent_sound _ _ (by decide)
def component22 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_components.jsonl", 22
theorem component22_exact : ComponentExact producedT4.data component22.s component22.t :=
  checkExactComponent_sound _ _ (by decide)
def component23 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_components.jsonl", 23
theorem component23_exact : ComponentExact producedT4.data component23.s component23.t :=
  checkExactComponent_sound _ _ (by decide)
def component24 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_components.jsonl", 24
theorem component24_exact : ComponentExact producedT4.data component24.s component24.t :=
  checkExactComponent_sound _ _ (by decide)
def component25 : WireComponent := generic_component% "GenericFreeComplexProducer/actual_components.jsonl", 25
theorem component25_exact : ComponentExact producedT4.data component25.s component25.t :=
  checkExactComponent_sound _ _ (by decide)
#print axioms component15_exact
end ExtComplexCertificates.GenericFreeComplex
