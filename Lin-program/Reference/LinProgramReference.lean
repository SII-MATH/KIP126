import LinProgramReference.Foundations
import LinProgramReference.AlgebraTopology
import LinProgramReference.TopologyConstructions
import LinProgramReference.SpectrumModels
import LinProgramReference.CWConstructions
import LinProgramReference.ConcreteHopf
import LinProgramReference.StableNuModels
import LinProgramReference.SteenrodAdams
import LinProgramReference.AdamsHomology
import LinProgramReference.AdamsRules
import LinProgramReference.FilteredExtensions
import LinProgramReference.StableHomotopy
import LinProgramReference.KervaireMathematics
import LinProgramReference.LinProgram

/-!
# Lin Program Reference 形式化总入口

模块顺序与 roadmap.md 相同：有限表示、链复形和稳定对象、
Steenrod/Ext/Adams、扩张与规则、程序证书、Kervaire 局部接口。
每个模块只公开带数学语义的类型和命题，不把外部数据库行直接当作定理。
-/
