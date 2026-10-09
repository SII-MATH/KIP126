import Mathlib.Data.Finsupp.Basic
import Mathlib.Data.Finset.Basic
import Mathlib.Data.ZMod.Basic
import Lean.Elab.Tactic.Omega
import Mathlib.Tactic.Abel
import Mathlib.Tactic.NormNum
import Mathlib.Data.Real.Basic

/-!
# 基础与有限表示层（U、L）

这些定义对应路线图的本科数学叶节点以及有限、可执行的表示对象。
这里不把数据库字符串直接当作数学对象：每个有限记录都有明确类型，
每个“已经检查”对象都携带相应命题的证明。
-/

namespace ManualInputObligations.Reference

/-- 模 2 的有限域；Lin Program 的二元线性计算都在这个域中进行。 -/
abbrev F2 := ZMod 2

/-- 在模 2 中两次加入同一个元素得到零；这是 F₂ 线性计算的基本性质。 -/
@[simp] theorem f2_add_self (x : F2) : x + x = 0 := by
  exact ZModModule.add_self x

/-- 双次数由 Adams 过滤次数和内部次数组成。 -/
structure Bidegree where
  /-- Adams 过滤次数，也就是谱序列图的竖直坐标。 -/
  filtration : Nat
  /-- 内部次数，也就是分辨率中的总内部次数。 -/
  internal : Int
deriving DecidableEq, Repr

/-- 双次数由过滤次数和内次数逐坐标决定。 -/
@[ext] theorem Bidegree.ext {a b : Bidegree}
    (h₁ : a.filtration = b.filtration) (h₂ : a.internal = b.internal) : a = b := by
  cases a
  cases b
  simp_all

/-- 双次数对应的 stem，即内部次数减去过滤次数。 -/
def Bidegree.stem (d : Bidegree) : Int :=
  d.internal - (d.filtration : Int)

/-- 双次数的逐坐标加法；用于 Adams 页上的乘积次数。 -/
def Bidegree.add (a b : Bidegree) : Bidegree where
  filtration := a.filtration + b.filtration
  internal := a.internal + b.internal

/-- 双次数的 stem 定义按坐标展开。 -/
@[simp] theorem Bidegree.stem_eq (d : Bidegree) :
    d.stem = d.internal - (d.filtration : Int) := rfl

/-- 没有重复元素的显式有限枚举；它是程序有限搜索的数学载体。 -/
structure FiniteEnumeration (α : Type*) [DecidableEq α] where
  /-- 被枚举的有限列表。 -/
  elements : List α
  /-- 列表中每个元素只出现一次。 -/
  nodup : elements.Nodup

/-- 有限枚举的成员关系由底层列表的成员关系定义。 -/
instance [DecidableEq α] : Membership α (FiniteEnumeration α) where
  mem e a := a ∈ e.elements

/-- 枚举包含某个元素的可计算布尔判定。 -/
def FiniteEnumeration.contains [DecidableEq α]
    (e : FiniteEnumeration α) (a : α) : Bool :=
  decide (a ∈ e.elements)

/-- contains 返回真当且仅当元素确实出现在枚举列表中。 -/
@[simp] theorem FiniteEnumeration.contains_iff [DecidableEq α]
    (e : FiniteEnumeration α) (a : α) :
    e.contains a = true ↔ a ∈ e.elements := by
  simp [FiniteEnumeration.contains]

/-- 解析结果区分已知值、未知值和格式错误；未知值绝不等同于零。 -/
inductive Parsed (α : Type*) where
  /-- 已经解析出数学值。 -/
  | value (value : α)
  /-- 输入暂时没有计算出值。 -/
  | unknown
  /-- 输入不能按规定格式解析。 -/
  | malformed (source : String)
deriving DecidableEq, Repr

/-- 解析结果是否含有已知数学值。 -/
def Parsed.isKnown : Parsed α → Bool
  | .value _ => true
  | .unknown => false
  | .malformed _ => false

/-- 已解析值一定是已知的。 -/
@[simp] theorem Parsed.isKnown_value (a : α) :
    (Parsed.value a).isKnown = true := rfl

/-- 未知结果不是已知值。 -/
@[simp] theorem Parsed.isKnown_unknown :
    (Parsed.unknown : Parsed α).isKnown = false := rfl

/-- F₂ 向量是从任意指标到 F₂ 的有限支撑函数。 -/
abbrev SparseVector (ι : Type*) := ι →₀ F2

/-- 稀疏向量的规范相等就是逐坐标相等。 -/
theorem sparseVector_ext {ι : Type*} {x y : SparseVector ι}
    (h : ∀ i, x i = y i) : x = y := by
  ext i
  exact h i

/-- F₂ 空间同时保存载体、加法群结构和标量作用。 -/
structure F2Space where
  /-- 向量空间的载体类型。 -/
  carrier : Type
  /-- 载体上的交换加法群结构。 -/
  addGroup : AddCommGroup carrier
  /-- 载体上的 F₂ 模结构。 -/
  module : letI := addGroup; Module F2 carrier

/-- 从空间记录得到载体的加法群实例。 -/
instance (V : F2Space) : AddCommGroup V.carrier := V.addGroup

/-- 从空间记录得到载体的 F₂ 模实例。 -/
instance (V : F2Space) : Module F2 V.carrier := by
  letI := V.addGroup
  exact V.module

