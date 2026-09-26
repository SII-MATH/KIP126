import KIPBase.StableHomotopy.SphereAdamsElements

/-!
球谱局部微分的公共陈述接口，供后续 proofs.db 转换程序使用。
所有页、代表和微分均属于同一个 sphereAdamsConvergingSS。
本模块不引入具体微分结果、额外谱序列或新的数学公理。
E₂ 的表达式只是后续页元素的标签；必须给出同一循环代表，不能直接强制转换。
-/

namespace KIPBase.StableHomotopy.SphereAdamsDifferentials

open CategoryTheory CategoryTheory.Limits

universe u v
variable (𝒮 : Type u) [StableHomotopyCategory.{u, v} 𝒮]

/-- 唯一的球谱谱序列，与 SphereAdamsE2.Page 的来源相同。 -/
noncomputable abbrev ss := (sphereAdamsConvergingSS (𝒮 := 𝒮)).E

/-- 指定页、指定双次数的元素类型；不把 E₂ 元素自动当成 E_r 元素。 -/
abbrev Page (r : ℤ) (s t : ℕ) : Type v := (ss 𝒮).Page r ((s : ℤ), (t : ℤ))

/-- 与既有 E₂ 接口按定义相同。 -/
theorem page_two (s t : ℕ) : Page 𝒮 2 s t = SphereAdamsE2.Page 𝒮 s t := rfl

/-- E_r 的循环代表投影到 E₂；这里只给循环代表的映射，不给整个 E₂ 的映射。 -/
noncomputable def cycleToE2 (r : ℤ) (hr : 2 ≤ r) (s t : ℕ) :
    Subobject.underlying.obj
        (((ss 𝒮).ssData ((s : ℤ), (t : ℤ))).Z ↑(r - (ss 𝒮).r₀).toNat) ⟶
      (ss 𝒮).Page 2 ((s : ℤ), (t : ℤ)) :=
  let D := (ss 𝒮).ssData ((s : ℤ), (t : ℤ))
  Subobject.ofLE _ _ (D.Z_anti (by
    exact_mod_cast (show (2 - (ss 𝒮).r₀).toNat ≤ (r - (ss 𝒮).r₀).toNat by omega))) ≫
    D.pageπ ↑(2 - (ss 𝒮).r₀).toNat

/-- x₂ 与 x_r 由同一个 Z_r 循环代表。允许 x_r 为零；非零性单独声明。 -/
def Represents (r : ℤ) (hr : 2 ≤ r) {s t : ℕ}
    (x₂ : SphereAdamsE2.Page 𝒮 s t) (x_r : Page 𝒮 r s t) : Prop :=
  let D := (ss 𝒮).ssData ((s : ℤ), (t : ℤ))
  ∃ z : (Subobject.underlying.obj (D.Z ↑(r - (ss 𝒮).r₀).toNat) :
      ModuleCat.{v, v} IntModuleRing.{v}),
    cycleToE2 𝒮 r hr s t z = x₂ ∧ D.pageπ ↑(r - (ss 𝒮).r₀).toNat z = x_r

/-- 第二页的代表关系确实识别同一个 E₂ 元素。 -/
theorem Represents.eq_on_page_two {s t : ℕ}
    {x y : SphereAdamsE2.Page 𝒮 s t}
    (h : Represents 𝒮 2 (by decide) x y) : x = y := by
  rcases h with ⟨z, hx, hy⟩
  simp only [cycleToE2, Subobject.ofLE_refl, Category.id_comp] at hx
  exact hx.symm.trans hy

/-- 零循环给出所有允许页上的零代表。 -/
theorem represents_zero (r : ℤ) (hr : 2 ≤ r) (s t : ℕ) :
    Represents 𝒮 r hr (0 : SphereAdamsE2.Page 𝒮 s t) (0 : Page 𝒮 r s t) := by
  refine ⟨0, ?_, ?_⟩
  · exact (cycleToE2 𝒮 r hr s t).hom.map_zero
  · exact (((ss 𝒮).ssData ((s : ℤ), (t : ℤ))).pageπ
      ↑(r - (ss 𝒮).r₀).toNat).hom.map_zero

/-- 现有微分的次数重写；没有定义新的微分。 -/
noncomputable def differential (r : ℤ) (s t s' t' : ℕ)
    (hdeg : (ss 𝒮).diffDeg r = adamsDiffDeg r)
    (htarget : ((s : ℤ), (t : ℤ)) + adamsDiffDeg r = ((s' : ℤ), (t' : ℤ))) :
    (ss 𝒮).Page r ((s : ℤ), (t : ℤ)) ⟶ (ss 𝒮).Page r ((s' : ℤ), (t' : ℤ)) :=
  (ss 𝒮).d r ((s : ℤ), (t : ℤ)) ≫
    eqToHom (congrArg ((ss 𝒮).Page r) (by rw [hdeg]; exact htarget))

