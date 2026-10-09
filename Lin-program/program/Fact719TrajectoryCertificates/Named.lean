import Fact719TrajectoryCertificates.Generated
namespace Fact719TrajectoryCertificates
open LinearCertificates PageTransitionCertificates NamedElementCertificates

theorem initial_matrices_match :
    b8_130_2.outgoing = Fact719PageCertificates.wire.outgoing ∧
    b8_130_2.incoming = Fact719PageCertificates.wire.incoming := by decide

theorem initial_named_vector :
    (⟨b8_130_2,[true]⟩ : Stage).vector = Fact719PageCertificates.target := by
  change (fun i : Fin 1 => ([true] : List Bool)[i.val]?.getD false) = Fact719PageCertificates.target
  funext i
  have hi : i = 0 := by omega
  subst i
  rfl

-- The exact initial vector has the literal polynomial semantics already proved.
theorem initial_literal {R : Type*} [CommRing R] [CharP R 2]
    (v : Nat → R)
    (hr : ∀ r ∈ namedCase11.relations, evaluate v r = 0) :
    evaluate v Fact719PageCertificates.decoded = evaluate v namedCase11.input :=
  Fact719PageCertificates.named_expression_evaluation v hr

-- The raw unknown d6 is deliberately outside the last checked differential.
def rawUnknownPage : NamedPageComparison.Fact761D3.ImportedRow :=
  ⟨2433,[0],9994,none⟩
theorem unknown_d6_preserved :
    NamedPageComparison.Fact761D3.queryStored rawUnknownPage 6 = none := by decide

end Fact719TrajectoryCertificates
