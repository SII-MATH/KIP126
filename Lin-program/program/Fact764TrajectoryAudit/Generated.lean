import NamedPageComparison.Fact761D3
import BranchReplayCertificates.E4Descent
namespace Fact764TrajectoryCertificates
open NamedPageComparison
open LinearCertificates PageTransitionCertificates
def queryStored (n : Nat) (row : Fact761D3.ImportedRow) (page : Nat) : Option (Vec n) := match PropagationCertificates.decodeLevel row.level with | some (.outgoing eventPage) => if 2 ≤ page ∧ page < eventPage then some (fun _ => false) else if page = eventPage then row.diff.map (fun entries i => entries.contains i.val) else none | _ => none
def b22_148_2 : WireComparison := ⟨1,1,2,3,2,[false,false],[false,false,false,false,false,false],[false,true,true,false],[false,true,true,false],[false,false,false,false,false,false],[false,false]⟩
theorem b22_148_2_complete : b22_148_2.Valid := by lin_cert using ()
theorem b22_148_2_representative_0 : ∀ i : Fin 2, b22_148_2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([false,true] : List Bool)[i.val]!) i := by decide
theorem b22_148_2_representative_1 : ∀ i : Fin 2, b22_148_2.comparison.inclusion i ⟨1,by decide⟩ = (fun i => ([true,false] : List Bool)[i.val]!) i := by decide
def b25_150_2 : WireComparison := ⟨1,2,4,2,3,[true,true,false,false,false,false,false,false],[false,false,false,false,false,false,false,false],[false,false,true,false,false,true,false,true,false,true,false,false],[false,false,false,true,false,false,true,false,false,true,false,false],[false,false,false,false,false,false,false,false],[true,false,false,false,false,false,false,false]⟩
theorem b25_150_2_complete : b25_150_2.Valid := by lin_cert using ()
theorem b25_150_2_representative_0 : ∀ i : Fin 4, b25_150_2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([false,false,false,true] : List Bool)[i.val]!) i := by decide
theorem b25_150_2_representative_1 : ∀ i : Fin 4, b25_150_2.comparison.inclusion i ⟨1,by decide⟩ = (fun i => ([false,false,true,false] : List Bool)[i.val]!) i := by decide
theorem b25_150_2_representative_2 : ∀ i : Fin 4, b25_150_2.comparison.inclusion i ⟨2,by decide⟩ = (fun i => ([true,true,false,false] : List Bool)[i.val]!) i := by decide
def b28_152_2 : WireComparison := ⟨1,3,2,1,0,[true,false,false,false,false,false],[false,true],[],[],[false,true],[true,false,false,false,false,false]⟩
theorem b28_152_2_complete : b28_152_2.Valid := by lin_cert using ()
def b25_150_3 : WireComparison := ⟨1,0,3,2,3,[],[false,false,false,false,false,false],[true,false,false,false,true,false,false,false,true],[true,false,false,false,true,false,false,false,true],[false,false,false,false,false,false],[]⟩
theorem b25_150_3_complete : b25_150_3.Valid := by lin_cert using ()
theorem b25_150_3_representative_0 : ∀ i : Fin 3, b25_150_3.comparison.inclusion i ⟨0,by decide⟩ = (eval b25_150_2.comparison.projection (fun i => ([false,false,false,true] : List Bool)[i.val]!)) i := by decide
theorem b25_150_3_representative_1 : ∀ i : Fin 3, b25_150_3.comparison.inclusion i ⟨1,by decide⟩ = (eval b25_150_2.comparison.projection (fun i => ([false,false,true,false] : List Bool)[i.val]!)) i := by decide
theorem b25_150_3_representative_2 : ∀ i : Fin 3, b25_150_3.comparison.inclusion i ⟨2,by decide⟩ = (eval b25_150_2.comparison.projection (fun i => ([true,true,false,false] : List Bool)[i.val]!)) i := by decide
def b25_150_3_outgoing_row_0 : Fact761D3.ImportedRow := ⟨3992,[3],4,some [1]⟩
theorem b25_150_3_outgoing_row_0_boundary : PropagationCertificates.decodeLevel 4 = some (.incoming 4) := by decide
theorem b25_150_3_outgoing_row_0_column : ∀ i : Fin 0, matrixOf 0 3 b25_150_3.outgoing i ⟨0,by decide⟩ = (eval b28_152_2.comparison.projection (fun i => ([false,false] : List Bool)[i.val]!)) i := by decide
def b25_150_3_outgoing_row_1 : Fact761D3.ImportedRow := ⟨3993,[2],9000,none⟩
theorem b25_150_3_outgoing_row_1_zero_target (actual : Vec 0) : actual = (fun i => matrixOf 0 3 b25_150_3.outgoing i ⟨1,by decide⟩) := by funext i; exact Fin.elim0 i
def b25_150_3_outgoing_row_2 : Fact761D3.ImportedRow := ⟨3994,[0,1],9000,none⟩
theorem b25_150_3_outgoing_row_2_zero_target (actual : Vec 0) : actual = (fun i => matrixOf 0 3 b25_150_3.outgoing i ⟨2,by decide⟩) := by funext i; exact Fin.elim0 i
def b25_150_3_incoming_row_0 : Fact761D3.ImportedRow := ⟨3814,[1],3,some [4]⟩
theorem b25_150_3_incoming_row_0_boundary : PropagationCertificates.decodeLevel 3 = some (.incoming 3) := by decide
theorem b25_150_3_incoming_row_0_column : ∀ i : Fin 3, matrixOf 3 2 b25_150_3.incoming i ⟨0,by decide⟩ = (eval b25_150_2.comparison.projection (fun i => ([false,false,false,false] : List Bool)[i.val]!)) i := by decide
def b25_150_3_incoming_row_1 : Fact761D3.ImportedRow := ⟨3815,[0],3,some [1,4]⟩
theorem b25_150_3_incoming_row_1_boundary : PropagationCertificates.decodeLevel 3 = some (.incoming 3) := by decide
theorem b25_150_3_incoming_row_1_column : ∀ i : Fin 3, matrixOf 3 2 b25_150_3.incoming i ⟨1,by decide⟩ = (eval b25_150_2.comparison.projection (fun i => ([false,false,false,false] : List Bool)[i.val]!)) i := by decide
def stages : List Stage := [⟨b25_150_2,[false,false,true,false]⟩,⟨b25_150_3,[false,true,false]⟩]
theorem target_finite_E4 : TrajectoryValid stages := by lin_cert using ()
end Fact764TrajectoryCertificates
