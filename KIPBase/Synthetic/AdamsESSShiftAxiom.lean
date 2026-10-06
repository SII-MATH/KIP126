/-
  KIPBase.Synthetic.AdamsESSShiftAxiom
  Adams ESS 权重平移相容性的外部公理输入。
-/
import KIPBase.Synthetic.WeightwiseShift

namespace KIPBase.Synthetic

open CategoryTheory CategoryTheory.Limits KIPBase.SpectralSequence

universe u v

noncomputable section

variable (Syn : Type u) [Category.{v} Syn] [Preadditive Syn]
    [HasZeroObject Syn] [HasShift Syn ℤ]
    [∀ n : ℤ, Functor.Additive (shiftFunctor Syn n)]
    [MonoidalCategory Syn]
    [Pretriangulated Syn] [SyntheticCategory Syn]

/-- 外部输入：lambda-boundary 的权重平移保持完整的 ESS calculus。

这条公理一次性提供所有自然数 `n` 的平移相容性。其内容不仅是页群
同构，还包括代表关系、essentiality 与 relation-level no-crossing 的保持；
因而正好对应 Blueprint 中的 weightwise ESS transport 输入。 -/
axiom syntheticAdamsESSShiftSystem_axiom :
    SyntheticAdamsESSShiftSystem (Syn := Syn)

/-- 将上述外部输入注册为后续构造所需的类型类实例。 -/
noncomputable instance syntheticAdamsESSShiftSystem_of_axiom :
    SyntheticAdamsESSShiftSystem (Syn := Syn) :=
  syntheticAdamsESSShiftSystem_axiom Syn

/-- 从平移系统公理中取出单个映射、次数和边界阶数的 ESS calculus 传输。 -/
noncomputable def syntheticFESS_lambdaBoundary_transport
    {X Y : Syn} (f : X ⟶ Y) (degree : ℤ × ℤ) (n : ℕ) :
    ESSCalculusTransport
      (syntheticFESS f degree)
      (syntheticFESS
        ((lambdaBoundaryShiftFunctor (Syn := Syn) n).map f)
        (degree + (1, -(n : ℤ)))) :=
  (SyntheticAdamsESSShiftSystem.lambdaBoundary (Syn := Syn) n).ess f degree

/--
δ-ESS 短页像与经典边界像的统一 ambient 数据。

两种像必须先被放到同一个加法群对象中，才能陈述 Blueprint 所需的
“像相等”命题。本结构只记录真实的子对象，不把相等性偷写成公理。
-/
structure DeltaESSBoundaryImages where
  ambient : AddCommGrpCat.{0}
  deltaImage : Subobject ambient
  classicalBoundaryImage : Subobject ambient

namespace DeltaESSBoundaryImages

/-- 两个边界像相等的正式命题，供后续比较定理证明。 -/
def Equal (D : DeltaESSBoundaryImages) : Prop :=
  D.deltaImage = D.classicalBoundaryImage

end DeltaESSBoundaryImages

end

end KIPBase.Synthetic
