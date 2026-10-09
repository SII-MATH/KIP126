import NamedPageComparison.Fact761D3
namespace Fact715TrajectoryCertificates.ConditionalData
open NamedPageComparison
open LinearCertificates PageTransitionCertificates
def queryStored (n : Nat) (row : Fact761D3.ImportedRow) (page : Nat) : Option (Vec n) := match PropagationCertificates.decodeLevel row.level with | some (.outgoing eventPage) => if 2 ≤ page ∧ page < eventPage then some (fun _ => false) else if page = eventPage then row.diff.map (fun entries i => entries.contains i.val) else none | _ => none
def b4_131_2 : WireComparison := ⟨1,2,1,1,0,[false,true],[false],[],[],[false],[false,true]⟩
theorem b4_131_2_complete : b4_131_2.Valid := by lin_cert using ()
def b7_133_2 : WireComparison := ⟨1,5,2,1,1,[false,false,false,false,false,false,false,false,false,false],[false,true],[true,false],[true,false],[false,true],[false,false,false,false,false,false,false,false,false,false]⟩
theorem b7_133_2_complete : b7_133_2.Valid := by lin_cert using ()
theorem b7_133_2_representative_0 : ∀ i : Fin 2, b7_133_2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([true,false] : List Bool)[i.val]!) i := by decide
def b8_134_2 : WireComparison := ⟨1,5,6,2,4,[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false],[false,false,false,false,false,false,false,false,false,false,false,true],[false,true,false,false,false,false,false,false,false,false,false,true,false,true,true,false,true,false,false,false,false,false,false,false],[false,false,false,false,true,false,true,false,false,false,false,false,true,false,false,true,false,false,false,false,true,false,false,false],[false,false,false,false,false,false,false,false,false,false,false,true],[false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false]⟩
theorem b8_134_2_complete : b8_134_2.Valid := by lin_cert using ()
theorem b8_134_2_representative_0 : ∀ i : Fin 6, b8_134_2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([false,false,false,false,true,false] : List Bool)[i.val]!) i := by decide
theorem b8_134_2_representative_1 : ∀ i : Fin 6, b8_134_2.comparison.inclusion i ⟨1,by decide⟩ = (fun i => ([true,false,false,true,false,false] : List Bool)[i.val]!) i := by decide
theorem b8_134_2_representative_2 : ∀ i : Fin 6, b8_134_2.comparison.inclusion i ⟨2,by decide⟩ = (fun i => ([false,false,false,true,false,false] : List Bool)[i.val]!) i := by decide
theorem b8_134_2_representative_3 : ∀ i : Fin 6, b8_134_2.comparison.inclusion i ⟨3,by decide⟩ = (fun i => ([false,false,true,false,false,false] : List Bool)[i.val]!) i := by decide
def b10_135_2 : WireComparison := ⟨1,5,5,6,1,[false,false,false,false,false,false,true,false,false,false,false,true,false,false,false,false,false,true,false,false,false,false,true,false,true],[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false],[true,false,false,false,false],[true,false,false,false,false],[false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false],[false,false,false,false,false,false,true,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,true,true]⟩
theorem b10_135_2_complete : b10_135_2.Valid := by lin_cert using ()
theorem b10_135_2_representative_0 : ∀ i : Fin 5, b10_135_2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([true,false,false,false,false] : List Bool)[i.val]!) i := by decide
def b11_136_2 : WireComparison := ⟨1,4,5,6,4,[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true],[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false],[false,false,false,true,true,false,false,false,false,true,false,false,false,false,true,false,false,false,false,false],[false,true,false,false,false,false,false,true,false,false,false,false,false,true,false,true,false,false,false,false],[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false],[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true]⟩
theorem b11_136_2_complete : b11_136_2.Valid := by lin_cert using ()
theorem b11_136_2_representative_0 : ∀ i : Fin 5, b11_136_2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([false,true,false,false,false] : List Bool)[i.val]!) i := by decide
theorem b11_136_2_representative_1 : ∀ i : Fin 5, b11_136_2.comparison.inclusion i ⟨1,by decide⟩ = (fun i => ([false,false,true,false,false] : List Bool)[i.val]!) i := by decide
theorem b11_136_2_representative_2 : ∀ i : Fin 5, b11_136_2.comparison.inclusion i ⟨2,by decide⟩ = (fun i => ([false,false,false,true,false] : List Bool)[i.val]!) i := by decide
theorem b11_136_2_representative_3 : ∀ i : Fin 5, b11_136_2.comparison.inclusion i ⟨3,by decide⟩ = (fun i => ([true,false,false,false,false] : List Bool)[i.val]!) i := by decide
def b12_137_2 : WireComparison := ⟨1,5,5,5,2,[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,true,false,false,false],[false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false],[false,false,false,false,false,false,true,false,true,true],[false,false,false,true,false,false,false,false,true,true],[false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false],[false,false,false,true,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false]⟩
theorem b12_137_2_complete : b12_137_2.Valid := by lin_cert using ()
theorem b12_137_2_representative_0 : ∀ i : Fin 5, b12_137_2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([false,false,false,true,true] : List Bool)[i.val]!) i := by decide
theorem b12_137_2_representative_1 : ∀ i : Fin 5, b12_137_2.comparison.inclusion i ⟨1,by decide⟩ = (fun i => ([false,false,false,false,true] : List Bool)[i.val]!) i := by decide
def b14_138_2 : WireComparison := ⟨1,3,5,5,1,[false,false,false,false,false,true,true,false,false,false,false,true,false,false,false],[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,true,false,false,false],[false,false,true,false,false],[false,false,true,false,false],[false,false,false,true,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false],[false,true,true,false,false,true,false,false,false,false,false,false,false,false,false]⟩
theorem b14_138_2_complete : b14_138_2.Valid := by lin_cert using ()
theorem b14_138_2_representative_0 : ∀ i : Fin 5, b14_138_2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([false,false,true,false,false] : List Bool)[i.val]!) i := by decide
def b15_139_2 : WireComparison := ⟨1,4,4,5,2,[false,false,false,false,false,false,false,false,false,true,true,true,false,true,false,true],[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false],[true,false,false,true,false,false,false,true],[true,false,false,false,false,false,false,true],[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false],[false,false,false,false,false,false,false,true,false,false,true,true,false,false,false,false]⟩
theorem b15_139_2_complete : b15_139_2.Valid := by lin_cert using ()
theorem b15_139_2_representative_0 : ∀ i : Fin 4, b15_139_2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([true,false,false,false] : List Bool)[i.val]!) i := by decide
theorem b15_139_2_representative_1 : ∀ i : Fin 4, b15_139_2.comparison.inclusion i ⟨1,by decide⟩ = (fun i => ([false,true,false,true] : List Bool)[i.val]!) i := by decide
def b18_141_2 : WireComparison := ⟨1,3,3,5,1,[false,false,false,false,false,false,true,true,false],[false,false,false,false,false,false,false,false,false,false,false,false,false,true,false],[true,true,false],[false,true,false],[false,false,false,false,false,false,false,false,false,false,false,true,false,false,false],[false,false,true,false,false,false,false,false,false]⟩
theorem b18_141_2_complete : b18_141_2.Valid := by lin_cert using ()
theorem b18_141_2_representative_0 : ∀ i : Fin 3, b18_141_2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([true,true,false] : List Bool)[i.val]!) i := by decide
def b7_133_3 : WireComparison := ⟨1,1,1,0,1,[false],[],[true],[true],[],[false]⟩
theorem b7_133_3_complete : b7_133_3.Valid := by lin_cert using ()
theorem b7_133_3_representative_0 : ∀ i : Fin 1, b7_133_3.comparison.inclusion i ⟨0,by decide⟩ = (eval b7_133_2.comparison.projection (fun i => ([true,false] : List Bool)[i.val]!)) i := by decide
def b7_133_3_outgoing_row_0 : Fact761D3.ImportedRow := ⟨2632,[0],9982,none⟩
theorem b7_133_3_outgoing_row_0_column : ∀ i : Fin 1, (queryStored 5 b7_133_3_outgoing_row_0 3).map (fun v => (eval b10_135_2.comparison.projection v) i) = some (matrixOf 1 1 b7_133_3.outgoing i ⟨0,by decide⟩) := by decide
def b11_136_3 : WireComparison := ⟨1,1,4,4,2,[false,false,false,false],[false,false,true,false,false,false,false,true,false,false,false,false,false,false,false,false],[false,false,false,false,true,false,false,true],[false,false,true,false,false,false,false,true],[false,false,false,false,false,false,false,false,true,false,false,false,false,true,false,false],[false,false,false,false]⟩
theorem b11_136_3_complete : b11_136_3.Valid := by lin_cert using ()
theorem b11_136_3_representative_0 : ∀ i : Fin 4, b11_136_3.comparison.inclusion i ⟨0,by decide⟩ = (eval b11_136_2.comparison.projection (fun i => ([false,false,false,true,false] : List Bool)[i.val]!)) i := by decide
theorem b11_136_3_representative_1 : ∀ i : Fin 4, b11_136_3.comparison.inclusion i ⟨1,by decide⟩ = (eval b11_136_2.comparison.projection (fun i => ([true,false,false,false,false] : List Bool)[i.val]!)) i := by decide
def b11_136_3_outgoing_row_0 : Fact761D3.ImportedRow := ⟨2850,[1],3,some [3]⟩
theorem b11_136_3_outgoing_row_0_boundary : PropagationCertificates.decodeLevel 3 = some (.incoming 3) := by decide
theorem b11_136_3_outgoing_row_0_column : ∀ i : Fin 1, matrixOf 1 4 b11_136_3.outgoing i ⟨0,by decide⟩ = (eval b14_138_2.comparison.projection (fun i => ([false,false,false,false,false] : List Bool)[i.val]!)) i := by decide
def b11_136_3_outgoing_row_1 : Fact761D3.ImportedRow := ⟨2851,[2],3,some [2]⟩
theorem b11_136_3_outgoing_row_1_boundary : PropagationCertificates.decodeLevel 3 = some (.incoming 3) := by decide
theorem b11_136_3_outgoing_row_1_column : ∀ i : Fin 1, matrixOf 1 4 b11_136_3.outgoing i ⟨1,by decide⟩ = (eval b14_138_2.comparison.projection (fun i => ([false,false,false,false,false] : List Bool)[i.val]!)) i := by decide
def b11_136_3_outgoing_row_2 : Fact761D3.ImportedRow := ⟨2852,[3],9995,none⟩
theorem b11_136_3_outgoing_row_2_column : ∀ i : Fin 1, (queryStored 5 b11_136_3_outgoing_row_2 3).map (fun v => (eval b14_138_2.comparison.projection v) i) = some (matrixOf 1 4 b11_136_3.outgoing i ⟨2,by decide⟩) := by decide
def b11_136_3_outgoing_row_3 : Fact761D3.ImportedRow := ⟨2853,[0],9996,some [0]⟩
theorem b11_136_3_outgoing_row_3_column : ∀ i : Fin 1, (queryStored 5 b11_136_3_outgoing_row_3 3).map (fun v => (eval b14_138_2.comparison.projection v) i) = some (matrixOf 1 4 b11_136_3.outgoing i ⟨3,by decide⟩) := by decide
def b11_136_3_incoming_row_0 : Fact761D3.ImportedRow := ⟨2701,[4],9983,none⟩
theorem b11_136_3_incoming_row_0_column : ∀ i : Fin 4, (queryStored 5 b11_136_3_incoming_row_0 3).map (fun v => (eval b11_136_2.comparison.projection v) i) = some (matrixOf 4 4 b11_136_3.incoming i ⟨0,by decide⟩) := by decide
def b11_136_3_incoming_row_1 : Fact761D3.ImportedRow := ⟨2702,[0,3],9994,none⟩
theorem b11_136_3_incoming_row_1_column : ∀ i : Fin 4, (queryStored 5 b11_136_3_incoming_row_1 3).map (fun v => (eval b11_136_2.comparison.projection v) i) = some (matrixOf 4 4 b11_136_3.incoming i ⟨1,by decide⟩) := by decide
def b11_136_3_incoming_row_2 : Fact761D3.ImportedRow := ⟨2703,[3],9997,some [1]⟩
theorem b11_136_3_incoming_row_2_column : ∀ i : Fin 4, (queryStored 5 b11_136_3_incoming_row_2 3).map (fun v => (eval b11_136_2.comparison.projection v) i) = some (matrixOf 4 4 b11_136_3.incoming i ⟨2,by decide⟩) := by decide
def b11_136_3_incoming_row_3 : Fact761D3.ImportedRow := ⟨2704,[2],9997,some [2]⟩
theorem b11_136_3_incoming_row_3_column : ∀ i : Fin 4, (queryStored 5 b11_136_3_incoming_row_3 3).map (fun v => (eval b11_136_2.comparison.projection v) i) = some (matrixOf 4 4 b11_136_3.incoming i ⟨3,by decide⟩) := by decide
def b15_139_3 : WireComparison := ⟨1,1,2,2,2,[false,false],[false,false,false,false],[true,false,false,true],[true,false,false,true],[false,false,false,false],[false,false]⟩
theorem b15_139_3_complete : b15_139_3.Valid := by lin_cert using ()
theorem b15_139_3_representative_0 : ∀ i : Fin 2, b15_139_3.comparison.inclusion i ⟨0,by decide⟩ = (eval b15_139_2.comparison.projection (fun i => ([true,false,false,false] : List Bool)[i.val]!)) i := by decide
theorem b15_139_3_representative_1 : ∀ i : Fin 2, b15_139_3.comparison.inclusion i ⟨1,by decide⟩ = (eval b15_139_2.comparison.projection (fun i => ([false,true,false,true] : List Bool)[i.val]!)) i := by decide
def b15_139_3_outgoing_row_0 : Fact761D3.ImportedRow := ⟨3075,[0],4,some [0]⟩
theorem b15_139_3_outgoing_row_0_boundary : PropagationCertificates.decodeLevel 4 = some (.incoming 4) := by decide
theorem b15_139_3_outgoing_row_0_column : ∀ i : Fin 1, matrixOf 1 2 b15_139_3.outgoing i ⟨0,by decide⟩ = (eval b18_141_2.comparison.projection (fun i => ([false,false,false] : List Bool)[i.val]!)) i := by decide
def b15_139_3_outgoing_row_1 : Fact761D3.ImportedRow := ⟨3076,[1,3],9000,none⟩
theorem b15_139_3_outgoing_row_1_raw_unknown : b15_139_3_outgoing_row_1.diff = none := by decide
def b15_139_3_incoming_row_0 : Fact761D3.ImportedRow := ⟨2919,[3,4],3,some [0]⟩
theorem b15_139_3_incoming_row_0_boundary : PropagationCertificates.decodeLevel 3 = some (.incoming 3) := by decide
theorem b15_139_3_incoming_row_0_column : ∀ i : Fin 2, matrixOf 2 2 b15_139_3.incoming i ⟨0,by decide⟩ = (eval b15_139_2.comparison.projection (fun i => ([false,false,false,false] : List Bool)[i.val]!)) i := by decide
def b15_139_3_incoming_row_1 : Fact761D3.ImportedRow := ⟨2920,[4],3,some [0,3]⟩
theorem b15_139_3_incoming_row_1_boundary : PropagationCertificates.decodeLevel 3 = some (.incoming 3) := by decide
theorem b15_139_3_incoming_row_1_column : ∀ i : Fin 2, matrixOf 2 2 b15_139_3.incoming i ⟨1,by decide⟩ = (eval b15_139_2.comparison.projection (fun i => ([false,false,false,false] : List Bool)[i.val]!)) i := by decide
def b11_136_4 : WireComparison := ⟨1,2,2,1,1,[false,true,false,false],[false,false],[true,false],[true,false],[false,false],[false,false,true,false]⟩
theorem b11_136_4_complete : b11_136_4.Valid := by lin_cert using ()
theorem b11_136_4_representative_0 : ∀ i : Fin 2, b11_136_4.comparison.inclusion i ⟨0,by decide⟩ = (eval b11_136_3.comparison.projection (eval b11_136_2.comparison.projection (fun i => ([false,false,false,true,false] : List Bool)[i.val]!))) i := by decide
def b11_136_4_outgoing_row_0 : Fact761D3.ImportedRow := ⟨2852,[3],9995,none⟩
theorem b11_136_4_outgoing_row_0_column : ∀ i : Fin 2, (queryStored 4 b11_136_4_outgoing_row_0 4).map (fun v => (eval b15_139_3.comparison.projection (eval b15_139_2.comparison.projection v)) i) = some (matrixOf 2 2 b11_136_4.outgoing i ⟨0,by decide⟩) := by decide
def b11_136_4_outgoing_row_1 : Fact761D3.ImportedRow := ⟨2853,[0],9996,some [0]⟩
theorem b11_136_4_outgoing_row_1_column : ∀ i : Fin 2, (queryStored 4 b11_136_4_outgoing_row_1 4).map (fun v => (eval b15_139_3.comparison.projection (eval b15_139_2.comparison.projection v)) i) = some (matrixOf 2 2 b11_136_4.outgoing i ⟨1,by decide⟩) := by decide
def b11_136_4_incoming_row_0 : Fact761D3.ImportedRow := ⟨2632,[0],9982,none⟩
theorem b11_136_4_incoming_row_0_column : ∀ i : Fin 2, (queryStored 5 b11_136_4_incoming_row_0 4).map (fun v => (eval b11_136_3.comparison.projection (eval b11_136_2.comparison.projection v)) i) = some (matrixOf 2 1 b11_136_4.incoming i ⟨0,by decide⟩) := by decide
theorem b10_135_2_incoming_link : b10_135_2.incoming = b8_134_2.outgoing := by decide
theorem b14_138_2_incoming_link : b14_138_2.incoming = b12_137_2.outgoing := by decide
def stages : List Stage := [⟨b11_136_2,[false,false,false,true,false]⟩,⟨b11_136_3,[false,false,true,false]⟩,⟨b11_136_4,[true,false]⟩]
theorem constructed_trajectory_checked : TrajectoryValid stages := by lin_cert using ()
end Fact715TrajectoryCertificates.ConditionalData
