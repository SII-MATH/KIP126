import KIPBase.E2pageTactic
import Mathlib.LinearAlgebra.Basis.Defs

/-!
CSV 的逐次数基索引和齐次表达式。只处理有限数据的解码及计算，
不在此假设商环与实际第二页同构，也不在此断言线性无关或张成性。
-/
set_option maxRecDepth 16384

namespace KIPBase.SphereE2.CSV

/-- 带双次数的表达式；类型保证加法同次、乘法次数相加。 -/
inductive Expression : ℕ → ℕ → Type where
  | zero (s t : ℕ) : Expression s t
  | one : Expression 0 0
  | gen (i : Generator) : Expression (generatorDegree i).1 (generatorDegree i).2
  | add {s t : ℕ} : Expression s t → Expression s t → Expression s t
  | mul {s t s' t' : ℕ} :
      Expression s t → Expression s' t' → Expression (s + s') (t + t')

def Expression.code {s t : ℕ} : Expression s t → Automation.Code
  | .zero _ _ => .scalar 0
  | .one => .scalar 1
  | .gen i => .gen i.val
  | .add a b => .add a.code b.code
  | .mul a b => .mul a.code b.code

/-- 继续使用原商环及原来的 e2_mul 表达式解释。 -/
noncomputable def Expression.data {s t : ℕ} (e : Expression s t) : E2 :=
  match e with
  | .zero _ _ => 0
  | .one => 1
  | .gen i => generator i
  | .add a b => a.data + b.data
  | .mul a b => a.data * b.data

/-- 传给原计算器的表达式与商环解释一致。 -/
theorem Expression.data_eq_interpret {s t : ℕ} (e : Expression s t) :
    e.data = Automation.interpret e.code := by
  induction e <;> simp_all [Expression.data, Expression.code, Automation.interpret]

private def wordExpression : List Generator → Σ s t, Expression s t
  | [] => ⟨0, 0, .one⟩
  | [i] => ⟨_, _, .gen i⟩
  | i :: j :: rest =>
      let ⟨s, t, e⟩ := wordExpression (j :: rest)
      ⟨(generatorDegree i).1 + s, (generatorDegree i).2 + t, .mul (.gen i) e⟩

/-- 严格解码 CSV 单项式；非法编号、语法或次数返回 error，不解释成零。 -/
def decodeExpression (s t : ℕ) (code : String) : Compute.Calc (Expression s t) := do
  let m ← Compute.parseMonomial code
  let words ← m.mapM fun (i, a) =>
    if h : i < Data.generatorCount then
      .ok (List.replicate a (⟨i, h⟩ : Generator))
    else .error "invalid generator"
  let ⟨s', t', e⟩ := wordExpression words.flatten
  if h : s' = s ∧ t' = t then
    return h.1 ▸ h.2 ▸ e
  else throw "monomial has the wrong bidegree"

/-- 指定位置的 CSV 行，保留原始顺序和原始 index 字段。 -/
def rowsAt (s t : ℕ) : List BasisRow :=
  basisRows.filter fun row => row.s == s && row.t == t

abbrev BasisIndex (s t : ℕ) := Fin (rowsAt s t).length

def basisRow (s t : ℕ) (i : BasisIndex s t) : BasisRow := (rowsAt s t)[i.val]

/-- 检查各位置的原始 CSV index 恰为 0,1,…，顺序与 rowsAt 一致。 -/
def basisIndicesValid : Bool := Id.run do
  let mut counts : Std.HashMap (ℕ × ℕ) ℕ := {}
  for row in basisRows do
    let key := (row.s, row.t)
    let expected := (counts[key]?).getD 0
    if row.index != expected then return false
    counts := counts.insert key (expected + 1)
  return true

theorem all_basis_indices_valid : basisIndicesValid = true := by native_decide

/-- 全部 CSV 基行的解析及次数一致性；这是有限数据检查，不是基定理。 -/
theorem all_basis_rows_decode :
    (basisRows.all fun row =>
      (decodeExpression row.s row.t row.monomial).isOk) = true := by
  native_decide

theorem basisExpression_exists (s t : ℕ) (i : BasisIndex s t) :
    ∃ e, decodeExpression s t (basisRow s t i).monomial = .ok e := by
  have hmem : basisRow s t i ∈ rowsAt s t := List.getElem_mem i.isLt
  have hf := List.mem_filter.mp hmem
  have hdeg : (basisRow s t i).s = s ∧ (basisRow s t i).t = t := by
    simpa using hf.2
  have hv := List.all_eq_true.mp all_basis_rows_decode _ hf.1
  rw [hdeg.1, hdeg.2] at hv
  cases h : decodeExpression s t (basisRow s t i).monomial with
  | error msg => simp [h, Except.isOk, Except.toBool] at hv
  | ok e => exact ⟨e, rfl⟩

/-- 每个基索引明确对应其 CSV 单项式的齐次表达式。 -/
noncomputable def basisExpression (s t : ℕ) (i : BasisIndex s t) : Expression s t :=
  (basisExpression_exists s t i).choose

theorem basisExpression_spec (s t : ℕ) (i : BasisIndex s t) :
    decodeExpression s t (basisRow s t i).monomial = .ok (basisExpression s t i) :=
  (basisExpression_exists s t i).choose_spec

/-- 后续证明可以用成功解码的具体表达式替换基单项式。 -/
theorem basisExpression_eq (s t : ℕ) (i : BasisIndex s t) (e : Expression s t)
    (h : decodeExpression s t (basisRow s t i).monomial = .ok e) :
    basisExpression s t i = e := by
  exact Except.ok.inj ((basisExpression_spec s t i).symm.trans h)

/-- 可执行坐标：列出系数为 1 的基索引。 -/
abbrev Coordinates (s t : ℕ) := List (BasisIndex s t)

/-- 线性代数使用的有限支撑坐标；重复项按 F₂ 加法相消。 -/
noncomputable def coordinateVector {s t : ℕ} (c : Coordinates s t) :
    BasisIndex s t →₀ F2 :=
  c.foldr (fun i acc => Finsupp.single i 1 + acc) 0

/-- 对任意齐次表达式运行已有 Gröbner 算法，并转换为该位置的有限基坐标。
每次核实 CSV 的原始 index 与 Fin 索引一致；不匹配、超范围、燃料耗尽均报错。 -/
def coordinates {s t : ℕ} (e : Expression s t) (fuel : ℕ := 1000000) :
    Compute.Calc (Coordinates s t) := do
  if t > 261 then throw "outside data range"
  let engine ← Compute.loadEngine
  let cs ← Automation.coordinates engine e.code fuel
  let mut result : Coordinates s t := []
  for (s', t', j) in cs do
    if s' != s || t' != t then throw "coordinate has the wrong bidegree"
    if hj : j < (rowsAt s t).length then
      if (basisRow s t ⟨j, hj⟩).index != j then throw "CSV index mismatch"
      result := ⟨j, hj⟩ :: result
    else throw "unknown basis index"
  return result.reverse

end KIPBase.SphereE2.CSV
