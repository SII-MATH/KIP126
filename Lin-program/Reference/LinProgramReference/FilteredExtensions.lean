import LinProgramReference.AlgebraTopology

/-!
# 过滤群、关联分次和余纤维扩张的数学层（X05–X16）

这里把过滤扩张从字符串候选记录中分离出来。过滤层是加法子群，关联分次项
是真正的“过滤层商”，扩张的 essential/inessential 由商类是否为零定义；
“crossing”在本文件中严格表示两个代表的和落入下一层，即首项发生消去。
这正是程序排除扩张候选时需要检查的数学条件。
-/

namespace LinProgramReference

/-- 带递减、穷尽且分离过滤的交换加法群。 -/
structure FilteredAddCommGroup where
  /-- 被过滤的交换加法群载体。 -/
  carrier : Type
  /-- 载体上的交换加法群结构。 -/
  addGroup : AddCommGroup carrier
  /-- 第 p 层过滤子群。 -/
  level : Nat → AddSubgroup carrier
  /-- 过滤递减：更大的过滤指标给出更小的子群。 -/
  decreasing : ∀ p q, p ≤ q → level q ≤ level p
  /-- 过滤穷尽：每个元素至少属于某一层。 -/
  exhaustive : ∀ x, ∃ p, x ∈ level p
  /-- 过滤分离：属于所有层的元素只能是零。 -/
  separated : ∀ x, (∀ p, x ∈ level p) → x = 0

instance filteredAddCommGroupAddCommGroup (F : FilteredAddCommGroup) :
    AddCommGroup F.carrier := F.addGroup

/-- 过滤对象中的代表元。 -/
structure FilteredAdditiveRepresentative (F : FilteredAddCommGroup) where
  /-- 代表元。 -/
  value : F.carrier
  /-- 代表元的过滤指标。 -/
  filtration : Nat
  /-- 代表元属于指定过滤层。 -/
  inLevel : value ∈ F.level filtration

/-- 第 p 层关联分次中“相差下一层”的关系。 -/
def AssociatedGradedRelation (F : FilteredAddCommGroup) (p : Nat)
    (x y : F.carrier) : Prop := x - y ∈ F.level (p + 1)

/-- 关联分次关系是等价关系。 -/
def associatedGradedSetoid (F : FilteredAddCommGroup) (p : Nat) : Setoid F.carrier where
  r := AssociatedGradedRelation F p
  iseqv := by
    constructor
    · intro x
      simp [AssociatedGradedRelation]
    · intro x y h
      have hneg : -(x - y) ∈ F.level (p + 1) :=
        (F.level (p + 1)).neg_mem h
      simpa [AssociatedGradedRelation, sub_eq_add_neg, add_comm, add_left_comm,
        add_assoc] using hneg
    · intro x y z hxy hyz
      have hadd : (x - y) + (y - z) ∈ F.level (p + 1) :=
        (F.level (p + 1)).add_mem hxy hyz
      simpa [AssociatedGradedRelation, sub_eq_add_neg, add_comm, add_left_comm,
        add_assoc] using hadd

/-- 第 p 层关联分次群的载体。 -/
abbrev AssociatedGraded (F : FilteredAddCommGroup) (p : Nat) :=
  Quotient (associatedGradedSetoid F p)

/-- 一个元素在关联分次中的商类。 -/
def associatedGradedClass (F : FilteredAddCommGroup) (p : Nat) (x : F.carrier) :
    AssociatedGraded F p := Quotient.mk (associatedGradedSetoid F p) x

/-- 关联分次的零类。 -/
def associatedGradedZero (F : FilteredAddCommGroup) (p : Nat) : AssociatedGraded F p :=
  associatedGradedClass F p 0

/-- 过滤层中的两个代表相加后仍在较低过滤层中。 -/
def minRepresentative (F : FilteredAddCommGroup)
    (a b : FilteredAdditiveRepresentative F) : FilteredAdditiveRepresentative F where
  value := a.value + b.value
  filtration := min a.filtration b.filtration
  inLevel := by
    by_cases h : a.filtration ≤ b.filtration
    · have ha : a.value ∈ F.level (min a.filtration b.filtration) := by
        simpa [min_eq_left h] using a.inLevel
      have hb : b.value ∈ F.level (min a.filtration b.filtration) :=
        F.decreasing _ _ (min_le_right _ _ ) b.inLevel
      exact (F.level _).add_mem ha hb
    · have hbfil : b.filtration ≤ a.filtration := le_of_not_ge h
      have hb : b.value ∈ F.level (min a.filtration b.filtration) := by
        simpa [min_eq_right hbfil] using b.inLevel
      have ha : a.value ∈ F.level (min a.filtration b.filtration) :=
        F.decreasing _ _ (min_le_left _ _ ) a.inLevel
      exact (F.level _).add_mem ha hb

/-- 一个具体的过滤扩张候选，由两个代表及其和组成。 -/
structure FilteredExtension (F : FilteredAddCommGroup) where
  /-- 左代表。 -/
  left : FilteredAdditiveRepresentative F
  /-- 右代表。 -/
  right : FilteredAdditiveRepresentative F
  /-- 和的规范代表。 -/
  sumRepresentative : FilteredAdditiveRepresentative F :=
    minRepresentative F left right

/-- 扩张首项非零，因而在关联分次中是 essential 的。 -/
def IsEssentialFilteredExtension {F : FilteredAddCommGroup}
    (E : FilteredExtension F) : Prop :=
  associatedGradedClass F E.sumRepresentative.filtration E.sumRepresentative.value ≠
    associatedGradedZero F E.sumRepresentative.filtration

/-- 扩张首项为零，因而可由更高过滤层吸收，是 inessential 的。 -/
def IsInessentialFilteredExtension {F : FilteredAddCommGroup}
    (E : FilteredExtension F) : Prop :=
  associatedGradedClass F E.sumRepresentative.filtration E.sumRepresentative.value =
    associatedGradedZero F E.sumRepresentative.filtration

/-- crossing：两个代表相加后落入其最低过滤层的下一层。 -/
def IsFilteredCrossing {F : FilteredAddCommGroup}
    (E : FilteredExtension F) : Prop :=
  E.sumRepresentative.value ∈
    F.level (E.sumRepresentative.filtration + 1)

/-- no-crossing：和的首项没有在下一层消去。 -/
def IsFilteredNoCrossing {F : FilteredAddCommGroup}
    (E : FilteredExtension F) : Prop :=
  ¬ IsFilteredCrossing E

/-- essential 与 inessential 在关联分次商中互为互斥的两种情形。 -/
theorem filtered_extension_essential_or_inessential
    {F : FilteredAddCommGroup} (E : FilteredExtension F) :
    IsEssentialFilteredExtension E ∨ IsInessentialFilteredExtension E := by
  by_cases h : associatedGradedClass F E.sumRepresentative.filtration
      E.sumRepresentative.value = associatedGradedZero F E.sumRepresentative.filtration
  · exact Or.inr h
  · exact Or.inl h

end LinProgramReference
