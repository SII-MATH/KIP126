import LinProgramReference.ConcreteHopf

/-!
# ν 的稳定化、Cν 余纤维和稳定映射类（W25–W28）

本文件把具体 Hopf 映射逐级悬挂，得到序列谱之间的实际映射；Cν 的第 0 级
则直接取这个 Hopf 映射的实际映射锥。最后，稳定映射类用逐级基点同伦生成的
等价闭包取商。稳定茎的群运算还需要 pinch 映射；因此这里先给出真实商载体，
并把“群结构”单独作为后续待实例化的数据，而不是伪造一个加法。
-/

namespace LinProgramReference

/-- 将基点映射逐级悬挂。 -/
noncomputable def iteratedSuspensionMap {X Y : PointedSpace}
    (f : PointedMap X Y) : ∀ n,
      PointedMap (iteratedSuspension X n) (iteratedSuspension Y n)
  | 0 => f
  | n + 1 => reducedSuspensionMap (iteratedSuspensionMap f n)

/-- Hopf 映射的逐级悬挂谱映射。 -/
noncomputable def hopfSequentialMap :
    SequentialSpectrumMap
      (suspensionSpectrum realSphere3)
      (suspensionSpectrum realSphere2) where
  levelMap := iteratedSuspensionMap hopfMap
  commutes := by
    intro n
    apply pointedMap_ext
    intro x
    rfl

/-- ν 的第 0 级代表就是前面构造的经典 Hopf 映射。 -/
theorem hopfSequentialMap_zero :
    (hopfSequentialMap.levelMap 0) = hopfMap := by
  rfl

/-- 真实的球谱名称：它是两点离散 0-球面逐级取约化悬挂的序列谱，
而不是旧程序接口中以 `Unit` 作为载体的字符串记录。 -/
noncomputable def stableSphereSpectrum : SequentialSpectrum :=
  sphereSequentialSpectrum

theorem stableSphereSpectrum_level (n : Nat) :
    (stableSphereSpectrum.level n) = iteratedSuspension zeroSphere n := by
  rfl

/-- Cν 的实际点空间模型：Hopf 映射的映射锥。 -/
noncomputable def cNuPointedSpace : PointedSpace :=
  mappingCone hopfMap

/-- Cν 中球面 S² 的规范包含映射。 -/
noncomputable def cNuInclusion : PointedMap realSphere2 cNuPointedSpace :=
  mappingConeInclusion hopfMap

/-- Hopf 映射的余纤维序列。 -/
noncomputable def hopfCofiberSequence : CofiberSequence :=
  mappingConeCofiberSequence hopfMap

/-- Cν 的第 0 级确实就是 Hopf 映射的商映射锥。 -/
theorem cNuPointedSpace_eq_mappingCone :
    cNuPointedSpace = mappingCone hopfMap := by
  rfl

/-- 把 Cν 作为一个点空间生成的悬挂序列谱。这个对象的第 0 级是
实际映射锥；它明确表示“由 Cν 生成的谱”，而不冒充尚未构造的
稳定范畴余纤维谱。 -/
noncomputable def cNuSuspensionSpectrum : SequentialSpectrum :=
  suspensionSpectrum cNuPointedSpace

theorem cNuSuspensionSpectrum_level_zero :
    cNuSuspensionSpectrum.level 0 = cNuPointedSpace := by
  rfl

/-- 两个序列谱映射逐级基点同伦，作为稳定同伦关系的生成关系。 -/
def SequentialSpectrumMapHomotopy {E F : SequentialSpectrum}
    (f g : SequentialSpectrumMap E F) : Prop :=
  ∀ n, PointedHomotopic (f.levelMap n) (g.levelMap n)

/-- 用同伦生成等价闭包，得到稳定映射类的商。 -/
def sequentialSpectrumMapSetoid (E F : SequentialSpectrum) :
    Setoid (SequentialSpectrumMap E F) where
  r := Relation.EqvGen SequentialSpectrumMapHomotopy
  iseqv := by
    constructor
    · exact Relation.EqvGen.refl
    · intro f g h
      exact Relation.EqvGen.symm f g h
    · intro f g h hfg hgh
      exact Relation.EqvGen.trans f g h hfg hgh

/-- 稳定映射同伦类的真实商载体。 -/
abbrev SequentialSpectrumMapClass (E F : SequentialSpectrum) :=
  Quotient (sequentialSpectrumMapSetoid E F)

