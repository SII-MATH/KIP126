# 全部依赖覆盖与当前数学边界

全部17项 CSV需求在 coverage.json 中逐字登记；没有把登记等同于论文命题证明。
本轮已经获取固定Zenodo发布，配置和日志审计修正了原清单遗漏。

| 依赖族 | 已实现 | 仍需的数学桥接 |
|---|---|---|
| strategy-e2 | Milnor对偶余乘法窗口证书、F2链映射、收缩正合性及全部一维同调基证书 | CW上同调、Steenrod模自由分解与真实Ext/E2识别 |
| strategy-d2 | 全49谱SQLite已知/未知d2导出、附录9740矩阵查询证书 | 二次运算与导入d2的数学正确性 |
| strategy-propagation | 普通零/线性性/Leibniz/自然性DAG、作用域分支消解与显式前提证明 | 真实页转换、广义Leibniz、Mahowald、扩张及假设分支消解 |
| strategy-101-105 | 线性组合排除、带原像候选排除检查 | 105个目标的识别、101条完整排除推导和归纳前提 |
| Fact7.6(1),7.13,7.15,7.19 | 实际循环/非边界证书和条件性跨页transport | 命名乘积/和与真实页元素识别及全部所需页数据 |
| Fact7.6(2),(3),7.21 | 有限非零同调、出入射与完整列空间检查 | 永久循环的无限页/范围完备性；7.21两个对象均须证明 |
| Fact7.6(4) | 明确候选列表的唯一非边界与其他候选原像证书 | (125,25)全部候选、E5页转换和指定类识别 |
| Remark7.7 | 列表全部候选非边界检查、F2线性组合 | 可能附加项的真实允许集合和指定乘积不可被击中 |
| Proposition7.9 | 非像分离泛函排除所有线性组合 | S0/nu真实对象与反证拓扑推理 |
| manual1--3 | 外部输入标签保留；传播tactic要求Lean前提证明 | 三条来源定理本身 |

额外覆盖审计：Proposition7.8、附录表1--12、全部实际配置对象、所有源代码reason标签均记录于 propagation_sources.md。

## 实际固定发布

- ss.json：2 rings+47 modules、180 maps、115 maps_v2、61 cofseqs、36 commutativity；真实名称与配置见 upstream/category-inventory.json。
- 437份原CSV由UTF16无损规范为UTF8并记录两侧SHA256。
- 全49谱258345个d2次数块，175394个unknown块，不补零；SQL NULL和已计算的空TEXT按源代码区分。
- 附录范围9740条真实矩阵image/nonimage查询（98批逐条内核证明全部通过），另3096个未解决次数块；查询不等同论文具体乘积声明。
- 固定proofs发布2672275行、3份CSV；实际17种已知reason及8380个[NULL]，源码支持20种标签。
- 2098356条T/TI假设记录不能当作已证明事实。完整计数和hash见 proof_release_audit.json。

## 必须保持的限制

矩阵证书已对任意F2线性组合证明语义，而不是匹配记录字符串。但真实Adams页与矩阵模型的比较尚未建立。Milnor证书是明确rank/degree窗口内的对偶乘法，未证明完整无界Steenrod代数识别。普通传播不等于程序高级规则；source审计不等于规则可靠性证明。因此完整步骤四尚不能标为完成。


## 本次继续实现的桥接

- `PageTransitionCertificates`证明真实循环模边界商与坐标空间双向互逆，非任意transport假设。
- `NamedElementCertificates`定位14个真实命名标量表达式；其关系约化在任意满足关系的特征2交换环中保值。
- Fact7.13完整目标由实际关系h0*h1=0化简，实际d2矩阵命中局部坐标2,4。
- Remark7.7目标候选被建模为已知向量加不确定子空间，证明所有候选非零。
- `StaircaseCertificates`检查全部基变换，并给四个命名表达式证明有限模型的逐页存活条件。
- `AdvancedRuleCertificates`由短正合微分群证明连接同态的存在性、循环性、代表独立性与自然性；不是将高级规则本身作为公理。

仍未消除：真实Ext/Adams比较、所有高级规则、手工来源定理、完整101/105推导及无限页完备性。详见continuation_status.md和AdvancedRuleCertificates/paper-audit.md。

新增外部证书端到端接口：诱导映射C++批量producer→严格JSON→`induced_map%`→`lin_cert`→真实同调商坐标定理；模块关系C++显式见证packer→version1 JSON→`module_bundle%`→`module_cert`→任意满足关系的模中求值相等。模块packer不声称自动求解关系。矩阵自然性和仿射非零同调均有独立检查器及可靠性定理。
