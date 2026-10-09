import KervaireProgram.Model

/-!
# Kervaire 结果证书

`Certificate` 是稳定、可解析、可复现的核心格式：版本号和结果标识位于外层，
每种数学结果使用明确的证据构造。证书不含 Lean 命题证明字段，证明由检查器
在内核中重新建立。
-/

namespace KervaireProgram

/-- Kervaire 论文中程序输出结果的统一类型。 -/
inductive ResultSpec where
  /-- 指定类在 `[first,last]` 页区间内没有被击中。 -/
  | notHit (classId first last : Nat)
  /-- 指定类存活到第 `page` 页。 -/
  | survives (classId page : Nat)
  /-- 指定类没有任何后续入射微分。 -/
  | permanent (classId : Nat)
  /-- 指定微分记录确实存在。 -/
  | differential (record : Differential)
  /-- 候选列表中的唯一存活者。 -/
  | uniqueSurvivor (candidates : List Nat) (survivor : Nat)
  /-- 有限搜索排除给定数量的候选。 -/
  | ruledOut (stem : Int) (ruledOut total : Nat)
deriving DecidableEq, Repr, Lean.ToJson, Lean.FromJson, Lean.ToExpr

/-- 结果证书中随结果保存的有限检查证据。 -/
inductive Evidence where
  /-- `notHit` 或 `survives` 使用规范顺序列出所有入射微分。 -/
  | incoming (records : List Differential)
  /-- `permanent` 使用规范顺序列出全部入射微分。 -/
  | permanent (records : List Differential)
  /-- `differential` 的记录副本，便于导入器检测字段篡改。 -/
  | differential (record : Differential)
  /-- 唯一存活结果的规范排除列表。 -/
  | unique (eliminated : List Nat)
  /-- 有限搜索的计数证据。 -/
  | count (ruledOut total : Nat)
deriving DecidableEq, Repr, Lean.ToJson, Lean.FromJson, Lean.ToExpr

/-- 可序列化的 Kervaire 证书；`claim` 与 `evidence` 必须由检查器配对。 -/
structure Certificate where
  version : Nat
  object : String
  claim : ResultSpec
  evidence : Evidence
deriving DecidableEq, Repr, Lean.ToJson, Lean.FromJson, Lean.ToExpr

/-- 证书集合，适合一次导入论文中全部局部结论。 -/
structure Bundle where
  formatVersion : Nat
  data : AdamsData
  certificates : List Certificate
deriving Repr, Lean.ToJson, Lean.FromJson, Lean.ToExpr

end KervaireProgram
