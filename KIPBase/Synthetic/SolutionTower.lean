/-
  KIPBase.Synthetic.SolutionTower
  代表元解、有限层解挠子以及相容塔。
-/
import KIPBase.Synthetic.ExtensionSS
import KIPBase.Synthetic.QuotientTower

namespace KIPBase.Synthetic

open CategoryTheory CategoryTheory.Limits KIPBase.SpectralSequence

universe u v

variable {Syn : Type u} [Category.{v} Syn] [Preadditive Syn]
    [HasZeroObject Syn] [HasShift Syn ℤ]
    [∀ n : ℤ, Functor.Additive (shiftFunctor Syn n)]
    [MonoidalCategory Syn]
    [Pretriangulated Syn] [SyntheticCategory Syn]

/-! ### 代表元层面的解 -/

/-- 合成 ESS 的底层过滤二项复形中，长度为 `r` 的扩张方程的代表元层面的解。

`sourceRepresentative` 提升指定的源类。该代表元的微分等于选定的目标代表元
加上一项修正；修正通过由较短扩张像生成的指定子对象分解。因此，“属于较短像群”
是数据本身的一部分，而不是一个与数据脱节的命题。 -/
structure ESSSolutionWitness {X Y : Syn} {f : X ⟶ Y}
    (data : SyntheticExtensionData f) (degree : ℤ × ℤ)
    (r s : ℤ)
    (T : ModuleCat.{v, v} StableHomotopy.IntModuleRing.{v}) where
  sourceClass : T ⟶ (data.complex degree).assocGraded s 1
  targetClass : T ⟶ (data.complex degree).assocGraded (s + r) 0
  sourceRepresentative :
    T ⟶ Subobject.underlying.obj ((data.complex degree).fil s 1)
  targetRepresentative :
    T ⟶ Subobject.underlying.obj ((data.complex degree).fil (s + r) 0)
  source_isLift :
    (data.complex degree).IsLift s 1 sourceRepresentative sourceClass
  target_isLift :
    (data.complex degree).IsLift (s + r) 0 targetRepresentative targetClass
  shorterImages : Subobject ((data.complex degree).A 0)
  shorterCorrection : T ⟶ Subobject.underlying.obj shorterImages
  equation :
    sourceRepresentative ≫ ((data.complex degree).fil s 1).arrow ≫
        (data.complex degree).d 1 =
      targetRepresentative ≫ ((data.complex degree).fil (s + r) 0).arrow +
        shorterCorrection ≫ shorterImages.arrow

/-! ### 挠子与逆系统 -/

/-- 有限层 ESS 解纤维、对应的差群以及限制映射。`AddTorsor` 字段准确表达：
每个非空解纤维都由它的差群自由且传递地作用。 -/
structure FiniteESSSolutionSystem (m₀ : ℕ) where
  Solution : (m : ℕ) → m₀ ≤ m → Type u
  Difference : (m : ℕ) → m₀ ≤ m → Type u
  differenceGroup : ∀ m hm, AddCommGroup (Difference m hm)
  solutionTorsor : ∀ m hm, AddTorsor (Difference m hm) (Solution m hm)
  restrictSolution : ∀ (m : ℕ) (hm : m₀ ≤ m),
    Solution (m + 1) (hm.trans (Nat.le_succ m)) → Solution m hm
  restrictDifference : ∀ (m : ℕ) (hm : m₀ ≤ m),
    Difference (m + 1) (hm.trans (Nat.le_succ m)) →+ Difference m hm
  restrict_equivariant : ∀ (m : ℕ) (hm : m₀ ≤ m)
      (g : Difference (m + 1) (hm.trans (Nat.le_succ m)))
      (x : Solution (m + 1) (hm.trans (Nat.le_succ m))),
    restrictSolution m hm (g +ᵥ x) =
      restrictDifference m hm g +ᵥ restrictSolution m hm x

namespace FiniteESSSolutionSystem

/-- 相容解塔是在每个有限层解纤维中作出的相容选择。 -/
def CoherentTower {m₀ : ℕ} (S : FiniteESSSolutionSystem m₀) :=
  { u : ∀ (m : ℕ) (hm : m₀ ≤ m), S.Solution m hm //
    ∀ (m : ℕ) (hm : m₀ ≤ m),
      S.restrictSolution m hm
        (u (m + 1) (hm.trans (Nat.le_succ m))) = u m hm }

/-- 在一个有限层上取相容塔的值。 -/
def CoherentTower.eval {m₀ : ℕ} {S : FiniteESSSolutionSystem m₀}
    (u : S.CoherentTower) (m : ℕ) (hm : m₀ ≤ m) : S.Solution m hm :=
  u.1 m hm

/-- 相容解塔定义中要求的限制相容性。 -/
theorem CoherentTower.restrict {m₀ : ℕ} {S : FiniteESSSolutionSystem m₀}
    (u : S.CoherentTower) (m : ℕ) (hm : m₀ ≤ m) :
    S.restrictSolution m hm
        (u.eval (m + 1) (hm.trans (Nat.le_succ m))) = u.eval m hm :=
  u.2 m hm

end FiniteESSSolutionSystem

end KIPBase.Synthetic
