import LinProgramReference.SteenrodAdams
import LinProgramReference.StableHomotopy

/-!
# Kervaire 局部 Adams 数学对象（K01–K13）

本文件只承载 Kervaire 论文中依赖 Lin Program 输出的数学命题接口。类必须是
Adams 谱序列中的有类型元素；h₆²、候选击中、Fact 7.6 和 Remark 7.7 不再
以字符串记录。实际论文数据和证明仍需后续实例化这些结构。
-/

namespace LinProgramReference

/-- 带论文/程序标签的 Adams 类；标签不承担数学语义，`class` 才是对象本身。 -/
structure KervaireAdamsClass (S : AdamsSpectralSequence) where
  /-- 人类可读的标签。 -/
  label : String
  /-- Adams 谱序列中的有类型类。 -/
  adamsClass : AdamsClass S

/-- Adams 页乘法中一个类的平方数据。 -/
structure AdamsSquareData (S : AdamsSpectralSequence)
    (M : AdamsMultiplication S) where
  /-- 被平方的类。 -/
  base : AdamsClass S
  /-- 平方类。 -/
  square : AdamsClass S
  /-- 平方的双次数是两份基类双次数之和。 -/
  degree : square.degree = Bidegree.add base.degree base.degree
  /-- 每一页的平方代表由页乘法给出。 -/
  representative : ∀ r,
    square.representative r =
      degree.symm ▸ M.multiply r base.degree base.degree
        (base.representative r) (base.representative r)

/-- 类在指定页及以后存活的数学断言。 -/
structure SurvivalClaim (S : AdamsSpectralSequence) where
  /-- 被声明存活的类。 -/
  adamsClass : AdamsClass S
  /-- 存活到的页。 -/
  page : Nat
  /-- 真实的存活谓词。 -/
  survives : SurvivesTo S page adamsClass

/-- 永久循环断言；它要求每一页都是循环且没有后续击中。 -/
structure PermanentCycleClaim (S : AdamsSpectralSequence) where
  /-- 被声明永久存活的类。 -/
  adamsClass : AdamsClass S
  /-- 永久循环谓词证明。 -/
  permanent : IsPermanentCycle S adamsClass

/-- 一个具体的潜在微分通道。 -/
structure DifferentialChannel (S : AdamsSpectralSequence) where
  /-- 微分阶数。 -/
  page : Nat
  /-- 源类。 -/
  source : AdamsClass S
  /-- 目标类。 -/
  target : AdamsClass S
  /-- 源、目标双次数满足 Adams 微分目标公式。 -/
  degree : target.degree = AdamsTarget page source.degree
  /-- 目标确实是该微分的代表值。 -/
  equation : S.differential page source.degree (source.representative page) =
    degree.symm ▸ target.representative page

/-- 指定类没有被任何相关页的微分击中。 -/
def NoAdamsHit (S : AdamsSpectralSequence) (x : AdamsClass S)
    (first last : Nat) : Prop :=
  ∀ r, first ≤ r → r ≤ last → ¬ IsHit S r x

/-- 有限候选集合中唯一能够存活的类。 -/
structure UniqueSurvivor (S : AdamsSpectralSequence) where
  /-- 候选类列表。 -/
  candidates : List (AdamsClass S)
  /-- 列表没有重复类。 -/
  nodup : candidates.Nodup
  /-- 指定唯一候选。 -/
  survivor : AdamsClass S
  /-- 指定候选在列表中。 -/
  survivorMem : survivor ∈ candidates
  /-- 其他候选都不是存活类。 -/
  unique : ∀ x, x ∈ candidates → x ≠ survivor → ¬ IsPermanentCycle S x

/-- Kervaire 第 7 节局部数学数据的有类型封装。 -/
structure KervaireLocalMathematics (S : AdamsSpectralSequence)
    (M : AdamsMultiplication S) where
  /-- h₆² 的 Adams 类。 -/
  h6Squared : AdamsClass S
  /-- h₆² 是某个 h₆ 类的平方。 -/
  h6SquareData : AdamsSquareData S M
  /-- h₆² 的候选击中通道。 -/
  h6Channels : List (DifferentialChannel S)
  /-- 每个列出的通道确实以 h₆² 为目标。 -/
  channelTargets : ∀ c, c ∈ h6Channels → c.target.degree = h6Squared.degree
  /-- 论文局部结论：h₆² 在指定范围内没有被击中。 -/
  h6NoHit : ∀ r, 2 ≤ r → ¬ IsHit S r h6Squared
  /-- Fact 7.6(1) 的页级存活断言。 -/
  fact76_1 : SurvivalClaim S
  /-- Fact 7.6(2) 的潜在击杀通道集合。 -/
  fact76_2 : List (DifferentialChannel S)
  /-- Fact 7.6(3) 的永久循环断言。 -/
  fact76_3 : PermanentCycleClaim S
  /-- Fact 7.6(4) 的唯一存活类断言。 -/
  fact76_4 : UniqueSurvivor S
  /-- Remark 7.7 的候选排除断言。 -/
  remark77 : ∀ c, c ∈ fact76_2 → ¬ IsHit S c.page c.target

end LinProgramReference