/-- Hopf 映射的稳定化同伦类。 -/
noncomputable def hopfStableClass : SequentialSpectrumMapClass
    (suspensionSpectrum realSphere3) (suspensionSpectrum realSphere2) :=
  Quotient.mk _ hopfSequentialMap

/-- ν 的稳定映射类：这是 Hopf 映射逐级悬挂后，在逐级基点同伦商中的类。 -/
noncomputable def nuStableClass : SequentialSpectrumMapClass
    (suspensionSpectrum realSphere3) (suspensionSpectrum realSphere2) :=
  hopfStableClass

theorem nuStableClass_eq_hopfStableClass :
    nuStableClass = hopfStableClass := by
  rfl

/-- 稳定同伦类的代表映射。 -/
structure StableClassRepresentative (E F : SequentialSpectrum) where
  /-- 商类。 -/
  classValue : SequentialSpectrumMapClass E F
  /-- 一个代表。 -/
  representative : SequentialSpectrumMap E F
  /-- 代表确实属于该商类。 -/
  represents : Quotient.mk _ representative = classValue

/-- 稳定茎的映射族：πⁿ 的元素由所有足够高层的映射组成，并满足悬挂相容性。 -/
structure StableStemMap (n : Nat) where
  /-- 第 k 级的映射 S^(n+k) → S^k。 -/
  map : ∀ k, PointedMap
    ((suspensionSpectrum zeroSphere).level (n + k))
    ((suspensionSpectrum zeroSphere).level k)
  /-- 与两边结构映射交换。 -/
  compatible : ∀ k,
    PointedMap.comp ((suspensionSpectrum zeroSphere).structureMap k)
      (reducedSuspensionMap (map k)) =
    PointedMap.comp (map (k + 1))
      ((suspensionSpectrum zeroSphere).structureMap (n + k))

/-- 稳定茎映射的逐级同伦关系。 -/
def StableStemHomotopy (n : Nat) (f g : StableStemMap n) : Prop :=
  ∀ k, PointedHomotopic (f.map k) (g.map k)

/-- 稳定茎映射类的商载体；它是稳定同伦群在加法结构之前的底层集合。 -/
def stableStemSetoid (n : Nat) : Setoid (StableStemMap n) where
    r := Relation.EqvGen (StableStemHomotopy n)
    iseqv := by
      constructor
      · exact Relation.EqvGen.refl
      · intro f g h
        exact Relation.EqvGen.symm f g h
      · intro f g h hfg hgh
        exact Relation.EqvGen.trans f g h hfg hgh

/-- 稳定茎映射类的商载体。 -/
abbrev StableStemClass (n : Nat) := Quotient (stableStemSetoid n)

/-- 稳定同伦群 πⁿˢ 的底层载体模型；加法结构需由球面 pinch 映射
    在这个商上诱导，而不是另取一个与映射无关的类型。 -/
abbrev StableHomotopyGroupCarrier (n : Nat) := StableStemClass n

/-- 稳定茎中代表零映射的稳定映射族。 -/
noncomputable def zeroStableStemMap (n : Nat) : StableStemMap n where
  map := fun k => basepointMap
    ((suspensionSpectrum zeroSphere).level (n + k))
    ((suspensionSpectrum zeroSphere).level k)
  compatible := by
    intro k
    rw [reducedSuspensionMap_basepointMap]
    apply pointedMap_ext
    intro x
    rfl

/-- 稳定茎的零类。 -/
noncomputable def zeroStableStemClass (n : Nat) : StableStemClass n :=
  Quotient.mk (stableStemSetoid n) (zeroStableStemMap n)

/-- 稳定同伦群模型：载体固定为真实稳定茎商，群运算必须由 pinch 映射等
后续拓扑构造提供，而不是另取一个无关的任意类型。 -/
structure StableHomotopyGroupModel (n : Nat) where
  /-- 稳定茎商上的交换群结构。 -/
  addGroup : AddCommGroup (StableStemClass n)
  /-- 群单位在商载体中的元素。单独记录它，避免在结构字段声明处
  依赖尚未安装的局部群实例。 -/
  zeroClass : StableStemClass n
  /-- 指定的群单位就是代表零映射的稳定茎类。 -/
  zero_is_stableZero : zeroClass = zeroStableStemClass n

end LinProgramReference
