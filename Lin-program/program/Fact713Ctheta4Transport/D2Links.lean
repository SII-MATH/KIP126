import Fact713Ctheta4Transport.D2Data
import Fact713Ctheta4Transport.Comparison
import ModuleToModuleCertificates.Matrix
set_option maxRecDepth 8192
set_option maxHeartbeats 8000000
namespace Fact713Ctheta4Transport.D2Links
open LinearCertificates PageTransitionCertificates NamedElementCertificates ModuleToModuleCertificates ModuleExpressions Comparison
def d12_166 : Matrix 1 6 := matrixOf 1 6 [false,false,false,false,false,false]
def d12_166_basis : Fin 1 → Expression 2 := fun i => toExpression 2 (([[[],[[0,407]]]] : List (List Polynomial))[i.val]?.getD [])
theorem d12_166_column0 : decode d12_166_basis (fun i => d12_166 i ⟨0,by decide⟩) = toExpression 2 D2Data.b8279.reduction.output := by decide
theorem d12_166_column1 : decode d12_166_basis (fun i => d12_166 i ⟨1,by decide⟩) = toExpression 2 D2Data.b8280.reduction.output := by decide
theorem d12_166_column2 : decode d12_166_basis (fun i => d12_166 i ⟨2,by decide⟩) = toExpression 2 D2Data.b8281.reduction.output := by decide
theorem d12_166_column3 : decode d12_166_basis (fun i => d12_166 i ⟨3,by decide⟩) = toExpression 2 D2Data.b8282.reduction.output := by decide
theorem d12_166_column4 : decode d12_166_basis (fun i => d12_166 i ⟨4,by decide⟩) = toExpression 2 D2Data.b8283.reduction.output := by decide
theorem d12_166_column5 : decode d12_166_basis (fun i => d12_166 i ⟨5,by decide⟩) = toExpression 2 D2Data.b8284.reduction.output := by decide
#print axioms d12_166_column0
def d14_167 : Matrix 6 1 := matrixOf 6 1 [false,false,false,false,false,false]
def d14_167_basis : Fin 6 → Expression 2 := fun i => toExpression 2 (([[[],[[422]]],[[],[[8,261]]],[[],[[0,7,267]]],[[[8,8,367]],[]],[[[3,650]],[]],[[[1,18,385]],[]]] : List (List Polynomial))[i.val]?.getD [])
theorem d14_167_column0 : decode d14_167_basis (fun i => d14_167 i ⟨0,by decide⟩) = toExpression 2 D2Data.b8439.reduction.output := by decide
#print axioms d14_167_column0
def d15_168 : Matrix 8 7 := matrixOf 8 7 [false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false]
def d15_168_basis : Fin 8 → Expression 2 := fun i => toExpression 2 (([[[],[[436]]],[[],[[23,188]]],[[],[[0,422]]],[[],[[0,0,7,267]]],[[[75,188]],[]],[[[1,1,708]],[]],[[[0,8,8,367]],[]],[[[0,3,650]],[]]] : List (List Polynomial))[i.val]?.getD [])
theorem d15_168_column0 : decode d15_168_basis (fun i => d15_168 i ⟨0,by decide⟩) = toExpression 2 D2Data.b8629.reduction.output := by decide
theorem d15_168_column1 : decode d15_168_basis (fun i => d15_168 i ⟨1,by decide⟩) = toExpression 2 D2Data.b8630.reduction.output := by decide
theorem d15_168_column2 : decode d15_168_basis (fun i => d15_168 i ⟨2,by decide⟩) = toExpression 2 D2Data.b8631.reduction.output := by decide
theorem d15_168_column3 : decode d15_168_basis (fun i => d15_168 i ⟨3,by decide⟩) = toExpression 2 D2Data.b8632.reduction.output := by decide
theorem d15_168_column4 : decode d15_168_basis (fun i => d15_168 i ⟨4,by decide⟩) = toExpression 2 D2Data.b8633.reduction.output := by decide
theorem d15_168_column5 : decode d15_168_basis (fun i => d15_168 i ⟨5,by decide⟩) = toExpression 2 D2Data.b8634.reduction.output := by decide
theorem d15_168_column6 : decode d15_168_basis (fun i => d15_168 i ⟨6,by decide⟩) = toExpression 2 D2Data.b8635.reduction.output := by decide
#print axioms d15_168_column0
def d16_169 : Matrix 4 6 := matrixOf 4 6 [false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false]
def d16_169_basis : Fin 4 → Expression 2 := fun i => toExpression 2 (([[[],[[13,13,13,75]]],[[],[[0,23,188]]],[[],[[0,0,422]]],[[[761]],[]]] : List (List Polynomial))[i.val]?.getD [])
theorem d16_169_column0 : decode d16_169_basis (fun i => d16_169 i ⟨0,by decide⟩) = toExpression 2 D2Data.b8813.reduction.output := by decide
theorem d16_169_column1 : decode d16_169_basis (fun i => d16_169 i ⟨1,by decide⟩) = toExpression 2 D2Data.b8814.reduction.output := by decide
theorem d16_169_column2 : decode d16_169_basis (fun i => d16_169 i ⟨2,by decide⟩) = toExpression 2 D2Data.b8815.reduction.output := by decide
theorem d16_169_column3 : decode d16_169_basis (fun i => d16_169 i ⟨3,by decide⟩) = toExpression 2 D2Data.b8816.reduction.output := by decide
theorem d16_169_column4 : decode d16_169_basis (fun i => d16_169 i ⟨4,by decide⟩) = toExpression 2 D2Data.b8817.reduction.output := by decide
theorem d16_169_column5 : decode d16_169_basis (fun i => d16_169 i ⟨5,by decide⟩) = toExpression 2 D2Data.b8818.reduction.output := by decide
#print axioms d16_169_column0
def d17_169 : Matrix 4 8 := matrixOf 4 8 [true,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,true,false,false,false,false,false,false,false,false,false,false,false,false,false]
def d17_169_basis : Fin 4 → Expression 2 := fun i => toExpression 2 (([[[],[[0,22,188]]],[[],[[0,8,267]]],[[],[[0,0,17,209]]],[[[760]],[]]] : List (List Polynomial))[i.val]?.getD [])
theorem d17_169_column0 : decode d17_169_basis (fun i => d17_169 i ⟨0,by decide⟩) = toExpression 2 D2Data.b8805.reduction.output := by decide
theorem d17_169_column1 : decode d17_169_basis (fun i => d17_169 i ⟨1,by decide⟩) = toExpression 2 D2Data.b8806.reduction.output := by decide
theorem d17_169_column2 : decode d17_169_basis (fun i => d17_169 i ⟨2,by decide⟩) = toExpression 2 D2Data.b8807.reduction.output := by decide
theorem d17_169_column3 : decode d17_169_basis (fun i => d17_169 i ⟨3,by decide⟩) = toExpression 2 D2Data.b8808.reduction.output := by decide
theorem d17_169_column4 : decode d17_169_basis (fun i => d17_169 i ⟨4,by decide⟩) = toExpression 2 D2Data.b8809.reduction.output := by decide
theorem d17_169_column5 : decode d17_169_basis (fun i => d17_169 i ⟨5,by decide⟩) = toExpression 2 D2Data.b8810.reduction.output := by decide
theorem d17_169_column6 : decode d17_169_basis (fun i => d17_169 i ⟨6,by decide⟩) = toExpression 2 D2Data.b8811.reduction.output := by decide
theorem d17_169_column7 : decode d17_169_basis (fun i => d17_169 i ⟨7,by decide⟩) = toExpression 2 D2Data.b8812.reduction.output := by decide
#print axioms d17_169_column0
def d18_170 : Matrix 6 4 := matrixOf 6 4 [false,false,false,false,false,false,false,false,false,true,true,false,false,false,false,false,false,false,false,false,false,false,false,false]
def d18_170_basis : Fin 6 → Expression 2 := fun i => toExpression 2 (([[[],[[455]]],[[],[[0,0,8,267]]],[[],[[0,0,0,17,209]]],[[[80,188]],[]],[[[17,475]],[]],[[[0,760]],[]]] : List (List Polynomial))[i.val]?.getD [])
theorem d18_170_column0 : decode d18_170_basis (fun i => d18_170 i ⟨0,by decide⟩) = toExpression 2 D2Data.b8983.reduction.output := by decide
theorem d18_170_column1 : decode d18_170_basis (fun i => d18_170 i ⟨1,by decide⟩) = toExpression 2 D2Data.b8984.reduction.output := by decide
theorem d18_170_column2 : decode d18_170_basis (fun i => d18_170 i ⟨2,by decide⟩) = toExpression 2 D2Data.b8985.reduction.output := by decide
theorem d18_170_column3 : decode d18_170_basis (fun i => d18_170 i ⟨3,by decide⟩) = toExpression 2 D2Data.b8986.reduction.output := by decide
#print axioms d18_170_column0
def d19_171 : Matrix 7 2 := matrixOf 7 2 [false,false,false,false,false,false,true,false,false,false,false,false,false,false]
def d19_171_basis : Fin 7 → Expression 2 := fun i => toExpression 2 (([[[],[[13,13,13,80]]],[[],[[1,447]]],[[],[[0,455]]],[[],[[0,0,0,0,17,209]]],[[[1,64,209]],[]],[[[0,17,475]],[]],[[[0,0,760]],[]]] : List (List Polynomial))[i.val]?.getD [])
theorem d19_171_column0 : decode d19_171_basis (fun i => d19_171 i ⟨0,by decide⟩) = toExpression 2 D2Data.b9187.reduction.output := by decide
theorem d19_171_column1 : decode d19_171_basis (fun i => d19_171 i ⟨1,by decide⟩) = toExpression 2 D2Data.b9188.reduction.output := by decide
#print axioms d19_171_column0
def d20_171 : Matrix 7 6 := matrixOf 7 6 [false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,true,false,true]
def d20_171_basis : Fin 7 → Expression 2 := fun i => toExpression 2 (([[[],[[471]]],[[],[[8,13,13,101]]],[[],[[0,454]]],[[[785]],[]],[[[8,69,147]],[]],[[[0,8,582]],[]],[[[0,0,64,209]],[]]] : List (List Polynomial))[i.val]?.getD [])
theorem d20_171_column0 : decode d20_171_basis (fun i => d20_171 i ⟨0,by decide⟩) = toExpression 2 D2Data.b9181.reduction.output := by decide
theorem d20_171_column1 : decode d20_171_basis (fun i => d20_171 i ⟨1,by decide⟩) = toExpression 2 D2Data.b9182.reduction.output := by decide
theorem d20_171_column2 : decode d20_171_basis (fun i => d20_171 i ⟨2,by decide⟩) = toExpression 2 D2Data.b9183.reduction.output := by decide
theorem d20_171_column3 : decode d20_171_basis (fun i => d20_171 i ⟨3,by decide⟩) = toExpression 2 D2Data.b9184.reduction.output := by decide
theorem d20_171_column4 : decode d20_171_basis (fun i => d20_171 i ⟨4,by decide⟩) = toExpression 2 D2Data.b9185.reduction.output := by decide
theorem d20_171_column5 : decode d20_171_basis (fun i => d20_171 i ⟨5,by decide⟩) = toExpression 2 D2Data.b9186.reduction.output := by decide
#print axioms d20_171_column0
def d21_172 : Matrix 5 7 := matrixOf 5 7 [false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true]
def d21_172_basis : Fin 5 → Expression 2 := fun i => toExpression 2 (([[[],[[0,471]]],[[],[[0,0,454]]],[[[8,8,423]],[]],[[[0,8,69,147]],[]],[[[0,0,0,64,209]],[]]] : List (List Polynomial))[i.val]?.getD [])
theorem d21_172_column0 : decode d21_172_basis (fun i => d21_172 i ⟨0,by decide⟩) = toExpression 2 D2Data.b9374.reduction.output := by decide
theorem d21_172_column1 : decode d21_172_basis (fun i => d21_172 i ⟨1,by decide⟩) = toExpression 2 D2Data.b9375.reduction.output := by decide
theorem d21_172_column2 : decode d21_172_basis (fun i => d21_172 i ⟨2,by decide⟩) = toExpression 2 D2Data.b9376.reduction.output := by decide
theorem d21_172_column3 : decode d21_172_basis (fun i => d21_172 i ⟨3,by decide⟩) = toExpression 2 D2Data.b9377.reduction.output := by decide
theorem d21_172_column4 : decode d21_172_basis (fun i => d21_172 i ⟨4,by decide⟩) = toExpression 2 D2Data.b9378.reduction.output := by decide
theorem d21_172_column5 : decode d21_172_basis (fun i => d21_172 i ⟨5,by decide⟩) = toExpression 2 D2Data.b9379.reduction.output := by decide
theorem d21_172_column6 : decode d21_172_basis (fun i => d21_172 i ⟨6,by decide⟩) = toExpression 2 D2Data.b9380.reduction.output := by decide
#print axioms d21_172_column0
def d22_173 : Matrix 7 4 := matrixOf 7 4 [false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true]
def d22_173_basis : Fin 7 → Expression 2 := fun i => toExpression 2 (([[[],[[8,9,194]]],[[[812]],[]],[[[811]],[]],[[[13,13,303]],[]],[[[8,13,13,212]],[]],[[[0,0,8,69,147]],[]],[[[0,0,0,0,64,209]],[]]] : List (List Polynomial))[i.val]?.getD [])
theorem d22_173_column0 : decode d22_173_basis (fun i => d22_173 i ⟨0,by decide⟩) = toExpression 2 D2Data.b9551.reduction.output := by decide
theorem d22_173_column1 : decode d22_173_basis (fun i => d22_173 i ⟨1,by decide⟩) = toExpression 2 D2Data.b9552.reduction.output := by decide
theorem d22_173_column2 : decode d22_173_basis (fun i => d22_173 i ⟨2,by decide⟩) = toExpression 2 D2Data.b9553.reduction.output := by decide
theorem d22_173_column3 : decode d22_173_basis (fun i => d22_173 i ⟨3,by decide⟩) = toExpression 2 D2Data.b9554.reduction.output := by decide
#print axioms d22_173_column0
def d24_174 : Matrix 4 7 := matrixOf 4 7 [true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,true,false,false,false,false]
def d24_174_basis : Fin 4 → Expression 2 := fun i => toExpression 2 (([[[],[[8,8,13,13,13,23]]],[[],[[8,8,8,8,89]]],[[[0,810]],[]],[[[0,0,797]],[]]] : List (List Polynomial))[i.val]?.getD [])
theorem d24_174_column0 : decode d24_174_basis (fun i => d24_174 i ⟨0,by decide⟩) = toExpression 2 D2Data.b9747.reduction.output := by decide
theorem d24_174_column1 : decode d24_174_basis (fun i => d24_174 i ⟨1,by decide⟩) = toExpression 2 D2Data.b9748.reduction.output := by decide
theorem d24_174_column2 : decode d24_174_basis (fun i => d24_174 i ⟨2,by decide⟩) = toExpression 2 D2Data.b9749.reduction.output := by decide
theorem d24_174_column3 : decode d24_174_basis (fun i => d24_174 i ⟨3,by decide⟩) = toExpression 2 D2Data.b9750.reduction.output := by decide
theorem d24_174_column4 : decode d24_174_basis (fun i => d24_174 i ⟨4,by decide⟩) = toExpression 2 D2Data.b9751.reduction.output := by decide
theorem d24_174_column5 : decode d24_174_basis (fun i => d24_174 i ⟨5,by decide⟩) = toExpression 2 D2Data.b9752.reduction.output := by decide
theorem d24_174_column6 : decode d24_174_basis (fun i => d24_174 i ⟨6,by decide⟩) = toExpression 2 D2Data.b9753.reduction.output := by decide
#print axioms d24_174_column0
theorem c14_167_2_outgoing_link : matrixOf c14_167_2.k c14_167_2.m c14_167_2.outgoing = d14_167 := by decide
theorem c14_167_2_incoming_link : matrixOf c14_167_2.m c14_167_2.n c14_167_2.incoming = d12_166 := by decide
theorem c17_169_2_outgoing_link : matrixOf c17_169_2.k c17_169_2.m c17_169_2.outgoing = d17_169 := by decide
theorem c17_169_2_incoming_link : matrixOf c17_169_2.m c17_169_2.n c17_169_2.incoming = d15_168 := by decide
theorem c18_170_2_outgoing_link : matrixOf c18_170_2.k c18_170_2.m c18_170_2.outgoing = d18_170 := by decide
theorem c18_170_2_incoming_link : matrixOf c18_170_2.m c18_170_2.n c18_170_2.incoming = d16_169 := by decide
theorem c20_171_2_outgoing_link : matrixOf c20_171_2.k c20_171_2.m c20_171_2.outgoing = d20_171 := by decide
theorem c20_171_2_incoming_link : matrixOf c20_171_2.m c20_171_2.n c20_171_2.incoming = d18_170 := by decide
theorem c21_172_2_outgoing_link : matrixOf c21_172_2.k c21_172_2.m c21_172_2.outgoing = d21_172 := by decide
theorem c21_172_2_incoming_link : matrixOf c21_172_2.m c21_172_2.n c21_172_2.incoming = d19_171 := by decide
theorem c24_174_2_outgoing_link : matrixOf c24_174_2.k c24_174_2.m c24_174_2.outgoing = d24_174 := by decide
theorem c24_174_2_incoming_link : matrixOf c24_174_2.m c24_174_2.n c24_174_2.incoming = d22_173 := by decide
end Fact713Ctheta4Transport.D2Links