/-- 任何 F₂-模的加法群都有特征二；该性质用于同调等价关系。 -/
theorem f2Space_add_self (V : F2Space) (x : V.carrier) : x + x = 0 := by
  letI := V.addGroup
  letI := V.module
  calc
    x + x = (1 : F2) • x + (1 : F2) • x := by simp
    _ = ((1 : F2) + 1) • x := by rw [add_smul]
    _ = 0 := by simp

/-- 两个 F₂ 空间之间的线性映射及其线性公理。 -/
structure F2LinearMap (M N : F2Space) where
  /-- 映射的函数部分。 -/
  toFun : M.carrier → N.carrier
  /-- 映射保持零向量。 -/
  map_zero' : toFun 0 = 0
  /-- 映射保持向量加法。 -/
  map_add' : ∀ x y, toFun (x + y) = toFun x + toFun y
  /-- 映射保持 F₂ 标量乘法。 -/
  map_smul' : ∀ (a : F2) x, toFun (a • x) = a • toFun x

/-- 线性映射可以像普通函数一样使用。 -/
instance {M N : F2Space} : CoeFun (F2LinearMap M N)
    (fun _ => M.carrier → N.carrier) := ⟨F2LinearMap.toFun⟩

/-- 两个线性映射的复合仍然是线性映射。 -/
def F2LinearMap.comp {L M N : F2Space}
    (f : F2LinearMap M N) (g : F2LinearMap L M) : F2LinearMap L N where
  toFun := fun x => f (g x)
  map_zero' := by rw [g.map_zero', f.map_zero']
  map_add' := by
    intro x y
    rw [g.map_add', f.map_add']
  map_smul' := by
    intro a x
    rw [g.map_smul', f.map_smul']

/-- 有限维 F₂ 空间的显式有限载体记录。 -/
structure FiniteF2Space extends F2Space where
  /-- 载体上的有限枚举。 -/
  enumeration : List toF2Space.carrier
  /-- 有限枚举没有重复元素。 -/
  enumerationNodup : enumeration.Nodup

/-- 线性组合是基底指标上的 F₂ 稀疏向量。 -/
abbrev LinearCombination (ι : Type*) := SparseVector ι

/-- 有限线性组合按给定基底求值。 -/
def evaluateCombination {ι : Type*} {V : F2Space}
    (basis : ι → V.carrier) (combination : LinearCombination ι) : V.carrier :=
  combination.sum (fun i coefficient => coefficient • basis i)

/-- 线性无关：只有所有系数为零的有限线性组合才等于零。 -/
def LinearIndependentF2 {ι : Type*} {V : F2Space}
    (basis : ι → V.carrier) : Prop :=
  ∀ c : LinearCombination ι,
    evaluateCombination basis c = 0 → ∀ i, c i = 0

/-- 张成：空间中每个向量都能写成基底的有限 F₂ 线性组合。 -/
def SpansF2 {ι : Type*} {V : F2Space}
    (basis : ι → V.carrier) : Prop :=
  ∀ v, ∃ c : LinearCombination ι, evaluateCombination basis c = v

/-- 有限基包含有限指标、基向量、线性无关和张成证明。 -/
structure FiniteBasis (V : F2Space) (ι : Type*) [DecidableEq ι]
    extends FiniteEnumeration ι where
  /-- 指标到向量的基函数。 -/
  basis : ι → V.carrier
  /-- 基向量线性无关。 -/
  independent : LinearIndependentF2 basis
  /-- 基向量张成整个空间。 -/
  spans : SpansF2 basis

/-- 基底坐标表示的唯一性。 -/
theorem FiniteBasis.coordinates_unique {V : F2Space} {ι : Type*}
    [DecidableEq ι] (b : FiniteBasis V ι)
    {c d : LinearCombination ι}
    (h : evaluateCombination b.basis c = evaluateCombination b.basis d) : c = d := by
  apply Finsupp.ext
  intro i
  have hzero : evaluateCombination b.basis (c - d) = 0 := by
    classical
    have heval : evaluateCombination b.basis (c - d) =
        evaluateCombination b.basis c - evaluateCombination b.basis d := by
      simp [evaluateCombination, Finsupp.sum_sub_index, sub_smul]
    rw [heval]
    exact sub_eq_zero.mpr h
  have hi := b.independent (c - d) hzero i
  exact sub_eq_zero.mp hi

/-- 求值保持线性组合的加法。 -/
theorem evaluateCombination_add {ι : Type*} {V : F2Space}
    (basis : ι → V.carrier) (a b : LinearCombination ι) :
    evaluateCombination basis (a + b) =
      evaluateCombination basis a + evaluateCombination basis b := by
  letI := V.addGroup
  letI := V.module
  classical
  simp [evaluateCombination, Finsupp.sum_add_index, add_smul]

/-- 证书是有限整数数据；其数学含义由外层谓词解释，而不是由整数本身自动产生。 -/
structure Certificate where
  /-- 证书中的有限数值载荷。 -/
  payload : List Int
  /-- 证书格式版本。 -/
  version : Nat

/-- 带有合法性证明的检查结果；这是外部计算连接内核命题的基本容器。 -/
structure Checked (α : Type*) (Valid : α → Prop) where
  /-- 已经检查的对象。 -/
  value : α
  /-- 对象满足数学合法性谓词的内核证明。 -/
  valid : Valid value

/-- 有限穷尽命题：枚举表覆盖所有需要检查的候选。 -/
def Exhausts [DecidableEq α] (e : FiniteEnumeration α) (property : α → Prop) : Prop :=
  ∀ x, x ∈ e.elements → property x

end ManualInputObligations.Reference
