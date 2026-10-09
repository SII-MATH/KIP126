import NamedPageComparison.Fact761D3
import Fact715PageCertificates.Survivor
namespace Fact715TrajectoryCertificates
open NamedPageComparison
open LinearCertificates PageTransitionCertificates
def queryStored (n : Nat) (row : Fact761D3.ImportedRow) (page : Nat) : Option (Vec n) := match PropagationCertificates.decodeLevel row.level with | some (.outgoing eventPage) => if 2 ≤ page ∧ page < eventPage then some (fun _ => false) else if page = eventPage then row.diff.map (fun entries i => entries.contains i.val) else none | _ => none
def b8_134_2 : WireComparison := ⟨1,5,6,2,4,[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false],[false,false,false,false,false,false,false,false,false,false,false,true],[false,true,false,false,false,false,false,false,false,false,false,true,false,true,true,false,true,false,false,false,false,false,false,false],[false,false,false,false,true,false,true,false,false,false,false,false,true,false,false,true,false,false,false,false,true,false,false,false],[false,false,false,false,false,false,false,false,false,false,false,true],[false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false]⟩
theorem b8_134_2_complete : b8_134_2.Valid := by lin_cert using ()
theorem b8_134_2_representative_0 : ∀ i : Fin 6, b8_134_2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([false,false,false,false,true,false] : List Bool)[i.val]!) i := by decide
theorem b8_134_2_representative_1 : ∀ i : Fin 6, b8_134_2.comparison.inclusion i ⟨1,by decide⟩ = (fun i => ([true,false,false,true,false,false] : List Bool)[i.val]!) i := by decide
theorem b8_134_2_representative_2 : ∀ i : Fin 6, b8_134_2.comparison.inclusion i ⟨2,by decide⟩ = (fun i => ([false,false,false,true,false,false] : List Bool)[i.val]!) i := by decide
theorem b8_134_2_representative_3 : ∀ i : Fin 6, b8_134_2.comparison.inclusion i ⟨3,by decide⟩ = (fun i => ([false,false,true,false,false,false] : List Bool)[i.val]!) i := by decide
def b11_136_2 : WireComparison := ⟨1,4,5,6,4,[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true],[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false],[false,false,false,true,true,false,false,false,false,true,false,false,false,false,true,false,false,false,false,false],[false,true,false,false,false,false,false,true,false,false,false,false,false,true,false,true,false,false,false,false],[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false],[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true]⟩
theorem b11_136_2_complete : b11_136_2.Valid := by lin_cert using ()
theorem b11_136_2_representative_0 : ∀ i : Fin 5, b11_136_2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([false,true,false,false,false] : List Bool)[i.val]!) i := by decide
theorem b11_136_2_representative_1 : ∀ i : Fin 5, b11_136_2.comparison.inclusion i ⟨1,by decide⟩ = (fun i => ([false,false,true,false,false] : List Bool)[i.val]!) i := by decide
theorem b11_136_2_representative_2 : ∀ i : Fin 5, b11_136_2.comparison.inclusion i ⟨2,by decide⟩ = (fun i => ([false,false,false,true,false] : List Bool)[i.val]!) i := by decide
theorem b11_136_2_representative_3 : ∀ i : Fin 5, b11_136_2.comparison.inclusion i ⟨3,by decide⟩ = (fun i => ([true,false,false,false,false] : List Bool)[i.val]!) i := by decide
def b14_138_2 : WireComparison := ⟨1,3,5,5,1,[false,false,false,false,false,true,true,false,false,false,false,true,false,false,false],[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,true,false,false,false],[false,false,true,false,false],[false,false,true,false,false],[false,false,false,true,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false],[false,true,true,false,false,true,false,false,false,false,false,false,false,false,false]⟩
theorem b14_138_2_complete : b14_138_2.Valid := by lin_cert using ()
theorem b14_138_2_representative_0 : ∀ i : Fin 5, b14_138_2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([false,false,true,false,false] : List Bool)[i.val]!) i := by decide
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
def stages : List Stage := [⟨b11_136_2,[false,false,false,true,false]⟩,⟨b11_136_3,[false,false,true,false]⟩]
theorem named_finite_E4 : TrajectoryValid stages := by lin_cert using ()
end Fact715TrajectoryCertificates
