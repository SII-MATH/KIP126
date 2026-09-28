# Def / ClassicalESS

## 1. 预期

提供论文所需 classical extension spectral sequence 的具体实例和语义：extension、essential/inessential、检测、crossing/no-crossing，以及与一般 extension/page-extension 基础设施的连接。一般 ESS 构造放在 `Def/SpectralSequence`，这里应只保留 classical/η 等领域特化。

## 2. 现有

目前只有 `Eta` 四个文件：η-ESS 的索引、页面、微分表、adapter、`FExtension`/`DetectedBy`/`Crossing` 等谓词，以及从 `EtaESSInput` 取得的若干等式。代码可编译且无本地 `sorry`，但 `Data` import Main provenance，`ExternalInput` import Main literature claims。这些 catalogue/wrapper 仍要求调用者显式给出证据，不是项目 axiom；不过来源承载与共享数学对象仍在目录依赖上混在 Def 中。

## 3. 粗略完成度

> 本节比例只是根据当前路线图、已有构造和已知数学缺口给出的主观规划估算，不是由文件数、声明数或 `sorry` 数计算出的可验证统计。

**约 20%–35%。** 已有一个可用的 η 数据切片和术语，但尚不能代表论文 Sections 2–5 所需的通用 ESS、完整 target coset、crossing calculus 和收敛语义。当前证明多是对显式输入的投影，并非从底层基础复演全部结论。

## 4. 待做

- 把 provenance 与 fixed eta input 移到 Main/Interface 的正确层，让 Def 只保留参数化 adapter 和谓词。
- 将 η-ESS 接到内部 M 的 extension spectral sequence，而不是形成独立数据孤岛。
- 证明 essentiality、extension、crossing 与过滤/检测的实际等价和自然性。
- 明确哪些 eta 行来自附录/Lin，哪些是文献输入，哪些应在 Main 中推出。

## 5. 建议步骤

1. 先拆 `EtaESSInput` 的纯数学字段与来源包装。
2. 用 `Def/SpectralSequence/Extension` 的一般构造重建 eta adapter。
3. 在 Interface 中证明 eta 输入解释定理；Main 只消费冻结结论。
4. 再扩展到 Cν、synthetic quotient 和论文实际用到的 extension 对象。
