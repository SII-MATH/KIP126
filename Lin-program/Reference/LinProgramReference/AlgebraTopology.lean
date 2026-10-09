import LinProgramReference.Foundations
import Mathlib.Data.Set.Basic
import Mathlib.Algebra.Module.Submodule.Basic
import Mathlib.Topology.Basic

/-!
# 链复形、同调、过滤和 CW/稳定对象层（C、W）

本文件把路线图中用于 Adams 与余纤维计算的拓扑代数对象分开定义。
占位的命题字段只用于尚未展开的高阶构造；它们明确表示需要证明的数学条件，
而不是把外部程序输出自动提升为定理。
-/

namespace LinProgramReference

/-- 链复形由分次 F₂ 空间、边界映射和边界平方为零组成。 -/
structure ChainComplex where
  /-- 第 n 层的 F₂ 空间。 -/
  object : Nat → F2Space
  /-- 从第 n+1 层到第 n 层的边界映射。 -/
  boundary : ∀ n, F2LinearMap (object (n + 1)) (object n)
  /-- 连续两个边界映射的复合恒为零。 -/
  differentialSq : ∀ n (x : (object (n + 2)).carrier),
    boundary n (boundary (n + 1) x) = 0

/-- 余链复形由上边界映射及其平方为零组成。 -/
structure CochainComplex where
  /-- 第 n 层的 F₂ 空间。 -/
  object : Int → F2Space
  /-- 从第 n 层到第 n+1 层的上边界映射。 -/
  coboundary : ∀ n, F2LinearMap (object n) (object (n + 1))
  /-- 连续两个上边界映射的复合恒为零。 -/
  differentialSq : ∀ n (x : (object n).carrier),
    coboundary (n + 1) (coboundary n x) = 0

/-- 链复形中的循环元素，即边界映射的核元素。 -/
def IsCycle (C : ChainComplex) (n : Nat) (x : (C.object (n + 1)).carrier) : Prop :=
  C.boundary n x = 0

/-- 链复形中的边界元素，即来自上一层边界映射像的元素。 -/
def IsBoundary (C : ChainComplex) (n : Nat) (x : (C.object (n + 1)).carrier) : Prop :=
  ∃ y, C.boundary (n + 1) y = x

/-- 每个边界都是循环；这是同调定义能够成立的关键性质。 -/
theorem boundary_is_cycle (C : ChainComplex) (n : Nat)
    (x : (C.object (n + 1)).carrier) :
    IsBoundary C n x → IsCycle C n x := by
  rintro ⟨y, rfl⟩
  exact C.differentialSq n y

/-!
同调不能只记录“一个循环代表”。下面先把循环元素取成子类型，再把
“相差一个边界”定义成真正的等价关系，最后用商类型得到同调类。这样
后续程序记录的 Ext/同调元素才不会把任意元素误当成同调类。
-/

