import NamedPageComparison.Fact761D3
import Fact719PageCertificates.Survivor
namespace Fact719TrajectoryCertificates
open NamedPageComparison
open LinearCertificates PageTransitionCertificates
def queryStored (n : Nat) (row : Fact761D3.ImportedRow) (page : Nat) : Option (Vec n) := match PropagationCertificates.decodeLevel row.level with | some (.outgoing eventPage) => if 2 ≤ page ∧ page < eventPage then some (fun _ => false) else if page = eventPage then row.diff.map (fun entries i => entries.contains i.val) else none | _ => none
def bneg4_121_2 : WireComparison := ⟨1,0,0,0,0,[],[],[],[],[],[]⟩
theorem bneg4_121_2_complete : bneg4_121_2.Valid := by lin_cert using ()
def bneg1_123_2 : WireComparison := ⟨1,0,0,0,0,[],[],[],[],[],[]⟩
theorem bneg1_123_2_complete : bneg1_123_2.Valid := by lin_cert using ()
def b0_124_2 : WireComparison := ⟨1,0,0,0,0,[],[],[],[],[],[]⟩
theorem b0_124_2_complete : b0_124_2.Valid := by lin_cert using ()
def b1_125_2 : WireComparison := ⟨1,0,0,0,0,[],[],[],[],[],[]⟩
theorem b1_125_2_complete : b1_125_2.Valid := by lin_cert using ()
def b2_125_2 : WireComparison := ⟨1,0,0,0,0,[],[],[],[],[],[]⟩
theorem b2_125_2_complete : b2_125_2.Valid := by lin_cert using ()
def b3_126_2 : WireComparison := ⟨1,0,0,0,0,[],[],[],[],[],[]⟩
theorem b3_126_2_complete : b3_126_2.Valid := by lin_cert using ()
def b4_127_2 : WireComparison := ⟨1,0,0,0,0,[],[],[],[],[],[]⟩
theorem b4_127_2_complete : b4_127_2.Valid := by lin_cert using ()
def b5_128_2 : WireComparison := ⟨1,0,0,0,0,[],[],[],[],[],[]⟩
theorem b5_128_2_complete : b5_128_2.Valid := by lin_cert using ()
def b6_128_2 : WireComparison := ⟨1,1,0,0,0,[],[],[],[],[],[]⟩
theorem b6_128_2_complete : b6_128_2.Valid := by lin_cert using ()
def b6_129_2 : WireComparison := ⟨1,1,0,0,0,[],[],[],[],[],[]⟩
theorem b6_129_2_complete : b6_129_2.Valid := by lin_cert using ()
def b7_129_2 : WireComparison := ⟨1,2,0,0,0,[],[],[],[],[],[]⟩
theorem b7_129_2_complete : b7_129_2.Valid := by lin_cert using ()
def b8_130_2 : WireComparison := ⟨1,1,1,0,1,[false],[],[true],[true],[],[false]⟩
theorem b8_130_2_complete : b8_130_2.Valid := by lin_cert using ()
theorem b8_130_2_representative_0 : ∀ i : Fin 1, b8_130_2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([true] : List Bool)[i.val]!) i := by decide
def b9_131_2 : WireComparison := ⟨1,1,0,0,0,[],[],[],[],[],[]⟩
theorem b9_131_2_complete : b9_131_2.Valid := by lin_cert using ()
def b10_131_2 : WireComparison := ⟨1,5,1,1,0,[false,false,false,false,true],[false],[],[],[false],[false,false,false,false,true]⟩
theorem b10_131_2_complete : b10_131_2.Valid := by lin_cert using ()
def b10_132_2 : WireComparison := ⟨1,2,0,1,0,[],[],[],[],[],[]⟩
theorem b10_132_2_complete : b10_132_2.Valid := by lin_cert using ()
def b11_132_2 : WireComparison := ⟨1,1,1,0,0,[true],[],[],[],[],[true]⟩
theorem b11_132_2_complete : b11_132_2.Valid := by lin_cert using ()
def b12_133_2 : WireComparison := ⟨1,2,2,0,1,[false,false,false,true],[],[true,false],[true,false],[],[false,false,false,true]⟩
theorem b12_133_2_complete : b12_133_2.Valid := by lin_cert using ()
theorem b12_133_2_representative_0 : ∀ i : Fin 2, b12_133_2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([true,false] : List Bool)[i.val]!) i := by decide
def b13_134_2 : WireComparison := ⟨1,0,1,2,1,[],[false,false],[true],[true],[false,false],[]⟩
theorem b13_134_2_complete : b13_134_2.Valid := by lin_cert using ()
theorem b13_134_2_representative_0 : ∀ i : Fin 1, b13_134_2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([true] : List Bool)[i.val]!) i := by decide
def b14_135_2 : WireComparison := ⟨1,2,1,3,1,[false,false],[false,false,false],[true],[true],[false,false,false],[false,false]⟩
theorem b14_135_2_complete : b14_135_2.Valid := by lin_cert using ()
theorem b14_135_2_representative_0 : ∀ i : Fin 1, b14_135_2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([true] : List Bool)[i.val]!) i := by decide
def b15_135_2 : WireComparison := ⟨1,1,0,1,0,[],[],[],[],[],[]⟩
theorem b15_135_2_complete : b15_135_2.Valid := by lin_cert using ()
def b16_136_2 : WireComparison := ⟨1,2,2,1,1,[false,false,true,true],[false,false],[true,true],[false,true],[false,false],[false,true,false,false]⟩
theorem b16_136_2_complete : b16_136_2.Valid := by lin_cert using ()
theorem b16_136_2_representative_0 : ∀ i : Fin 2, b16_136_2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([true,true] : List Bool)[i.val]!) i := by decide
def b17_137_2 : WireComparison := ⟨1,3,3,2,2,[false,false,false,false,false,false,true,true,false],[false,false,false,false,false,false],[false,true,false,true,true,false],[false,false,true,false,true,false],[false,false,false,false,false,false],[false,false,true,false,false,false,false,false,false]⟩
theorem b17_137_2_complete : b17_137_2.Valid := by lin_cert using ()
theorem b17_137_2_representative_0 : ∀ i : Fin 3, b17_137_2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([false,false,true] : List Bool)[i.val]!) i := by decide
theorem b17_137_2_representative_1 : ∀ i : Fin 3, b17_137_2.comparison.inclusion i ⟨1,by decide⟩ = (fun i => ([true,true,false] : List Bool)[i.val]!) i := by decide
def b20_139_2 : WireComparison := ⟨1,3,4,3,3,[false,false,false,false,false,false,false,false,false,false,false,false],[false,false,false,false,false,false,false,false,false,false,true,false],[false,true,false,true,false,false,false,false,true,false,false,false],[false,true,false,false,true,false,false,false,false,false,true,false],[false,false,false,false,false,false,false,true,false,false,false,false],[false,false,false,false,false,false,false,false,false,false,false,false]⟩
theorem b20_139_2_complete : b20_139_2.Valid := by lin_cert using ()
theorem b20_139_2_representative_0 : ∀ i : Fin 4, b20_139_2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([false,true,false,false] : List Bool)[i.val]!) i := by decide
theorem b20_139_2_representative_1 : ∀ i : Fin 4, b20_139_2.comparison.inclusion i ⟨1,by decide⟩ = (fun i => ([true,false,false,false] : List Bool)[i.val]!) i := by decide
theorem b20_139_2_representative_2 : ∀ i : Fin 4, b20_139_2.comparison.inclusion i ⟨2,by decide⟩ = (fun i => ([false,false,true,false] : List Bool)[i.val]!) i := by decide
def bneg1_123_3 : WireComparison := ⟨1,0,0,0,0,[],[],[],[],[],[]⟩
theorem bneg1_123_3_complete : bneg1_123_3.Valid := by lin_cert using ()
def b3_126_3 : WireComparison := ⟨1,0,0,0,0,[],[],[],[],[],[]⟩
theorem b3_126_3_complete : b3_126_3.Valid := by lin_cert using ()
def b4_127_3 : WireComparison := ⟨1,0,0,0,0,[],[],[],[],[],[]⟩
theorem b4_127_3_complete : b4_127_3.Valid := by lin_cert using ()
def b7_129_3 : WireComparison := ⟨1,0,0,0,0,[],[],[],[],[],[]⟩
theorem b7_129_3_complete : b7_129_3.Valid := by lin_cert using ()
def b8_130_3 : WireComparison := ⟨1,0,1,0,1,[],[],[true],[true],[],[]⟩
theorem b8_130_3_complete : b8_130_3.Valid := by lin_cert using ()
theorem b8_130_3_representative_0 : ∀ i : Fin 1, b8_130_3.comparison.inclusion i ⟨0,by decide⟩ = (eval b8_130_2.comparison.projection (fun i => ([true] : List Bool)[i.val]!)) i := by decide
def b8_130_3_outgoing_row_0 : Fact761D3.ImportedRow := ⟨2433,[0],9994,none⟩
theorem b8_130_3_outgoing_row_0_column : ∀ i : Fin 0, (queryStored 1 b8_130_3_outgoing_row_0 3).map (fun v => (eval b11_132_2.comparison.projection v) i) = some (matrixOf 0 1 b8_130_3.outgoing i ⟨0,by decide⟩) := by decide
def b9_131_3 : WireComparison := ⟨1,1,0,0,0,[],[],[],[],[],[]⟩
theorem b9_131_3_complete : b9_131_3.Valid := by lin_cert using ()
def b12_133_3 : WireComparison := ⟨1,0,1,0,1,[],[],[true],[true],[],[]⟩
theorem b12_133_3_complete : b12_133_3.Valid := by lin_cert using ()
theorem b12_133_3_representative_0 : ∀ i : Fin 1, b12_133_3.comparison.inclusion i ⟨0,by decide⟩ = (eval b12_133_2.comparison.projection (fun i => ([true,false] : List Bool)[i.val]!)) i := by decide
def b12_133_3_outgoing_row_0 : Fact761D3.ImportedRow := ⟨2619,[0],9992,none⟩
theorem b12_133_3_outgoing_row_0_column : ∀ i : Fin 0, (queryStored 0 b12_133_3_outgoing_row_0 3).map (fun v => (eval b15_135_2.comparison.projection v) i) = some (matrixOf 0 1 b12_133_3.outgoing i ⟨0,by decide⟩) := by decide
def b13_134_3 : WireComparison := ⟨1,1,1,0,1,[false],[],[true],[true],[],[false]⟩
theorem b13_134_3_complete : b13_134_3.Valid := by lin_cert using ()
theorem b13_134_3_representative_0 : ∀ i : Fin 1, b13_134_3.comparison.inclusion i ⟨0,by decide⟩ = (eval b13_134_2.comparison.projection (fun i => ([true] : List Bool)[i.val]!)) i := by decide
def b13_134_3_outgoing_row_0 : Fact761D3.ImportedRow := ⟨2681,[0],9993,none⟩
theorem b13_134_3_outgoing_row_0_column : ∀ i : Fin 1, (queryStored 2 b13_134_3_outgoing_row_0 3).map (fun v => (eval b16_136_2.comparison.projection v) i) = some (matrixOf 1 1 b13_134_3.outgoing i ⟨0,by decide⟩) := by decide
def b17_137_3 : WireComparison := ⟨1,3,2,1,1,[false,true,false,false,false,false],[false,false],[true,false],[true,false],[false,false],[false,false,false,true,false,false]⟩
theorem b17_137_3_complete : b17_137_3.Valid := by lin_cert using ()
theorem b17_137_3_representative_0 : ∀ i : Fin 2, b17_137_3.comparison.inclusion i ⟨0,by decide⟩ = (eval b17_137_2.comparison.projection (fun i => ([false,false,true] : List Bool)[i.val]!)) i := by decide
def b17_137_3_outgoing_row_0 : Fact761D3.ImportedRow := ⟨2903,[2],9996,some [1,2]⟩
theorem b17_137_3_outgoing_row_0_column : ∀ i : Fin 3, (queryStored 4 b17_137_3_outgoing_row_0 3).map (fun v => (eval b20_139_2.comparison.projection v) i) = some (matrixOf 3 2 b17_137_3.outgoing i ⟨0,by decide⟩) := by decide
def b17_137_3_outgoing_row_1 : Fact761D3.ImportedRow := ⟨2904,[0,1],9997,some [1]⟩
theorem b17_137_3_outgoing_row_1_column : ∀ i : Fin 3, (queryStored 4 b17_137_3_outgoing_row_1 3).map (fun v => (eval b20_139_2.comparison.projection v) i) = some (matrixOf 3 2 b17_137_3.outgoing i ⟨1,by decide⟩) := by decide
def b17_137_3_incoming_row_0 : Fact761D3.ImportedRow := ⟨2771,[0],9994,none⟩
theorem b17_137_3_incoming_row_0_column : ∀ i : Fin 2, (queryStored 3 b17_137_3_incoming_row_0 3).map (fun v => (eval b17_137_2.comparison.projection v) i) = some (matrixOf 2 1 b17_137_3.incoming i ⟨0,by decide⟩) := by decide
def b3_126_4 : WireComparison := ⟨1,0,0,0,0,[],[],[],[],[],[]⟩
theorem b3_126_4_complete : b3_126_4.Valid := by lin_cert using ()
def b8_130_4 : WireComparison := ⟨1,1,1,0,1,[false],[],[true],[true],[],[false]⟩
theorem b8_130_4_complete : b8_130_4.Valid := by lin_cert using ()
theorem b8_130_4_representative_0 : ∀ i : Fin 1, b8_130_4.comparison.inclusion i ⟨0,by decide⟩ = (eval b8_130_3.comparison.projection (eval b8_130_2.comparison.projection (fun i => ([true] : List Bool)[i.val]!))) i := by decide
def b8_130_4_outgoing_row_0 : Fact761D3.ImportedRow := ⟨2433,[0],9994,none⟩
theorem b8_130_4_outgoing_row_0_column : ∀ i : Fin 1, (queryStored 2 b8_130_4_outgoing_row_0 4).map (fun v => (eval b12_133_3.comparison.projection (eval b12_133_2.comparison.projection v)) i) = some (matrixOf 1 1 b8_130_4.outgoing i ⟨0,by decide⟩) := by decide
def b13_134_4 : WireComparison := ⟨1,1,1,0,1,[false],[],[true],[true],[],[false]⟩
theorem b13_134_4_complete : b13_134_4.Valid := by lin_cert using ()
theorem b13_134_4_representative_0 : ∀ i : Fin 1, b13_134_4.comparison.inclusion i ⟨0,by decide⟩ = (eval b13_134_3.comparison.projection (eval b13_134_2.comparison.projection (fun i => ([true] : List Bool)[i.val]!))) i := by decide
def b13_134_4_outgoing_row_0 : Fact761D3.ImportedRow := ⟨2681,[0],9993,none⟩
theorem b13_134_4_outgoing_row_0_column : ∀ i : Fin 1, (queryStored 3 b13_134_4_outgoing_row_0 4).map (fun v => (eval b17_137_3.comparison.projection (eval b17_137_2.comparison.projection v)) i) = some (matrixOf 1 1 b13_134_4.outgoing i ⟨0,by decide⟩) := by decide
def b8_130_5 : WireComparison := ⟨1,1,1,0,1,[false],[],[true],[true],[],[false]⟩
theorem b8_130_5_complete : b8_130_5.Valid := by lin_cert using ()
theorem b8_130_5_representative_0 : ∀ i : Fin 1, b8_130_5.comparison.inclusion i ⟨0,by decide⟩ = (eval b8_130_4.comparison.projection (eval b8_130_3.comparison.projection (eval b8_130_2.comparison.projection (fun i => ([true] : List Bool)[i.val]!)))) i := by decide
def b8_130_5_outgoing_row_0 : Fact761D3.ImportedRow := ⟨2433,[0],9994,none⟩
theorem b8_130_5_outgoing_row_0_column : ∀ i : Fin 1, (queryStored 1 b8_130_5_outgoing_row_0 5).map (fun v => (eval b13_134_4.comparison.projection (eval b13_134_3.comparison.projection (eval b13_134_2.comparison.projection v))) i) = some (matrixOf 1 1 b8_130_5.outgoing i ⟨0,by decide⟩) := by decide
theorem b2_125_2_incoming_link : b2_125_2.incoming = b0_124_2.outgoing := by decide
theorem b3_126_2_incoming_link : b3_126_2.incoming = b1_125_2.outgoing := by decide
theorem b6_128_2_incoming_link : b6_128_2.incoming = b4_127_2.outgoing := by decide
theorem b7_129_2_incoming_link : b7_129_2.incoming = b5_128_2.outgoing := by decide
theorem b7_129_3_incoming_link : b7_129_3.incoming = b4_127_3.outgoing := by decide
theorem b8_130_2_incoming_link : b8_130_2.incoming = b6_129_2.outgoing := by decide
theorem b10_131_2_incoming_link : b10_131_2.incoming = b8_130_2.outgoing := by decide
theorem b11_132_2_incoming_link : b11_132_2.incoming = b9_131_2.outgoing := by decide
theorem b12_133_2_incoming_link : b12_133_2.incoming = b10_132_2.outgoing := by decide
theorem b12_133_3_incoming_link : b12_133_3.incoming = b9_131_3.outgoing := by decide
theorem b15_135_2_incoming_link : b15_135_2.incoming = b13_134_2.outgoing := by decide
theorem b16_136_2_incoming_link : b16_136_2.incoming = b14_135_2.outgoing := by decide
def stages : List Stage := [⟨b8_130_2,[true]⟩,⟨b8_130_3,[true]⟩,⟨b8_130_4,[true]⟩,⟨b8_130_5,[true]⟩]
theorem named_finite_E6 : TrajectoryValid stages := by lin_cert using ()
end Fact719TrajectoryCertificates
