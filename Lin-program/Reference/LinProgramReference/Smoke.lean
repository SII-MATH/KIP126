import LinProgramReference

/-!
最小烟雾测试：这些例子只使用已证明的基础定理，
不把尚未生成的论文数据库内容伪装成 Lean 定理。
-/

namespace LinProgramReference

/-- F₂ 的特征二性质可以直接由内核检查。 -/
example (x : F2) : x + x = 0 := f2_add_self x

/-- 双次数的 stem 是内部次数减过滤次数。 -/
example (d : Bidegree) : d.stem = d.internal - (d.filtration : Int) :=
  Bidegree.stem_eq d

/-- 计数结论由自然数归约得到。 -/
example : 105 - 101 = 4 := kervaire_remaining_count_arithmetic

/-- 规则应用的可靠性只需使用其显式的前提证明。 -/
example (rule : RuleApplication) (h : AllPremises rule.premises) :
    rule.conclusion := rule_application_sound rule h

/-! The concrete Hopf formula lands on the unit 2-sphere at the chosen
basepoint; this checks that the new geometric layer is actually imported by
the public entry point. -/
example : real3x (hopfRaw (1, 0, 0, 0)) ^ 2 +
    real3y (hopfRaw (1, 0, 0, 0)) ^ 2 +
    real3z (hopfRaw (1, 0, 0, 0)) ^ 2 = 1 := by
  apply hopfRaw_norm
  norm_num [real4a, real4b, real4c, real4d]

/-! The Cν suspension spectrum has the mapping cone as its zero level. -/
example : cNuSuspensionSpectrum.level 0 = cNuPointedSpace :=
  cNuSuspensionSpectrum_level_zero

end LinProgramReference
