import LinProgramReference.CWConstructions
import Mathlib.Tactic

/-!
# 真实的球面模型和 Hopf 映射 ν（W24–W26）

这里不再用 `Unit` 作为球谱或 ν 的载体。先用欧氏坐标定义 S³、S²，随后给出
经典 Hopf 映射

  (a,b,c,d) ↦ (2(ac+bd), 2(bc-ad), a²+b²-c²-d²)。

通过多项式恒等式证明像点仍在 S²，并证明映射连续、保持指定基点。这个映射
是稳定同伦中 ν 的未稳定代表；稳定化和同伦类商在后续结构中明确记录。
-/

namespace LinProgramReference

open scoped Classical

/-- 四维实坐标，用于单位三球面。 -/
abbrev Real4 := ℝ × ℝ × ℝ × ℝ

/-- 三维实坐标，用于单位二球面。 -/
abbrev Real3 := ℝ × ℝ × ℝ

/-- 四维坐标投影。 -/
def real4a (p : Real4) : ℝ := p.1
def real4b (p : Real4) : ℝ := p.2.1
def real4c (p : Real4) : ℝ := p.2.2.1
def real4d (p : Real4) : ℝ := p.2.2.2

/-- 三维坐标投影。 -/
def real3x (p : Real3) : ℝ := p.1
def real3y (p : Real3) : ℝ := p.2.1
def real3z (p : Real3) : ℝ := p.2.2

/-- 单位三球面载体。 -/
abbrev RealSphere3Carrier :=
  {p : Real4 // real4a p ^ 2 + real4b p ^ 2 +
      real4c p ^ 2 + real4d p ^ 2 = 1}

/-- 单位二球面载体。 -/
abbrev RealSphere2Carrier :=
  {p : Real3 // real3x p ^ 2 + real3y p ^ 2 + real3z p ^ 2 = 1}

/-- S³ 的规范基点。 -/
def realSphere3Point : RealSphere3Carrier :=
  ⟨(1, 0, 0, 0), by norm_num [real4a, real4b, real4c, real4d]⟩

/-- S² 的规范基点。 -/
def realSphere2Point : RealSphere2Carrier :=
  ⟨(0, 0, 1), by norm_num [real3x, real3y, real3z]⟩

/-- 作为点空间的单位三球面。 -/
def realSphere3 : PointedSpace where
  carrier := RealSphere3Carrier
  topology := inferInstance
  point := realSphere3Point

/-- 作为点空间的单位二球面。 -/
def realSphere2 : PointedSpace where
  carrier := RealSphere2Carrier
  topology := inferInstance
  point := realSphere2Point

/-- Hopf 映射的底层多项式公式。 -/
def hopfRaw (p : Real4) : Real3 :=
  (2 * (real4a p * real4c p + real4b p * real4d p),
    2 * (real4b p * real4c p - real4a p * real4d p),
    real4a p ^ 2 + real4b p ^ 2 - real4c p ^ 2 - real4d p ^ 2)

/-- Hopf 公式保持单位球面方程。 -/
theorem hopfRaw_norm (p : Real4)
    (h : real4a p ^ 2 + real4b p ^ 2 + real4c p ^ 2 + real4d p ^ 2 = 1) :
    real3x (hopfRaw p) ^ 2 + real3y (hopfRaw p) ^ 2 +
      real3z (hopfRaw p) ^ 2 = 1 := by
  dsimp [hopfRaw, real3x, real3y, real3z]
  nlinarith [sq_nonneg (real4a p * real4c p + real4b p * real4d p),
    sq_nonneg (real4b p * real4c p - real4a p * real4d p)]

/-- Hopf 多项式公式连续。 -/
theorem continuous_hopfRaw : Continuous hopfRaw := by
  unfold hopfRaw real4a real4b real4c real4d
  fun_prop

/-- 经典 Hopf 映射 S³ → S²。 -/
def hopfMap : PointedMap realSphere3 realSphere2 where
  toFun := fun p => ⟨hopfRaw p.1, hopfRaw_norm p.1 p.2⟩
  mapPoint := by
    apply Subtype.ext
    change hopfRaw (1, 0, 0, 0) = (0, 0, 1)
    norm_num [hopfRaw, real4a, real4b, real4c, real4d]
  continuous := by
    exact Continuous.subtype_mk
      (f := fun p : RealSphere3Carrier => hopfRaw p.1)
      (continuous_hopfRaw.comp continuous_subtype_val)
      (fun p => hopfRaw_norm p.1 p.2)

/-- Hopf 映射的未稳定代表数据；其稳定化代表 ν。 -/
structure HopfNuRepresentative where
  /-- 未稳定的具体映射。 -/
  map : PointedMap realSphere3 realSphere2 := hopfMap
  /-- 映射确实使用 S³ 和 S² 的单位球面模型。 -/
  sphereSource : map.toFun = hopfMap.toFun
  /-- 这是 ν 的代表性标记，而非任意球面映射。 -/
  hopfFormula : ∀ p, map p = hopfMap p

/-- 规范的 Hopf ν 代表。 -/
def hopfNuRepresentative : HopfNuRepresentative where
  map := hopfMap
  sphereSource := rfl
  hopfFormula := fun _ => rfl

end LinProgramReference
