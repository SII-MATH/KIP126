import KIP126.Main.Axiom.LinProgram.Interpretation.Presentation.Data

namespace KIP126.Classical.Adams

/-!
# 固定 Lin E₂ 表示：比较映射、页面乘法与相容性

来源：Zenodo 14875701，v126.3.cw49，PR #110 commit
ff39e95147712fc00cd3f700e0dd1f490d16b863；原 CSV 摘要见
`KIP126.External.Computation.LinE2.RawData`。
以下三项逐一对应 `LinE2Presentation` 的原字段；它们仍是开发期输入，
不声称已完成 Ext 计算验证、基表认证、高页微分或永久存活的证明。
-/
namespace LinE2PresentationInputs

/-- 数据：在 t ≤ 261 内，选择固定 Lin 商代数分量到同一内部球谱 E₂ 页的
ℤ-线性等价。等价本身尚未构造；它不是对 CSV 单项式构成基的证明。 -/
axiom comparison (s t : ℕ) (ht : t ≤ 261) :
    KIP126.LinE2.E2At s t ≃ₗ[ℤ] sphereAdamsData.Page 2 ((s : ℤ), (t : ℤ))

/-- 数据：为同一内部 E₂ 页选择各非负双次数间的双线性乘法。
原接口对这个数据字段没有次数上界，也没有提供其等于另行构造的规范
Adams 乘法的条件；此次拆分原样保留这两点。 -/
axiom product (s t s' t' : ℕ) :
    sphereAdamsData.Page 2 ((s : ℤ), (t : ℤ)) →ₗ[ℤ]
    sphereAdamsData.Page 2 ((s' : ℤ), (t' : ℤ)) →ₗ[ℤ]
      sphereAdamsData.Page 2 (((s + s' : ℕ) : ℤ), ((t + t' : ℕ) : ℤ))

/-- 性质：当总次数 t + t' ≤ 261 时，上述比较与上述乘法相容。
只迁移原条件，不补结合律、单位律或高页 Leibniz 等新假设。 -/
axiom comparison_mul (s t s' t' : ℕ) (h : t + t' ≤ 261)
    (x : KIP126.LinE2.E2At s t) (y : KIP126.LinE2.E2At s' t')
    (z : KIP126.LinE2.E2At (s + s') (t + t')) :
    x.val * y.val = z.val →
      comparison (s + s') (t + t') h z =
        product s t s' t' (comparison s t (by omega) x)
          (comparison s' t' (by omega) y)

end LinE2PresentationInputs

/-- 用逐项输入组装原有接口；旧名称保留，整包 axiom 已移除。 -/
noncomputable def linE2Presentation : LinE2Presentation where
  comparison := LinE2PresentationInputs.comparison
  product := LinE2PresentationInputs.product
  comparison_mul := LinE2PresentationInputs.comparison_mul

end KIP126.Classical.Adams
