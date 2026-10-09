import Lean

/-!
# 有限 Adams 数据的数学对象

这一层只表示 Lin Program 输出的有限、可重现表格。表格不是字符串日志：
每个元素有双次数，每条微分有页数、源和目标。外部程序只能提供这些数据，
而后续检查器负责验证其内部一致性。
-/

namespace KervaireProgram

/-- Adams 元素的双次数：过滤次数 `s` 与内部次数 `t`。 -/
structure Bidegree where
  filtration : Nat
  internal : Int
deriving DecidableEq, Repr, Lean.ToJson, Lean.FromJson, Lean.ToExpr

/-- Adams 双次数对应的 stem `t - s`。 -/
def Bidegree.stem (d : Bidegree) : Int := d.internal - (d.filtration : Int)

/-- 有限 Adams 页中的一个带稳定标识符的元素。 -/
structure Class where
  id : Nat
  name : String
  degree : Bidegree
deriving DecidableEq, Repr, Lean.ToJson, Lean.FromJson, Lean.ToExpr

/-- 一条有限 Adams 微分记录 `d_page(source) = target`。 -/
structure Differential where
  page : Nat
  source : Nat
  target : Nat
deriving DecidableEq, Repr, Lean.ToJson, Lean.FromJson, Lean.ToExpr

/-- 程序导出的一个有限 Adams 数据集。 -/
structure AdamsData where
  object : String
  classes : List Class
  differentials : List Differential
deriving Repr, Lean.ToJson, Lean.FromJson, Lean.ToExpr

/-- 表中的元素标识符没有重复；这保证查找语义唯一。 -/
def ClassesUnique (d : AdamsData) : Prop :=
  (d.classes.map Class.id).Nodup

/-- 微分阶数满足 Adams 页约定，且源、目标都出现在同一张表中。 -/
def differentialWellFormed (d : AdamsData) (δ : Differential) : Bool :=
  decide (2 ≤ δ.page) && d.classes.any (fun source =>
    source.id == δ.source && d.classes.any (fun target =>
      target.id == δ.target &&
      target.degree.filtration == source.degree.filtration + δ.page &&
      target.degree.internal == source.degree.internal + (δ.page : Int) - 1))

/-- 可执行格式检查对应的数学命题。 -/
def DifferentialWellFormed (d : AdamsData) (δ : Differential) : Prop :=
  differentialWellFormed d δ = true

/-- 全部微分记录均符合有限表的基本格式。 -/
def DataWellFormed (d : AdamsData) : Prop :=
  ClassesUnique d ∧ ∀ δ, δ ∈ d.differentials → DifferentialWellFormed d δ

/-- 元素是否存在于数据表。 -/
def ClassPresent (d : AdamsData) (id : Nat) : Bool :=
  decide (∃ x ∈ d.classes, x.id = id)

/-- 微分是否出现在数据表。 -/
def HasDifferential (d : AdamsData) (δ : Differential) : Bool :=
  decide (δ ∈ d.differentials)

/-- 目标为 `id` 且页数在指定区间内的全部微分。 -/
def Incoming (d : AdamsData) (id first last : Nat) : List Differential :=
  d.differentials.filter fun δ =>
    δ.target = id && first ≤ δ.page && δ.page ≤ last

/-- 目标为 `id` 的全部微分（用于永久循环检查）。 -/
def AllIncoming (d : AdamsData) (id : Nat) : List Differential :=
  d.differentials.filter fun δ => δ.target = id && 2 ≤ δ.page

/-- 一组有限候选中，除了指定元素外均被排除。 -/
def CandidateElimination (candidates : List Nat) (survivor : Nat)
    (eliminated : List Nat) : Prop :=
  candidates.Nodup ∧ survivor ∈ candidates ∧
    eliminated = candidates.filter (· ≠ survivor)

/-- All supplied records are checked, including records unrelated to the query. -/
def dataWellFormed (d : AdamsData) : Bool :=
  decide (d.classes.map Class.id).Nodup &&
  d.classes.all (fun c => decide (0 ≤ c.degree.stem)) &&
  d.differentials.all (differentialWellFormed d)

/-- Outgoing records also prevent a class from being a cycle. -/
def Outgoing (d : AdamsData) (id first last : Nat) : List Differential :=
  d.differentials.filter fun δ =>
    δ.source == id && first ≤ δ.page && δ.page ≤ last

end KervaireProgram
