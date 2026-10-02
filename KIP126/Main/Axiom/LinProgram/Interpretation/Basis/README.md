# 实际球面 E₂ 的基与坐标

[Data.lean](../../../../Solution/Computation/LinProgram/Interpretation/Basis/Data.lean) 从唯一 `Main.StageInput.computation.sphereBasis` 投影 `sphereE2Coordinates`，以坐标逆像的单位向量定义 `sphereE2Basis`，并保留按原 CSV 索引查询的 API。它们和 `linE2Presentation` 使用同一个见证。

[Proofs.lean](../../../../Solution/Computation/LinProgram/Interpretation/Basis/Proofs.lean) 证明基向量坐标、非零性、坐标重构，以及恢复的数据基经该 presentation 等于实际页面基的公式。数据侧兼容 API 见 [Basis](../../Basis/README.md)。

本组件不直接导入 Interface 的认证 Solution，也没有独立基认证公理。完整交付仍依赖 `Nonempty Challenge2` 的生产证明；Interface 的固定 CSV 基认证辅助定理仍待证。编译通过不表示这些生产义务完成。
