import Fact762CsigmasqD5.D2Data
import Fact762CsigmasqD5.Comparison
import ModuleToModuleCertificates.Matrix
set_option maxRecDepth 8192
set_option maxHeartbeats 8000000
namespace Fact762CsigmasqD5.D2Links
open LinearCertificates PageTransitionCertificates NamedElementCertificates ModuleToModuleCertificates ModuleExpressions Comparison
def d10_151 : Matrix 9 10 := matrixOf 9 10 [false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false]
def d10_151_basis : Fin 9 → Expression 2 := fun i => toExpression 2 (([[[],[[426]]],[[],[[425]]],[[],[[0,69,89]]],[[],[[0,0,0,391]]],[[],[[0,0,0,0,375]]],[[[575]],[]],[[[2,543]],[]],[[[1,1,544]],[]],[[[0,0,0,0,546]],[]]] : List (List Polynomial))[i.val]?.getD [])
theorem d10_151_column0 : decode d10_151_basis (fun i => d10_151 i ⟨0,by decide⟩) = toExpression 2 D2Data.b6980.reduction.output := by decide
theorem d10_151_column1 : decode d10_151_basis (fun i => d10_151 i ⟨1,by decide⟩) = toExpression 2 D2Data.b6981.reduction.output := by decide
theorem d10_151_column2 : decode d10_151_basis (fun i => d10_151 i ⟨2,by decide⟩) = toExpression 2 D2Data.b6982.reduction.output := by decide
theorem d10_151_column3 : decode d10_151_basis (fun i => d10_151 i ⟨3,by decide⟩) = toExpression 2 D2Data.b6983.reduction.output := by decide
theorem d10_151_column4 : decode d10_151_basis (fun i => d10_151 i ⟨4,by decide⟩) = toExpression 2 D2Data.b6984.reduction.output := by decide
theorem d10_151_column5 : decode d10_151_basis (fun i => d10_151 i ⟨5,by decide⟩) = toExpression 2 D2Data.b6985.reduction.output := by decide
theorem d10_151_column6 : decode d10_151_basis (fun i => d10_151 i ⟨6,by decide⟩) = toExpression 2 D2Data.b6986.reduction.output := by decide
theorem d10_151_column7 : decode d10_151_basis (fun i => d10_151 i ⟨7,by decide⟩) = toExpression 2 D2Data.b6987.reduction.output := by decide
theorem d10_151_column8 : decode d10_151_basis (fun i => d10_151 i ⟨8,by decide⟩) = toExpression 2 D2Data.b6988.reduction.output := by decide
theorem d10_151_column9 : decode d10_151_basis (fun i => d10_151 i ⟨9,by decide⟩) = toExpression 2 D2Data.b6989.reduction.output := by decide
#print axioms d10_151_column0
def d10_152 : Matrix 9 10 := matrixOf 9 10 [true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,true,false]
def d10_152_basis : Fin 9 → Expression 2 := fun i => toExpression 2 (([[[],[[25,190]]],[[],[[3,336]]],[[],[[0,427]]],[[],[[0,0,419]]],[[],[[0,0,0,0,0,0,0,0,0,0,69,69]]],[[[8,415]],[]],[[[1,7,412]],[]],[[[0,2,544]],[]],[[[0,0,7,414]],[]]] : List (List Polynomial))[i.val]?.getD [])
theorem d10_152_column0 : decode d10_152_basis (fun i => d10_152 i ⟨0,by decide⟩) = toExpression 2 D2Data.b7145.reduction.output := by decide
theorem d10_152_column1 : decode d10_152_basis (fun i => d10_152 i ⟨1,by decide⟩) = toExpression 2 D2Data.b7146.reduction.output := by decide
theorem d10_152_column2 : decode d10_152_basis (fun i => d10_152 i ⟨2,by decide⟩) = toExpression 2 D2Data.b7147.reduction.output := by decide
theorem d10_152_column3 : decode d10_152_basis (fun i => d10_152 i ⟨3,by decide⟩) = toExpression 2 D2Data.b7148.reduction.output := by decide
theorem d10_152_column4 : decode d10_152_basis (fun i => d10_152 i ⟨4,by decide⟩) = toExpression 2 D2Data.b7149.reduction.output := by decide
theorem d10_152_column5 : decode d10_152_basis (fun i => d10_152 i ⟨5,by decide⟩) = toExpression 2 D2Data.b7150.reduction.output := by decide
theorem d10_152_column6 : decode d10_152_basis (fun i => d10_152 i ⟨6,by decide⟩) = toExpression 2 D2Data.b7151.reduction.output := by decide
theorem d10_152_column7 : decode d10_152_basis (fun i => d10_152 i ⟨7,by decide⟩) = toExpression 2 D2Data.b7152.reduction.output := by decide
theorem d10_152_column8 : decode d10_152_basis (fun i => d10_152 i ⟨8,by decide⟩) = toExpression 2 D2Data.b7153.reduction.output := by decide
theorem d10_152_column9 : decode d10_152_basis (fun i => d10_152 i ⟨9,by decide⟩) = toExpression 2 D2Data.b7154.reduction.output := by decide
#print axioms d10_152_column0
def d11_152 : Matrix 9 11 := matrixOf 9 11 [false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false]
def d11_152_basis : Fin 9 → Expression 2 := fun i => toExpression 2 (([[[],[[24,190]]],[[],[[3,335]]],[[],[[0,425]]],[[],[[0,0,0,0,391]]],[[],[[0,0,0,0,0,375]]],[[[8,414]],[]],[[[7,425]],[]],[[[0,575]],[]],[[[0,0,0,0,0,546]],[]]] : List (List Polynomial))[i.val]?.getD [])
theorem d11_152_column0 : decode d11_152_basis (fun i => d11_152 i ⟨0,by decide⟩) = toExpression 2 D2Data.b7134.reduction.output := by decide
theorem d11_152_column1 : decode d11_152_basis (fun i => d11_152 i ⟨1,by decide⟩) = toExpression 2 D2Data.b7135.reduction.output := by decide
theorem d11_152_column2 : decode d11_152_basis (fun i => d11_152 i ⟨2,by decide⟩) = toExpression 2 D2Data.b7136.reduction.output := by decide
theorem d11_152_column3 : decode d11_152_basis (fun i => d11_152 i ⟨3,by decide⟩) = toExpression 2 D2Data.b7137.reduction.output := by decide
theorem d11_152_column4 : decode d11_152_basis (fun i => d11_152 i ⟨4,by decide⟩) = toExpression 2 D2Data.b7138.reduction.output := by decide
theorem d11_152_column5 : decode d11_152_basis (fun i => d11_152 i ⟨5,by decide⟩) = toExpression 2 D2Data.b7139.reduction.output := by decide
theorem d11_152_column6 : decode d11_152_basis (fun i => d11_152 i ⟨6,by decide⟩) = toExpression 2 D2Data.b7140.reduction.output := by decide
theorem d11_152_column7 : decode d11_152_basis (fun i => d11_152 i ⟨7,by decide⟩) = toExpression 2 D2Data.b7141.reduction.output := by decide
theorem d11_152_column8 : decode d11_152_basis (fun i => d11_152 i ⟨8,by decide⟩) = toExpression 2 D2Data.b7142.reduction.output := by decide
theorem d11_152_column9 : decode d11_152_basis (fun i => d11_152 i ⟨9,by decide⟩) = toExpression 2 D2Data.b7143.reduction.output := by decide
theorem d11_152_column10 : decode d11_152_basis (fun i => d11_152 i ⟨10,by decide⟩) = toExpression 2 D2Data.b7144.reduction.output := by decide
#print axioms d11_152_column0
def d12_153 : Matrix 6 9 := matrixOf 6 9 [false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false]
def d12_153_basis : Fin 6 → Expression 2 := fun i => toExpression 2 (([[[],[[449]]],[[],[[1,7,275]]],[[],[[0,0,425]]],[[[8,419]],[]],[[[0,8,414]],[]],[[[0,0,575]],[]]] : List (List Polynomial))[i.val]?.getD [])
theorem d12_153_column0 : decode d12_153_basis (fun i => d12_153 i ⟨0,by decide⟩) = toExpression 2 D2Data.b7318.reduction.output := by decide
theorem d12_153_column1 : decode d12_153_basis (fun i => d12_153 i ⟨1,by decide⟩) = toExpression 2 D2Data.b7319.reduction.output := by decide
theorem d12_153_column2 : decode d12_153_basis (fun i => d12_153 i ⟨2,by decide⟩) = toExpression 2 D2Data.b7320.reduction.output := by decide
theorem d12_153_column3 : decode d12_153_basis (fun i => d12_153 i ⟨3,by decide⟩) = toExpression 2 D2Data.b7321.reduction.output := by decide
theorem d12_153_column4 : decode d12_153_basis (fun i => d12_153 i ⟨4,by decide⟩) = toExpression 2 D2Data.b7322.reduction.output := by decide
theorem d12_153_column5 : decode d12_153_basis (fun i => d12_153 i ⟨5,by decide⟩) = toExpression 2 D2Data.b7323.reduction.output := by decide
theorem d12_153_column6 : decode d12_153_basis (fun i => d12_153 i ⟨6,by decide⟩) = toExpression 2 D2Data.b7324.reduction.output := by decide
theorem d12_153_column7 : decode d12_153_basis (fun i => d12_153 i ⟨7,by decide⟩) = toExpression 2 D2Data.b7325.reduction.output := by decide
theorem d12_153_column8 : decode d12_153_basis (fun i => d12_153 i ⟨8,by decide⟩) = toExpression 2 D2Data.b7326.reduction.output := by decide
#print axioms d12_153_column0
def d13_153 : Matrix 6 9 := matrixOf 6 9 [false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false]
def d13_153_basis : Fin 6 → Expression 2 := fun i => toExpression 2 (([[[],[[448]]],[[],[[3,3,287]]],[[],[[0,440]]],[[],[[0,439]]],[[[8,69,89]],[]],[[[0,0,0,0,562]],[]]] : List (List Polynomial))[i.val]?.getD [])
theorem d13_153_column0 : decode d13_153_basis (fun i => d13_153 i ⟨0,by decide⟩) = toExpression 2 D2Data.b7309.reduction.output := by decide
theorem d13_153_column1 : decode d13_153_basis (fun i => d13_153 i ⟨1,by decide⟩) = toExpression 2 D2Data.b7310.reduction.output := by decide
theorem d13_153_column2 : decode d13_153_basis (fun i => d13_153 i ⟨2,by decide⟩) = toExpression 2 D2Data.b7311.reduction.output := by decide
theorem d13_153_column3 : decode d13_153_basis (fun i => d13_153 i ⟨3,by decide⟩) = toExpression 2 D2Data.b7312.reduction.output := by decide
theorem d13_153_column4 : decode d13_153_basis (fun i => d13_153 i ⟨4,by decide⟩) = toExpression 2 D2Data.b7313.reduction.output := by decide
theorem d13_153_column5 : decode d13_153_basis (fun i => d13_153 i ⟨5,by decide⟩) = toExpression 2 D2Data.b7314.reduction.output := by decide
theorem d13_153_column6 : decode d13_153_basis (fun i => d13_153 i ⟨6,by decide⟩) = toExpression 2 D2Data.b7315.reduction.output := by decide
theorem d13_153_column7 : decode d13_153_basis (fun i => d13_153 i ⟨7,by decide⟩) = toExpression 2 D2Data.b7316.reduction.output := by decide
theorem d13_153_column8 : decode d13_153_basis (fun i => d13_153 i ⟨8,by decide⟩) = toExpression 2 D2Data.b7317.reduction.output := by decide
#print axioms d13_153_column0
def d13_154 : Matrix 8 7 := matrixOf 8 7 [false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,true,false,true,false,false,false,false,false,false,false]
def d13_154_basis : Fin 8 → Expression 2 := fun i => toExpression 2 (([[[],[[456]]],[[],[[67,107]]],[[],[[1,439]]],[[],[[0,449]]],[[],[[0,0,0,425]]],[[[1,4,486]],[]],[[[0,0,8,414]],[]],[[[0,0,0,575]],[]]] : List (List Polynomial))[i.val]?.getD [])
theorem d13_154_column0 : decode d13_154_basis (fun i => d13_154 i ⟨0,by decide⟩) = toExpression 2 D2Data.b7446.reduction.output := by decide
theorem d13_154_column1 : decode d13_154_basis (fun i => d13_154 i ⟨1,by decide⟩) = toExpression 2 D2Data.b7447.reduction.output := by decide
theorem d13_154_column2 : decode d13_154_basis (fun i => d13_154 i ⟨2,by decide⟩) = toExpression 2 D2Data.b7448.reduction.output := by decide
theorem d13_154_column3 : decode d13_154_basis (fun i => d13_154 i ⟨3,by decide⟩) = toExpression 2 D2Data.b7449.reduction.output := by decide
theorem d13_154_column4 : decode d13_154_basis (fun i => d13_154 i ⟨4,by decide⟩) = toExpression 2 D2Data.b7450.reduction.output := by decide
theorem d13_154_column5 : decode d13_154_basis (fun i => d13_154 i ⟨5,by decide⟩) = toExpression 2 D2Data.b7451.reduction.output := by decide
theorem d13_154_column6 : decode d13_154_basis (fun i => d13_154 i ⟨6,by decide⟩) = toExpression 2 D2Data.b7452.reduction.output := by decide
#print axioms d13_154_column0
def d14_154 : Matrix 8 6 := matrixOf 8 6 [false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true]
def d14_154_basis : Fin 8 → Expression 2 := fun i => toExpression 2 (([[[],[[9,261]]],[[],[[1,438]]],[[],[[0,448]]],[[],[[0,0,440]]],[[],[[0,0,439]]],[[[604]],[]],[[[8,425]],[]],[[[0,0,0,0,0,562]],[]]] : List (List Polynomial))[i.val]?.getD [])
theorem d14_154_column0 : decode d14_154_basis (fun i => d14_154 i ⟨0,by decide⟩) = toExpression 2 D2Data.b7440.reduction.output := by decide
theorem d14_154_column1 : decode d14_154_basis (fun i => d14_154 i ⟨1,by decide⟩) = toExpression 2 D2Data.b7441.reduction.output := by decide
theorem d14_154_column2 : decode d14_154_basis (fun i => d14_154 i ⟨2,by decide⟩) = toExpression 2 D2Data.b7442.reduction.output := by decide
theorem d14_154_column3 : decode d14_154_basis (fun i => d14_154 i ⟨3,by decide⟩) = toExpression 2 D2Data.b7443.reduction.output := by decide
theorem d14_154_column4 : decode d14_154_basis (fun i => d14_154 i ⟨4,by decide⟩) = toExpression 2 D2Data.b7444.reduction.output := by decide
theorem d14_154_column5 : decode d14_154_basis (fun i => d14_154 i ⟨5,by decide⟩) = toExpression 2 D2Data.b7445.reduction.output := by decide
#print axioms d14_154_column0
def d14_155 : Matrix 7 6 := matrixOf 7 6 [false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false]
def d14_155_basis : Fin 7 → Expression 2 := fun i => toExpression 2 (([[[],[[473]]],[[],[[1,448]]],[[],[[0,67,107]]],[[],[[0,0,449]]],[[[613]],[]],[[[9,408]],[]],[[[0,0,0,0,575]],[]]] : List (List Polynomial))[i.val]?.getD [])
theorem d14_155_column0 : decode d14_155_basis (fun i => d14_155 i ⟨0,by decide⟩) = toExpression 2 D2Data.b7609.reduction.output := by decide
theorem d14_155_column1 : decode d14_155_basis (fun i => d14_155 i ⟨1,by decide⟩) = toExpression 2 D2Data.b7610.reduction.output := by decide
theorem d14_155_column2 : decode d14_155_basis (fun i => d14_155 i ⟨2,by decide⟩) = toExpression 2 D2Data.b7611.reduction.output := by decide
theorem d14_155_column3 : decode d14_155_basis (fun i => d14_155 i ⟨3,by decide⟩) = toExpression 2 D2Data.b7612.reduction.output := by decide
theorem d14_155_column4 : decode d14_155_basis (fun i => d14_155 i ⟨4,by decide⟩) = toExpression 2 D2Data.b7613.reduction.output := by decide
theorem d14_155_column5 : decode d14_155_basis (fun i => d14_155 i ⟨5,by decide⟩) = toExpression 2 D2Data.b7614.reduction.output := by decide
#print axioms d14_155_column0
def d15_155 : Matrix 8 8 := matrixOf 8 8 [false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true]
def d15_155_basis : Fin 8 → Expression 2 := fun i => toExpression 2 (([[[],[[472]]],[[],[[0,0,448]]],[[],[[0,0,0,440]]],[[],[[0,0,0,439]]],[[[612]],[]],[[[13,13,213]],[]],[[[0,604]],[]],[[[0,0,0,0,0,0,562]],[]]] : List (List Polynomial))[i.val]?.getD [])
theorem d15_155_column0 : decode d15_155_basis (fun i => d15_155 i ⟨0,by decide⟩) = toExpression 2 D2Data.b7601.reduction.output := by decide
theorem d15_155_column1 : decode d15_155_basis (fun i => d15_155 i ⟨1,by decide⟩) = toExpression 2 D2Data.b7602.reduction.output := by decide
theorem d15_155_column2 : decode d15_155_basis (fun i => d15_155 i ⟨2,by decide⟩) = toExpression 2 D2Data.b7603.reduction.output := by decide
theorem d15_155_column3 : decode d15_155_basis (fun i => d15_155 i ⟨3,by decide⟩) = toExpression 2 D2Data.b7604.reduction.output := by decide
theorem d15_155_column4 : decode d15_155_basis (fun i => d15_155 i ⟨4,by decide⟩) = toExpression 2 D2Data.b7605.reduction.output := by decide
theorem d15_155_column5 : decode d15_155_basis (fun i => d15_155 i ⟨5,by decide⟩) = toExpression 2 D2Data.b7606.reduction.output := by decide
theorem d15_155_column6 : decode d15_155_basis (fun i => d15_155 i ⟨6,by decide⟩) = toExpression 2 D2Data.b7607.reduction.output := by decide
theorem d15_155_column7 : decode d15_155_basis (fun i => d15_155 i ⟨7,by decide⟩) = toExpression 2 D2Data.b7608.reduction.output := by decide
#print axioms d15_155_column0
def d16_156 : Matrix 5 7 := matrixOf 5 7 [true,false,false,false,false,false,false,true,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,true]
def d16_156_basis : Fin 5 → Expression 2 := fun i => toExpression 2 (([[[],[[0,472]]],[[],[[0,0,0,0,440]]],[[[8,449]],[]],[[[0,612]],[]],[[[0,0,0,0,0,0,0,562]],[]]] : List (List Polynomial))[i.val]?.getD [])
theorem d16_156_column0 : decode d16_156_basis (fun i => d16_156 i ⟨0,by decide⟩) = toExpression 2 D2Data.b7807.reduction.output := by decide
theorem d16_156_column1 : decode d16_156_basis (fun i => d16_156 i ⟨1,by decide⟩) = toExpression 2 D2Data.b7808.reduction.output := by decide
theorem d16_156_column2 : decode d16_156_basis (fun i => d16_156 i ⟨2,by decide⟩) = toExpression 2 D2Data.b7809.reduction.output := by decide
theorem d16_156_column3 : decode d16_156_basis (fun i => d16_156 i ⟨3,by decide⟩) = toExpression 2 D2Data.b7810.reduction.output := by decide
theorem d16_156_column4 : decode d16_156_basis (fun i => d16_156 i ⟨4,by decide⟩) = toExpression 2 D2Data.b7811.reduction.output := by decide
theorem d16_156_column5 : decode d16_156_basis (fun i => d16_156 i ⟨5,by decide⟩) = toExpression 2 D2Data.b7812.reduction.output := by decide
theorem d16_156_column6 : decode d16_156_basis (fun i => d16_156 i ⟨6,by decide⟩) = toExpression 2 D2Data.b7813.reduction.output := by decide
#print axioms d16_156_column0
def d17_156 : Matrix 6 8 := matrixOf 6 8 [true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false]
def d17_156_basis : Fin 6 → Expression 2 := fun i => toExpression 2 (([[[],[[9,13,13,95]]],[[],[[0,9,267]]],[[],[[0,0,3,359]]],[[],[[0,0,0,0,0,0,418]]],[[[8,448]],[]],[[[0,610]],[]]] : List (List Polynomial))[i.val]?.getD [])
theorem d17_156_column0 : decode d17_156_basis (fun i => d17_156 i ⟨0,by decide⟩) = toExpression 2 D2Data.b7799.reduction.output := by decide
theorem d17_156_column1 : decode d17_156_basis (fun i => d17_156 i ⟨1,by decide⟩) = toExpression 2 D2Data.b7800.reduction.output := by decide
theorem d17_156_column2 : decode d17_156_basis (fun i => d17_156 i ⟨2,by decide⟩) = toExpression 2 D2Data.b7801.reduction.output := by decide
theorem d17_156_column3 : decode d17_156_basis (fun i => d17_156 i ⟨3,by decide⟩) = toExpression 2 D2Data.b7802.reduction.output := by decide
theorem d17_156_column4 : decode d17_156_basis (fun i => d17_156 i ⟨4,by decide⟩) = toExpression 2 D2Data.b7803.reduction.output := by decide
theorem d17_156_column5 : decode d17_156_basis (fun i => d17_156 i ⟨5,by decide⟩) = toExpression 2 D2Data.b7804.reduction.output := by decide
theorem d17_156_column6 : decode d17_156_basis (fun i => d17_156 i ⟨6,by decide⟩) = toExpression 2 D2Data.b7805.reduction.output := by decide
theorem d17_156_column7 : decode d17_156_basis (fun i => d17_156 i ⟨7,by decide⟩) = toExpression 2 D2Data.b7806.reduction.output := by decide
#print axioms d17_156_column0
def d17_157 : Matrix 6 6 := matrixOf 6 6 [false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,true,false,false,false,true,false,false,true]
def d17_157_basis : Fin 6 → Expression 2 := fun i => toExpression 2 (([[[],[[8,293]]],[[],[[0,0,0,0,0,440]]],[[[9,423]],[]],[[[0,8,449]],[]],[[[0,0,612]],[]],[[[0,0,0,0,0,0,0,0,562]],[]]] : List (List Polynomial))[i.val]?.getD [])
theorem d17_157_column0 : decode d17_157_basis (fun i => d17_157 i ⟨0,by decide⟩) = toExpression 2 D2Data.b7945.reduction.output := by decide
theorem d17_157_column1 : decode d17_157_basis (fun i => d17_157 i ⟨1,by decide⟩) = toExpression 2 D2Data.b7946.reduction.output := by decide
theorem d17_157_column2 : decode d17_157_basis (fun i => d17_157 i ⟨2,by decide⟩) = toExpression 2 D2Data.b7947.reduction.output := by decide
theorem d17_157_column3 : decode d17_157_basis (fun i => d17_157 i ⟨3,by decide⟩) = toExpression 2 D2Data.b7948.reduction.output := by decide
theorem d17_157_column4 : decode d17_157_basis (fun i => d17_157 i ⟨4,by decide⟩) = toExpression 2 D2Data.b7949.reduction.output := by decide
theorem d17_157_column5 : decode d17_157_basis (fun i => d17_157 i ⟨5,by decide⟩) = toExpression 2 D2Data.b7950.reduction.output := by decide
#print axioms d17_157_column0
def d18_157 : Matrix 3 5 := matrixOf 3 5 [false,false,false,false,false,false,false,false,false,false,false,false,false,false,false]
def d18_157_basis : Fin 3 → Expression 2 := fun i => toExpression 2 (([[[],[[492]]],[[[627]],[]],[[[8,9,261]],[]]] : List (List Polynomial))[i.val]?.getD [])
theorem d18_157_column0 : decode d18_157_basis (fun i => d18_157 i ⟨0,by decide⟩) = toExpression 2 D2Data.b7940.reduction.output := by decide
theorem d18_157_column1 : decode d18_157_basis (fun i => d18_157 i ⟨1,by decide⟩) = toExpression 2 D2Data.b7941.reduction.output := by decide
theorem d18_157_column2 : decode d18_157_basis (fun i => d18_157 i ⟨2,by decide⟩) = toExpression 2 D2Data.b7942.reduction.output := by decide
theorem d18_157_column3 : decode d18_157_basis (fun i => d18_157 i ⟨3,by decide⟩) = toExpression 2 D2Data.b7943.reduction.output := by decide
theorem d18_157_column4 : decode d18_157_basis (fun i => d18_157 i ⟨4,by decide⟩) = toExpression 2 D2Data.b7944.reduction.output := by decide
#print axioms d18_157_column0
def d18_158 : Matrix 4 5 := matrixOf 4 5 [false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false]
def d18_158_basis : Fin 4 → Expression 2 := fun i => toExpression 2 (([[[],[[8,8,212]]],[[],[[0,0,0,0,0,0,440]]],[[[23,286]],[]],[[[0,0,8,449]],[]]] : List (List Polynomial))[i.val]?.getD [])
theorem d18_158_column0 : decode d18_158_basis (fun i => d18_158 i ⟨0,by decide⟩) = toExpression 2 D2Data.b8103.reduction.output := by decide
theorem d18_158_column1 : decode d18_158_basis (fun i => d18_158 i ⟨1,by decide⟩) = toExpression 2 D2Data.b8104.reduction.output := by decide
theorem d18_158_column2 : decode d18_158_basis (fun i => d18_158 i ⟨2,by decide⟩) = toExpression 2 D2Data.b8105.reduction.output := by decide
theorem d18_158_column3 : decode d18_158_basis (fun i => d18_158 i ⟨3,by decide⟩) = toExpression 2 D2Data.b8106.reduction.output := by decide
theorem d18_158_column4 : decode d18_158_basis (fun i => d18_158 i ⟨4,by decide⟩) = toExpression 2 D2Data.b8107.reduction.output := by decide
#print axioms d18_158_column0
def d19_158 : Matrix 2 6 := matrixOf 2 6 [false,false,false,false,false,false,false,false,false,false,false,false]
def d19_158_basis : Fin 2 → Expression 2 := fun i => toExpression 2 (([[[[9,23,188]],[]],[[[0,627]],[]]] : List (List Polynomial))[i.val]?.getD [])
theorem d19_158_column0 : decode d19_158_basis (fun i => d19_158 i ⟨0,by decide⟩) = toExpression 2 D2Data.b8097.reduction.output := by decide
theorem d19_158_column1 : decode d19_158_basis (fun i => d19_158 i ⟨1,by decide⟩) = toExpression 2 D2Data.b8098.reduction.output := by decide
theorem d19_158_column2 : decode d19_158_basis (fun i => d19_158 i ⟨2,by decide⟩) = toExpression 2 D2Data.b8099.reduction.output := by decide
theorem d19_158_column3 : decode d19_158_basis (fun i => d19_158 i ⟨3,by decide⟩) = toExpression 2 D2Data.b8100.reduction.output := by decide
theorem d19_158_column4 : decode d19_158_basis (fun i => d19_158 i ⟨4,by decide⟩) = toExpression 2 D2Data.b8101.reduction.output := by decide
theorem d19_158_column5 : decode d19_158_basis (fun i => d19_158 i ⟨5,by decide⟩) = toExpression 2 D2Data.b8102.reduction.output := by decide
#print axioms d19_158_column0
def d20_159 : Matrix 3 4 := matrixOf 3 4 [false,false,false,false,false,false,true,false,false,false,false,false]
def d20_159_basis : Fin 3 → Expression 2 := fun i => toExpression 2 (([[[[643]],[]],[[[9,13,13,13,75]],[]],[[[0,0,627]],[]]] : List (List Polynomial))[i.val]?.getD [])
theorem d20_159_column0 : decode d20_159_basis (fun i => d20_159 i ⟨0,by decide⟩) = toExpression 2 D2Data.b8290.reduction.output := by decide
theorem d20_159_column1 : decode d20_159_basis (fun i => d20_159 i ⟨1,by decide⟩) = toExpression 2 D2Data.b8291.reduction.output := by decide
theorem d20_159_column2 : decode d20_159_basis (fun i => d20_159 i ⟨2,by decide⟩) = toExpression 2 D2Data.b8292.reduction.output := by decide
theorem d20_159_column3 : decode d20_159_basis (fun i => d20_159 i ⟨3,by decide⟩) = toExpression 2 D2Data.b8293.reduction.output := by decide
#print axioms d20_159_column0
def d21_159 : Matrix 4 2 := matrixOf 4 2 [false,false,false,false,false,false,false,false]
def d21_159_basis : Fin 4 → Expression 2 := fun i => toExpression 2 (([[[],[[5,347]]],[[],[[0,0,8,292]]],[[[13,13,13,13,67]],[]],[[[1,626]],[]]] : List (List Polynomial))[i.val]?.getD [])
theorem d21_159_column0 : decode d21_159_basis (fun i => d21_159 i ⟨0,by decide⟩) = toExpression 2 D2Data.b8288.reduction.output := by decide
theorem d21_159_column1 : decode d21_159_basis (fun i => d21_159 i ⟨1,by decide⟩) = toExpression 2 D2Data.b8289.reduction.output := by decide
#print axioms d21_159_column0
def d21_160 : Matrix 5 5 := matrixOf 5 5 [false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false]
def d21_160_basis : Fin 5 → Expression 2 := fun i => toExpression 2 (([[[],[[13,13,167]]],[[[23,292]],[]],[[[8,8,293]],[]],[[[0,643]],[]],[[[0,0,0,627]],[]]] : List (List Polynomial))[i.val]?.getD [])
theorem d21_160_column0 : decode d21_160_basis (fun i => d21_160 i ⟨0,by decide⟩) = toExpression 2 D2Data.b8424.reduction.output := by decide
theorem d21_160_column1 : decode d21_160_basis (fun i => d21_160 i ⟨1,by decide⟩) = toExpression 2 D2Data.b8425.reduction.output := by decide
theorem d21_160_column2 : decode d21_160_basis (fun i => d21_160 i ⟨2,by decide⟩) = toExpression 2 D2Data.b8426.reduction.output := by decide
theorem d21_160_column3 : decode d21_160_basis (fun i => d21_160 i ⟨3,by decide⟩) = toExpression 2 D2Data.b8427.reduction.output := by decide
theorem d21_160_column4 : decode d21_160_basis (fun i => d21_160 i ⟨4,by decide⟩) = toExpression 2 D2Data.b8428.reduction.output := by decide
#print axioms d21_160_column0
def d22_160 : Matrix 4 3 := matrixOf 4 3 [false,false,false,false,false,false,false,false,false,false,false,false]
def d22_160_basis : Fin 4 → Expression 2 := fun i => toExpression 2 (([[[],[[8,13,194]]],[[[654]],[]],[[[22,292]],[]],[[[8,492]],[]]] : List (List Polynomial))[i.val]?.getD [])
theorem d22_160_column0 : decode d22_160_basis (fun i => d22_160 i ⟨0,by decide⟩) = toExpression 2 D2Data.b8421.reduction.output := by decide
theorem d22_160_column1 : decode d22_160_basis (fun i => d22_160 i ⟨1,by decide⟩) = toExpression 2 D2Data.b8422.reduction.output := by decide
theorem d22_160_column2 : decode d22_160_basis (fun i => d22_160 i ⟨2,by decide⟩) = toExpression 2 D2Data.b8423.reduction.output := by decide
#print axioms d22_160_column0
def d23_161 : Matrix 6 5 := matrixOf 6 5 [true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false]
def d23_161_basis : Fin 6 → Expression 2 := fun i => toExpression 2 (([[[],[[9,13,13,13,51]]],[[],[[8,8,8,13,80]]],[[[13,435]],[]],[[[9,13,13,13,80]],[]],[[[1,642]],[]],[[[0,654]],[]]] : List (List Polynomial))[i.val]?.getD [])
theorem d23_161_column0 : decode d23_161_basis (fun i => d23_161 i ⟨0,by decide⟩) = toExpression 2 D2Data.b8582.reduction.output := by decide
theorem d23_161_column1 : decode d23_161_basis (fun i => d23_161 i ⟨1,by decide⟩) = toExpression 2 D2Data.b8583.reduction.output := by decide
theorem d23_161_column2 : decode d23_161_basis (fun i => d23_161 i ⟨2,by decide⟩) = toExpression 2 D2Data.b8584.reduction.output := by decide
theorem d23_161_column3 : decode d23_161_basis (fun i => d23_161 i ⟨3,by decide⟩) = toExpression 2 D2Data.b8585.reduction.output := by decide
theorem d23_161_column4 : decode d23_161_basis (fun i => d23_161 i ⟨4,by decide⟩) = toExpression 2 D2Data.b8586.reduction.output := by decide
#print axioms d23_161_column0
def d24_162 : Matrix 1 6 := matrixOf 1 6 [false,false,false,false,false,false]
def d24_162_basis : Fin 1 → Expression 2 := fun i => toExpression 2 (([[[[0,0,654]],[]]] : List (List Polynomial))[i.val]?.getD [])
theorem d24_162_column0 : decode d24_162_basis (fun i => d24_162 i ⟨0,by decide⟩) = toExpression 2 D2Data.b8803.reduction.output := by decide
theorem d24_162_column1 : decode d24_162_basis (fun i => d24_162 i ⟨1,by decide⟩) = toExpression 2 D2Data.b8804.reduction.output := by decide
theorem d24_162_column2 : decode d24_162_basis (fun i => d24_162 i ⟨2,by decide⟩) = toExpression 2 D2Data.b8805.reduction.output := by decide
theorem d24_162_column3 : decode d24_162_basis (fun i => d24_162 i ⟨3,by decide⟩) = toExpression 2 D2Data.b8806.reduction.output := by decide
theorem d24_162_column4 : decode d24_162_basis (fun i => d24_162 i ⟨4,by decide⟩) = toExpression 2 D2Data.b8807.reduction.output := by decide
theorem d24_162_column5 : decode d24_162_basis (fun i => d24_162 i ⟨5,by decide⟩) = toExpression 2 D2Data.b8808.reduction.output := by decide
#print axioms d24_162_column0
def d26_163 : Matrix 4 1 := matrixOf 4 1 [false,false,false,true]
def d26_163_basis : Fin 4 → Expression 2 := fun i => toExpression 2 (([[[],[[8,8,8,160]]],[[[688]],[]],[[[8,8,13,194]],[]],[[[0,0,0,0,642]],[]]] : List (List Polynomial))[i.val]?.getD [])
theorem d26_163_column0 : decode d26_163_basis (fun i => d26_163 i ⟨0,by decide⟩) = toExpression 2 D2Data.b8963.reduction.output := by decide
#print axioms d26_163_column0
def d5_148 : Matrix 7 2 := matrixOf 7 2 [false,false,false,false,false,false,true,false,false,false,true,false,false,false]
def d5_148_basis : Fin 7 → Expression 2 := fun i => toExpression 2 (([[[],[[397]]],[[],[[396]]],[[],[[1,368]]],[[],[[0,377]]],[[],[[0,0,0,0,0,0,324]]],[[[0,2,506]],[]],[[[0,0,0,0,0,7,324]],[]]] : List (List Polynomial))[i.val]?.getD [])
theorem d5_148_column0 : decode d5_148_basis (fun i => d5_148 i ⟨0,by decide⟩) = toExpression 2 D2Data.b6503.reduction.output := by decide
theorem d5_148_column1 : decode d5_148_basis (fun i => d5_148 i ⟨1,by decide⟩) = toExpression 2 D2Data.b6504.reduction.output := by decide
#print axioms d5_148_column0
def d7_149 : Matrix 13 7 := matrixOf 13 7 [false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,true,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false]
def d7_149_basis : Fin 13 → Expression 2 := fun i => toExpression 2 (([[[],[[414]]],[[],[[1,376]]],[[],[[1,375]]],[[],[[0,394]]],[[],[[0,392]]],[[],[[0,0,0,0,0,0,0,69,69]]],[[[565]],[]],[[[7,394]],[]],[[[3,3,396]],[]],[[[2,524]],[]],[[[1,547]],[]],[[[1,546]],[]],[[[0,0,0,0,526]],[]]] : List (List Polynomial))[i.val]?.getD [])
theorem d7_149_column0 : decode d7_149_basis (fun i => d7_149 i ⟨0,by decide⟩) = toExpression 2 D2Data.b6648.reduction.output := by decide
theorem d7_149_column1 : decode d7_149_basis (fun i => d7_149 i ⟨1,by decide⟩) = toExpression 2 D2Data.b6649.reduction.output := by decide
theorem d7_149_column2 : decode d7_149_basis (fun i => d7_149 i ⟨2,by decide⟩) = toExpression 2 D2Data.b6650.reduction.output := by decide
theorem d7_149_column3 : decode d7_149_basis (fun i => d7_149 i ⟨3,by decide⟩) = toExpression 2 D2Data.b6651.reduction.output := by decide
theorem d7_149_column4 : decode d7_149_basis (fun i => d7_149 i ⟨4,by decide⟩) = toExpression 2 D2Data.b6652.reduction.output := by decide
theorem d7_149_column5 : decode d7_149_basis (fun i => d7_149 i ⟨5,by decide⟩) = toExpression 2 D2Data.b6653.reduction.output := by decide
theorem d7_149_column6 : decode d7_149_basis (fun i => d7_149 i ⟨6,by decide⟩) = toExpression 2 D2Data.b6654.reduction.output := by decide
#print axioms d7_149_column0
def d8_150 : Matrix 10 14 := matrixOf 10 14 [false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false]
def d8_150_basis : Fin 10 → Expression 2 := fun i => toExpression 2 (([[[],[[419]]],[[],[[0,414]]],[[],[[0,0,394]]],[[],[[0,0,392]]],[[],[[0,0,0,0,0,0,0,0,69,69]]],[[[571]],[]],[[[7,414]],[]],[[[0,7,394]],[]],[[[0,2,524]],[]],[[[0,0,0,0,0,526]],[]]] : List (List Polynomial))[i.val]?.getD [])
theorem d8_150_column0 : decode d8_150_basis (fun i => d8_150 i ⟨0,by decide⟩) = toExpression 2 D2Data.b6846.reduction.output := by decide
theorem d8_150_column1 : decode d8_150_basis (fun i => d8_150 i ⟨1,by decide⟩) = toExpression 2 D2Data.b6847.reduction.output := by decide
theorem d8_150_column2 : decode d8_150_basis (fun i => d8_150 i ⟨2,by decide⟩) = toExpression 2 D2Data.b6848.reduction.output := by decide
theorem d8_150_column3 : decode d8_150_basis (fun i => d8_150 i ⟨3,by decide⟩) = toExpression 2 D2Data.b6849.reduction.output := by decide
theorem d8_150_column4 : decode d8_150_basis (fun i => d8_150 i ⟨4,by decide⟩) = toExpression 2 D2Data.b6850.reduction.output := by decide
theorem d8_150_column5 : decode d8_150_basis (fun i => d8_150 i ⟨5,by decide⟩) = toExpression 2 D2Data.b6851.reduction.output := by decide
theorem d8_150_column6 : decode d8_150_basis (fun i => d8_150 i ⟨6,by decide⟩) = toExpression 2 D2Data.b6852.reduction.output := by decide
theorem d8_150_column7 : decode d8_150_basis (fun i => d8_150 i ⟨7,by decide⟩) = toExpression 2 D2Data.b6853.reduction.output := by decide
theorem d8_150_column8 : decode d8_150_basis (fun i => d8_150 i ⟨8,by decide⟩) = toExpression 2 D2Data.b6854.reduction.output := by decide
theorem d8_150_column9 : decode d8_150_basis (fun i => d8_150 i ⟨9,by decide⟩) = toExpression 2 D2Data.b6855.reduction.output := by decide
theorem d8_150_column10 : decode d8_150_basis (fun i => d8_150 i ⟨10,by decide⟩) = toExpression 2 D2Data.b6856.reduction.output := by decide
theorem d8_150_column11 : decode d8_150_basis (fun i => d8_150 i ⟨11,by decide⟩) = toExpression 2 D2Data.b6857.reduction.output := by decide
theorem d8_150_column12 : decode d8_150_basis (fun i => d8_150 i ⟨12,by decide⟩) = toExpression 2 D2Data.b6858.reduction.output := by decide
theorem d8_150_column13 : decode d8_150_basis (fun i => d8_150 i ⟨13,by decide⟩) = toExpression 2 D2Data.b6859.reduction.output := by decide
#print axioms d8_150_column0
def d9_151 : Matrix 11 10 := matrixOf 11 10 [false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false]
def d9_151_basis : Fin 11 → Expression 2 := fun i => toExpression 2 (([[[],[[427]]],[[],[[1,413]]],[[],[[1,412]]],[[],[[0,419]]],[[],[[0,0,414]]],[[],[[0,0,0,0,0,0,0,0,0,69,69]]],[[[9,69,75]],[]],[[[2,544]],[]],[[[1,563]],[]],[[[0,7,414]],[]],[[[0,0,7,394]],[]]] : List (List Polynomial))[i.val]?.getD [])
theorem d9_151_column0 : decode d9_151_basis (fun i => d9_151 i ⟨0,by decide⟩) = toExpression 2 D2Data.b6990.reduction.output := by decide
theorem d9_151_column1 : decode d9_151_basis (fun i => d9_151 i ⟨1,by decide⟩) = toExpression 2 D2Data.b6991.reduction.output := by decide
theorem d9_151_column2 : decode d9_151_basis (fun i => d9_151 i ⟨2,by decide⟩) = toExpression 2 D2Data.b6992.reduction.output := by decide
theorem d9_151_column3 : decode d9_151_basis (fun i => d9_151 i ⟨3,by decide⟩) = toExpression 2 D2Data.b6993.reduction.output := by decide
theorem d9_151_column4 : decode d9_151_basis (fun i => d9_151 i ⟨4,by decide⟩) = toExpression 2 D2Data.b6994.reduction.output := by decide
theorem d9_151_column5 : decode d9_151_basis (fun i => d9_151 i ⟨5,by decide⟩) = toExpression 2 D2Data.b6995.reduction.output := by decide
theorem d9_151_column6 : decode d9_151_basis (fun i => d9_151 i ⟨6,by decide⟩) = toExpression 2 D2Data.b6996.reduction.output := by decide
theorem d9_151_column7 : decode d9_151_basis (fun i => d9_151 i ⟨7,by decide⟩) = toExpression 2 D2Data.b6997.reduction.output := by decide
theorem d9_151_column8 : decode d9_151_basis (fun i => d9_151 i ⟨8,by decide⟩) = toExpression 2 D2Data.b6998.reduction.output := by decide
theorem d9_151_column9 : decode d9_151_basis (fun i => d9_151 i ⟨9,by decide⟩) = toExpression 2 D2Data.b6999.reduction.output := by decide
#print axioms d9_151_column0
theorem c10_151_2_outgoing_link : matrixOf c10_151_2.k c10_151_2.m c10_151_2.outgoing = d10_151 := by decide
theorem c10_151_2_incoming_link : matrixOf c10_151_2.m c10_151_2.n c10_151_2.incoming = d8_150 := by decide
theorem c11_152_2_outgoing_link : matrixOf c11_152_2.k c11_152_2.m c11_152_2.outgoing = d11_152 := by decide
theorem c11_152_2_incoming_link : matrixOf c11_152_2.m c11_152_2.n c11_152_2.incoming = d9_151 := by decide
theorem c12_153_2_outgoing_link : matrixOf c12_153_2.k c12_153_2.m c12_153_2.outgoing = d12_153 := by decide
theorem c12_153_2_incoming_link : matrixOf c12_153_2.m c12_153_2.n c12_153_2.incoming = d10_152 := by decide
theorem c13_153_2_outgoing_link : matrixOf c13_153_2.k c13_153_2.m c13_153_2.outgoing = d13_153 := by decide
theorem c13_153_2_incoming_link : matrixOf c13_153_2.m c13_153_2.n c13_153_2.incoming = d11_152 := by decide
theorem c14_154_2_outgoing_link : matrixOf c14_154_2.k c14_154_2.m c14_154_2.outgoing = d14_154 := by decide
theorem c14_154_2_incoming_link : matrixOf c14_154_2.m c14_154_2.n c14_154_2.incoming = d12_153 := by decide
theorem c15_155_2_outgoing_link : matrixOf c15_155_2.k c15_155_2.m c15_155_2.outgoing = d15_155 := by decide
theorem c15_155_2_incoming_link : matrixOf c15_155_2.m c15_155_2.n c15_155_2.incoming = d13_154 := by decide
theorem c16_156_2_outgoing_link : matrixOf c16_156_2.k c16_156_2.m c16_156_2.outgoing = d16_156 := by decide
theorem c16_156_2_incoming_link : matrixOf c16_156_2.m c16_156_2.n c16_156_2.incoming = d14_155 := by decide
theorem c17_156_2_outgoing_link : matrixOf c17_156_2.k c17_156_2.m c17_156_2.outgoing = d17_156 := by decide
theorem c17_156_2_incoming_link : matrixOf c17_156_2.m c17_156_2.n c17_156_2.incoming = d15_155 := by decide
theorem c18_157_2_outgoing_link : matrixOf c18_157_2.k c18_157_2.m c18_157_2.outgoing = d18_157 := by decide
theorem c18_157_2_incoming_link : matrixOf c18_157_2.m c18_157_2.n c18_157_2.incoming = d16_156 := by decide
theorem c19_158_2_outgoing_link : matrixOf c19_158_2.k c19_158_2.m c19_158_2.outgoing = d19_158 := by decide
theorem c19_158_2_incoming_link : matrixOf c19_158_2.m c19_158_2.n c19_158_2.incoming = d17_157 := by decide
theorem c20_159_2_outgoing_link : matrixOf c20_159_2.k c20_159_2.m c20_159_2.outgoing = d20_159 := by decide
theorem c20_159_2_incoming_link : matrixOf c20_159_2.m c20_159_2.n c20_159_2.incoming = d18_158 := by decide
theorem c21_159_2_outgoing_link : matrixOf c21_159_2.k c21_159_2.m c21_159_2.outgoing = d21_159 := by decide
theorem c21_159_2_incoming_link : matrixOf c21_159_2.m c21_159_2.n c21_159_2.incoming = d19_158 := by decide
theorem c22_160_2_outgoing_link : matrixOf c22_160_2.k c22_160_2.m c22_160_2.outgoing = d22_160 := by decide
theorem c22_160_2_incoming_link : matrixOf c22_160_2.m c22_160_2.n c22_160_2.incoming = d20_159 := by decide
theorem c23_161_2_outgoing_link : matrixOf c23_161_2.k c23_161_2.m c23_161_2.outgoing = d23_161 := by decide
theorem c23_161_2_incoming_link : matrixOf c23_161_2.m c23_161_2.n c23_161_2.incoming = d21_160 := by decide
theorem c26_163_2_outgoing_link : matrixOf c26_163_2.k c26_163_2.m c26_163_2.outgoing = d26_163 := by decide
theorem c26_163_2_incoming_link : matrixOf c26_163_2.m c26_163_2.n c26_163_2.incoming = d24_162 := by decide
theorem c7_149_2_outgoing_link : matrixOf c7_149_2.k c7_149_2.m c7_149_2.outgoing = d7_149 := by decide
theorem c7_149_2_incoming_link : matrixOf c7_149_2.m c7_149_2.n c7_149_2.incoming = d5_148 := by decide
end Fact762CsigmasqD5.D2Links