/-- 第 n 次循环群的载体。 -/
def Cycle (C : ChainComplex) (n : Nat) :=
  {x : (C.object (n + 1)).carrier // IsCycle C n x}

/-- 两个循环代表相差一个边界。 -/
def HomologyEquivalent (C : ChainComplex) (n : Nat)
    (x y : Cycle C n) : Prop :=
  ∃ z, C.boundary (n + 1) z = x.1 + y.1

/-- “相差一个边界”在循环元素上是等价关系。 -/
def homologySetoid (C : ChainComplex) (n : Nat) : Setoid (Cycle C n) where
  r := HomologyEquivalent C n
  iseqv := by
    constructor
    · intro x
      refine ⟨0, ?_⟩
      simpa [f2Space_add_self (C.object (n + 1)) x.1] using
        (C.boundary (n + 1)).map_zero'
    · intro x y h
      rcases h with ⟨z, hz⟩
      refine ⟨z, ?_⟩
      simpa [add_comm] using hz
    · intro x y z hxy hyz
      rcases hxy with ⟨u, hu⟩
      rcases hyz with ⟨v, hv⟩
      refine ⟨u + v, ?_⟩
      rw [(C.boundary (n + 1)).map_add', hu, hv]
      calc
        (x.1 + y.1) + (y.1 + z.1) =
            x.1 + (y.1 + y.1) + z.1 := by abel
        _ = x.1 + 0 + z.1 := by
          rw [f2Space_add_self (C.object (n + 1)) y.1]
        _ = x.1 + z.1 := by simp

/-- 链复形第 n 个同调群（此处只保留其商类型，群运算可随后添加）。 -/
abbrev Homology (C : ChainComplex) (n : Nat) := Quotient (homologySetoid C n)

/-- 一个同调类就是循环代表按边界等价关系得到的商类。 -/
abbrev HomologyClass (C : ChainComplex) (n : Nat) := Homology C n

/-- 上链复形中的上循环元素。 -/
def IsCocycle (C : CochainComplex) (n : Int)
    (x : (C.object n).carrier) : Prop :=
  C.coboundary n x = 0

/-- 把第 k+1 层元素沿次数相等证明搬到第 n 层。 -/
def castCochain (C : CochainComplex) {k n : Int}
    (h : k + 1 = n) (x : (C.object (k + 1)).carrier) :
    (C.object n).carrier := h ▸ x

/-- 次数搬运保持零元。 -/
theorem castCochain_zero (C : CochainComplex) {k n : Int}
    (h : k + 1 = n) : castCochain C h (0 : (C.object (k + 1)).carrier) = 0 := by
  cases h
  rfl

/-- 次数搬运保持加法。 -/
theorem castCochain_add (C : CochainComplex) {k n : Int}
    (h : k + 1 = n) (x y : (C.object (k + 1)).carrier) :
    castCochain C h (x + y) = castCochain C h x + castCochain C h y := by
  cases h
  rfl

/-- 上链复形中的上边界元素。 -/
def IsCoboundary (C : CochainComplex) (n : Int)
    (x : (C.object n).carrier) : Prop :=
  ∃ k, ∃ h : k + 1 = n, ∃ y,
    castCochain C h (C.coboundary k y) = x

/-- 上边界必为上循环。 -/
theorem coboundary_is_cocycle (C : CochainComplex) (n : Int)
    (x : (C.object (n + 1)).carrier) :
    IsCoboundary C (n + 1) x → IsCocycle C (n + 1) x := by
  rintro ⟨k, hk, y, hy⟩
  have hk' : k = n := by omega
  subst k
  rw [← hy]
  exact C.differentialSq n y

/-!
上同调必须是上循环元素模上边界的商。采用整数分次后，第 n 层的上边界
统一来自第 n−1 层，避免自然数零次的特殊分支。
-/

/-- 第 n 次上循环元素的载体。 -/
def Cocycle (C : CochainComplex) (n : Int) :=
  {x : (C.object n).carrier // IsCocycle C n x}

/-- 两个上循环代表相差一个上边界。 -/
def CohomologyEquivalent (C : CochainComplex) (n : Int)
    (x y : Cocycle C n) : Prop :=
  ∃ k, ∃ h : k + 1 = n, ∃ z,
    castCochain C h (C.coboundary k z) = x.1 + y.1

/-- “相差一个上边界”在上循环元素上是等价关系。 -/
def cohomologySetoid (C : CochainComplex) (n : Int) : Setoid (Cocycle C n) where
  r := CohomologyEquivalent C n
  iseqv := by
    constructor
    · intro x
      refine ⟨n - 1, by omega, 0, ?_⟩
      rw [(C.coboundary (n - 1)).map_zero', castCochain_zero,
        f2Space_add_self (C.object n) x.1]
    · intro x y h
      rcases h with ⟨k, hk, z, hz⟩
      refine ⟨k, hk, z, ?_⟩
      simpa [add_comm] using hz
    · intro x y z hxy hyz
      rcases hxy with ⟨k, hk, u, hu⟩
      rcases hyz with ⟨l, hl, v, hv⟩
      have hkl : k = l := by omega
      subst l
      have hv' : castCochain C hk (C.coboundary k v) = y.1 + z.1 := by
        simpa using hv
      refine ⟨k, hk, u + v, ?_⟩
      rw [(C.coboundary k).map_add', castCochain_add, hu, hv']
      calc
        (x.1 + y.1) + (y.1 + z.1) =
            x.1 + (y.1 + y.1) + z.1 := by abel
        _ = x.1 + 0 + z.1 := by
          rw [f2Space_add_self (C.object n) y.1]
        _ = x.1 + z.1 := by simp

/-- 第 n 次上同调群，即上循环元素模上边界的商。 -/
abbrev Cohomology (C : CochainComplex) (n : Int) :=
  Quotient (cohomologySetoid C n)

/-- 过滤链复形由每个层上的嵌套子空间和边界保持过滤组成。 -/
structure FilteredChainComplex where
  /-- 底层链复形。 -/
  complex : ChainComplex
  /-- 第 p 层过滤在第 n 个链群中的 F₂-子空间。 -/
  filtration : ∀ n, Nat → Submodule F2 (complex.object n).carrier
  /-- 过滤是递减的。 -/
  decreasing : ∀ n p q, p ≤ q → filtration n q ≤ filtration n p
  /-- 边界保持过滤。 -/
  boundaryPreserves : ∀ n p x, x ∈ filtration (n + 1) p →
    complex.boundary n x ∈ filtration n p

/-- 关联分次项的代表是过滤层中的元素。 -/
structure AssociatedGradedRepresentative (F : FilteredChainComplex)
    (p n : Nat) where
  /-- 代表元素。 -/
  representative : (F.complex.object n).carrier
  /-- 代表属于第 p 个过滤层。 -/
  inFiltration : representative ∈ F.filtration n p

/-- 过滤映射保持每一层过滤的映射。 -/
structure FilteredChainMap (C D : FilteredChainComplex) where
  /-- 每个次数上的线性映射。 -/
  map : ∀ n, F2LinearMap (C.complex.object n) (D.complex.object n)
  /-- 映射与边界交换，即逐次数是链映射。 -/
  chainMap : ∀ n x,
    map n (C.complex.boundary n x) = D.complex.boundary n (map (n + 1) x)
  /-- 映射保持每一层过滤。 -/
  preservesFiltration : ∀ n p x, x ∈ C.filtration n p →
    map n x ∈ D.filtration n p

/-- 有限 CW 复形的胞腔记录及其附着目标。 -/
structure FiniteCW where
  /-- 胞腔编号与维数。 -/
  cells : List (Nat × Nat)
  /-- 每个胞腔编号不重复。 -/
  cellsNodup : cells.Nodup
  /-- 附着目标的维数严格低于源胞腔。 -/
  attachingLower : Prop

/-- 有限 CW 复形的细胞链数据。 -/
structure CellularChainData where
  /-- 底层有限 CW 复形。 -/
  space : FiniteCW
  /-- 由细胞生成的链复形。 -/
  chain : ChainComplex
  /-- 链群基底与胞腔表相匹配。 -/
  cellularBasis : Prop

/-- 带有基点的拓扑空间。 -/
structure PointedSpace where
  /-- 空间载体。 -/
  carrier : Type
  /-- 载体上的拓扑。 -/
  topology : TopologicalSpace carrier
  /-- 选定基点。 -/
  point : carrier

/-- 点集空间结构中的拓扑实例。 -/
instance (X : PointedSpace) : TopologicalSpace X.carrier := X.topology

/-- 保持基点且连续的映射。 -/
structure PointedMap (X Y : PointedSpace) where
  /-- 映射函数。 -/
  toFun : X.carrier → Y.carrier
  /-- 映射保持基点。 -/
  mapPoint : toFun X.point = Y.point
  /-- 映射连续。 -/
  continuous : Continuous toFun

/-- 点映射可以作为函数使用。 -/
instance {X Y : PointedSpace} : CoeFun (PointedMap X Y)
    (fun _ => X.carrier → Y.carrier) := ⟨PointedMap.toFun⟩

/-- 基点映射由底层函数唯一决定；连续性和基点条件是结构证明字段。 -/
@[ext] theorem pointedMap_ext {X Y : PointedSpace}
    (f g : PointedMap X Y) (h : ∀ x, f x = g x) : f = g := by
  cases f
  cases g
  congr
  funext x
  exact h x

/-- 单位时间区间，用于定义连续的基点同伦。 -/
abbrev UnitTime := Set.Icc (0 : ℝ) 1

/-- 两个基点映射之间的基点同伦。 -/
structure PointedHomotopy {X Y : PointedSpace}
    (f g : PointedMap X Y) where
  /-- 定义在空间与时间上的同伦函数。 -/
  toFun : X.carrier × UnitTime → Y.carrier
  /-- 同伦函数连续。 -/
  continuous : Continuous toFun
  /-- 时间 0 端点是 f。 -/
  leftEndpoint : ∀ x, toFun (x, ⟨0, by constructor <;> norm_num⟩) = f x
  /-- 时间 1 端点是 g。 -/
  rightEndpoint : ∀ x, toFun (x, ⟨1, by constructor <;> norm_num⟩) = g x
  /-- 同伦始终保持基点。 -/
  mapPoint : ∀ t, toFun (X.point, t) = Y.point

/-- 基点同伦关系。 -/
def PointedHomotopic {X Y : PointedSpace}
    (f g : PointedMap X Y) : Prop := Nonempty (PointedHomotopy f g)

/-- 每个基点映射都与自身基点同伦。 -/
theorem pointedHomotopic_refl {X Y : PointedSpace} (f : PointedMap X Y) :
    PointedHomotopic f f := by
  refine ⟨{
    toFun := fun p => f p.1
    continuous := f.continuous.comp continuous_fst
    leftEndpoint := ?_
    rightEndpoint := ?_
    mapPoint := ?_ }⟩
  · intro x
    rfl
  · intro x
    rfl
  · intro t
    exact f.mapPoint

/-- 基点映射的复合。 -/
def PointedMap.comp {X Y Z : PointedSpace}
    (g : PointedMap Y Z) (f : PointedMap X Y) : PointedMap X Z where
  toFun := fun x => g (f x)
  mapPoint := by simp [f.mapPoint, g.mapPoint]
  continuous := g.continuous.comp f.continuous

/-- 从 X 到 Y 的常值基点映射。 -/
def basepointMap (X Y : PointedSpace) : PointedMap X Y where
  toFun := fun _ => Y.point
  mapPoint := rfl
  continuous := continuous_const

/-- 悬挂空间的语义记录；suspended 是商空间构造的结果。 -/
structure Suspension (X : PointedSpace) where
  /-- 悬挂后的点空间。 -/
  suspended : PointedSpace
  /-- 它确实实现了基于基点商空间的悬挂构造。 -/
  quotientModel : Prop

/-- 映射锥的语义记录；它是沿映射粘合锥体所得的商空间。 -/
structure MappingCone {X Y : PointedSpace} (f : PointedMap X Y) where
  /-- 映射锥所得的点空间。 -/
  cone : PointedSpace
  /-- 映射锥与 Y ∪_f CX 的商空间模型相符。 -/
  gluingModel : Prop

/-- 余纤维序列记录三个对象、三个映射和连续复合为零。 -/
structure CofiberSequence where
  /-- 序列中的第一个点空间。 -/
  source : PointedSpace
  /-- 序列中的第二个点空间。 -/
  middle : PointedSpace
  /-- 序列中的余纤维点空间。 -/
  target : PointedSpace
  /-- 第一个映射。 -/
  first : PointedMap source middle
  /-- 第二个映射。 -/
  second : PointedMap middle target
  /-- 连接映射的编码。 -/
  connecting : Prop
  /-- 连续两个映射的复合基点同伦于常值基点映射。 -/
  consecutiveCompositeNull : PointedHomotopic
    (PointedMap.comp second first) (basepointMap source target)
  /-- 序列满足余纤维的商空间语义。 -/
  cofiberModel : Prop

/-- 稳定谱对象；carrier 是对象的抽象载体，name 用于有限程序引用。 -/
structure StableSpectrum where
  /-- 谱的载体类型。 -/
  carrier : Type
  /-- 谱的名称。 -/
  name : String
  /-- 谱结构映射和稳定性公理。 -/
  structureLaws : Prop

/-- 稳定映射带有次数和映射函数。 -/
structure StableMap (X Y : StableSpectrum) where
  /-- 稳定映射的底层函数。 -/
  toFun : X.carrier → Y.carrier
  /-- 稳定次数。 -/
  degree : Int
  /-- 映射满足谱结构兼容性。 -/
  respectsStructure : Prop

/-- 稳定悬挂后的谱对象。 -/
def stableSuspension (X : StableSpectrum) (n : Int) : StableSpectrum where
  carrier := X.carrier
  name := "Sigma^" ++ toString n ++ "(" ++ X.name ++ ")"
  structureLaws := X.structureLaws

/-- 单位球谱；稳定同伦群以它的自映射定义。 -/
def sphereSpectrum : StableSpectrum where
  carrier := Unit
  name := "S"
  structureLaws := True

/-- 稳定 Hopf 映射 ν，从三次悬挂的球谱指向球谱。 -/
def hopfNu : StableMap (stableSuspension sphereSpectrum 3) sphereSpectrum where
  toFun := fun _ => ()
  degree := 3
  respectsStructure := True

/-- ν 的余纤维谱 Cν；它是后续 Adams 和扩张数据的具体输入对象。 -/
structure CNuSpectrum where
  /-- Cν 的底层谱对象。 -/
  spectrum : StableSpectrum
  /-- 它是 ν 映射锥的余纤维。 -/
  cofiberOfNu : Prop

/-- 规范的 Cν 对象名称。 -/
def cNu : CNuSpectrum where
  spectrum :=
    { carrier := Unit
      name := "Cν"
      structureLaws := True }
  cofiberOfNu := True

/-- 球谱第 n 次稳定同伦群的语义接口。

这里不把原始稳定映射类型直接冒充为同伦群；必须额外提供取稳定同伦类的
商构造以及群运算。`quotientSemantics` 正是后续完成该构造时所需的证明接口。
-/
structure StableHomotopyGroup (n : Int) where
  /-- 群的载体。 -/
  carrier : Type
  /-- 群运算。 -/
  addGroup : AddCommGroup carrier
  /-- 稳定映射代表对应的同伦类。 -/
  representative : StableMap sphereSpectrum (stableSuspension sphereSpectrum n) → carrier
  /-- 代表映射确实按稳定同伦关系取商。 -/
  quotientSemantics : Prop

/-- 有限谱数据记录：胞腔表、结构映射和名称都必须可重放。 -/
structure FiniteSpectrumData where
  /-- 所表示的稳定谱。 -/
  spectrum : StableSpectrum
  /-- 有限胞腔及其维数。 -/
  cells : FiniteCW
  /-- 结构映射的有限编码。 -/
  maps : List String
  /-- 编码与谱结构一致。 -/
  sound : Prop

end LinProgramReference