/-- 一个局部微分等式的完整证据。
起始页和微分次数也显式核对，不能从尚未实现的 transfer 自动获得。
E₂ 标签都来自 SphereAdamsE2；source/target 是相应的真实 E_r 元素。
-/
structure DifferentialWitness (r : ℤ) {s t s' t' : ℕ}
    (x₂ : SphereAdamsE2.Page 𝒮 s t) (y₂ : SphereAdamsE2.Page 𝒮 s' t') where
  page_ge_two : 2 ≤ r
  start_page : (ss 𝒮).r₀ = 2
  differential_degree : (ss 𝒮).diffDeg r = adamsDiffDeg r
  target_degree : ((s : ℤ), (t : ℤ)) + adamsDiffDeg r = ((s' : ℤ), (t' : ℤ))
  source : Page 𝒮 r s t
  target : Page 𝒮 r s' t'
  source_represents : Represents 𝒮 r page_ge_two x₂ source
  target_represents : Represents 𝒮 r page_ge_two y₂ target
  equation : differential 𝒮 r s t s' t' differential_degree target_degree source = target

/-- 非零微分的源在该页也非零。 -/
theorem DifferentialWitness.source_ne_zero {r : ℤ} {s t s' t' : ℕ}
    {x : SphereAdamsE2.Page 𝒮 s t} {y : SphereAdamsE2.Page 𝒮 s' t'}
    (w : DifferentialWitness 𝒮 r x y) (hy : w.target ≠ 0) : w.source ≠ 0 := by
  intro hx
  apply hy
  rw [← w.equation, hx]
  exact (differential 𝒮 r s t s' t' w.differential_degree w.target_degree).hom.map_zero

/-- 第二页标签就是该页元素，因此证据直接给出现有微分映射的等式。 -/
theorem DifferentialWitness.equation_on_page_two {s t s' t' : ℕ}
    {x : SphereAdamsE2.Page 𝒮 s t} {y : SphereAdamsE2.Page 𝒮 s' t'}
    (w : DifferentialWitness 𝒮 2 x y) :
    differential 𝒮 2 s t s' t' w.differential_degree w.target_degree x = y := by
  exact (congrArg
    (fun z => differential 𝒮 2 s t s' t' w.differential_degree w.target_degree z)
    (Represents.eq_on_page_two 𝒮 w.source_represents)).trans
      (w.equation.trans (Represents.eq_on_page_two 𝒮 w.target_represents).symm)

/-- 可作为外部输入或待证结论的 d_r 等式；本定义不宣称它成立。 -/
def HasDifferential (r : ℤ) {s t s' t' : ℕ}
    (x₂ : SphereAdamsE2.Page 𝒮 s t) (y₂ : SphereAdamsE2.Page 𝒮 s' t') : Prop :=
  Nonempty (DifferentialWitness 𝒮 r x₂ y₂)

/-- 非零微分要求目标在 E_r 非零；仅有 E₂ 标签非零是不够的。 -/
def HasNonzeroDifferential (r : ℤ) {s t s' t' : ℕ}
    (x₂ : SphereAdamsE2.Page 𝒮 s t) (y₂ : SphereAdamsE2.Page 𝒮 s' t') : Prop :=
  ∃ w : DifferentialWitness 𝒮 r x₂ y₂, w.target ≠ 0

/-- 数据导入时使用带次数的 CSV 表达式标签。 -/
def ExpressionDifferential (r : ℤ) {s t s' t' : ℕ}
    (x : SphereE2.CSV.Expression s t) (y : SphereE2.CSV.Expression s' t') : Prop :=
  HasDifferential 𝒮 r (SphereAdamsE2.evaluate 𝒮 x) (SphereAdamsE2.evaluate 𝒮 y)

theorem HasNonzeroDifferential.toHasDifferential (r : ℤ) {s t s' t' : ℕ}
    {x : SphereAdamsE2.Page 𝒮 s t} {y : SphereAdamsE2.Page 𝒮 s' t'}
    (h : HasNonzeroDifferential 𝒮 r x y) : HasDifferential 𝒮 r x y :=
  ⟨h.choose⟩

end KIPBase.StableHomotopy.SphereAdamsDifferentials
